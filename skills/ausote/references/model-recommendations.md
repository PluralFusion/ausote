# Codex model recommendations

Last assessed: 2026-11-19. These are starting choices for Codex. Each recommendation is a model and reasoning effort for a particular assignment. A developer can edit these rows or link a project-specific table from existing project instructions. User selections and explicit restrictions take precedence.

| Assignment | Standard (default) | Economy |
| --- | --- | --- |
| Narrow lookup or mechanical edit with a direct check | `gpt-6-luna` / medium | `gpt-6-luna` / low |
| Implement a local change with an agreed approach and known acceptance checks | `gpt-6.2-sol` / medium | `gpt-6.2-sol` / low |
| Diagnose a cause, choose an approach, or independently assess a design and its checks | `gpt-6.2-sol` / high | `gpt-6.2-sol` / medium |
| Implement or independently assess critical behavior, such as payment eligibility, access control, or correctness under concurrent updates | `gpt-6.2-sol` / high | `gpt-6.2-sol` / high |

Choose by the decision the agent owns. Listing callers of a payment function is a narrow lookup. Deciding whether concurrent retries can charge a customer twice calls for the critical-behavior row, even when the relevant code fits in one function.

For critical work, `high` is the usual choice. In either profile, Picard may request `gpt-6.2-sol` / xhigh for a specific delegated question when a wrong answer would be costly, direct checks are difficult, and deeper reasoning could resolve a concrete uncertainty. For example, a review at `high` might leave open whether a retry after a crash can repeat a charge already accepted by the provider. Name the unresolved question and how the answer can be checked. Honor the user's and project's model and effort limits.

Economy aims for lower resource use. The savings and suitability of these particular choices are unmeasured hypotheses. The same model can be appropriate in both profiles. Roles have no fixed model. A task outside the table calls for a justified permitted choice. The table applies where native model selection is available and does not change the main session's model.

## Astra approval

In both profiles, use GPT-6 Astra for delegated work only with explicit developer approval covering that work. A developer request such as “use Astra for the final design review” grants approval for that review. An allowlist or recommendation only establishes eligibility. Selecting Astra for the main session covers Picard alone.

If Picard proposes Astra, name the assignment, effort and reason, then wait for confirmation before dispatch. This applies to explicit selection, inherited settings, and any fallback Picard or a worker can choose. Reuse approval within its stated scope, including after resume. Ask again when the proposed work falls outside it.

## Maintaining the table

Check availability in the current runtime. On a relevant release, rejected setting or demonstrated quality or cost problem, update the affected rows and assessment date. Use current official guidance and distinguish observed task results from untested expectations. Preserve user constraints when recommending alternatives.

OpenAI recommends GPT-6 Luna for small, repeatable tasks and GPT-6.2 Sol for everyday coding and multistep work. The local Codex catalog lists every model and effort combination above. The November 4 routing experiment covered selected settings on bounded requests using GPT-6 Luna and the previous Sol release. Comparative quality, subscription usage and billed savings for the updated profiles remain unmeasured. [OpenAI model selection](https://learn.chatgpt.com/docs/model-selection) · [GPT-6.2 release in Codex](https://learn.chatgpt.com/docs/whats-new/gpt-62-astra-sol) · [Codex subagents](https://learn.chatgpt.com/docs/agent-configuration/subagents)
