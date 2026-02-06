---
description: Write a fully specified story for the dev team. Includes acceptance criteria, technical hints, and scope boundaries. Use --estimate flag for man-day estimation.
---

# Story — Write a Fully Specified Story

## Purpose
Create a complete, self-contained story that a developer can pick up and execute without verbal explanation. This is the handoff format between CTO planning and team development.

## Arguments
$ARGUMENTS

Check if the arguments include `--estimate`. If yes, include the Estimation section below.

## Required Output Format

```markdown
## Story: [JIRA-KEY] [Title]

### Context
- **Why this matters:** (business reason)
- **Project:** (which project profile)
- **Dependencies:** (other stories, features, or services)
- **Blockers:** (anything that must be resolved first)

### Acceptance Criteria
1. [Specific, testable outcome]
2. [Specific, testable outcome]
3. [Add as many as needed]

### Technical Hints (optional)
- Suggested approach based on project profile
- Files or modules likely involved
- API contracts or data shapes if relevant

### Scope Boundaries
- [What this story is NOT]
- [Explicitly exclude anything adjacent but out of scope]
```

## Estimation (only with --estimate flag)

```markdown
### Estimation

| Factor     | Score (1-5) | Reasoning                          |
|------------|-------------|------------------------------------|
| Complexity | ?           | How many moving parts?             |
| Clarity    | ?           | How well-defined?                  |
| Experience | ?           | Has the dev done this before?      |
| Risk       | ?           | What can go wrong?                 |
| Testing    | ?           | How hard to verify?                |

**Base = average of all scores**

| Base Score | Man-Days |
|------------|----------|
| 1.0 - 1.8 | 0.5      |
| 1.9 - 2.5 | 1        |
| 2.6 - 3.2 | 2        |
| 3.3 - 4.0 | 3        |
| 4.1 - 5.0 | 5        |

> If estimate exceeds 5 man-days, split into smaller stories.

**Estimate: [X] man-days**
```

## Rules
- Every story MUST have Acceptance Criteria — no exceptions
- Scope Boundaries are required to prevent drift
- Write clearly — the dev team's English is limited
- After creating, update profile: move to **Planned**
