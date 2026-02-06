---
description: Initialize a new project profile from planning. Use when starting a brand new client project with no existing codebase.
---

# Profile New — Create Profile for New Project

## Process
1. Ask for: project/client name, business context, planned tech stack, team members, timeline, constraints
2. Generate the profile in `profiles/[project-name].md`:

```markdown
## Project: [Name]
**Client:** [Client name]
**Started:** [Date]
**Team:** [Developers]
**Tech Stack:** [Planned stack]

### Current Reality
- Project initialized, no deployed features yet
- Tech stack: [planned]
- Infrastructure: [planned hosting/services]

### In Progress
(empty)

### Planned
(empty — use /brainstorm and /story to populate)

### Under Consideration
(empty — use /brainstorm to explore ideas)
```

3. Save to `profiles/[project-name].md`

## Rules
- Use lowercase, hyphenated filename: `malee-api.md`, `sansiri-mobile.md`
- Populate through brainstorm → analyze → story workflow
- Keep profiles in sync with actual codebase state

## Arguments
$ARGUMENTS
