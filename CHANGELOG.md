# Changelog

## [Unreleased]

## [0.1.1] - 2026-03-18

### Changed
- Enforce SLOT_TYPES enum validation in `Frame#add_slot` — returns nil for invalid slot_type
- Enforce EXPRESSION_TYPES enum validation in `GrammarEngine#create_construction` — returns nil for invalid expression_type
- Enforce SPECIFICITY_LEVELS enum validation in `GrammarEngine#create_construal` — returns nil for invalid specificity
- Enforce SCOPE_LEVELS enum validation in `GrammarEngine#create_construal` — returns nil for invalid scope
- Enforce DEPTHS enum validation in `Summarizer#summarize_domain` and `Summarizer#extract_key_facts` — returns nil for invalid depth

## [0.1.0] - 2026-03-18

### Added
- Initial release as domain consolidation gem
- Consolidated source extensions into unified domain gem under `Legion::Extensions::Agentic::<Domain>`
- All sub-modules loaded from single entry point
- Full spec suite with zero failures
- RuboCop compliance across all files
