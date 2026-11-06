#!/usr/bin/env bash
# Print a Git tree for explicitly listed files, from the repository root.
set -euo pipefail

fail() { printf '%s\n' "$*" >&2; exit 1; }
(( $# > 0 )) || fail "Pass the repository-relative file paths to capture."
for path in "$@"; do
  case "/$path/" in
    *'//'*|*'/../'*|*'/./'*) fail "Expected an exact repository-relative file path: $path" ;;
  esac
done

work=$(mktemp -d) || fail "Could not create a private index directory."
[[ -n "$work" && -d "$work" ]] || fail "No private index directory."
cleanup() {
  rm -f -- "$work/attributes" "$work/paths" "$work/index" "$work/index.lock"
  rmdir -- "$work"
}
trap cleanup EXIT
export GIT_INDEX_FILE="$work/index"
g=(git --literal-pathspecs -c core.hooksPath=/dev/null -c core.fsmonitor=false -c core.splitIndex=false)
prefix=$("${g[@]}" rev-parse --show-prefix)
[[ -z "$prefix" ]] || fail "Run from the repository root."

if base=$("${g[@]}" rev-parse --verify -q 'HEAD^{commit}'); then
  "${g[@]}" read-tree "$base"
else
  branch=$("${g[@]}" symbolic-ref --quiet HEAD) || fail "Cannot identify the baseline."
  if "${g[@]}" show-ref --verify --quiet "$branch"; then
    fail "The existing branch does not resolve to a commit."
  else
    [[ $? == 1 ]] || fail "Cannot inspect the starting branch."
  fi
  "${g[@]}" read-tree --empty
fi

check_paths() {
  local found allowed
  while IFS= read -r -d '' found; do
    for allowed in "$@"; do
      [[ "$found" == "$allowed" ]] && continue 2
    done
    fail "Scope includes an unlisted path: $found"
  done
}
# A deleted directory can still select descendants in the starting index.
"${g[@]}" ls-files -z -- "$@" > "$work/paths"
check_paths "$@" < "$work/paths"

add_paths=()
for path in "$@"; do
  if [[ -d "$path" && ! -L "$path" ]]; then
    # A baseline file now occupied by a directory is a deletion. Stage only
    # that deletion here. Each desired replacement file has its own argument.
    if [[ -z "$base" ]] || [[ $("${g[@]}" cat-file -t "$base:$path" 2>/dev/null) != blob ]]; then
      fail "Enumerate files instead of passing a directory: $path"
    fi
    "${g[@]}" update-index --force-remove -- "$path"
  elif [[ ! -e "$path" || -f "$path" || -L "$path" ]]; then
    add_paths+=("$path")
  else
    fail "Expected a regular file, symlink or tracked deletion: $path"
  fi
done

# Inspect effective attributes before any add can invoke a clean/process filter.
if [[ -n ${add_paths[0]+present} ]]; then
  "${g[@]}" check-attr -z --all -- "${add_paths[@]}" > "$work/attributes"
  while IFS= read -r -d '' file && IFS= read -r -d '' attr && IFS= read -r -d '' value; do
    if [[ "$attr" == filter ]]; then
      fail "Filter attribute on $file. Use the project's approved identification method."
    fi
  done < "$work/attributes"
  "${g[@]}" add -A -- "${add_paths[@]}"
fi
"${g[@]}" diff --cached --no-ext-diff --no-textconv --no-renames --name-only -z > "$work/paths"
check_paths "$@" < "$work/paths"
"${g[@]}" write-tree
