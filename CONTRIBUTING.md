# Contributing to Claude Code Productivity Commands

Thank you for your interest in contributing! This project thrives on community contributions.

## Ways to Contribute

### 1. Add a New Command

Create a new `.md` file in `commands/` with:
- Clear description of what it does
- Step-by-step process
- Which subagents it uses (if any)
- Example output format

### 2. Add a New Subagent

Create a new `.md` file in `subagents/` with:
- Role description
- Specific capabilities
- Output format expectations
- Tone guidelines

### 3. Improve Existing Commands/Subagents

- Make prompts clearer
- Add better examples
- Fix edge cases
- Improve output formatting

### 4. Documentation

- Fix typos
- Add examples
- Improve explanations
- Add FAQ entries

## Submission Process

1. **Fork** the repository
2. **Create a branch** for your changes (`git checkout -b feature/my-new-command`)
3. **Make your changes**
4. **Test** your command/subagent locally
5. **Submit a Pull Request** with:
   - Clear description of changes
   - Example usage/output
   - Any breaking changes noted

## Command Guidelines

When creating commands:

- **Be specific** - Commands should do one thing well
- **Be context-aware** - Read user's CLAUDE.md and project files when relevant
- **Create folders as needed** - Don't assume folder structure exists
- **Save outputs** - Persist results to appropriate folders
- **Use subagents** - Break complex analysis into specialized subagents

## Subagent Guidelines

When creating subagents:

- **Single responsibility** - Each subagent should have a focused role
- **Visual outputs** - Use markdown tables, ASCII art, progress bars
- **Encouraging tone** - Be supportive, not critical
- **Actionable insights** - Provide specific next steps

## Code of Conduct

Please read and follow our [Code of Conduct](CODE_OF_CONDUCT.md).

## Questions?

Open an issue with the "question" label and we'll help you out!
