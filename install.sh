#!/usr/bin/env bash
# Sets up N8N-Antigravity for local development:
#   - verifies Node.js and npm are installed and Node meets the minimum version
#   - installs dependencies with `npm install`
#   - creates a local .env from .env.example if one doesn't exist yet
#
# Usage: ./install.sh

set -euo pipefail

REQUIRED_NODE_MAJOR=22
SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"

info()  { printf '\033[1;34m==>\033[0m %s\n' "$1"; }
ok()    { printf '\033[1;32m✓\033[0m %s\n' "$1"; }
fail()  { printf '\033[1;31mError:\033[0m %s\n' "$1" >&2; exit 1; }

cd "$SCRIPT_DIR"

command -v node >/dev/null 2>&1 || fail "Node.js is required but was not found. Install Node.js ${REQUIRED_NODE_MAJOR}+ from https://nodejs.org and re-run this script."
command -v npm >/dev/null 2>&1 || fail "npm is required but was not found. It ships with Node.js: https://nodejs.org"

node_major="$(node --version | sed -E 's/^v([0-9]+).*/\1/')"
if [ "$node_major" -lt "$REQUIRED_NODE_MAJOR" ]; then
  fail "Node.js ${REQUIRED_NODE_MAJOR}+ is required, found $(node --version). Please upgrade Node.js and re-run this script."
fi
ok "Node.js $(node --version) detected"

info "Installing dependencies..."
npm install
ok "Dependencies installed"

if [ -f .env ]; then
  ok ".env already exists, leaving it untouched"
elif [ -f .env.example ]; then
  cp .env.example .env
  ok "Created .env from .env.example"
fi

echo
ok "Setup complete."
echo "  npm run dev     # run src/index.ts with live reload"
echo "  npm test        # run tests"
echo "  npm run build   # compile to dist/"
