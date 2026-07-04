# 13 · Remove Duplicates

**Category:** Data transformation
**Primary node:** `n8n-nodes-base.removeDuplicates` (typeVersion 1.1)
**Files:** `template.json`

## Purpose

Deduplicate items by comparing selected fields with the Remove Duplicates node, keeping the first occurrence.

## When to use

- Cleaning merged/appended datasets before writing.
- Enforcing uniqueness on an id/email key.

## Deterministic procedure

1. Import the template.
2. Set compare = "Selected Fields" and list the dedupe key(s).
3. Optionally remove other fields from the comparison.

## Parameters

| Parameter | Where | What to set |
|---|---|---|
| `compare` | Remove Duplicates | allFields / selectedFields / allFieldsExcept. |
| `fieldsToCompare` | Remove Duplicates | The uniqueness key(s). |

## Validation checklist

- The dedupe key uniquely identifies a record.
- Item order is stable upstream (see skill 12) if "keep first" matters.

## How to use the template

1. In n8n (v1.x), open **Workflows → Import from File** and select `template.json`
   (or paste its contents into a blank canvas with **Import from URL/Clipboard**).
2. Reconnect any credentials the nodes need (credentials are never stored in the
   template).
3. Rename nodes/fields to match your data, keeping the wiring intact.
