# 07 · Multi-way Routing (Switch)

**Category:** Data flow
**Primary node:** `n8n-nodes-base.switch` (typeVersion 3.2)
**Files:** `template.json`

## Purpose

Route items into one of several named outputs with the Switch node in rules mode. The template routes on a `type` field into three branches plus a fallback.

## When to use

- More than two mutually exclusive paths (e.g. by event type, status, region).

## Deterministic procedure

1. Import the template.
2. Add one rule per output; each rule is a typed condition.
3. Set the fallback output for items matching no rule.
4. Wire each output to its handler.

## Parameters

| Parameter | Where | What to set |
|---|---|---|
| `rules.values` | Switch | One condition per output branch. |
| `fallbackOutput` | Switch → Options | Where unmatched items go (extra output / none). |

## Validation checklist

- Rules are mutually exclusive or ordering is intentional (first match wins).
- Fallback is handled so items are never silently dropped.

## How to use the template

1. In n8n (v1.x), open **Workflows → Import from File** and select `template.json`
   (or paste its contents into a blank canvas with **Import from URL/Clipboard**).
2. Reconnect any credentials the nodes need (credentials are never stored in the
   template).
3. Rename nodes/fields to match your data, keeping the wiring intact.
