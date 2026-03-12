#!/usr/bin/env bash
set -euo pipefail

COMMANDS_DIR="$HOME/.claude/commands/uprate"
AGENTS_DIR="$HOME/.claude/agents"

echo "Uninstalling Uprate Skills..."

# Remove command files
if [ -d "$COMMANDS_DIR" ]; then
    rm -rf "$COMMANDS_DIR"
    echo "Removed commands directory"
fi

# Remove agent files
for agent in "$AGENTS_DIR"/uprate-*.md; do
    if [ -f "$agent" ]; then
        rm "$agent"
        echo "Removed $(basename "$agent")"
    fi
done

echo ""
echo "Uprate Skills uninstalled."
