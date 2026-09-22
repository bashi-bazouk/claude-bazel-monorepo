#!/usr/bin/env bash
# PreToolUse hook for Bash: blocks a small set of destructive commands.
# Reads the tool call as JSON on stdin; exit code 2 blocks it and sends stderr to Claude.
set -euo pipefail

command=$(python3 -c 'import json,sys; print(json.load(sys.stdin).get("tool_input", {}).get("command", ""))')

patterns=(
  'rm -rf /( |$)'
  'rm -rf ~'
  'git push .*--force( |$)'
  'git push .*-f( |$)'
  'git reset --hard'
)

for pattern in "${patterns[@]}"; do
  if [[ "$command" =~ $pattern ]]; then
    echo "Blocked by .claude/hooks/block-dangerous.sh: command matches '$pattern'. Ask the user before running it." >&2
    exit 2
  fi
done
