#!/bin/bash

# Wise Logic Planning Toolkit Setup
# Installs CTO planning commands into any client project

set -e

REPO_URL="https://raw.githubusercontent.com/Wise-Logic/wiselogic-planning/main"
TARGET_DIR=".claude/commands"
PROFILES_DIR="profiles"

echo "🚀 Installing Wise Logic Planning Toolkit..."

# Create directories
mkdir -p "$TARGET_DIR"
mkdir -p "$PROFILES_DIR"

# Commands to install
COMMANDS=(
  "brainstorm.md"
  "analyze.md"
  "story.md"
  "estimate.md"
  "sprint.md"
  "portfolio.md"
  "profile-new.md"
  "profile-gen.md"
  "profile-sync.md"
)

# Download each command
echo "📥 Downloading commands..."
for cmd in "${COMMANDS[@]}"; do
  echo "  → $cmd"
  curl -sSL "$REPO_URL/.claude/commands/$cmd" -o "$TARGET_DIR/$cmd"
done

# Download profile template
echo "📥 Downloading profile template..."
curl -sSL "$REPO_URL/profiles/_template.md" -o "$PROFILES_DIR/_template.md"

# Download CLAUDE.md if it doesn't exist
if [ ! -f "CLAUDE.md" ]; then
  echo "📥 Downloading CLAUDE.md..."
  curl -sSL "$REPO_URL/CLAUDE.md" -o "CLAUDE.md"
else
  echo "⏭️  CLAUDE.md already exists, skipping..."
fi

echo ""
echo "✅ Installation complete!"
echo ""
echo "Commands installed:"
for cmd in "${COMMANDS[@]}"; do
  name="${cmd%.md}"
  echo "  /$name"
done
echo ""
echo "Next steps:"
echo "  1. Create a project profile: /profile-new or /profile-gen"
echo "  2. Start brainstorming: /brainstorm [topic]"
echo ""
