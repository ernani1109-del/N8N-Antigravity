# n8n v1.x Workflow Automation Skills

21 **deterministic** building blocks for automating [n8n](https://n8n.io) v1.x
workflows. Each skill is a self-contained folder with:

- a **playbook** (`README.md`): purpose, when to use, a step-by-step
  deterministic procedure, a parameter reference, and a validation checklist;
- an **importable template** (`template.json`), a ready-to-run n8n v1.x
  workflow — or, for the governance skills, a machine-readable ruleset
  (`rules.json` / `mapping.json` / `runbook-template.md`).

"Deterministic" means every artifact is fixed and reproducible: no random or
AI-generated content, stable node IDs, and rule-based procedures you can apply
the same way every time. Re-running the generator produces byte-identical files.

## Skills

| # | Skill | Category | Primary node |
|---|-------|----------|--------------|
| 01 | [Manual Trigger Starter](./01-manual-trigger-starter/) | Triggers | `n8n-nodes-base.manualTrigger` |
| 02 | [Scheduled Run (Cron / Interval)](./02-schedule-trigger/) | Triggers | `n8n-nodes-base.scheduleTrigger` |
| 03 | [Webhook Ingest + Respond](./03-webhook-ingest/) | Triggers | `n8n-nodes-base.webhook` |
| 04 | [HTTP API Call](./04-http-request-call/) | Data flow | `n8n-nodes-base.httpRequest` |
| 05 | [Field Mapping (Edit Fields / Set)](./05-set-field-mapping/) | Data flow | `n8n-nodes-base.set` |
| 06 | [Conditional Branch (IF)](./06-if-branching/) | Data flow | `n8n-nodes-base.if` |
| 07 | [Multi-way Routing (Switch)](./07-switch-routing/) | Data flow | `n8n-nodes-base.switch` |
| 08 | [Recombine Branches (Merge)](./08-merge-branches/) | Data flow | `n8n-nodes-base.merge` |
| 09 | [Filter Items](./09-filter-items/) | Data flow | `n8n-nodes-base.filter` |
| 10 | [Loop in Batches](./10-loop-batches/) | Data flow | `n8n-nodes-base.splitInBatches` |
| 11 | [Aggregate Items](./11-aggregate-items/) | Data transformation | `n8n-nodes-base.aggregate` |
| 12 | [Sort & Limit](./12-sort-limit/) | Data transformation | `n8n-nodes-base.sort` |
| 13 | [Remove Duplicates](./13-remove-duplicates/) | Data transformation | `n8n-nodes-base.removeDuplicates` |
| 14 | [Code Node Transform](./14-code-transform/) | Data transformation | `n8n-nodes-base.code` |
| 15 | [Error Workflow (Error Trigger)](./15-error-handling/) | Reliability & ops | `n8n-nodes-base.errorTrigger` |
| 16 | [Retry with Backoff](./16-retry-backoff/) | Reliability & ops | `n8n-nodes-base.httpRequest` |
| 17 | [Throttle with Wait](./17-wait-throttle/) | Reliability & ops | `n8n-nodes-base.wait` |
| 18 | [Modular Sub-workflow Call](./18-sub-workflow/) | Reliability & ops | `n8n-nodes-base.executeWorkflow` |
| 19 | [Workflow Validation Ruleset](./19-workflow-validate/) | Governance & quality | `(analysis — no runtime node)` |
| 20 | [Migrate Deprecated Nodes](./20-migrate-deprecated-nodes/) | Governance & quality | `(analysis — no runtime node)` |
| 21 | [Auto-document a Workflow](./21-document-workflow/) | Governance & quality | `(analysis — no runtime node)` |

## Categories

- **Triggers** — Manual Trigger Starter, Scheduled Run (Cron / Interval), Webhook Ingest + Respond
- **Data flow** — HTTP API Call, Field Mapping (Edit Fields / Set), Conditional Branch (IF), Multi-way Routing (Switch), Recombine Branches (Merge), Filter Items, Loop in Batches
- **Data transformation** — Aggregate Items, Sort & Limit, Remove Duplicates, Code Node Transform
- **Reliability & ops** — Error Workflow (Error Trigger), Retry with Backoff, Throttle with Wait, Modular Sub-workflow Call
- **Governance & quality** — Workflow Validation Ruleset, Migrate Deprecated Nodes, Auto-document a Workflow

## Using a template

1. In n8n (v1.x): **Workflows → Import from File** and pick the skill's
   `template.json`.
2. Attach credentials (never stored in templates) and adjust node parameters
   using the skill's **Parameters** table.
3. Run **Test workflow**, then validate against skill 19
   (**Workflow Validation Ruleset**) before activating.

## Compatibility

Templates target n8n **v1.x** node type versions (e.g. HTTP Request 4.2,
Edit Fields/Set 3.4, IF 2.2, Switch 3.2, Schedule Trigger 1.2). Importing into a
much newer or older instance may prompt a node-version upgrade — that is
expected. See skill 20 (**Migrate Deprecated Nodes**) for legacy conversions.
