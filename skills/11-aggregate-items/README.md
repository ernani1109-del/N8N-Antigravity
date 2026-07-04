# 11 · Aggregate Items

**Category:** Data transformation
**Primary node:** `n8n-nodes-base.aggregate` (typeVersion 1)
**Files:** `template.json`

## Purpose

Collapse many items into one, collecting a field into an array (or aggregating all item data) with the Aggregate node.

## When to use

- Turning a list of items into a single summary item.
- Building an array payload for a bulk API call.

## Deterministic procedure

1. Import the template.
2. Choose "Individual Fields" and list the fields to collect, or "All Item Data".
3. Name the output array field.

## Parameters

| Parameter | Where | What to set |
|---|---|---|
| `aggregate` | Aggregate | aggregateIndividualFields / aggregateAllItemData. |
| `fieldsToAggregate` | Aggregate | Input field → output array name. |

## Validation checklist

- Output is a single item after this node.
- Collected field names exist on the input items.

## How to use the template

1. In n8n (v1.x), open **Workflows → Import from File** and select `template.json`
   (or paste its contents into a blank canvas with **Import from URL/Clipboard**).
2. Reconnect any credentials the nodes need (credentials are never stored in the
   template).
3. Rename nodes/fields to match your data, keeping the wiring intact.
