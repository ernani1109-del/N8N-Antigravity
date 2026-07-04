# 10 · Loop in Batches

**Category:** Data flow
**Primary node:** `n8n-nodes-base.splitInBatches` (typeVersion 3)
**Files:** `template.json`

## Purpose

Process large item sets in fixed-size chunks with the Loop Over Items (Split In Batches) node — essential for rate-limited APIs. The template loops in batches of 10.

## When to use

- Calling an API that limits requests, or paginating through many items.
- Any per-chunk processing that must not run all at once.

## Deterministic procedure

1. Import the template; batch size is 10.
2. Wire the **loop** output through your per-batch work, then back into the Loop node.
3. Wire the **done** output to what runs after all batches finish.

## Parameters

| Parameter | Where | What to set |
|---|---|---|
| `batchSize` | Loop Over Items | Items per iteration (default 10). |

## Validation checklist

- The per-batch branch loops back into the Loop node (or it only runs once).
- The "done" output leads to post-loop steps.
- A Wait node (skill 17) is inserted if the downstream API is rate-limited.

## How to use the template

1. In n8n (v1.x), open **Workflows → Import from File** and select `template.json`
   (or paste its contents into a blank canvas with **Import from URL/Clipboard**).
2. Reconnect any credentials the nodes need (credentials are never stored in the
   template).
3. Rename nodes/fields to match your data, keeping the wiring intact.
