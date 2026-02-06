---
description: Generate a project profile by analyzing an existing codebase. Use for ongoing projects that need a profile created from current code.
---

# Profile Gen — Generate Profile from Existing Codebase

## Process
1. Ask for: GitHub repo URL or local path, client/project name, team members, current state context
2. Analyze codebase: detect tech stack, deployed features, API endpoints, project structure, patterns, recent git history
3. Generate profile:

```markdown
## Project: [Name]
**Client:** [Client name]
**Repo:** [GitHub URL]
**Team:** [Developers]
**Tech Stack:** [Detected]

### Current Reality (auto-synced from codebase)
- Tech stack: [detected]
- Deployed features: [list]
- API endpoints: [detected]
- Database: [schema summary]
- Key patterns: [architectural patterns found]

### In Progress
- [from recent branches/PRs if detectable]

### Planned (not started)
(empty — populate through /wiselogic-planning:brainstorm → /wiselogic-planning:story)

### Under Consideration
(empty)
```

4. Save as the project profile in the current Claude Project

## Rules
- Be thorough — this is the foundation for all planning
- Flag code quality concerns, missing tests, security issues

## Arguments
$ARGUMENTS
