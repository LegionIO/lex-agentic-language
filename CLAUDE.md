# lex-agentic-language

**Parent**: `../CLAUDE.md`

## What Is This Gem?

Domain consolidation gem for language processing and communication. Bundles 9 sub-modules into one loadable unit under `Legion::Extensions::Agentic::Language`.

**Gem**: `lex-agentic-language`
**Version**: 0.1.9
**Namespace**: `Legion::Extensions::Agentic::Language`

## Sub-Modules

| Sub-Module | Source Gem | Purpose | Runner Methods |
|---|---|---|---|
| `Language::Language` | `lex-language` | Core language processing — token parsing, semantic framing, pragmatic intent | `language_status`, `process_language` |
| `Language::Grammar` | `lex-cognitive-grammar` | Grammatical construction processing — construal, construction, grammar engine | `cognitive_grammar`, `grammar_status` |
| `Language::InnerSpeech` | `lex-inner-speech` | Vygotsky inner speech — private verbal thought for problem solving; utterance decay actor | `inner_speak`, `inner_plan`, `inner_question`, `inner_debate`, `switch_inner_voice`, `inner_interrupt`, `break_inner_rumination`, `recent_inner_speech`, `inner_narrative`, `update_inner_speech`, `inner_speech_stats` |
| `Language::Narrator` | `lex-narrator` | Real-time narrative stream of internal state (optional LLM enhancement) | `narrator_status`, `narrate` |
| `Language::NarrativeReasoning` | `lex-narrative-reasoning` | Narrative as a reasoning mode — story-schema activation | `narrative_reasoning`, `narrative_reasoning_status` |
| `Language::FrameSemantics` | `lex-frame-semantics` | Fillmore frame semantics — conceptual frames, slots, fillers | `frame_semantics`, `frame_semantics_status` |
| `Language::PragmaticInference` | `lex-pragmatic-inference` | Gricean maxims and conversational implicature | `pragmatic_inference`, `pragmatic_inference_status` |
| `Language::ConceptualBlending` | `lex-conceptual-blending` | Fauconnier & Turner — emergent blended structure from two input spaces | `conceptual_blending`, `conceptual_blending_status` |
| `Language::ConceptualMetaphor` | `lex-conceptual-metaphor` | Lakoff & Johnson — structural mappings between conceptual domains | `conceptual_metaphor`, `conceptual_metaphor_status` |

## Actors

| Actor | Interval | Target Method |
|---|---|---|
| `Language::InnerSpeech::Actor::DecayInnerSpeech` | 60s | `InnerSpeech#update_inner_speech` |

`DecayInnerSpeech` is the first and only actor in this gem. Without it, the `InnerVoice` stream would grow indefinitely and old utterances would remain at full salience. It calls `Runners::InnerSpeech#update_inner_speech` → `InnerVoice#tick` → `SpeechStream#decay_all`.

## Key Class: InnerSpeech::Helpers::Utterance

Represents a single token of inner-voice activity.

- **Key fields**: `mode` (narrating/planning/questioning/debating/…), `voice` (rational/bold/cautious/…), `urgency` (0–1), `salience` (0–1 — subject to temporal decay)
- **Decay**: `decay_salience!` reduces salience by `SALIENCE_DECAY` toward `SALIENCE_FLOOR`; triggered by the decay actor every 60s
- `salient?` returns true when salience >= 0.3; `urgent?` returns true when urgency >= 0.6
- `condensed_content` returns a portion of the content text (configurable ratio)

**Distinct from** `PragmaticInference::Helpers::Utterance`, which models an **external** communicative act scored against Gricean maxims with implicature accumulation. The PragmaticInference variant carries no urgency, salience, or decay logic.

## Dependencies

| Gem | Purpose |
|---|---|
| `legion-cache` >= 1.3.11 | Cache access |
| `legion-crypt` >= 1.4.9 | Encryption/Vault |
| `legion-data` >= 1.4.17 | DB persistence |
| `legion-json` >= 1.2.1 | JSON serialization |
| `legion-logging` >= 1.3.2 | Logging |
| `legion-settings` >= 1.3.14 | Settings |
| `legion-transport` >= 1.3.9 | AMQP |

## Development

```bash
bundle install
bundle exec rspec        # 0 failures
bundle exec rubocop      # 0 offenses
```
