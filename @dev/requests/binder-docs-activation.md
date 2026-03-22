# Request: `#binder/docs-activation`

- title: Activate `uDOS-docs` as the next Tranche 4 repo-facing implementation surface
- requested by: v2 roadmap workflow
- owning repo or stream: `uDOS-docs`
- binder: `#binder/docs-activation`
- summary: Add the first repo-level activation and validation flow for `uDOS-docs` while keeping ownership inside family documentation, onboarding, and public reference maps.
- acceptance criteria:
  - `uDOS-docs` exposes an activation doc
  - `uDOS-docs` exposes a local validation command under `scripts/`
  - `uDOS-docs` includes a minimal author walkthrough
  - repo entry surfaces point to the activation flow
- dependencies:
  - `#binder/core-contract-enforcement`
  - `#binder/sonic-activation`
  - `uDOS-docs` current family topic docs under `architecture/`, `wizard/`, `alpine/`, and `uhome/`
- boundary questions:
  - activation should stay inside documentation ownership
  - implementation behavior remains in the owning repos
  - private OMD documentation remains outside the public docs repo
- due or milestone: v2 roadmap tranche 4

## Binder Fields

- state: `completed`
- owner: `uDOS-docs`
- dependent repos:
  - `uDOS-dev`
- blocked by:
  - none
- target branch: `develop`
- objective:
  - make `uDOS-docs` runnable and teachable without broadening its ownership boundary
- promotion criteria:
  - docs activation docs, example, and validation entrypoint are committed
  - roadmap ledger reflects `uDOS-docs` as the active repo-activation binder
- files or areas touched:
  - `uDOS-docs/docs`
  - `uDOS-docs/scripts`
  - `uDOS-docs/tests`
  - `uDOS-docs/config`
  - `uDOS-docs/examples`
  - `uDOS-dev/@dev`

## Lifecycle Checklist

- [x] Open
- [x] Hand off
- [x] Advance
- [x] Review
- [x] Commit
- [x] Complete
- [x] Compile
- [x] Promote
