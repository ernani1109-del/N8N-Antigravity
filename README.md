# N8N-Antigravity

A Node.js/TypeScript starter project.

## Getting started

```bash
npm install
npm run dev     # run src/index.ts with live reload
npm run build   # compile to dist/
npm test        # run tests
```

See [CLAUDE.md](./CLAUDE.md) for codebase conventions and AI-assistant guidance.

## Gmail MCP integration

This repo registers the Gmail [MCP](https://modelcontextprotocol.io) server so
Claude Code (and any MCP-aware client that reads project config) can use Gmail
tools during a session. The server is defined in [`.mcp.json`](./.mcp.json) as a
remote HTTP server pointing at `https://gmailmcp.googleapis.com/mcp/v1`.

### Setup

1. Copy the environment template and add your token:

   ```bash
   cp .env.example .env
   # then edit .env and set GMAIL_OAUTH_TOKEN to a valid OAuth 2.0 access token
   ```

2. Make the variable available to your MCP client. Claude Code expands
   `${GMAIL_OAUTH_TOKEN}` from the environment, so export it (or source your
   `.env`) before launching:

   ```bash
   export GMAIL_OAUTH_TOKEN="ya29...."   # or: set -a; source .env; set +a
   ```

3. Start Claude Code in this directory. It picks up `.mcp.json` automatically;
   confirm the `gmail` server is connected with `/mcp`.

The token is read from the environment at runtime — nothing secret is committed,
and `.env` is gitignored.
