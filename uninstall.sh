#!/usr/bin/env bash
set -euo pipefail

SKILLS_DIR="$HOME/.claude/skills/uprate"
AGENTS_DIR="$HOME/.claude/agents"

echo "Uninstalling Uprate Skills..."

# Remove skill files
if [ -d "$SKILLS_DIR" ]; then
    rm -rf "$SKILLS_DIR"
    echo "Removed skills directory"
fi

# Remove agent files
for agent in uprate-codebase-analyzer.md; do
    if [ -f "$AGENTS_DIR/$agent" ]; then
        rm "$AGENTS_DIR/$agent"
        echo "Removed $agent"
    fi
done

echo ""
echo "Uprate Skills uninstalled."
