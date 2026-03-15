# v2 Render, Theme, and GUI Pipeline

## Purpose

Lock the active v2 ownership split for:

- Markdown-first render contracts
- prose presets and CSS theme packs
- GUI preview surfaces
- Beacon library output
- gameplay `SKIN` integration

## Core Rule

Compile creates the canonical artifact.
Render adapters derive reader-facing outputs from that artifact.

## Ownership Split

- `uDOS-core` owns:
  - render contract shape
  - semantic `md + frontmatter -> html` transform contract
  - target ids and output manifest rules
- `uDOS-themes` owns:
  - prose presets
  - publishing and email-safe theme adapters
  - shell/UI theme mappings
  - gameplay skin theme adapters
- `uDOS-wizard` owns:
  - preview APIs
  - publish orchestration
  - Beacon networking-side handoff
  - browser operator GUI consumption of shared preview payloads
- `uHOME-server` owns:
  - Thin GUI and kiosk-style local presentation shells
  - nearby reading and library presentation behind Beacon
- `uHOME-empire` owns:
  - remote sync and CRM side-effects
  - not the canonical renderer
- private apps own:
  - app-specific UX on top of shared contracts
  - not the public contract itself

## Output Targets

Starter target set:

- `web-prose`
- `email-html`
- `gui-preview`
- `beacon-library`

## Prose Style Model

The prose system should have two layers:

1. compile metadata
2. viewer controls

Compile metadata may declare:

- `prose_preset`
- `theme_adapter`
- optional `skin_id`
- optional `lens_id`

Viewer controls may declare:

- local font-scale adjustments
- shell or GUI zoom

Viewer controls do not mutate the canonical artifact.

## Gameplay Rule

`SKIN = LENS-aware theme adapter + optional gameplay overlay`

This means:

- `LENS` remains gameplay/progression context
- `SKIN` resolves through shared theme contracts
- gameplay does not become a second render-contract owner

## Educational Value

This split is teachable because it lets learners see one coherent chain:

Markdown -> compile artifact -> semantic render -> themed output -> GUI or
delivery surface

## GUI Boundary Rule

The family GUI split is now:

- `uDOS-wizard` = browser operator GUI
- `uHOME-server` = Thin GUI and kiosk/local presentation

No v2 shim is required yet. Current implementation may remain transitional
while the contract boundary is still settling, but new product planning should
follow this ownership split.
