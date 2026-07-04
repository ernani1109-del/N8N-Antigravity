# 17 · Throttle with Wait

**Category:** Reliability & ops
**Primary node:** `n8n-nodes-base.wait` (typeVersion 1.1)
**Files:** `template.json`

## Purpose

Insert a deterministic pause with the Wait node to stay under API rate limits, typically inside a batch loop.

## When to use

- Respecting "X requests per second/minute" limits.
- Spacing out notifications or polling.

## Deterministic procedure

1. Import the template.
2. Set resume = "After Time Interval" and the amount (e.g. 1 second).
3. Place it inside the batch loop (skill 10) after the rate-limited call.

## Parameters

| Parameter | Where | What to set |
|---|---|---|
| `resume` | Wait | timeInterval / specificTime / webhook. |
| `amount + unit` | Wait | Delay length. |

## Validation checklist

- The wait unit/amount matches the documented rate limit.
- For long waits on scaled deployments, ensure the execution can be resumed.

## How to use the template

1. In n8n (v1.x), open **Workflows → Import from File** and select `template.json`
   (or paste its contents into a blank canvas with **Import from URL/Clipboard**).
2. Reconnect any credentials the nodes need (credentials are never stored in the
   template).
3. Rename nodes/fields to match your data, keeping the wiring intact.
