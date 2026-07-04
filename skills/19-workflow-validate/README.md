# 19 · Workflow Validation Ruleset

**Category:** Governance & quality
**Primary node:** `(analysis — no runtime node)`
**Files:** `template.json`, `rules.json`

## Purpose

A deterministic checklist + machine-readable ruleset for auditing any exported n8n v1.x workflow JSON before shipping it. Ships `rules.json` you can drive from a linter or review by hand.

## When to use

- Reviewing a workflow before activating it in production.
- Standardising quality across a team.

## Deterministic procedure

1. Export the target workflow (⋯ → Download).
2. Walk `rules.json` top to bottom against the export.
3. Fix every `error`-severity finding; triage `warn` findings.

## Parameters

_No parameters to configure._

## Validation checklist

- Exactly one trigger node; all nodes reachable from it.
- No orphan nodes (present in `nodes` but never in `connections`).
- Every node has a unique, human-meaningful `name`.
- `settings.executionOrder` is `v1`.
- No deprecated node types (cross-check skill 20).
- No credentials or secrets embedded in `parameters`.
- Error handling present (Error Workflow set, or Continue On Fail where appropriate).

## Notes

Severity `error` = must fix before shipping; `warn` = review and justify. See skill 21 to auto-document what passed.

## How to use the template

1. In n8n (v1.x), open **Workflows → Import from File** and select `template.json`
   (or paste its contents into a blank canvas with **Import from URL/Clipboard**).
2. Reconnect any credentials the nodes need (credentials are never stored in the
   template).
3. Rename nodes/fields to match your data, keeping the wiring intact.
