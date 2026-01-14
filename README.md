# Claude Code Productivity Commands

> 5 slash commands and 8 subagents for personal productivity with Claude Code

Transform your daily workflow with intelligent, context-aware commands that adapt to YOUR work style. Whether you're a creator, developer, entrepreneur, or student—these commands learn what matters to you.

## Quick Install

**One-line install:**
```bash
curl -fsSL https://raw.githubusercontent.com/CarlosFelipeF/claude-code-productivity/main/install.sh | bash
```

**Manual installation:**
```bash
# Clone the repository
git clone https://github.com/CarlosFelipeF/claude-code-productivity.git

# Copy commands to your Claude Code directory
cp -r claude-code-productivity/commands/* ~/.claude/commands/

# Copy subagents
cp -r claude-code-productivity/subagents/* ~/.claude/subagents/
```

## Commands Overview

| Command | When to Use | What It Does |
|---------|-------------|--------------|
| `/daily-brief` | Morning | Personalized news briefing based on your interests |
| `/daily-checkin` | End of day | Reflection, mood tracking, and tomorrow planning |
| `/weekly-checkin` | Weekly | Metrics tracking adapted to YOUR specific work |
| `/brain-dump-analysis` | Anytime | Extract insights from stream-of-consciousness writing |
| `/newsletter-research` | Content creation | Research competitors + draft newsletters in your voice |

---

## Detailed Command Documentation

### `/daily-brief`

Start your day with a personalized news briefing that actually matters to you.

**What it does:**
- Analyzes your project files to understand your interests
- Searches the web for news from the **last 7 days only**
- Filters for relevance and actionability
- Explains why each story matters to YOU
- Suggests actions you could take

**Usage:**
```
/daily-brief
```

**Example output:**
```
Good morning! Here's your personalized briefing for January 14, 2026

Based on your interests in AI, productivity tools, and content creation:

TOP STORIES

1. "Claude Code Gets New Plugin System" (Jan 12, 2026)
   Why this matters: You're building Claude Code commands—this directly affects your workflow.
   Action: Review the new plugin API for potential integration.

2. "Newsletter Open Rates Hit 5-Year High" (Jan 10, 2026)
   Why this matters: Your newsletter research commands could leverage these trends.
   Action: Consider updating your newsletter-writer subagent with new best practices.
```

**Subagents used:** `interest-analyzer`, `news-curator`

---

### `/daily-checkin`

End your day with meaningful reflection and set yourself up for tomorrow.

**What it does:**
- Greets you based on time of day
- Asks structured reflection questions (mood, accomplishments, priorities, energy, gratitude)
- Saves entries to `journal/daily/YYYY-MM-DD.md`
- Analyzes patterns across multiple days
- Provides encouraging insights and gentle suggestions

**Usage:**
```
/daily-checkin
```

**Example interaction:**
```
Daily Check-in for January 14, 2026

Good evening! Let's reflect on your day.

1. How are you feeling today? (1-10 + brief description)
2. What are 3 things you accomplished today? (big or small)
3. What's your #1 priority for tomorrow?
4. Energy level: (1-10)
5. Any challenges or blockers you faced?
6. What are you grateful for today?
7. Any other thoughts or reflections?
```

**Subagents used:** `daily-reflection`

---

### `/weekly-checkin`

Intelligent weekly metrics tracking that adapts to YOUR specific work.

**What it does:**
- Reads your `CLAUDE.md` and project files to understand your context
- **Discovers** what metrics matter for YOUR type of work:
  - Creators: followers, subscribers, views, revenue
  - SaaS: MRR, users, churn, growth rate
  - Developers: commits, PRs, stars, downloads
  - Students: courses completed, grades, projects
- Compares to previous week's data
- Generates visual reports with trends and recommendations

**Usage:**
```
/weekly-checkin
```

**Example output:**
```
Weekly Metrics Report - Week of January 8-14, 2026

Based on your creator profile, here are your key metrics:

| Metric | Last Week | This Week | Change |
|--------|-----------|-----------|--------|
| Newsletter Subscribers | 1,247 | 1,389 | +11.4% |
| Twitter Followers | 5,230 | 5,412 | +3.5% |
| Revenue | $2,100 | $2,350 | +11.9% |

Progress toward goals:
[========--] 80% to 2,000 subscribers

Recommendations:
1. Your newsletter growth is outpacing social—double down on email
2. Consider a subscriber milestone celebration at 1,500
3. Revenue growth strong—explore new product offerings
```

**Subagents used:** `metrics-analyst`

---

### `/brain-dump-analysis`

Turn chaotic thoughts into actionable insights.

**What it does:**
- Scans your `braindumps/` folder (creates it if needed)
- Identifies recurring themes and patterns
- Finds hidden connections between ideas
- Extracts key questions you keep asking
- Highlights breakthrough moments
- Creates visual mind maps with ASCII art
- Generates both personal insights AND content ideas (for creators)

**Usage:**
```
/brain-dump-analysis
```

**Example output:**
```
Brain Dump Analysis - January 2026

PATTERNS DISCOVERED

Your top recurring themes:
1. "Building in public" (mentioned 12x)
2. "AI-assisted workflows" (mentioned 8x)
3. "Time management struggles" (mentioned 6x)

HIDDEN CONNECTIONS

        +-------------------+
        | Building Public   |
        +---------+---------+
                  |
    +-------------+-------------+
    v             v             v
+-------+   +----------+   +---------+
| Trust |   | Content  |   | Growth  |
+-------+   +----------+   +---------+

TOP 10 REALIZATIONS (in your words):
1. "The best content comes from real problems I'm solving"
2. "Consistency beats intensity every time"
...

ACTION ITEMS YOU MENTIONED:
- [ ] Start daily Twitter threads
- [ ] Document my Claude Code workflow
- [ ] Launch newsletter by February
```

**Subagents used:** `insight-extractor`, `brain-dump-analyst`

---

### `/newsletter-research`

Research competitors and draft newsletters in YOUR voice.

**What it does:**
- Reads newsletter URLs from your files (or asks for them)
- Fetches and analyzes recent posts from those newsletters
- Identifies trending topics and content gaps
- Finds time-sensitive angles
- Writes 500-800 word drafts matching YOUR voice
- Creates 3 compelling subject line options
- Includes practical takeaways and natural CTAs

**Usage:**
```
/newsletter-research
```

**Example output:**
```
Newsletter Research Report

COMPETITOR ANALYSIS
Analyzed 5 newsletters from your sources:

Trending Topics:
1. AI productivity tools (4/5 covered this week)
2. Remote work evolution (3/5)
3. Personal knowledge management (2/5)

Content Gaps (opportunities for you):
- Nobody covered Claude Code workflows
- Missing: practical automation tutorials
- Underserved: solo creator tech stacks

---

DRAFT: "The Tool That Changed How I Work"

Subject Line Options:
1. "I deleted 5 apps after finding this" (curiosity)
2. "My new morning routine takes 2 minutes" (benefit)
3. "The productivity hack nobody's talking about" (exclusivity)

[Full 650-word draft in your voice...]

Saved to: newsletter/drafts/2026-01-14-draft.md
```

**Subagents used:** `content-researcher`, `newsletter-writer`

---

## Subagents Reference

| Subagent | Purpose | Used By |
|----------|---------|---------|
| `interest-analyzer` | Identifies your interests from project files | /daily-brief |
| `news-curator` | Searches and filters recent news | /daily-brief |
| `daily-reflection` | Analyzes mood and productivity patterns | /daily-checkin |
| `metrics-analyst` | Creates visual metric reports and trends | /weekly-checkin |
| `insight-extractor` | Finds patterns in brain dumps | /brain-dump-analysis |
| `brain-dump-analyst` | Creates visual mind maps and action items | /brain-dump-analysis |
| `content-researcher` | Analyzes competitor content for trends | /newsletter-research |
| `newsletter-writer` | Drafts newsletters in your voice | /newsletter-research |

---

## Folder Structure

When you use these commands, they create organized folders in your project:

```
your-project/
├── journal/
│   └── daily/           # Daily check-in entries
├── metrics/
│   ├── metrics-history.md
│   └── weekly-report-*.md
├── braindumps/
│   ├── *.md             # Your raw brain dumps
│   └── analysis/        # Generated insights
└── newsletter/
    ├── research/        # Competitor analysis
    └── drafts/          # Generated drafts
```

---

## Customization

### Modifying Commands

Commands are markdown files in `~/.claude/commands/`. Edit them to:
- Change the questions asked
- Modify output formats
- Add or remove steps
- Customize for your workflow

### Adding Your Own Subagents

Create new `.md` files in `~/.claude/subagents/` with:
- Clear role description
- Specific capabilities
- Output format expectations
- Tone guidelines

### Personalizing for Best Results

Add a `CLAUDE.md` file to your project root with:
- Your role/profession
- Current projects and goals
- Interests and focus areas
- Preferred communication style

This helps commands understand your context and provide more relevant outputs.

---

## Requirements

- **Claude Code CLI** installed and configured
- **Web search capability** enabled (required for `/daily-brief`)
- **CLAUDE.md** in your project (recommended for personalization)

---

## FAQ

**How do I customize a command?**
Edit the markdown file in `~/.claude/commands/`. The file content IS the prompt—modify it to change behavior.

**Can I add my own subagents?**
Yes! Create a new `.md` file in `~/.claude/subagents/` with your custom instructions.

**Where is my data stored?**
All your data (journals, metrics, brain dumps) stays in YOUR project folder. Nothing is sent to external servers beyond what Claude Code normally does.

**How do I update to new versions?**
Re-run the install script or `git pull` and copy the updated files.

**Can I use these commands in any project?**
Yes! The commands work in any project. For best personalization, add a `CLAUDE.md` file describing your context.

---

## Troubleshooting

**Command not found**
- Ensure files are in `~/.claude/commands/`
- Restart Claude Code after adding new commands
- Check file has `.md` extension

**Subagent not launching**
- Verify subagent file exists in `~/.claude/subagents/`
- Check the command references the correct subagent filename
- Ensure no syntax errors in the subagent markdown

**Data not persisting**
- Check write permissions in your project folder
- Verify the folder paths in command outputs
- Commands create folders automatically on first run

**Web search not working (/daily-brief)**
- Ensure web search is enabled in Claude Code settings
- Check your internet connection
- The command requires recent news access

---

## Contributing

We welcome contributions! See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines on:
- Adding new commands
- Improving existing subagents
- Fixing bugs
- Improving documentation

---

## License

MIT License - see [LICENSE](LICENSE) for details.

---

## Acknowledgments

Built with Claude Code by the community, for the community.

**Found this useful?** Star the repo and share with others who might benefit!
