# 06 · Conditional Branch (IF)

**Category:** Data flow
**Primary node:** `n8n-nodes-base.if` (typeVersion 2.2)
**Files:** `template.json`

## Purpose

Split items down a true/false path with the IF node using strict, typed conditions. The template routes on a numeric threshold.

## When to use

- Two-way decisions: pass/fail, above/below a threshold, present/absent.

## Deterministic procedure

1. Import the template.
2. Define one or more conditions and choose AND/OR combinator.
3. Wire the **true** output and (optionally) the **false** output to the next nodes.

## Parameters

| Parameter | Where | What to set |
|---|---|---|
| `conditions` | IF | Left value, operator, right value — with explicit data types. |
| `combinator` | IF | AND / OR across multiple conditions. |

## Validation checklist

- Operand data types match (number vs number, not number vs string).
- Both outputs are handled or intentionally left empty.

## How to use the template

1. In n8n (v1.x), open **Workflows → Import from File** and select `template.json`
   (or paste its contents into a blank canvas with **Import from URL/Clipboard**).
2. Reconnect any credentials the nodes need (credentials are never stored in the
   template).
3. Rename nodes/fields to match your data, keeping the wiring intact.
