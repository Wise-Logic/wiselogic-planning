# Wise Logic Planning Toolkit

CTO planning workflow for Claude Code. Turns client ideas into well-defined stories your dev team can execute.

## Quick Install

Run this in any client project:

```bash
curl -sSL https://cdn.jsdelivr.net/gh/Wise-Logic/wiselogic-planning@main/setup.sh | bash
```

Or manually:

```bash
# Clone and run setup
git clone https://github.com/Wise-Logic/wiselogic-planning.git
cd wiselogic-planning
./setup.sh
```

## Commands

| Command | Purpose |
|---------|---------|
| `/brainstorm [topic]` | Explore ideas — syncs profile first, no commitment |
| `/analyze [topic]` | Shape ideas into potential stories with dependencies |
| `/story [desc]` | Write full story spec with acceptance criteria |
| `/story --estimate [desc]` | Story spec + man-day estimation |
| `/estimate [stories]` | Calculate man-days for stories |
| `/sprint [details]` | Plan sprint, assign work, check capacity |
| `/portfolio` | Cross-project health review |
| `/profile-new [project]` | Create profile for new project |
| `/profile-gen [project]` | Generate profile from existing codebase |
| `/profile-sync` | Manual profile sync with codebase |

## Workflow

```
brainstorm → analyze → story → estimate → sprint → hand off to dev team
```

### 1. Brainstorm
Explore client requests freely. No estimation, no commitment. Ideas go to "Under Consideration" in the project profile.

### 2. Analyze
Shape brainstorm ideas into potential stories. Identify dependencies, risks, and build order.

### 3. Story
Write complete specifications with acceptance criteria, technical hints, and scope boundaries.

### 4. Estimate
Apply 5-factor scoring (Complexity, Clarity, Experience, Risk, Testing) to calculate man-days.

### 5. Sprint
Plan capacity (Team × Days × 0.6), assign work, and track progress.

## Project Profiles

Each project gets a profile in `profiles/`:

```
profiles/
  _template.md      # Starting point for new profiles
  malee-api.md      # Example: Malee project
  sansiri-mobile.md # Example: Sansiri project
```

### Profile Sections

1. **Current Reality**: What exists and works (synced from codebase)
2. **In Progress**: Stories being developed this sprint
3. **Planned**: Stories specified and estimated, ready for future sprints
4. **Under Consideration**: Ideas explored but not yet shaped

## Estimation Framework

| Factor | Description |
|--------|-------------|
| Complexity | How many moving parts? |
| Clarity | How well-defined? |
| Experience | Has the dev done this before? |
| Risk | What can go wrong? |
| Testing | How hard to verify? |

| Average Score | Man-Days |
|---------------|----------|
| 1.0 - 1.8 | 0.5 |
| 1.9 - 2.5 | 1 |
| 2.6 - 3.2 | 2 |
| 3.3 - 4.0 | 3 |
| 4.1 - 5.0 | 5 |

> Stories over 5 man-days must be split.

## Capacity Formula

```
Sprint Capacity = Team Size × Working Days × 0.6
```

The 0.6 factor accounts for meetings, bugs, context switching, and learning time.

## Context

- **Company:** Wise Logic Company Limited, Bangkok
- **Tech Stack:** .NET Core, React/Next.js, Azure
- **Team:** Low-to-medium skill developers, Thai primary language
- **Clients:** Enterprise (Unilever, Sansiri, Malee)

## Related

- **[wiselogic-dev](https://github.com/Wise-Logic/wiselogic-dev)** — Developer workflow plugin (wraps official Anthropic plugins)
