# Specification authoring

Use this guidance when the project requires a specification or a change needs material requirements or design clarification. A specification defines the intended change and its acceptance; the execution record tracks what was authorized, attempted, checked, and accepted.

## Choose the project format

Follow explicit user instructions, then applicable project authoring policies and templates, then Ausote's fallback. Locate existing instructions, spec indexes, issues, design documents, and representative recent specs. Preserve their canonical locations and approval boundaries. Do not install another specification framework or create a competing spec directory.

If no suitable format exists, adapt the [specification template](../templates/specification.md). A section in an existing issue or plan can be sufficient. If the project has no suitable location, use `docs/specs/YYYY-MM-DD-short-slug.md` for one coherent change. Split only when changes have distinct acceptance or dependencies; do not create an umbrella by default.

Apply the content expectations below within the project's format. Add missing information in the owning artifact or raise a material conflict; do not weaken existing requirements or silently replace project policy. Formatting conventions, status vocabulary, approval gates, commit rules, and archival/deletion rules remain project choices. A task-specific instruction does not silently rewrite policy for future tasks.

## Scale the specification

Follow the project's rules on when a spec is required. Otherwise, use a short task contract for a clear, low-risk isolated fix. Prepare a specification when uncertainty or scope warrants it: competing consequential designs, changes across components, public or persisted contracts, or failure/recovery behavior that needs agreement.

The fallback template is a content checklist, not a length target. Combine sections and omit irrelevant material. Include security, compatibility, migration, performance, observability, deployment, or recovery detail when the change affects it. Reference existing architecture, ADRs, interface schemas, and tests instead of copying their contents. Use specialized formats such as OpenAPI or behavioral scenarios when they clarify the actual contract; do not introduce tools merely to fill a section.

## Draft a verifiable contract

- State the observable goal, scope, and non-goals. Ground the current context in inspected source and distinguish facts from assumptions.
- Describe required behavior, affected interfaces/data, preserved invariants, and reachable failure cases. Use concrete scenarios or condition/response statements where helpful.
- For an interface change, include the affected user journey, states, design choices and their visual or interaction checks in that same contract. Apply [interface design and verification](interface-design.md) within the project's format.
- Explain the proposed design at the level needed to implement it. For consequential decisions, record credible alternatives, including retaining the current approach when relevant, and the drawbacks of the selected option. Avoid line-by-line pseudocode or invented alternatives for obvious fixes.
- Give testable acceptance criteria and the checks or observations that establish them. For non-trivial work, map distinct requirements/risks to checks and expected results; mark mandatory versus advisory checks. Reference sufficient existing coverage and identify checks that still need implementation. Planned commands are not successful evidence.
- Plan coherent phases only when needed, with relevant tests, documentation, and cleanup alongside implementation. Identify where lasting behavior and design knowledge will live after delivery.
- Keep open questions visible. Distinguish decisions that block a particular scope from choices already delegated to the implementer. A bounded investigation may precede design when evidence is insufficient.

## Ownership, readiness, and handoff

Picard owns readiness and may write the specification. Delegate to Einstein when investigation, alternatives, or cross-component design justify a separate context. Apply the selected model profile and any explicit limits throughout planning, implementation and review.

Before dependent implementation, Picard checks that the contract answers the user's objective, fits the source context, has verifiable acceptance, and has no unresolved material decision within the authorized slice. Obtain owner approval where project policy or the user's retained authority requires it; reuse existing explicit authorization. A populated template, draft status change, or review verdict is not authorization. Unaffected authorized work may continue while a separate decision is pending.

An independent specification review is appropriate when required by the project or when costly or difficult-to-reverse design decisions warrant it. Give Sherlock the user requirements, constraints, source context and draft contract using the [initial reviewer packet](roles.md#delegation-packet). Review assumptions, alternatives, omissions and verifiability. The implemented candidate has its own review gate.

### Hand off a draft

Whenever Picard returns a draft, state which scope is ready to implement under the project's conventions and give the next step. For a discussion draft, stop at the requested level and identify the concrete gaps or decisions that matter before implementation. When asked for an implementation-ready plan, fill the gaps within the planning grant in the same artifact. Use the project's own way of describing executable work, whether phases with checklists, an issue with acceptance criteria, or another established format.

If the draft already meets the readiness criteria, identify the ready scope and reuse it. Name any decision the owner must make, the work it affects and any approval still required to begin. Keep the status and execution record consistent with the authorization actually given.

### Hand off implementation

Keep the canonical spec reference and revision, approved scope, open questions, acceptance checks, the source of authority, model profile and any explicit limits in the existing execution record.

Continue in the current session by default, subject to user and project instructions. Recommend a fresh session only for a concrete benefit, such as starting from a self-contained spec after a long exploration of discarded approaches. Explain the reason in one sentence. First put any decisions needed from the chat into the owning record and check that the receiving session can read the required local inputs.

When recommending a fresh session, give the user a short, paste-ready request invoking `$ausote`. Identify the checkout, project instructions and exact spec revision. Carry the actual owner grant for the intended action or point to a trusted owner approval covering that scope or phase. Include exclusions, pending gates, the selected model profile, and usage against any explicit limits. The execution record can locate the approval. If its provenance or scope is unclear, the receiver keeps the affected action pending until it can verify the grant. Reuse a verified grant across sessions.

During implementation, material changes to behavior, scope, invariants, or acceptance require reassessment and approval under the existing rules. Pause affected work until resolved. Routine choices already allowed by the design and execution-metadata updates do not reopen settled approval.

## Keep one source of truth

Use the [task record](../templates/task.md) inside the spec or link to the project's existing execution record. Store the contract once and execution state once. If they share a file, record which contract revision was reviewed before appending the outcome. For acceptance of the exact final file, store its ID outside those bytes. See [candidate identity](state.md#identify-the-evaluated-candidate-with-git).

At closeout, update the owning durable documentation, schemas, or tests as planned. Preserve meaningful decision rationale in an existing architecture/ADR location when needed. Follow the project's retention policy; if none exists, leave the specification in place and record completion in its execution record. Do not infer permission to delete, archive, commit, or publish from completion. A retained approved/active label alone does not authorize new work.
