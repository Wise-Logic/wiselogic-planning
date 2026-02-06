---
description: Generate a project profile by analyzing an existing codebase. Use for ongoing projects that need a profile created from current code.
---

# Profile Gen — Generate Profile from Existing Codebase

## Process
1. Ask for: GitHub repo URL or local path, client/project name, team members, current state context
2. Analyze codebase: detect tech stack, deployed features, API endpoints, project structure, patterns, recent git history
3. Generate profile in `profiles/[project-name].md`:

```markdown
## Project: [Name]
**Client:** [Client name]
**Repo:** [GitHub URL]
**Team:** [Developers]
**Tech Stack:** [Detected]

### Current Reality
- **Tech stack:** [detected — e.g., .NET Core 8, React 18, PostgreSQL]
- **Architecture:** [detected patterns — e.g., Clean Architecture, CQRS]
- **Deployed features:**
  - [Feature 1]
  - [Feature 2]
- **API endpoints:** [summary or link to OpenAPI spec]
- **Database:** [schema summary]
- **Infrastructure:** [Azure/AWS services detected]
- **Code quality notes:** [any concerns]

### In Progress
- [from recent branches/PRs if detectable]

### Planned
(empty — populate through /brainstorm → /story)

### Under Consideration
(empty)
```

4. Save to `profiles/[project-name].md`

## Rules
- Be thorough — this is the foundation for all planning
- Flag code quality concerns, missing tests, security issues
- Use lowercase, hyphenated filename
- If codebase is large, summarize key modules rather than listing everything

## Arguments
$ARGUMENTS
