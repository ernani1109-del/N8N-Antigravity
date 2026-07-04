# 22 · Workflow Road (End-to-end Reference Pipeline)

**Category:** Reference pipelines
**Primary node:** `n8n-nodes-base.webhook` (typeVersion 2)
**Files:** `template.json`

## Purpose

The "golden road": one importable workflow that chains the core building blocks into a complete request-to-response path — Webhook → HTTP fetch → field mapping → Switch routing → per-branch handling → collect → Respond — so you can see how the individual skills fit together end to end.

## When to use

- Starting a real integration and wanting a proven skeleton instead of an empty canvas.
- Teaching/learning how triggers, data flow, routing, and response nodes connect.
- A base to delete branches from, rather than assembling nodes one by one.

## Deterministic procedure

1. Import the template; note the webhook path `road` (POST).
2. Point the HTTP Request node at your enrichment/lookup API (skill 04).
3. Adjust the Edit Fields mapping to your schema (skill 05).
4. Edit the Switch rules to your routing key (skill 07); wire real handlers per branch.
5. Shape the reply in Respond to Webhook (skill 03).
6. Attach a Global Error Handler under Settings → Error Workflow (skill 15).

## Parameters

| Parameter | Where | What to set |
|---|---|---|
| `path / httpMethod` | Webhook | Endpoint path (`road`) and method. |
| `url` | HTTP Request | Enrichment API endpoint. |
| `assignments` | Edit Fields | Output schema mapping. |
| `rules.values` | Switch on type | One condition per route. |
| `responseBody` | Respond to Webhook | JSON returned to the caller. |

## Validation checklist

- Exactly one trigger (Webhook) and one Respond to Webhook on every path.
- Every Switch output (including fallback) reaches the Collect node — no dropped items.
- HTTP Request has timeout/retry set for production use (skills 04, 16).
- An Error Workflow is configured (skill 15).
- Passes the validation ruleset (skill 19).

## Notes

This is a composition of skills 03, 04, 05, 07 and 15 — treat each node as a link back to its focused skill for parameter detail.

## How to use the template

1. In n8n (v1.x), open **Workflows → Import from File** and select `template.json`
   (or paste its contents into a blank canvas with **Import from URL/Clipboard**).
2. Reconnect any credentials the nodes need (credentials are never stored in the
   template).
3. Rename nodes/fields to match your data, keeping the wiring intact.
