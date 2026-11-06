# Engineering workflow

## Discover and plan

Read the applicable project instructions and inspect existing work before edits. Locate canonical objectives, backlog, specifications, ADRs, and validation commands. Establish the requested outcome, exclusions, baseline, authority, model profile and any explicit constraints.

Maintain two logical levels without imposing storage:

- **Project plan:** authorized goals, priorities, dependencies, readiness, accepted work, and remaining work.
- **Task execution:** bounded contract, attempts, assignments, candidate, findings, verification, and acceptance.

Use chat when the request is read-only or a small task needs no durable record. Update existing project sources only when the mode, grant and project conventions call for it. If durable tracking is needed and authorized, one short plan or issue can also hold the task record. Split broad goals where acceptance or dependencies differ. Carry explicit constraints forward.

For changes requiring a specification, use [specification authoring](specifications.md) to select the project format, resolve material uncertainty, and prepare a verifiable contract. Keep requirements and design distinguishable from execution state, even when they share a document. The task record links to the contract instead of copying it.

## Execute

Select a ready task within the authorized objective. Confirm observable acceptance criteria before implementation. Use the existing test/build workflow and record relevant baseline failures. Match documentation detail and delegation to risk.

Keep one product-code writer per shared checkout. Assign one editor at a time to each shared artifact, including specs, execution records and issue descriptions. A worker can return proposed text while Picard owns that file. Transfer ownership before the next editor writes. Stop writers to evaluated inputs before review and final verification.

Correct supported findings and repeat the affected checks. If the same failure recurs, identify its cause or change the approach before trying again. Escalate when a blocker or an explicit limit prevents further authorized progress.

## Review and validate

Independent Sherlock review is the default for behavior, architecture, and important invariants. A truly mechanical low-risk change can use direct verification, with a short explanation. If an explicit constraint prevents a required review, keep the gate open and explain the conflict.

Review the complete relevant change, including new files and interactions with existing code. Preserve test coverage for behavior that still applies. When an authorized contract change supersedes an assertion, update it to demonstrate the new observable outcome. A regression test should distinguish the failure from the required behavior.

Tie every result to the candidate and relevant environment. Distinguish commands actually run from author claims and planned checks. Any candidate change invalidates evidence whose coverage it affects; after a fix, repeat the affected tests and independent review when required.

For a changed user interface, apply the [UI verification guidance](interface-design.md#verify-the-candidate) to the affected screens and journeys. Report which states were rendered or exercised, on which target, and which checks remain open.

## Accept and continue

Picard may accept within delegated authority when the candidate still matches, the criteria and required checks are satisfied, required review is resolved, and no known critical defect remains. Explain any rejected finding with evidence. A pending, blocked or failed prerequisite leaves the result incomplete. An explicit owner exception changes only its named gate and must be disclosed in the result.

Keep engineering acceptance distinct from commit/push/deployment authority and user-retained final approval. Update the project plan when authorized. Continue autonomously within the authorized goal and remaining limits; do not treat the whole backlog as permission to execute it.

Save a compact resume point before interruption or handoff. External-action outcomes that are unknown must be reconciled before any retry. See [state and recovery](state.md).

## Completion summary

Include a short team summary by default in the final response. Picard composes it from the existing task record, worker results, and verification evidence. Do not create a separate report or call agents again solely to prepare the summary.

Lead with the concrete outcome, then cover:

- **Contributions:** one short line per actual participant, including Picard, identifying useful work and its result. Distinguish implementation, independent review, and verification. If Picard worked alone, a single sentence is sufficient; optional role names do not imply additional participants.
- **Checks:** meaningful verification outcomes, unresolved findings, and required checks not run. Distinguish pre-existing failures from regressions and author-reported checks from independent execution. A review with no findings is not a guarantee of correctness.
- **Resource observations:** report usage against explicit limits when relevant. Actual delegation or repair counts can explain the work. Give token or cost figures only when measured, with their source and scope.
- **Status and next step:** accepted, ready for user acceptance, or incomplete, with any remaining action or material limitation. Reflect actual commit/push/deployment state when relevant to the task.

Scale the detail to the task. A small change needs only a few lines; substantial work may need key decisions and evidence links. Keep the essential outcome and limitations in the response itself so it can be copied without access to local files. For interrupted or blocked work, report confirmed progress and the resume point without presenting it as completed.
