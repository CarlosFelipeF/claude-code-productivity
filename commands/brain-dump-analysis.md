# Brain Dump Analysis

Extract insights from stream-of-consciousness writing and identify patterns across brain dumps.

## Process

### Step 1: Find Brain Dumps

Scan for brain dump files:

1. Check if `braindumps/` folder exists
2. If not, create it and inform user:
   ```
   I've created a braindumps/ folder for you.
   Add your stream-of-consciousness writing as .md files here.
   Then run /brain-dump-analysis again.
   ```
3. If folder exists but is empty, provide the same guidance
4. If files exist, read all `.md` files in the folder

### Step 2: Extract Insights

Launch the `insight-extractor` subagent with all brain dump content to:

- Identify recurring themes and patterns
- Track how thinking evolves over time
- Find hidden connections between ideas
- Extract key questions the user keeps asking
- Highlight breakthrough moments
- Use the user's own words when possible

### Step 3: Create Visual Analysis

Launch the `brain-dump-analyst` subagent with the extracted insights to:

- Create a visual mind map of thoughts (ASCII art)
- List top 10 realizations in the user's exact words
- Show thinking evolution timeline
- Generate action items mentioned in the dumps
- For creators: add content ideas based on insights
- Make everything visual with emojis and formatting

### Step 4: Save Analysis

Create analysis directory if needed:
```bash
mkdir -p braindumps/analysis
```

Save to `braindumps/analysis/analysis-YYYY-MM-DD.md` with:

```markdown
# Brain Dump Analysis - [Date]

## Patterns Discovered
[themes and patterns]

## Mind Map
[ASCII visualization]

## Top Realizations
[in user's own words]

## Evolution of Thinking
[timeline of how ideas developed]

## Hidden Connections
[links between ideas]

## Action Items Found
[tasks mentioned in dumps]

## Content Ideas (for creators)
[potential content based on insights]

## Key Questions You Keep Asking
[recurring questions]
```

## Output Guidelines

- Find patterns the user can't see themselves
- Show how ideas connect and evolve
- Extract wisdom from chaotic thoughts
- Make insights actionable
- Celebrate their thinking and growth
- Use their own words as much as possible
- Include both personal insights (for everyone) and content ideas (for creators)
