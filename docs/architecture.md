# uDOS-docs Architecture

uDOS-docs is the family documentation surface.

## Main Areas

- `docs/` holds repo-level entry points.
- `architecture/`, `wizard/`, `alpine/`, and `uhome/` organize family topics.
- `tests/` can validate documentation conventions or generated outputs.
- `scripts/run-docs-checks.sh` is the activation validation entrypoint.

## Legacy Assessment

Use `architecture/05_v1_archive_relevance_assessment.md` when evaluating
whether archived v1.8 material should be promoted into active family docs.

Use `architecture/06_v1_archive_asset_migration_matrix.md` for the second-pass
asset audit covering reusable scripts, templates, courses, and wiki content.

Use `architecture/09_v1_code_helper_reuse_audit.md` for the code-level helper
audit covering rewrite-worthy logic, pattern-only modules, and archive-only
implementation surfaces.
