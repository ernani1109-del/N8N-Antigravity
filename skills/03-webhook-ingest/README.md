# 03 · Webhook Ingest + Respond

**Category:** Triggers
**Primary node:** `n8n-nodes-base.webhook` (typeVersion 2)
**Files:** `template.json`

## Purpose

Receive an inbound HTTP request, process it, and return a controlled JSON response using Webhook + Respond to Webhook. Response mode is set to "Using Respond to Webhook Node" for deterministic output.

## When to use

- Exposing an endpoint for a third-party service or your own app to call.
- You need to control the exact HTTP status/body returned to the caller.

## Deterministic procedure

1. Import the template; note the webhook path `ingest`.
2. Set the HTTP method to match the caller (POST by default).
3. Shape the reply in the Respond to Webhook node.
4. Activate the workflow to expose the Production URL.

## Parameters

| Parameter | Where | What to set |
|---|---|---|
| `path` | Webhook | A unique URL path segment (default `ingest`). |
| `httpMethod` | Webhook | GET/POST/PUT/... to match callers. |
| `responseCode / responseBody` | Respond to Webhook | Status code and JSON body. |

## Validation checklist

- Webhook `responseMode` is `responseNode` so the Respond node controls output.
- Exactly one Respond to Webhook node is on every path the request can take.
- Authentication (header/basic) is configured for anything public.

## How to use the template

1. In n8n (v1.x), open **Workflows → Import from File** and select `template.json`
   (or paste its contents into a blank canvas with **Import from URL/Clipboard**).
2. Reconnect any credentials the nodes need (credentials are never stored in the
   template).
3. Rename nodes/fields to match your data, keeping the wiring intact.
