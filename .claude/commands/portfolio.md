---
description: Review all client projects for health, risks, and resource allocation. High-level CTO dashboard across the portfolio.
---

# Portfolio — Cross-Project Review

## Purpose
Give the CTO a bird's-eye view across all active client projects. Identify risks, resource conflicts, and strategic priorities.

## Arguments
$ARGUMENTS

## Process

### 1. Gather Project Profiles
- List all project profiles in `profiles/` folder
- For each, summarize current state

### 2. Health Assessment
Rate each project on:

| Factor | Green | Yellow | Red |
|--------|-------|--------|-----|
| **Velocity** | On track | Slipping | Blocked |
| **Quality** | Clean code, tests passing | Tech debt growing | Critical issues |
| **Team** | Stable, productive | Some churn | Understaffed or struggling |
| **Client** | Happy, aligned | Some friction | Escalations |
| **Risk** | Low, manageable | Moderate concerns | High, needs attention |

### 3. Resource Conflicts
- Which developers are spread across projects?
- Any timeline collisions?
- Skill gaps that affect multiple projects?

### 4. Strategic View
- Which projects are most important to the business?
- Where should Jay focus CTO attention?
- What needs escalation to clients?

## Output Format

```markdown
## Portfolio Review: [Date]

### Project Health Summary
| Project | Client | Status | Velocity | Quality | Risk | Next Action |
|---------|--------|--------|----------|---------|------|-------------|
| Malee API | Malee | Active | 🟢 | 🟡 | 🟢 | Continue sprint |
| Sansiri App | Sansiri | Active | 🟡 | 🟢 | 🟡 | Address timeline slip |

### Resource Allocation
| Developer | Project A | Project B | Project C | Utilization |
|-----------|-----------|-----------|-----------|-------------|
| Dev 1     | 60%       | 40%       | -         | 100% |
| Dev 2     | 100%      | -         | -         | 100% |

### Risks & Concerns
1. **[Risk]** — Impact: [High/Med/Low], Action: [what to do]

### CTO Focus Areas
1. [Most important thing to address this week]
2. [Second priority]

### Client Communications Needed
- [Project]: [What to communicate and why]
```

## Rules
- Be honest about project health — this is for internal planning
- Flag resource conflicts early
- Prioritize based on business impact, not squeaky wheel
- Update after each sprint cycle or major change
