# State, candidate identity, and recovery

## Minimal durable state

Use the project's existing sources within the authorized mode. For chat-only work, keep the relevant state in chat. When durable tracking is appropriate, keep the objective and remaining work in the project plan, and the contract, baseline, authority, model profile, explicit constraints, candidate, checks and next step in the task record. Omit empty sections and link evidence instead of copying logs. [Task template](../templates/task.md).

Picard writes the canonical record; workers return evidence. Runtime task lists and conversation summaries are useful session aids, not an automatic replacement for durable project state.

## Identify the evaluated candidate with Git

Match identification to the task. For a small change checked immediately in one checkout, inspect the actual diff and relevant new files, run the appropriate check, and confirm the inputs still match at completion. A chat-only inspection or discussion normally needs no snapshot. When a separate reviewer, later session, project rule or material risk requires a reproducible revision, prefer the project's existing candidate or a commit that covers the evaluated inputs.

For an uncommitted result that needs exact identification, record the baseline, initial dirty state and scope, including relevant new files, deletions, tests, configuration and pre-existing edits exercised by the checks. Freeze the evaluated inputs and relevant Git configuration during capture and verification.

When the project permits local Git object writes, the optional [candidate-tree helper](../scripts/candidate-tree.sh) uses native Git with a private index. From the repository root, pass exact file paths, including removed paths. Set `ausote_skill_dir` to the directory containing the loaded SKILL.md. For example:

```bash
bash "${ausote_skill_dir:?}/scripts/candidate-tree.sh" src/parser.go 'routes/[id]/page'
```

The helper seeds a private, non-split index from HEAD (empty for an unborn branch) and suppresses hooks and filesystem monitoring for its Git commands. It accepts literal file paths and refuses filter-marked files. For file/directory replacements list the old and new file paths. It will record a replaced baseline file's deletion without adding the new directory wholesale. Use the printed tree only on success. If project policy requires hooks or filters, or the checkout/configuration cannot be trusted within the grant, use a project-approved isolated capture or read-only evidence for the relevant files. Account for side effects before running other Git commands in that checkout as well.

A Git tree identifies Git's stored content. Attributes, conversion settings and executable-bit handling can make it differ from the working files. When this matters to a requirement, record the tested bytes and modes (for a regular file, `git hash-object --no-filters -- <file>` plus its working mode), or verify in a controlled checkout with known conversion settings. Identify relevant symlink targets, ignored governing inputs, submodule state and external dependencies separately when they affect the result. Keep secrets and generated evidence outside the snapshot. Before reusing a result or accepting the candidate, compare those inputs again and repeat affected checks when they differ.

For a spec that also holds execution notes, freeze and review the contract revision before appending the verdict. Distinguish later bookkeeping edits from contract changes. If exact final file bytes are required, keep their ID in a separate existing review record. An unreferenced tree is local and eligible for pruning. For a handoff that must retain it, use an authorized retained Git reference or existing durable artifact. On resume, check availability and identity. If the candidate cannot be recovered, identify the current one and reassess which checks and review apply.

In a non-Git project, report the identity limitation and recommend an authorized Git-backed copy or another existing project mechanism. Do not invent a snapshot service or initialize another project's repository solely to make a claim appear stronger.

## Resume

Read applicable instructions and canonical project/task state. Compare current source, prior evidence, model profile, explicit limits and any usage under them, dependencies and live agent/process status. Match consequential actions to the actual user grant or a trusted approval reference covering this scope and revision. A worker's summary can point to that grant. If it is missing or disputed, keep the affected action pending and continue other authorized work.

For interrupted actions, distinguish planned, attempted, confirmed, and unknown outcomes. Reconcile external state before repeating an action with side effects. Reuse prior authorization within scope, but do not infer permission from a previous unsuccessful attempt. If an outcome cannot be established, stop that action and recommend how to resolve it; continue independent authorized work where useful.

## Reusable knowledge

Task history is not permanent engineering knowledge. Retain only conclusions likely to change future decisions: architecture invariants, non-obvious validation constraints, recurring failures, or supported workflow findings.

Keep claim, scope, source, verification date, status (`fact`, `hypothesis`, `superseded`), and recheck trigger. Use existing ADRs/knowledge locations; load only relevant entries. Recheck when owning code, runtime, or contradictory evidence changes. Project facts do not become organization rules automatically. Knowledge cannot silently alter acceptance or authority. Do not retain credentials or raw reasoning transcripts.
