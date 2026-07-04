# 09 · Filter Items

**Category:** Data flow
**Primary node:** `n8n-nodes-base.filter` (typeVersion 2.2)
**Files:** `template.json`

## Purpose

Keep only the items that match a typed condition and discard the rest with the Filter node (unlike IF, there is no false branch to wire).

## When to use

- Dropping records you never want downstream (spam, test rows, nulls).

## Deterministic procedure

1. Import the template.
2. Set conditions that describe the items to KEEP.
3. Choose AND/OR when using multiple conditions.

## Parameters

| Parameter | Where | What to set |
|---|---|---|
| `conditions` | Filter | Typed keep-conditions (left, operator, right). |

## Validation checklist

- Conditions describe what to keep, not what to remove.
- Types are explicit to avoid coercion surprises.

## How to use the template

1. In n8n (v1.x), open **Workflows → Import from File** and select `template.json`
   (or paste its contents into a blank canvas with **Import from URL/Clipboard**).
2. Reconnect any credentials the nodes need (credentials are never stored in the
   template).
3. Rename nodes/fields to match your data, keeping the wiring intact.
