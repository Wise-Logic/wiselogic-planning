# Wise Logic Planning Workflow

CTO planning workflow plugin for Claude Code. Turns ideas into well-defined stories your dev team can execute.

## Install

```
/plugin install https://github.com/Wise-Logic/wiselogic-planning
```

## Commands

| Command | Purpose |
|---|---|
| `/wiselogic-planning:brainstorm [topic]` | Explore ideas — syncs profile first |
| `/wiselogic-planning:analyze [topic]` | Shape ideas into potential stories |
| `/wiselogic-planning:story [desc]` | Write full story spec |
| `/wiselogic-planning:story --estimate [desc]` | Story spec + man-day estimation |
| `/wiselogic-planning:sprint [details]` | Plan sprint, assign work, check capacity |
| `/wiselogic-planning:profile-new [project]` | Create profile for new project |
| `/wiselogic-planning:profile-gen [project]` | Generate profile from existing codebase |
| `/wiselogic-planning:profile-sync` | Manual profile sync |

## Workflow

```
brainstorm → analyze → story → sprint → hand off to dev team
```

## Related

- **[wiselogic-dev](https://github.com/Wise-Logic/wiselogic-dev)** — Developer workflow plugin (wraps official Anthropic plugins)
