# Change: descriptive title

Use the project's own format when available. Otherwise adapt this checklist in its canonical issue, plan, or spec location. Combine sections for small work; add only relevant detail. A completed template does not grant implementation authority.

## Goal and scope

Describe the observable outcome, affected boundaries, and excluded work.

## Current context

Link inspected source, tests, and existing contracts. Identify current behavior, relevant limitations, and assumptions that need evidence.

## Required behavior and invariants

Describe supported behavior, affected interfaces/data, preserved guarantees, and reachable failures. Add concrete scenarios where they remove ambiguity. Name relevant quality constraints in verifiable terms.

## Design decisions and alternatives

Explain the implementation approach, ownership, and important interactions. For consequential choices, give alternatives, the reason for selection, and accepted drawbacks. Reference durable architecture and machine-readable contracts where they already exist.

## Acceptance criteria and verification

Give distinct, testable criteria. For non-trivial work, adapt this matrix; reference existing tests and identify new checks where needed. Record execution results only in the execution record.

| Requirement or risk | Check or observation | Expected result | Mandatory or advisory |
| --- | --- | --- | --- |

## Implementation plan and documentation

Describe coherent steps or phases and their dependencies. Keep appropriate tests, documentation updates, and cleanup with each behavior change. Include migration, rollout, or recovery work only when relevant. Name the durable sources to update at completion.

## Open questions and execution record

List unresolved decisions and the scope each blocks; distinguish choices the implementer may make. Reference the governing project policy and record the authorization actually given, including any limits.

Keep one execution record here or link to the existing record. Adapt Ausote's task checklist for baseline/candidate identity, contract revision, assignments, model profile, explicit limits, checks, findings, acceptance, and resume state. Do not repeat requirements or design in that record. Preserve the project's status and retention conventions.
