# Source Hunter Skill

Source Hunter is a Codex/Agent skill for collecting, verifying, ranking, and structuring high-quality sources for research, citation repair, literature review support, and source-backed writing.

## What It Does

- Builds a source map instead of a loose reading list.
- Prioritizes primary, traceable, current sources.
- Separates academic, official, industry, and expert/community evidence.
- Downgrades uncertain items into search suggestions instead of inventing bibliographic details.
- Supports quick source scans, citation repair, deeper review, and material gathering.

## Install

Copy the `source-hunter` folder into your Codex skills directory, for example:

```powershell
Copy-Item -Recurse .\source-hunter "$env:USERPROFILE\.codex\skills\source-hunter"
```

Then invoke it with:

```text
Use $source-hunter to collect verified, high-quality sources for this topic: context engineering for AI agents.
```

## Structure

```text
source-hunter/
  SKILL.md
  agents/openai.yaml
  references/output-templates.md
  references/source-quality-standard.md
```

## Validation

This skill was created with `skill-creator` and validated with `quick_validate.py`.

## License

MIT
