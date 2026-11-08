# Claude Code model recommendations

Assessed 2026-11-05 from Anthropic documentation for Haiku 5.5, Sonnet 5.5, and Opus 5.5. Use this table to propose assignments in Claude Code. The profiles cover the same work as the [Codex recommendations](model-recommendations.md). Cross-provider quality and actual spending remain unmeasured. The [runtime reference](runtimes/claude-code.md) states the bounded native qualification scope; it does not establish comparative quality or savings for these recommendations.

| Assignment | Standard (default) | Economy |
| --- | --- | --- |
| Narrow lookup or mechanical edit with a direct check | `haiku` / medium | `haiku` / low |
| Implement a local change with an agreed approach and known acceptance checks | `sonnet` / medium | `sonnet` / low |
| Diagnose a cause, choose an approach, or independently assess a design and its checks | `opus` / medium | `sonnet` / medium |
| Implement or independently assess critical behavior, such as payment eligibility, access control, or correctness under concurrent updates | `opus` / high | `opus` / high |

Use Sonnet to implement an agreed plan. Choosing which audit finding to address next, or reviewing the proposed design, calls for Opus / medium in Standard and Sonnet / medium in Economy. For payment code, tracing callers fits Haiku. Determining whether concurrent retries can charge twice calls for Opus / high in either profile. These choices reflect our judgment about assignment risk and Anthropic's published guidance and API pricing. [Models](https://platform.claude.com/docs/en/models/overview) · [Effort](https://platform.claude.com/docs/en/build-with-claude/effort) · [Pricing](https://platform.claude.com/docs/en/about-claude/pricing)

For an exceptional assignment, consider Opus 5.5 / xhigh if a review at high leaves a consequential question unresolved and a longer analysis could answer it. Fable 5.1 is a candidate for a separately proposed assignment if Opus at higher effort falls short. Both profiles use the table above for routine assignments. [Anthropic model selection](https://platform.claude.com/docs/en/models/overview)

The table uses family aliases accepted by the Claude Code Agent tool. Providers and local settings can map the same alias to different versions. Check the version and supported effort available to the session before presenting a pair as available. When either is unknown, report the requested pair and the uncertainty. Reassess the affected row when an alias changes. [Claude Code model configuration](https://code.claude.com/docs/en/model-config) · [Subagent model and effort](https://code.claude.com/docs/en/sub-agents#choose-a-model)
