# Workflow Runbook: <workflow name>

- **Workflow ID:** <id>
- **Trigger:** <manual / schedule (cron) / webhook (path, method)>
- **Purpose:** <one sentence>
- **Owner:** <team / person>

## Node inventory

| # | Node name | Type | typeVersion | Role |
|---|-----------|------|-------------|------|
| 1 |           |      |             |      |

## Data flow

<Describe the path from trigger to output, following `connections`. Note every branch (IF/Switch) and merge.>

## External systems & credentials

| System | Credential type | Used by node |
|--------|-----------------|--------------|
|        |                 |              |

## Failure handling

- Error Workflow: <name or "none">
- Retry / Continue On Fail: <which nodes>
- Known failure modes: <...>

## Change log

| Date | Author | Change |
|------|--------|--------|
|      |        |        |
