# Wiki Stub: Rendering, Themes, and GUI

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

## First Links

- `uDOS-core/docs/v2.0.3-render-foundation.md`
- `uDOS-themes/docs/v2.0.2-theme-adapter-bridge.md`
- `uDOS-wizard/docs/v2.0.3-render-preview-consumption.md`
- `architecture/12_v2_render_theme_and_gui_pipeline.md`
- `docs/course-content-plan-rendering-themes-and-gui.md`
