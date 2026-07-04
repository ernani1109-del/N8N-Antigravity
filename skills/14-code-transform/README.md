# 14 · Code Node Transform

**Category:** Data transformation
**Primary node:** `n8n-nodes-base.code` (typeVersion 2)
**Files:** `template.json`

## Purpose

Apply a custom, deterministic JavaScript transform when no built-in node fits, using the Code node in "Run Once for All Items" mode. The template returns items with a computed field.

## When to use

- Logic too specific for Set/Filter/Aggregate.
- Reshaping arrays, computing derived fields, or flattening nested JSON.

## Deterministic procedure

1. Import the template.
2. Keep mode = "Run Once for All Items" for whole-batch logic, or switch to per-item.
3. Return an array of `{ json: {...} }` objects.
4. Avoid non-deterministic calls (Date.now/random) if reproducibility matters.

## Parameters

| Parameter | Where | What to set |
|---|---|---|
| `mode` | Code | runOnceForAllItems / runOnceForEachItem. |
| `jsCode` | Code | Your transform; must return items. |

## Validation checklist

- Return value is an array of items with a `json` key.
- No external network calls (use HTTP Request node for those).

## How to use the template

1. In n8n (v1.x), open **Workflows → Import from File** and select `template.json`
   (or paste its contents into a blank canvas with **Import from URL/Clipboard**).
2. Reconnect any credentials the nodes need (credentials are never stored in the
   template).
3. Rename nodes/fields to match your data, keeping the wiring intact.
