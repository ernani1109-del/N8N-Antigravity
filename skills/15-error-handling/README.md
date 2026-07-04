# 15 · Error Workflow (Error Trigger)

**Category:** Reliability & ops
**Primary node:** `n8n-nodes-base.errorTrigger` (typeVersion 1)
**Files:** `template.json`

## Purpose

A dedicated error-handler workflow started by the Error Trigger. Assign it under any workflow's Settings → "Error Workflow" to get notified when that workflow fails.

## When to use

- Centralised failure alerting across many workflows.
- Capturing the failing execution's error, node, and stack for triage.

## Deterministic procedure

1. Import this template and save it as e.g. "Global Error Handler".
2. Replace the No-Op with a notification node (Slack/Email/HTTP).
3. In each production workflow: Settings → Error Workflow → select this one.

## Parameters

| Parameter | Where | What to set |
|---|---|---|
| `Error Workflow` | Each workflow → Settings | Point at this handler workflow. |

## Validation checklist

- This workflow contains exactly one Error Trigger.
- It is referenced by the workflows it should guard.
- The notification includes `$json.execution.url` and `$json.error.message`.

## Notes

The Error Trigger receives `$json.execution` (id, url, mode) and `$json.error` (message, node, stack).

## How to use the template

1. In n8n (v1.x), open **Workflows → Import from File** and select `template.json`
   (or paste its contents into a blank canvas with **Import from URL/Clipboard**).
2. Reconnect any credentials the nodes need (credentials are never stored in the
   template).
3. Rename nodes/fields to match your data, keeping the wiring intact.
