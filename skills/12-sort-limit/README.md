# 12 · Sort & Limit

**Category:** Data transformation
**Primary node:** `n8n-nodes-base.sort` (typeVersion 1)
**Files:** `template.json`

## Purpose

Deterministically order items and cap how many pass through, using the Sort node followed by the Limit node (top-N pattern).

## When to use

- Top-N reporting (e.g. 5 largest orders).
- Guaranteeing stable ordering before writing output.

## Deterministic procedure

1. Import the template.
2. In Sort, add sort fields and ascending/descending order.
3. In Limit, set Max Items and keep-from (first/last).

## Parameters

| Parameter | Where | What to set |
|---|---|---|
| `sortFieldsUi` | Sort | Field name + direction per sort key. |
| `maxItems` | Limit | How many items to keep. |

## Validation checklist

- Sort keys exist on the items.
- Limit runs AFTER sort, not before.

## How to use the template

1. In n8n (v1.x), open **Workflows → Import from File** and select `template.json`
   (or paste its contents into a blank canvas with **Import from URL/Clipboard**).
2. Reconnect any credentials the nodes need (credentials are never stored in the
   template).
3. Rename nodes/fields to match your data, keeping the wiring intact.
