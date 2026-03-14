# uDOS-docs

## Purpose

Canonical public documentation repo for the uDOS v2 and uHOME family.

## Ownership

- family-level architecture docs
- onboarding and learning paths
- public reference and explanatory material

## Non-Goals

- canonical runtime code ownership
- provider bridge implementation
- private OMD product documentation

## Spine

- `docs/`
- `architecture/`
- `wizard/`
- `alpine/`
- `uhome/`
- `tests/`
- `scripts/`
- `config/`
- `examples/`

## Local Development

Prefer plain-language, source-first documentation that teaches the system.

Useful entry docs:

- `docs/onboarding.md`
- `docs/getting-started.md`
- `docs/binders-and-publishing.md`
- `docs/vision.md`
- `docs/requests-and-submissions.md`
- `docs/modes-and-boundaries.md`
- `architecture/07_family_learning_path.md`

## Family Relation

This repo explains the family but should not become the owner of implementation details that belong elsewhere.

## Activation

The v2 repo activation path is documented in `docs/activation.md`.

Run the current repo validation entrypoint with:

```bash
scripts/run-docs-checks.sh
```
