# 16 · Retry with Backoff

**Category:** Reliability & ops
**Primary node:** `n8n-nodes-base.httpRequest` (typeVersion 4.2)
**Files:** `template.json`

## Purpose

Make a flaky call resilient using the node's built-in "Retry On Fail" with a wait between tries, plus "Continue On Fail" so one bad item does not abort the run.

## When to use

- Calling rate-limited or occasionally-failing APIs.
- Batch jobs where a single failure should not kill the whole execution.

## Deterministic procedure

1. Import the template.
2. On the HTTP Request node: enable **Retry On Fail**, set **Max Tries** (e.g. 3) and **Wait Between Tries (ms)**.
3. Optionally enable **Continue On Fail** and branch on `$json.error` downstream.

## Parameters

| Parameter | Where | What to set |
|---|---|---|
| `retryOnFail` | HTTP Request → Settings | On. |
| `maxTries` | HTTP Request → Settings | 2–5. |
| `waitBetweenTries` | HTTP Request → Settings | ms delay (e.g. 2000). |

## Validation checklist

- Max Tries is bounded (not infinite).
- If Continue On Fail is on, the error path is handled.

## How to use the template

1. In n8n (v1.x), open **Workflows → Import from File** and select `template.json`
   (or paste its contents into a blank canvas with **Import from URL/Clipboard**).
2. Reconnect any credentials the nodes need (credentials are never stored in the
   template).
3. Rename nodes/fields to match your data, keeping the wiring intact.
