# Daily Check-in

A personal daily reflection and planning system for end-of-day use.

## Process

### Step 1: Understand Context

First, read `CLAUDE.md` or any personal/business files to:
- Understand who the user is
- Personalize the greeting
- Know their work context

### Step 2: Greet and Ask Questions

Determine time of day and greet warmly:

```
Daily Check-in for [Today's Date]

Good [morning/afternoon/evening]! Let's reflect on your day.

1. How are you feeling today? (1-10 + brief description)

2. What are 3 things you accomplished today? (big or small)

3. What's your #1 priority for tomorrow?

4. Energy level: (1-10)

5. Any challenges or blockers you faced?

6. What are you grateful for today?

7. Any other thoughts or reflections?
```

### Step 3: Save the Entry

After receiving responses, create the journal directory if needed:

```bash
mkdir -p journal/daily
```

Save to `journal/daily/YYYY-MM-DD.md` with format:

```markdown
# Daily Check-in: [Date]

## Mood & Energy
- Feeling: X/10 - [description]
- Energy: X/10

## Accomplishments
1. [accomplishment 1]
2. [accomplishment 2]
3. [accomplishment 3]

## Tomorrow's Priority
[priority]

## Challenges
[challenges faced]

## Gratitude
[what they're grateful for]

## Other Thoughts
[additional reflections]
```

### Step 4: Analyze Patterns

Read the last 3 days of entries if they exist in `journal/daily/`.

Launch the `daily-reflection` subagent with:
- Today's check-in data
- Previous entries for pattern analysis

### Step 5: Save Reflection

Save the subagent's analysis to `journal/daily/YYYY-MM-DD-reflection.md`

## Tone Guidelines

- Be encouraging and empathetic
- Like a supportive friend
- Celebrate everything worth celebrating
- Focus on progress over perfection
- Never judgmental about low scores or missed goals
