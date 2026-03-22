# Course Content Plan: Rendering, Themes, and GUI

## Goal

Teach the v2 family rendering and GUI model as one coherent pathway instead of
separate repo anecdotes.

## Audience

- builders learning the public repo family
- operators moving from prose-style publishing into GUI previews
- contributors working on theme packs, Beacon surfaces, or gameplay skins

## Proposed Lesson Sequence

### 1. Compile Before Publish

Teach:

- compile creates the canonical artifact
- render adapters derive outputs
- publish and preview are downstream actions

Primary repos:

- `uDOS-core`
- `uDOS-docs`

### 2. Semantic Render Contracts

Teach:

- frontmatter as compile metadata
- render target ids
- semantic HTML as the shared output base

Primary repos:

- `uDOS-core`

### 3. Prose Presets and Theme Adapters

Teach:

- heading/body font independence
- stable prose sizing
- viewer font-scale controls
- email-safe and shell-safe theme mappings

Primary repos:

- `uDOS-themes`

### 4. Wizard GUI, Thin GUI, and Beacon

Teach:

- shared preview payloads
- Wizard as orchestration and preview runtime
- Thin GUI as a shell variant
- Beacon as access ritual plus nearby reading handoff

Primary repos:

- `uDOS-wizard`
- `uHOME-server`

### 5. Gameplay SKIN and LENS

Teach:

- gameplay semantics vs render adapters
- `SKIN` as theme adapter
- `LENS` as advisory/context layer

Primary repos:

- `uDOS-gameplay`
- `uDOS-themes`
- `uDOS-core`

## Current Deliverables

- family explainer page: this course plan plus the render/theme pipeline doc
- repo-local quickstarts: owned by the sibling repos listed above
- Wizard GUI preview lesson: covered through Wizard preview and MCP/browser docs
- gameplay skin adapter lesson: framed here as the `SKIN` and `LENS` ownership rule

## Next Documentation Increments

- expand the Beacon library handoff lesson with concrete runtime examples
- add a repo-crosswalk showing one artifact rendered through multiple targets
- add a worked teaching session that connects Core compile, Themes mapping, Wizard preview, and gameplay skin overlay in one exercise
