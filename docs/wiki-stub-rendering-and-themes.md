# Rendering, Themes, and GUI

## Summary

uDOS v2 uses one shared public pipeline for rendering and themed output.

The short version is:

- `uDOS-core` defines the render contract
- `uDOS-themes` defines prose presets and theme adapters
- `uDOS-wizard` previews and orchestrates those outputs
- Beacon and GUI surfaces consume the same shared render results
- gameplay `SKIN` decorates the same pipeline instead of forking it

## Key Terms

- **compile artifact**: the canonical structured output produced before render
- **render target**: a named output lane such as `web-prose` or `gui-preview`
- **prose preset**: heading/body font and baseline prose sizing intent
- **theme adapter**: CSS/theme layer for a target surface
- **skin**: gameplay-aware theme adapter and overlay bundle

## Ownership Snapshot

- `uDOS-core` owns compile artifact shape, render contracts, and target ids
- `uDOS-themes` owns prose presets, theme adapters, and surface mappings
- `uDOS-wizard` owns browser preview and orchestration for shared render outputs
- `uHOME-server` owns Thin GUI and kiosk/local presentation shells
- `uDOS-gameplay` may layer `SKIN` over the shared pipeline without forking it

## Current Flow

1. source markdown and frontmatter compile into a canonical artifact
2. render targets derive semantic output from that artifact
3. theme adapters map the output to prose, GUI, shell, or gameplay-facing presentation
4. Wizard and local GUI surfaces consume those outputs without redefining the underlying contract

## Primary References

- `uDOS-core/docs/v2.0.3-render-foundation.md`
- `uDOS-themes/docs/v2.0.2-theme-adapter-bridge.md`
- `uDOS-wizard/docs/v2.0.3-render-preview-consumption.md`
- `architecture/12_v2_render_theme_and_gui_pipeline.md`
- `docs/course-content-plan-rendering-themes-and-gui.md`
