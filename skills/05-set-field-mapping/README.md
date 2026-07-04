# 05 · Field Mapping (Edit Fields / Set)

**Category:** Data flow
**Primary node:** `n8n-nodes-base.set` (typeVersion 3.4)
**Files:** `template.json`

## Purpose

Deterministically reshape items: add, rename, and type-cast fields with the Edit Fields (Set) node in manual-mapping mode. The template maps three fields as an example.

## When to use

- Normalising upstream data into a stable schema before the next node.
- Renaming/casting fields; building a clean payload for an API.

## Deterministic procedure

1. Import the template.
2. In Edit Fields, keep mode = "Manual Mapping".
3. Add one assignment per output field; set its type (string/number/boolean/array/object).
4. Enable "Include Other Input Fields" only if you want passthrough.

## Parameters

| Parameter | Where | What to set |
|---|---|---|
| `assignments` | Edit Fields | One row per output field: name, type, value/expression. |
| `includeOtherFields` | Edit Fields → Options | On to pass through untouched fields. |

## Validation checklist

- Each assignment has an explicit type — do not leave everything as string.
- Expressions resolve (no red "invalid expression" markers).

## How to use the template

1. In n8n (v1.x), open **Workflows → Import from File** and select `template.json`
   (or paste its contents into a blank canvas with **Import from URL/Clipboard**).
2. Reconnect any credentials the nodes need (credentials are never stored in the
   template).
3. Rename nodes/fields to match your data, keeping the wiring intact.
