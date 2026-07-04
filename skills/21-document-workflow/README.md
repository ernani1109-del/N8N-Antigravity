# 21 · Auto-document a Workflow

**Category:** Governance & quality
**Primary node:** `(analysis — no runtime node)`
**Files:** `template.json`, `runbook-template.md`

## Purpose

A deterministic template + procedure for turning any exported workflow JSON into a consistent Markdown runbook (trigger, node inventory, data flow, credentials, failure handling). Ships `runbook-template.md`.

## When to use

- Onboarding teammates onto an existing workflow.
- Producing audit/compliance documentation.

## Deterministic procedure

1. Export the workflow JSON.
2. Fill `runbook-template.md`: list `nodes[]` (name, type, typeVersion) and derive the flow from `connections`.
3. Record trigger type/schedule, external systems, credentials used, and the error strategy.
4. Commit the runbook next to the workflow export.

## Parameters

_No parameters to configure._

## Validation checklist

- Every node in the export appears in the node inventory.
- The documented flow matches the `connections` graph.
- Credentials are named by type/role only — never secret values.

## How to use the template

1. In n8n (v1.x), open **Workflows → Import from File** and select `template.json`
   (or paste its contents into a blank canvas with **Import from URL/Clipboard**).
2. Reconnect any credentials the nodes need (credentials are never stored in the
   template).
3. Rename nodes/fields to match your data, keeping the wiring intact.
