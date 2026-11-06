# Model profiles and routing

Standard is the default. Economy prefers the least resource-intensive permitted model and effort suitable for the assignment. Both profiles apply to inspect, plan, execute and resume. Both preserve the same acceptance criteria, verification and required independent review.

## Choose a configuration

1. Use the user's profile or applicable project preference, falling back to Standard. Apply explicit model and effort choices and governing restrictions before profile recommendations. Resolve a conflict between binding instructions before dependent work.
2. Use the project's model table for the active runtime when available. Otherwise consult the bundled [Codex](model-recommendations.md) or [Claude Code](claude-model-recommendations.md) table. Match the assignment to its uncertainty, cost of a mistake and available checks. Choose among configurations the native runtime actually offers. The [Astra approval rule](model-recommendations.md#astra-approval) applies to Astra even with a project-specific table.
3. For Economy, start with the lower-resource choice when it can meet the requirements. If a stronger permitted configuration is warranted, give a short reason. If no permitted choice can satisfy the task, propose a smaller scope or a specific change to the constraint.
4. Keep Picard in the user-selected main-session configuration. Apply the profile to model choices Picard can actually make. When a binding model or effort restriction covers Picard, check trustworthy session information or the user's declared selection. Disclose unknown settings and resolve a known conflict before dependent work. Only claim a switch when a supported control actually performed it.

Picard chooses direct work or a bounded assignment based on its contribution. Numeric ceilings on agents, work requests and repairs come only from explicit user or project constraints. Investigate repeated failures and change approach when a retry has no new evidence or plausible fix.

## Explicit constraints

A user or project can set an allowlist, a maximum effort, or a concrete limit on agents, work requests, repair cycles, time or measured spending. Carry those constraints through all descendants, phases and resumed sessions. Track usage only where a limit or an explicit reporting request makes it relevant. Counts can also document actual contributions.

Honor the specified unit. An agent cap counts workers, a work-request cap counts assignments (including follow-ups and nested work), and a repair-cycle cap counts batches of corrections to a submitted candidate. For a shared explicit ceiling, Picard allocates disjoint shares before concurrent dispatch or keeps further assignments central. Reconcile actual use and reservations before releasing capacity. If a required action exceeds a binding constraint, explain the conflict and the smallest useful next step.

On resume, keep the task's selected Standard or Economy profile unless the user or project changes it. If an older record uses a retired profile, resolve the choice from current instructions, defaulting to Standard. Treat counts inherited solely from a former default as historical observations. Carry forward explicit grants, exclusions and any limits adopted by the owner, an approved contract or a project rule.

## Selection, observation and enforcement

**Best-effort** is the usual path. Request permitted settings and record available evidence. Distinguish the requested configuration, settings applied by the runtime and provider-reported execution. Identify the source and coverage of each observed segment, including changes or gaps across follow-ups and resume. A fallback must satisfy explicit constraints.

**Strict** requires a qualified native mechanism that enforces the restriction before execution. Instructions, a filtered catalog, and an after-the-fact check establish weaker evidence. If a required guarantee is unavailable, pause the affected action and describe a permitted alternative.

Keep a short assignment record with the chosen profile, configuration, reason, applicable constraints and source of any observed settings. Use `unknown` for missing execution identity or cost. Report measured resource use only with its source and coverage, including Picard and relevant workers. Qualitative resource expectations guide selection and do not guarantee a price, token total or quota ceiling.
