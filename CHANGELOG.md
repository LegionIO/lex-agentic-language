# Changelog

## [0.1.6] - 2026-03-30

### Changed
- update to rubocop-legion 0.1.7, resolve all offenses

## [0.1.5] - 2026-03-26

### Changed
- fix remote_invocable? to use class method for local dispatch

## [0.1.4] - 2026-03-23

### Changed
- route llm calls through pipeline when available, add caller identity for attribution

## [0.1.3] - 2026-03-22

### Changed
- Add legion-logging, legion-settings, legion-json, legion-cache, legion-crypt, legion-data, legion-transport as runtime dependencies
- Replace direct Legion::Logging calls with injected log helper in runner modules
- Update spec_helper with real sub-gem helper stubs

## [0.1.2] - 2026-03-18

### Changed
- Enforce BLEND_TYPES enum validation in `BlendingEngine#blend` — returns nil for invalid blend_type
- Add 2 specs for BLEND_TYPES enforcement in blending engine spec

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
