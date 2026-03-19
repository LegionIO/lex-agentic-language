# lex-agentic-language

Domain consolidation gem for language processing and communication. Bundles 9 source extensions into one loadable unit under `Legion::Extensions::Agentic::Language`.

## Overview

**Gem**: `lex-agentic-language`
**Version**: 0.1.2
**Namespace**: `Legion::Extensions::Agentic::Language`

## Sub-Modules

| Sub-Module | Source Gem | Purpose |
|---|---|---|
| `Language::Language` | `lex-language` | Core language processing — token parsing, semantic framing, pragmatic intent |
| `Language::Grammar` | `lex-cognitive-grammar` | Grammatical structure processing |
| `Language::InnerSpeech` | `lex-inner-speech` | Vygotsky inner speech — private verbal thought for problem solving |
| `Language::Narrator` | `lex-narrator` | Real-time narrative stream of internal state (optional LLM enhancement) |
| `Language::NarrativeReasoning` | `lex-narrative-reasoning` | Narrative as a reasoning mode — story-schema activation |
| `Language::FrameSemantics` | `lex-frame-semantics` | Fillmore frame semantics — conceptual frames, slots, fillers |
| `Language::PragmaticInference` | `lex-pragmatic-inference` | Gricean maxims and conversational implicature |
| `Language::ConceptualBlending` | `lex-conceptual-blending` | Fauconnier & Turner — emergent blended structure from two input spaces |
| `Language::ConceptualMetaphor` | `lex-conceptual-metaphor` | Lakoff & Johnson — structural mappings between conceptual domains |

## Installation

```ruby
gem 'lex-agentic-language'
```

## Development

```bash
bundle install
bundle exec rspec        # 735 examples, 0 failures
bundle exec rubocop      # 0 offenses
```

## License

MIT
