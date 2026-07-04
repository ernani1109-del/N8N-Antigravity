# 01 · Manual Trigger Starter

**Category:** Triggers
**Primary node:** `n8n-nodes-base.manualTrigger` (typeVersion 1)
**Files:** `template.json`

## Purpose

A minimal, deterministic scaffold: a Manual Trigger wired into a No-Op so you always start from a known-good, importable skeleton before adding real logic.

## When to use

- Prototyping a new workflow you will run by clicking **Test workflow**.
- You want a guaranteed-valid starting point instead of an empty canvas.

## Deterministic procedure

1. Import the template and confirm the trigger fires with **Test workflow**.
2. Replace the `Placeholder` No-Op with your first real node.
3. Keep exactly one trigger per workflow.

## Parameters

_No parameters to configure._

## Validation checklist

- Exactly one trigger node exists.
- Every non-trigger node is reachable from the trigger.
- `settings.executionOrder` is `v1`.

## How to use the template

1. In n8n (v1.x), open **Workflows → Import from File** and select `template.json`
   (or paste its contents into a blank canvas with **Import from URL/Clipboard**).
2. Reconnect any credentials the nodes need (credentials are never stored in the
   template).
3. Rename nodes/fields to match your data, keeping the wiring intact.
