---
description: Manually sync project profile with current codebase state. Moves completed items to Current Reality and flags drift.
---

# Profile Sync — Manual Profile Sync

## Process
1. Review the current project profile
2. Check codebase for changes since last sync: new features, merged branches, new endpoints, tech stack changes
3. Update profile:
   - Completed **In Progress** → **Current Reality**
   - Completed **Planned** → **Current Reality**
   - Add anything new found in codebase
   - Flag drift between profile and actual codebase

4. Report:
```
### Profile Sync Report
**Synced:** [date]
**Moved to Current Reality:** [items]
**New in Codebase:** [untracked items]
**Drift Detected:** [mismatches]
```

## Rules
- This is a manual override — normally /wiselogic-planning:brainstorm handles sync
- Don't change Planned or Under Consideration unless items are actually complete

## Arguments
$ARGUMENTS
