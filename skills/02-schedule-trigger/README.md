# 02 · Scheduled Run (Cron / Interval)

**Category:** Triggers
**Primary node:** `n8n-nodes-base.scheduleTrigger` (typeVersion 1.2)
**Files:** `template.json`

## Purpose

Run a workflow on a fixed schedule using the Schedule Trigger (the v1.x replacement for the deprecated Cron node). The template ships with a daily 08:00 rule.

## When to use

- Recurring jobs: nightly syncs, hourly polls, daily reports.
- Any time you would have reached for the deprecated `cron` node.

## Deterministic procedure

1. Import the template; it runs daily at 08:00 by default.
2. Open the Schedule Trigger and pick an interval (seconds/minutes/hours/days) or a custom cron expression.
3. For cron, use standard 5-field syntax; verify the "Next execution" preview.

## Parameters

| Parameter | Where | What to set |
|---|---|---|
| `rule.interval` | Schedule Trigger | Interval type + value, or a custom cron expression. |

## Validation checklist

- Timezone is correct (workflow settings → Timezone, or instance default).
- Interval is not shorter than your job's runtime to avoid overlapping executions.

## Notes

The deprecated `n8n-nodes-base.cron` node still imports but should be migrated — see skill 20.

## How to use the template

1. In n8n (v1.x), open **Workflows → Import from File** and select `template.json`
   (or paste its contents into a blank canvas with **Import from URL/Clipboard**).
2. Reconnect any credentials the nodes need (credentials are never stored in the
   template).
3. Rename nodes/fields to match your data, keeping the wiring intact.
