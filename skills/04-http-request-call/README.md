# 04 · HTTP API Call

**Category:** Data flow
**Primary node:** `n8n-nodes-base.httpRequest` (typeVersion 4.2)
**Files:** `template.json`

## Purpose

Call an external REST API deterministically with the HTTP Request node: explicit method, URL, query params and headers, JSON body, and predefined-credential auth.

## When to use

- Fetching or sending data to any HTTP/REST service without a dedicated node.
- You need full control over headers, query string, and body.

## Deterministic procedure

1. Import the template and set the URL.
2. Choose the method (GET default) and attach credentials via "Predefined Credential Type" or generic auth.
3. Add query parameters/headers/body as needed.
4. Enable "Full Response" if you need status/headers, otherwise the body is returned.

## Parameters

| Parameter | Where | What to set |
|---|---|---|
| `url` | HTTP Request | Absolute endpoint URL. |
| `method` | HTTP Request | GET/POST/PUT/PATCH/DELETE. |
| `authentication` | HTTP Request | Predefined credential or generic (header/query/basic). |

## Validation checklist

- No secrets are hardcoded in the URL/headers — use credentials.
- `typeVersion` is 4.x (v1.x HTTP Request); older 1–3 configs are shaped differently.
- Timeout and pagination options set for large/slow endpoints.

## Notes

Pair with skill 16 (retry/backoff) for flaky endpoints.

## How to use the template

1. In n8n (v1.x), open **Workflows → Import from File** and select `template.json`
   (or paste its contents into a blank canvas with **Import from URL/Clipboard**).
2. Reconnect any credentials the nodes need (credentials are never stored in the
   template).
3. Rename nodes/fields to match your data, keeping the wiring intact.
