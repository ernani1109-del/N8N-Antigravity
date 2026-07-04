# 08 · Recombine Branches (Merge)

**Category:** Data flow
**Primary node:** `n8n-nodes-base.merge` (typeVersion 3)
**Files:** `template.json`

## Purpose

Bring two branches back together with the Merge node. The template uses "Combine → By Position" but documents the other modes.

## When to use

- After an IF/Switch split, or after two parallel data sources, when you need a single stream again.
- Joining datasets by a key (Combine → By Matching Fields).

## Deterministic procedure

1. Import the template.
2. Pick a mode: Append, Combine (by position / by matching fields / all combinations), or SQL Query.
3. Connect the two upstream branches to inputs 1 and 2.

## Parameters

| Parameter | Where | What to set |
|---|---|---|
| `mode` | Merge | append / combine / combineBySql. |
| `combineBy` | Merge | position / matching fields / all pairs (combine mode only). |

## Validation checklist

- Both inputs are connected.
- For matching-fields mode, the join key exists on both sides.

## How to use the template

1. In n8n (v1.x), open **Workflows → Import from File** and select `template.json`
   (or paste its contents into a blank canvas with **Import from URL/Clipboard**).
2. Reconnect any credentials the nodes need (credentials are never stored in the
   template).
3. Rename nodes/fields to match your data, keeping the wiring intact.
