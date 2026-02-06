---
description: Plan sprint by pulling estimated stories, calculating team capacity (Team x Days x 0.6), assigning work, and checking for overcommitment.
---

# Sprint — Plan Sprint and Assign Work

## Process

### 1. Gather Sprint Parameters
Ask the CTO if not provided:
- Sprint duration (default: 2 weeks / 10 working days)
- Team members available
- Planned leave, holidays, known blockers
- Carry-over stories from last sprint

### 2. Calculate Capacity
```
Sprint Capacity = Team Size x Working Days x 0.6
```
The 0.6 reality factor accounts for meetings, bugs, context switching, learning time. Adjust upward as team matures.

### 3. Select and Assign Stories
- Pull stories from **Planned** that have estimates
- Flag stories without estimates — they need `/estimate` first
- Assign based on developer experience, workload balance, and dependencies

### 4. Check for Overcommitment
- Total > Capacity? Flag it, suggest deferrals
- Always leave buffer for unexpected work

## Output Format

```markdown
## Sprint Plan: [Sprint Name/Number]
**Duration:** [start] - [end]
**Team:** [developers]

### Capacity
| Developer | Working Days | Capacity (x0.6) |
|-----------|-------------|-----------------|
| Dev A     | 10          | 6 man-days      |
| **Total** |             | **X man-days**  |

### Sprint Backlog
| Story    | Title           | Estimate | Assigned |
|----------|-----------------|----------|----------|
| PROJ-101 | User login API  | 2 days   | Dev A    |
| **Total**|                 | **X days**|         |
| **Buffer**|                | **Y days**|         |

### Risks
- [Dependencies, blockers, concerns]

### Sprint Goals
- [1-2 sentence summary of what this sprint delivers]
```

## After Sprint Planning
- Update profile: **Planned** → **In Progress** for assigned stories

## Rules
- Never plan above capacity
- Stories without estimates cannot be assigned
- If a single story > 5 man-days, it must be split

## Arguments
$ARGUMENTS
