#!/usr/bin/env bash
# bootstrap.sh — initialize and push the voice repo as a stub.
#
# This pushes only the relocation README. The actual code stays in
# the AI-Corp governance repo (agents-workspaces/mira/voice/) until
# the migration plan documented in README.md is executed.

set -euo pipefail

cd "$(dirname "$0")"

if [ -d .git ]; then
  echo "A .git directory already exists in $(pwd). Aborting." >&2
  exit 1
fi

git init -b main
git add -A
git commit -m "chore: initial commit (relocation stub)"
gh repo create wakir-labs/voice \
  --public \
  --description "Voice CLI bridge for Claude-headless personas (migration target — see README)" \
  --source=. \
  --remote=origin \
  --push
