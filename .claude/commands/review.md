---
description: Review uncommitted changes for bugs and style issues
allowed-tools: Bash(git diff:*), Bash(git status:*)
---

Review the current uncommitted changes.

Status: !`git status --short`

Diff: !`git diff HEAD`

Focus on correctness bugs first, then anything that departs from the conventions in CLAUDE.md. $ARGUMENTS
