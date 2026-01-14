# Daily Brief

Provide a personalized morning news briefing based on the user's interests and context.

## Process

### Step 1: Understand the User

First, analyze the user's context to identify their interests:

1. Read `CLAUDE.md` if it exists to understand who they are
2. Scan `business/`, `docs/`, `projects/` or similar folders for context
3. Look at recent files they've been working on
4. Identify their profession, industry, and focus areas

Launch the `interest-analyzer` subagent with all discovered context to create an interest profile.

### Step 2: Gather News

Launch the `news-curator` subagent with the interest profile. The news curator MUST:

- Use web search to find news from THE LAST 7 DAYS ONLY
- Filter by date - reject any story older than 7 days
- Include publication date on every story
- Focus on actionable, relevant news
- Verify dates before including any story

### Step 3: Present the Briefing

Create a personalized briefing with:

```
Good [morning/afternoon]! Here's your personalized briefing for [Today's Date]

Based on your interests in [discovered interests]:

TOP STORIES

1. "[Headline]" ([Publication Date])
   Why this matters to you: [Personal relevance]
   Action you could take: [Specific suggestion]

2. "[Headline]" ([Publication Date])
   Why this matters to you: [Personal relevance]
   Action you could take: [Specific suggestion]

[Continue for 5-7 stories]

QUICK HITS
- [Brief item 1]
- [Brief item 2]
- [Brief item 3]

Have a productive day!
```

## Important Rules

- NEVER include news older than 7 days
- NEVER make up or hallucinate news stories
- ALWAYS include publication dates
- ALWAYS explain why each story matters to THIS specific user
- ALWAYS suggest a concrete action for top stories
- If web search fails, inform the user and offer to try again
