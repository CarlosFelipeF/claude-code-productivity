# Newsletter Research

Research competitor newsletters and generate newsletter drafts in the user's voice.

## Process

### Step 1: Find Newsletter Sources

Look for newsletter URLs in the user's files:

1. Check for a `newsletter-sources.md` or similar file
2. Look in `CLAUDE.md` for mentioned newsletters
3. Scan `docs/` or `business/` folders for newsletter references
4. If no sources found, ask the user:
   ```
   I couldn't find newsletter sources in your files.

   Please provide:
   1. URLs to competitor newsletters you want to analyze
   2. URL to your own newsletter (so I can learn your voice)
   ```

### Step 2: Analyze Competitor Content

Launch the `content-researcher` subagent to:

- Fetch recent posts from the provided newsletters
- Identify trending topics across newsletters
- Find content gaps and opportunities
- Discover time-sensitive angles
- Note what's working (engagement patterns)

### Step 3: Learn User's Voice

If the user has existing content:
- Read their previous newsletters
- Analyze their writing style
- Note their tone, sentence structure, vocabulary
- Identify their unique perspective

### Step 4: Generate Draft

Launch the `newsletter-writer` subagent with:
- Insights from content research
- User's voice analysis
- Trending topics and gaps identified

The newsletter writer should create:
- 3 compelling subject line options
- Complete 500-800 word draft
- Practical takeaways for readers
- Natural, soft CTA if relevant

### Step 5: Save Outputs

Create directories if needed:
```bash
mkdir -p newsletter/research
mkdir -p newsletter/drafts
```

Save research to `newsletter/research/research-YYYY-MM-DD.md`:
```markdown
# Newsletter Research - [Date]

## Sources Analyzed
[list of newsletters]

## Trending Topics
[what everyone is covering]

## Content Gaps
[opportunities for differentiation]

## Time-Sensitive Angles
[what to write about NOW]
```

Save draft to `newsletter/drafts/draft-YYYY-MM-DD.md`:
```markdown
# Newsletter Draft - [Date]

## Subject Line Options
1. [option 1] - [why it works]
2. [option 2] - [why it works]
3. [option 3] - [why it works]

## Draft

[Full 500-800 word newsletter]

---
Word count: [X]
Estimated read time: [X] minutes
```

## Quality Guidelines

- Write in the user's authentic voice, not generic AI
- Create ready-to-send drafts, not just outlines
- Subject lines should create curiosity
- Focus on value-first content
- Include specific, actionable takeaways
- CTAs should be natural and soft, not pushy
- Sound human, not like AI-generated content
