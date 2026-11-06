# Claude Code execution

Use Claude Code's native Agent tool for bounded work. Picard stays in the user's main session. No agent teams, fixed custom-agent roster, cross-provider runner, or separate orchestration service is required. This reference describes supported controls; the [qualification record](https://github.com/PluralFusion/ausote/blob/main/docs/qualification/2026-11-06-installation-claude.md) identifies what has actually been tested.

## Delegation and handoff

Inspect the tools and model controls exposed to the active session. Use a fresh, non-fork `general-purpose` subagent for role assignments that need full engineering tools or independent Sherlock review. Explore and Plan have narrower tools and different startup context; they are not interchangeable with an implementation worker. Do not override the user's main model or register persistent agents merely to assign a portable role.

Supply the role instructions, contract, project rules, candidate identity, loaded skill directory and relevant resource paths, write ownership, authority, profile and explicit constraints. A fresh subagent does not receive the main conversation history; do not assume the Ausote instructions were preloaded. Sherlock first receives the requirements and frozen candidate, without implementer conclusions or prior review opinions. A general-purpose subagent can write: a read-only assignment is an instruction, not a sandbox guarantee.

Use native foreground/background lifecycle controls as exposed. Collect a result before transferring write ownership or accepting the candidate. For a follow-up, use the returned agent ID with the session's supported resume/messaging control (currently SendMessage); do not restart the same assignment blindly. Explore and Plan are one-shot and do not return a resumable ID. Keep nested assignments central unless Picard explicitly authorizes them.

## Models and effort

Use the [Claude recommendations](../claude-model-recommendations.md) for the selected profile, subject to actual user/project restrictions and available models. Request a model and effort explicitly when supported. Family aliases may resolve to different versions across providers and settings; inspect available metadata rather than asserting a provider model from an alias.

Claude Code supports a per-invocation effort parameter for non-fork agents from v2.1.292. It overrides a custom agent's effort and persists on agent resume; CLAUDE_CODE_EFFORT_LEVEL takes precedence. Without explicit effort, a worker on the main model inherits session effort; a worker on a different model does not necessarily inherit that level. Available effort levels depend on the model.

The documented model order is the invocation parameter, then an agent definition, then CLAUDE_CODE_SUBAGENT_MODEL, then the main model. Per-invocation model values are family aliases, not full model IDs. Organization restrictions or native fallbacks can substitute another model; inspect the observed result before claiming a binding restriction was satisfied. With CLAUDE_CODE_SUBAGENT_MODEL_FORCE enabled, the forced configuration takes precedence and the caller may be unable to choose a worker model. Check those controls when they affect a requested assignment; preserve user configuration. Report requested settings, observed settings and unknown provider identity separately. Neither these instructions nor model aliases enforce a strict allowlist or spending ceiling. If a binding restriction cannot be satisfied with a qualified control, stop the affected work and propose a permitted narrower scope.

## State and qualification

Use the project's existing task/contract record. A planned main-session stop must record candidate, completed checks, pending review, owner grant, selected profile and explicit limits. On resume, reconcile those records against current files and native session state before continuing. A native conversation resume is not permission to repeat an unknown external action.

Do not rerun qualification on ordinary tasks. Keep installation/discovery, bounded engineering execution, planned resume, model configuration and provider identity as separate claims. Abrupt interruption recovery, strict model/effort enforcement, billed-cost comparisons and other platforms are outside the initial bounded qualification.

Sources: [native subagents](https://code.claude.com/docs/en/sub-agents), [model configuration](https://code.claude.com/docs/en/model-config), [CLI resume](https://code.claude.com/docs/en/cli-reference). Recheck after relevant runtime changes.
