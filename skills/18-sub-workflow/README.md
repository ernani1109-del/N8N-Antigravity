# 18 · Modular Sub-workflow Call

**Category:** Reliability & ops
**Primary node:** `n8n-nodes-base.executeWorkflow` (typeVersion 1.2)
**Files:** `template.json`

## Purpose

Factor shared logic into a child workflow and invoke it with the Execute Workflow node, passing input and receiving output — the DRY pattern for n8n.

## When to use

- The same steps are reused across multiple workflows.
- You want to keep large workflows readable by extracting sub-routines.

## Deterministic procedure

1. Build a child workflow starting with an Execute Workflow Trigger (or Manual) that returns data.
2. Import this template and set "Workflow" to the child (by ID or list).
3. Map the input passed to the child; consume its returned items downstream.

## Parameters

| Parameter | Where | What to set |
|---|---|---|
| `workflowId` | Execute Workflow | The child workflow to run. |
| `mode / inputs` | Execute Workflow | How input items are passed. |

## Validation checklist

- The child workflow exists and returns items.
- Input schema expected by the child matches what you pass.

## How to use the template

1. In n8n (v1.x), open **Workflows → Import from File** and select `template.json`
   (or paste its contents into a blank canvas with **Import from URL/Clipboard**).
2. Reconnect any credentials the nodes need (credentials are never stored in the
   template).
3. Rename nodes/fields to match your data, keeping the wiring intact.
