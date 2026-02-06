---
description: Initialize a new project profile from planning. Use when starting a brand new client project with no existing codebase.
---

# Profile New — Create Profile for New Project

## Process
1. Ask for: project/client name, business context, planned tech stack, team members, timeline, constraints
2. Generate the profile:

```markdown
## Project: [Name]
**Client:** [Client name]
**Started:** [Date]
**Team:** [Developers]
**Tech Stack:** [Planned stack]

### Current Reality (auto-synced from codebase)
- Project initialized, no deployed features yet

### In Progress
(empty)

### Planned (not started)
(empty — use /wiselogic-planning:brainstorm and /wiselogic-planning:story to populate)

### Under Consideration
(empty — use /wiselogic-planning:brainstorm to explore ideas)
```

3. Save as the project profile in the current Claude Project

## Rules
- Run inside the correct Claude Project for this client
- Populate through brainstorm → analyze → story workflow

## Arguments
$ARGUMENTS
