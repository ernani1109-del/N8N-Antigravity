# 20 · Migrate Deprecated Nodes

**Category:** Governance & quality
**Primary node:** `(analysis — no runtime node)`
**Files:** `template.json`, `mapping.json`

## Purpose

A deterministic mapping from deprecated/legacy node types to their supported n8n v1.x equivalents, so upgrades are mechanical rather than guesswork. Ships `mapping.json`.

## When to use

- Importing older workflows (n8n 0.x era) into a v1.x instance.
- Clearing deprecation warnings on the canvas.

## Deterministic procedure

1. Export the workflow and scan node `type` values against `mapping.json`.
2. For each hit, add the replacement node and re-create parameters (shapes changed).
3. Rewire connections, delete the deprecated node, and re-test.

## Parameters

_No parameters to configure._

## Validation checklist

- No node type appears as a key in `mapping.json` after migration.
- Replacement nodes have correct `typeVersion` for your instance.
- Behaviour re-verified — parameter shapes differ between old and new nodes.

## How to use the template

1. In n8n (v1.x), open **Workflows → Import from File** and select `template.json`
   (or paste its contents into a blank canvas with **Import from URL/Clipboard**).
2. Reconnect any credentials the nodes need (credentials are never stored in the
   template).
3. Rename nodes/fields to match your data, keeping the wiring intact.
