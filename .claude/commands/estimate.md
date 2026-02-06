---
description: Estimate man-days for a story or set of stories using the 5-factor scoring system. Use for sprint planning prep.
---

# Estimate — Calculate Man-Day Estimates

## Purpose
Apply consistent estimation methodology to stories before sprint planning. Uses a 5-factor scoring system calibrated for low-to-medium skill developers.

## Arguments
$ARGUMENTS

## Estimation Framework

### Factor Scoring (1-5 scale)

| Factor | 1 (Easy) | 3 (Medium) | 5 (Hard) |
|--------|----------|------------|----------|
| **Complexity** | Single file, clear logic | Multiple files, some integration | System-wide, complex dependencies |
| **Clarity** | Crystal clear requirements | Some ambiguity, but solvable | Vague, needs discovery work |
| **Experience** | Team has done this many times | Done similar, not exact | Completely new territory |
| **Risk** | Safe, reversible | Some unknowns | High stakes, hard to rollback |
| **Testing** | Easy to verify manually | Needs test coverage | Complex integration testing |

### Score-to-Days Mapping

| Average Score | Man-Days | Typical Story |
|---------------|----------|---------------|
| 1.0 - 1.8 | 0.5 | Simple bug fix, config change |
| 1.9 - 2.5 | 1 | Single feature, clear scope |
| 2.6 - 3.2 | 2 | Multi-file feature, some integration |
| 3.3 - 4.0 | 3 | Complex feature, new patterns |
| 4.1 - 5.0 | 5 | System-level change, high risk |

> **Rule:** If estimate exceeds 5 man-days, the story MUST be split.

## Output Format

```markdown
## Estimation: [Story Title]

| Factor     | Score | Reasoning |
|------------|-------|-----------|
| Complexity | X     | [why]     |
| Clarity    | X     | [why]     |
| Experience | X     | [why]     |
| Risk       | X     | [why]     |
| Testing    | X     | [why]     |

**Average Score:** X.X
**Estimate:** X man-days

### Notes
- [Any assumptions made]
- [Risks that could affect estimate]
- [Dependencies that must be resolved first]
```

## Batch Estimation
For multiple stories, output a summary table:

```markdown
## Sprint Estimation Summary

| Story | Complexity | Clarity | Experience | Risk | Testing | Avg | Man-Days |
|-------|------------|---------|------------|------|---------|-----|----------|
| Story A | 2 | 2 | 1 | 2 | 2 | 1.8 | 0.5 |
| Story B | 3 | 3 | 3 | 2 | 3 | 2.8 | 2 |
| **Total** | | | | | | | **X days** |
```

## Rules
- Be conservative — pad for learning time with junior devs
- Account for Thai holiday calendar if relevant
- Flag stories that need more discovery before estimation
- Consider the 0.6 reality factor: devs only deliver ~60% of available time
