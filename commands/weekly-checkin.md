# Weekly Check-in

Perform a comprehensive weekly check-in with intelligent, context-aware metrics tracking.

## Process

### Step 1: Analyze Project Context

First, understand who this user is and what they do:

1. Read `CLAUDE.md` to understand the user and their projects
2. Scan `business/`, `docs/`, `projects/` or similar folders for context
3. Look for existing metrics history in `metrics/metrics-history.md`
4. Identify what type of work/business this is

### Step 2: Discover Relevant Metrics

Based on your analysis, determine the most relevant metrics to track. Examples by type:

**Creators/Content:**
- Newsletter subscribers
- Social followers (Twitter, LinkedIn, YouTube, etc.)
- Views/impressions
- Revenue
- Products sold
- Email open rates

**SaaS/Software:**
- MRR/ARR
- Active users
- Churn rate
- Growth rate
- Trial conversions
- Support tickets

**Developers:**
- Commits/PRs
- GitHub stars
- Package downloads
- Issues closed
- Code coverage

**Students:**
- Courses completed
- Grades/scores
- Projects finished
- Skills learned
- Certifications

**Freelancers:**
- Active clients
- Pipeline value
- Hours billed
- Revenue
- Proposals sent

### Step 3: Ask for Metrics

Ask the user for the SPECIFIC metrics you discovered:

```
Weekly Check-in for Week of [Date Range]

Based on your [type of work], I'd like to track these metrics:

1. [Metric 1]:
2. [Metric 2]:
3. [Metric 3]:
[etc.]

Please provide your current numbers for each.
```

### Step 4: Compare to Previous Week

Read `metrics/metrics-history.md` if it exists to get previous data.

### Step 5: Update History

Create metrics directory if needed:
```bash
mkdir -p metrics
```

Append new data to `metrics/metrics-history.md`:

```markdown
## Week of [Date Range]
| Metric | Value |
|--------|-------|
| [metric] | [value] |
```

### Step 6: Generate Analysis

Launch the `metrics-analyst` subagent with:
- This week's metrics
- Previous week's metrics
- User context and goals

### Step 7: Save Report

Save the analysis to `metrics/weekly-report-YYYY-MM-DD.md`

## Important Rules

- Do NOT use generic templates
- DISCOVER what's relevant for THIS specific user
- Ask for specific metrics based on their context
- Always compare to previous data when available
- Provide actionable recommendations
