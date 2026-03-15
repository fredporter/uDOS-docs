# v2 Workflow, Automation, and Runtime Split

## Purpose

Lock the product-level runtime split across Wizard, uHOME, app surfaces, and
gameplay before deeper implementation expands.

## Ownership

- `uDOS-wizard` owns workflow authority
- `uHOME-server` owns always-on automation fulfillment
- app surfaces own selective user-touch advance or approve interactions
- `uDOS-gameplay` owns interpretation, progression, `LENS`, and `SKIN`-aware
  feedback
- `uDOS-core` owns only the minimal shared contract layer between them

## Product Model

Wizard is the conscious operator surface.

Use Wizard for:

- planning or starting missions and workflows
- requesting online assist
- approving gated actions
- changing intent, policy, or direction

`uHOME-server` is the durable environment.

Use `uHOME-server` for:

- schedules
- queued execution
- local watchers
- retries and background continuity
- Thin GUI and kiosk-safe local surfaces

## Shared Core Contracts

The shared minimum is:

- `workflow-state`
- `workflow-action`
- `automation-job`
- `automation-result`
- `artifact-ref`
- `capability-registry`
- `event-log`

These contracts should stay small enough that multiple repos can consume them
without inheriting each other's policy.

Machine-readable source of truth:

- `uDOS-core/contracts/workflow-state-contract.json`
- `uDOS-core/contracts/workflow-action-contract.json`
- `uDOS-core/contracts/automation-job-contract.json`
- `uDOS-core/contracts/automation-result-contract.json`

## Design Rule

Wizard does not need to be open for routine fulfillment to continue.

Wizard may still be required for:

- online API assist
- conscious mission advancement
- explicit approval gates
- re-planning or policy changes

This is the intended v2 behavior.

## GUI Rule

- browser operator GUI belongs to `uDOS-wizard`
- Thin GUI belongs to `uHOME-server`
- shared render and theme contracts stay in `uDOS-core` and `uDOS-themes`

No UI shim is required yet. The boundary is the priority.
