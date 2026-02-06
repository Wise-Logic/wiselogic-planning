# Wise Logic Planning Toolkit

CTO planning workflow for Claude Code. Turns client ideas into well-defined stories your dev team can execute.

## Company Context

- **Company:** Wise Logic Company Limited, Bangkok
- **CTO:** Jay
- **Tech Stack:** .NET Core, React/Next.js, Azure
- **Team:** Low-to-medium skill developers, Thai primary language
- **Clients:** Enterprise (Unilever, Sansiri, Malee)

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

1. **Brainstorm**: Explore client requests freely. Ideas go to Under Consideration.
2. **Analyze**: Shape ideas into potential stories. Identify dependencies and risks.
3. **Story**: Write full specifications with acceptance criteria and scope boundaries.
4. **Estimate**: Apply 5-factor scoring for man-day estimates.
5. **Sprint**: Plan capacity, assign work, track In Progress.

## Project Profiles

Profiles live in `profiles/` folder. Each project gets one file:
- `profiles/malee-api.md`
- `profiles/sansiri-mobile.md`

Use `profiles/_template.md` as the starting point.

### Profile Sections

1. **Current Reality**: What exists and works (synced from codebase)
2. **In Progress**: Stories being developed this sprint
3. **Planned**: Stories specified and estimated, ready for future sprints
4. **Under Consideration**: Ideas explored but not yet shaped into stories

## Estimation Framework

5-factor scoring (1-5 scale):
- Complexity, Clarity, Experience, Risk, Testing

| Average Score | Man-Days |
|---------------|----------|
| 1.0 - 1.8 | 0.5 |
| 1.9 - 2.5 | 1 |
| 2.6 - 3.2 | 2 |
| 3.3 - 4.0 | 3 |
| 4.1 - 5.0 | 5 |

> Stories over 5 man-days must be split.

## Capacity Planning

```
Sprint Capacity = Team Size x Working Days x 0.6
```

The 0.6 factor accounts for meetings, bugs, context switching, and learning time.

## Rules

- Write clearly — dev team's English is limited
- Every story needs Acceptance Criteria and Scope Boundaries
- No estimation during brainstorming — it's too early
- Never plan above capacity
- Keep profiles synced with actual codebase state
