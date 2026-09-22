#!/usr/bin/env bash
# PostToolUse hook for Edit|Write: formats the file Claude just changed.
# Currently a no-op; add a formatter case per file extension once the project has one.
set -euo pipefail

file=$(python3 -c 'import json,sys; print(json.load(sys.stdin).get("tool_input", {}).get("file_path", ""))')

case "$file" in
  # *.py) ruff format "$file" ;;
  # *.js|*.ts|*.tsx|*.json) npx prettier --write "$file" ;;
  *) ;;
esac
