# Ausote (AUtonomous SOftware TEam)

**Give your AI coding agent a team.**

Building a feature across the API, database, and UI takes more than writing code. You need design decisions, tests for failure cases, and a reviewer who can challenge the result. With an AI coding agent, you can still end up coordinating each step yourself.

Ausote takes on that coordination. Install it in **Codex or Claude Code**, describe your goal, and work with **Picard**, your AI team lead. Picard writes code, brings in specialists when they help, and follows the work through checks and independent review. You stay focused on what you want to build.

## Meet your team

| Agent | What they bring to your project |
| --- | --- |
| **Picard · Team lead** | Your main point of contact. Plans the work, usually writes the code, coordinates the team, and takes responsibility for the result. |
| **Einstein · Architect** | Investigates design questions and turns an idea into a specification with clear tradeoffs and acceptance criteria. |
| **Leonardo · Product designer** | Shapes user flows, screen states, and visual details around your existing interface. |
| **Scotty · Engineer** | Takes on a self-contained implementation task and returns the code, checks, and any unresolved issues to Picard. |
| **Murphy · Test engineer** | Looks for ways the change could fail, runs targeted checks, and reports reproducible defects. |
| **Sherlock · Independent reviewer** | Examines the requirements and code with fresh context, forming a judgment before reading the implementer's conclusions. |

You don't need to configure or manage each agent. These are roles Ausote assigns through your coding tool's built-in subagents. Picard brings in the specialists the task needs; a small fix can stay small.

## One conversation, coordinated work

You talk to Picard in your main chat. Behind each assignment, the team shares a concrete goal, the relevant project context, and a clear boundary for the work.

1. **Agree on the result.** Picard reads your repository and establishes what the change needs to do. For a larger feature, Einstein can help resolve the design and Leonardo can shape the experience.
2. **Build with clear ownership.** Picard implements the change or hands a bounded piece to Scotty. One agent at a time edits shared product files, and Picard integrates the work.
3. **Check it from another angle.** Picard runs the relevant checks and can call on Murphy for deeper testing. Sherlock reviews substantial changes independently and sends findings back for resolution.
4. **Bring you the result.** Picard checks the evidence, addresses findings, and reports what changed, what passed, and what remains open. For longer tasks, the team records progress in your project's documents so you can pick it up in a later session.

You get a team that follows your repository's conventions, uses your existing tests, and keeps you informed as the work develops. You can ask for a plan before implementation, set limits on delegation, and decide when committing, pushing, or deployment is authorized.

## Install

You need Codex or Claude Code installed, with native subagents available.

> GitHub installation and explicit invocation were checked in clean profiles on macOS with Codex CLI 0.166.0 and Claude Code 2.1.316 on 2026-11-08, using published revision `8ce2e1d`. This is a bounded installation check; later package revisions need their own hosted check.

### Codex

Run in your terminal:

```sh
codex plugin marketplace add PluralFusion/ausote
codex plugin add ausote@ausote
```

Start a new Codex session in your project and include `$ausote:ausote` with your task. This is the installed plugin's qualified skill name. `$ausote` also resolved to that installation in the clean-profile check.


### Claude Code

Run in your terminal:

```sh
claude plugin install ausote --marketplace PluralFusion/ausote
```

Start a new Claude Code session in your project and include `/ausote:ausote` with your task.

## Budget mode

Ask for **Economy** to favor lower-resource models and reasoning effort where they can meet the task's requirements. **Standard** is the default. Both profiles keep the same testing and independent-review requirements.

In Codex:

```text
$ausote:ausote Use Economy to fix duplicate rows in the CSV export.
Add a regression test and have the fix independently reviewed.
```

In Claude Code:

```text
/ausote:ausote Use Economy to fix duplicate rows in the CSV export.
Add a regression test and have the fix independently reviewed.
```

You can also add limits such as “Use at most two subagents.” Picard keeps your selected main-session model and applies Economy to the agent settings it can choose. Critical work may still need a stronger configuration; Economy does not guarantee a spending cap or a particular saving.

See [model profiles and routing](skills/ausote/references/model-routing.md) for details.
