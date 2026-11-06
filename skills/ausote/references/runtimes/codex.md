# Codex execution

Qualification snapshot: 2026-11-04. Local CLI tested: 0.166.0; the existing desktop runtime's exact component versions were not independently established. Recheck capabilities after relevant changes. This is guidance, not an adapter API.

## Before delegation

Inspect the tools actually exposed in the current session. Use native collaboration tools for worker lifecycle; do not start a separate orchestration service or create sidebar chats as workers. Set model and effort explicitly when supported and justified by the chosen profile and task. Never invent parameters from another Codex version.

In the tested interface, fresh agents used `fork_turns="none"`; full-history forks inherited model/effort and did not accept overrides. A fresh Sherlock receives a bounded handoff, not the author conversation. Permissions follow the parent; a request to avoid writes does not create an independent read-only sandbox.

The role instructions in this skill do not automatically register custom agents. The tested spawn schema had no custom-agent/profile selector. Native definitions may be added only when needed and supported; they are not required for this MVP.

## Evidence boundary

- Tested: explicit settings for two models, inheritance of both omitted settings, and retention across a completed-agent follow-up at the applied-configuration level.
- `spawn_agent`/`list_agents` results did not themselves attest model identity. Native stored turn/settings metadata corroborated configuration, but did not establish every provider response's model.
- Native usage data existed. Direct parsing of internal SQLite/rollout formats was an experiment, not a required skill dependency. Use available supported metadata; otherwise record `unknown` and partial coverage.
- A Luna-only catalog accepted a different explicit model at empty thread creation. Model catalogs and defaults are not qualified execution allowlists. No strict model allowlist, quota ceiling, provider fallback coverage, or custom-definition conflict was qualified.

Do not repeatedly rerun capability experiments during ordinary tasks. Use the qualified scope and honest limitations. If a task needs a missing guarantee, recommend a targeted qualification or a permitted narrower objective.

## Precedence and updates

Official documentation describes explicit spawn settings over subagent defaults over parent settings, with model-default effort behavior when a different model is selected without effort. Custom-agent file settings can override the resolved values. Only the tested subset above is experimentally qualified. Check current documentation and actual configuration when these mechanisms matter.

Global disk defaults are not proof of the active Picard model. Preserve user configuration; use isolated settings for any future conflict experiments. Do not update a global catalog, permission profile, or agent configuration to make a task pass.

Sources: [subagents](https://learn.chatgpt.com/docs/agent-configuration/subagents), [configuration](https://learn.chatgpt.com/docs/config-file/config-reference), [native metadata/events](https://learn.chatgpt.com/docs/app-server). For current recommendations, read [the editable table](../model-recommendations.md).
