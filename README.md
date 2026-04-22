# lex-agentic-language

Domain consolidation gem for language processing and communication. Bundles 9 sub-modules into one loadable unit under `Legion::Extensions::Agentic::Language`.

## Overview

**Gem**: `lex-agentic-language`
**Version**: 0.1.9
**Namespace**: `Legion::Extensions::Agentic::Language`

## Sub-Modules

| Sub-Module | Purpose |
|---|---|
| `Language::Language` | Core language processing — token parsing, semantic framing, pragmatic intent |
| `Language::Grammar` | Grammatical construction processing (construal, construction, grammar engine) |
| `Language::InnerSpeech` | Vygotsky inner speech — private verbal thought for problem solving |
| `Language::Narrator` | Real-time narrative stream of internal state (optional LLM enhancement) |
| `Language::NarrativeReasoning` | Narrative as a reasoning mode — story-schema activation |
| `Language::FrameSemantics` | Fillmore frame semantics — conceptual frames, slots, fillers |
| `Language::PragmaticInference` | Gricean maxims and conversational implicature |
| `Language::ConceptualBlending` | Fauconnier & Turner — emergent blended structure from two input spaces |
| `Language::ConceptualMetaphor` | Lakoff & Johnson — structural mappings between conceptual domains |

## Actors

- `Language::InnerSpeech::Actor::DecayInnerSpeech` — every 60s, decays utterance salience in the inner voice stream via `update_inner_speech`

This is the first actor added to this gem. Without it the inner speech stream grows indefinitely.

## Quick Usage

```ruby
require 'legion/extensions/agentic/language'

# Use the InnerSpeech runner
include Legion::Extensions::Agentic::Language::InnerSpeech::Runners::InnerSpeech

inner_speak(content: "Should I accept this task?", mode: :questioning, topic: :task_eval)
# => { success: true, utterance_id: "...", mode: :questioning }

inner_plan(content: "First verify the input, then transform")
# => { success: true, utterance_id: "..." }

recent_inner_speech(count: 3)
# => { success: true, utterances: [...], count: 3 }
```

## Installation

```ruby
gem 'lex-agentic-language'
```

## Development

```bash
bundle install
bundle exec rspec
bundle exec rubocop
```

## License

MIT
