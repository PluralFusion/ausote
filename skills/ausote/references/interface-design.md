# Interface design and verification

## Choose the design work

For an established pattern, such as correcting a label or adding a standard field, Picard or Scotty can follow the existing screen directly. A new journey, a change in navigation, or a form with consequential recovery choices may benefit from a bounded Leonardo assignment. Choose tools and model capabilities for the actual work under the selected profile. If an explicit limit applies, preserve capacity for required review.

Inspect the project's design system, components, nearby screens and any supplied designs. Use relevant platform guidance when needed. Distinguish desktop web, mobile web and native app expectations according to the project's actual targets. Explain a departure from an established pattern in terms of the user's need.

## Design the journey

Describe who is trying to do what, where they start, how they know they succeeded, and what happens if they cannot finish. Choose the navigation, controls and copy for that journey. Use typography, spacing and contrast to make the main action and feedback easy to find. Include the relevant states: an empty result, loading, validation error, retry or cancellation can change what the user needs from the screen.

Write observable criteria for the important choices. For example: after a search fails, the query stays visible and Retry uses that query. Address accessibility and layout for the affected interaction: focus and keyboard operation on the web, or touch, text size and back navigation on mobile, as applicable. A wireframe or prototype is useful when it resolves a design question. Follow project rules for design artifacts and link them from the owning contract; Ausote adds no mandatory document or approval round.

## Verify the candidate

Select checks for the changed journey and the project's target environment. During planning, describe how to check the proposed design. Once authorized to evaluate a candidate, record the runtime or device, state exercised, result and remaining coverage in the existing task record. Keep each claim tied to what was observed:

| Question | Useful evidence and its scope |
| --- | --- |
| Does the implementation handle a state? | Source inspection, builds and focused tests support their specific logic claims. A green build alone does not show a usable screen. |
| Does the screen render as intended? | Inspect the rendered candidate at a relevant viewport, device configuration and state. A screenshot supports visible layout and copy in that state; a design mock describes intent. |
| Can the user complete the action? | Exercise the actual interaction in a browser, simulator, emulator or device, manually or with a UI test. Observe the outcome, including relevant input, focus, navigation or recovery behavior. A mock backend or emulator only covers the conditions exercised. |
| Is the experience useful to its intended users? | Design reasoning and expert review identify hypotheses. Claim user validation only when supported by actual user feedback or research. |

When independent review is required, Sherlock reviews the identified candidate against the UI requirements independently of the designer and implementer. Use suitable access to the running interface or relevant candidate evidence; distinguish direct inspection from another participant's observations. If required visual or interaction evidence is unavailable, record the missing check and leave that acceptance gate open. Do not turn a preview, screenshot or passing unit test into an unobserved interaction result.
