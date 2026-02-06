#!/bin/bash

# Wise Logic Planning Toolkit Setup
# Installs CTO planning commands into any client project

set -e

REPO_URL="https://raw.githubusercontent.com/Wise-Logic/wiselogic-planning/main"
TARGET_DIR=".claude/commands"
PROFILES_DIR="profiles"

echo ""
echo "╔══════════════════════════════════════════════════════════════╗"
echo "║         Wise Logic Planning Toolkit Setup                    ║"
echo "║         CTO planning workflow for Claude Code                ║"
echo "╚══════════════════════════════════════════════════════════════╝"
echo ""

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

echo ""
echo "✅ Commands installed!"
echo ""

# ─────────────────────────────────────────────────────────────────
# Onboarding Flow (read from /dev/tty for piped execution)
# ─────────────────────────────────────────────────────────────────

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📋 Project Onboarding"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "Let's set up your project profile. Press Enter to skip any question."
echo ""

# Project Name
echo -n "📁 Project name (e.g., malee-api): "
read PROJECT_NAME </dev/tty
PROJECT_NAME=$(echo "$PROJECT_NAME" | tr '[:upper:]' '[:lower:]' | tr ' ' '-')

if [ -z "$PROJECT_NAME" ]; then
  echo ""
  echo "⏭️  Skipping profile creation. Run /profile-new or /profile-gen later."
  echo ""
  echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
  echo "🎉 Setup complete!"
  echo ""
  echo "Commands available:"
  for cmd in "${COMMANDS[@]}"; do
    name="${cmd%.md}"
    echo "  /$name"
  done
  echo ""
  echo "Get started:"
  echo "  1. Create a project profile: /profile-new or /profile-gen"
  echo "  2. Start brainstorming: /brainstorm [topic]"
  echo ""
  exit 0
fi

# Client Name
echo -n "🏢 Client name (e.g., Malee Group): "
read CLIENT_NAME </dev/tty
CLIENT_NAME=${CLIENT_NAME:-"$PROJECT_NAME"}

# GitHub Repo
echo -n "🔗 GitHub repo URL (e.g., https://github.com/org/repo): "
read GITHUB_URL </dev/tty
GITHUB_URL=${GITHUB_URL:-"(not set)"}

# Team Members
echo -n "👥 Team members (comma-separated, e.g., Som, Lek, Pom): "
read TEAM_MEMBERS </dev/tty
TEAM_MEMBERS=${TEAM_MEMBERS:-"(to be assigned)"}

# Tech Stack
echo ""
echo "🛠️  Tech stack (press Enter for default: .NET Core, React, Azure)"
echo -n "   Custom stack: "
read TECH_STACK </dev/tty
TECH_STACK=${TECH_STACK:-".NET Core, React/Next.js, Azure"}

# Get current date
TODAY=$(date +"%Y-%m-%d")

# Create profile file
PROFILE_FILE="$PROFILES_DIR/$PROJECT_NAME.md"

echo ""
echo "📝 Creating project profile: $PROFILE_FILE"

cat > "$PROFILE_FILE" << EOF
## Project: ${PROJECT_NAME}
**Client:** ${CLIENT_NAME}
**Repo:** ${GITHUB_URL}
**Started:** ${TODAY}
**Team:** ${TEAM_MEMBERS}
**Tech Stack:** ${TECH_STACK}

---

### Current Reality
> What exists and works today. Sync with codebase using /profile-sync or /profile-gen.

- **Tech stack:** ${TECH_STACK}
- **Architecture:** (to be analyzed)
- **Deployed features:** (none yet or run /profile-gen to detect)
- **API endpoints:** (to be documented)
- **Database:** (to be documented)
- **Infrastructure:** (to be documented)

---

### In Progress
> Stories currently being developed this sprint.

| Story | Title | Assigned | Started | Est. Completion |
|-------|-------|----------|---------|-----------------|
| - | - | - | - | - |

---

### Planned
> Stories specified and estimated, ready for future sprints.

| Story | Title | Estimate | Priority | Dependencies |
|-------|-------|----------|----------|--------------|
| - | - | - | - | - |

---

### Under Consideration
> Ideas explored in brainstorming, not yet shaped into stories.

(Use /brainstorm to explore ideas)
EOF

echo "✅ Profile created!"

# ─────────────────────────────────────────────────────────────────
# Summary
# ─────────────────────────────────────────────────────────────────

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "🎉 Setup complete!"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "Project: $PROJECT_NAME"
echo "Profile: $PROFILE_FILE"
echo "GitHub:  $GITHUB_URL"
echo ""
echo "Commands available:"
for cmd in "${COMMANDS[@]}"; do
  name="${cmd%.md}"
  echo "  /$name"
done
echo ""
echo "Workflow:"
echo "  brainstorm → analyze → story → estimate → sprint"
echo ""
echo "Next steps:"
echo "  1. If existing codebase: /profile-gen to detect features"
echo "  2. Start planning: /brainstorm [topic]"
echo ""
