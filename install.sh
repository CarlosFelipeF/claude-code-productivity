#!/bin/bash

# Claude Code Productivity Commands Installer
# https://github.com/CarlosFelipeF/claude-code-productivity

set -e

echo "Installing Claude Code Productivity Commands..."
echo ""

# Determine script directory
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Check if running from cloned repo or curl
if [ -d "$SCRIPT_DIR/commands" ]; then
    SOURCE_DIR="$SCRIPT_DIR"
else
    # Clone to temp directory
    TEMP_DIR=$(mktemp -d)
    echo "Cloning repository..."
    git clone --quiet https://github.com/CarlosFelipeF/claude-code-productivity.git "$TEMP_DIR"
    SOURCE_DIR="$TEMP_DIR"
fi

# Create Claude Code directories if they don't exist
mkdir -p ~/.claude/commands
mkdir -p ~/.claude/subagents

# Copy commands
echo "Installing commands..."
cp -r "$SOURCE_DIR/commands/"* ~/.claude/commands/
echo "  - daily-brief.md"
echo "  - daily-checkin.md"
echo "  - weekly-checkin.md"
echo "  - brain-dump-analysis.md"
echo "  - newsletter-research.md"

# Copy subagents
echo ""
echo "Installing subagents..."
cp -r "$SOURCE_DIR/subagents/"* ~/.claude/subagents/
echo "  - interest-analyzer.md"
echo "  - news-curator.md"
echo "  - daily-reflection.md"
echo "  - metrics-analyst.md"
echo "  - insight-extractor.md"
echo "  - brain-dump-analyst.md"
echo "  - content-researcher.md"
echo "  - newsletter-writer.md"

# Cleanup temp directory if used
if [ -n "$TEMP_DIR" ]; then
    rm -rf "$TEMP_DIR"
fi

echo ""
echo "Installation complete!"
echo ""
echo "Available commands:"
echo "  /daily-brief         - Morning news briefing"
echo "  /daily-checkin       - End-of-day reflection"
echo "  /weekly-checkin      - Weekly metrics tracking"
echo "  /brain-dump-analysis - Analyze your brain dumps"
echo "  /newsletter-research - Research and draft newsletters"
echo ""
echo "Restart Claude Code to use the new commands."
