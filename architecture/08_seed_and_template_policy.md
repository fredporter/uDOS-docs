# Seed And Template Policy

## Purpose

Define how the v2 family should retain and reuse seed data, templates, and
inspectable examples from the archive.

## Core Rule

Tracked seed and template assets should be:

- small
- inspectable
- owned by a current repo
- safe to copy and customize

Do not turn the active family into a giant generic template warehouse.

## What Belongs In Tracked Seeds

Good tracked seed candidates:

- workflow and webhook contract templates
- mapping templates
- example payloads
- course scaffolds
- small config defaults

## What Does Not Belong In Tracked Seeds

- private credentials
- local databases or backups
- machine-specific runtime state
- large generated build artifacts
- examples whose ownership is unclear

## Reuse Flow

1. start from a tracked template
2. copy into a repo-owned local example or runtime path
3. customize for the current project
4. keep successful patterns as small reusable tracked templates

## Family Direction

- `uDOS-docs` should explain the policy and family patterns
- code repos should keep only the templates they actively own
- examples should stay close to the runtime or contract that uses them

## Current Examples

- `uHOME-empire/src/webhooks/` for webhook, API, and mapping templates
- `uHOME-empire/examples/` for inspectable sync examples
- `uDOS-docs/examples/` for documentation update walkthroughs
