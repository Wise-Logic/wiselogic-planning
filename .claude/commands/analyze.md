---
description: Shape brainstorm ideas into potential stories. Identifies dependencies, risks, and build order. No estimation yet.
---

# Analyze — Shape Ideas Into Potential Stories

## Purpose
Take brainstorm output (or ideas from Under Consideration) and break them into potential stories ready for detailed specification.

## Process
1. Review the ideas from the latest brainstorm or from **Under Consideration** in the profile
2. For each idea, analyze:
   - Can this be a single story or does it need to be split?
   - What are the technical dependencies?
   - What needs to exist before this can be built? (check Current Reality)
   - Does this conflict with anything In Progress?
   - What are the risks?
   - What's the rough scope?

3. Group related items and identify a logical build order
4. Flag anything that's too vague to become a story yet — it stays in Under Consideration

## Output Format
For each potential story:
```
### [Potential Story Title]
- **What:** Brief description
- **Why:** Business value
- **Depends on:** Other stories or existing features
- **Risk:** What could go wrong
- **Ready for /story?** Yes / No (if No, what's missing)
```

## Rules
- No estimation at this stage — scope is still being shaped
- Be honest about what's not ready — don't force vague ideas into stories
- Consider the team's skill level when assessing complexity
- Think about the dev team's ability to execute without heavy guidance

## Topic
$ARGUMENTS
