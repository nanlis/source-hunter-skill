# Source Hunter Skill

中文 | [English](#english)

Source Hunter 是一个 Codex/Agent skill，用来系统化收集、验证、排序和结构化高质量信源。它适合研究、补引用、写综述、事实核查，以及任何需要“先把信源站稳”的写作任务。

它不是一个“万能搜索 prompt”。它更像一层信源纪律：让模型不要把弱链接、二手转述、可疑报告或编造式引用当成可靠证据。

## 它解决什么问题

- 把“找资料”变成分层信源地图，而不是散乱链接列表。
- 优先使用一手、可追踪、时效合适的来源。
- 区分学术论文、官方文档、行业报告、专家/社区内容。
- 对不确定的来源降级为检索建议，而不是硬编 DOI、arXiv ID、报告名或 URL。
- 支持快速扫描、补引用、深度综述、写作素材收集等场景。

## 安装

推荐先 clone 仓库，再运行安装脚本。

Windows PowerShell:

```powershell
git clone https://github.com/nanlis/source-hunter-skill
.\source-hunter-skill\install.ps1
```

macOS / Linux:

```bash
git clone https://github.com/nanlis/source-hunter-skill
sh ./source-hunter-skill/install.sh
```

默认安装到：

```text
%USERPROFILE%\.codex\skills\source-hunter   # Windows
~/.codex/skills/source-hunter               # macOS / Linux
```

如果设置了 `CODEX_HOME`，会安装到：

```text
$CODEX_HOME/skills/source-hunter
```

也可以手动安装：

把 `source-hunter` 文件夹复制到你的 Codex skills 目录，例如：

```powershell
Copy-Item -Recurse .\source-hunter "$env:USERPROFILE\.codex\skills\source-hunter"
```

然后这样调用：

```text
Use $source-hunter to collect verified, high-quality sources for this topic: context engineering for AI agents.
```

也可以用中文描述任务：

```text
Use $source-hunter 帮我围绕“AI Agent 的上下文工程”找一组可验证的高质量信源，用来写综述。
```

## 目录结构

```text
source-hunter/
  SKILL.md
  agents/openai.yaml
  references/output-templates.md
  references/source-quality-standard.md
examples/
  context-engineering.md
```

## 示例

查看 [`examples/context-engineering.md`](examples/context-engineering.md)。这个例子展示了围绕 “context engineering for AI agents” 做信源收集时，应该如何处理强弱不均的信源层级。

关键规则：不要为了让 L1-L4 看起来完整而硬塞弱信源。某一层覆盖不足，就明确标注覆盖不足，并给出后续检索建议。

## 适合场景

- 给文章、报告、推文补引用。
- 做一个主题的文献/资料扫描。
- 写作前准备可信信源包。
- 做事实核查或 claim support。
- 做综述、选题、evidence map。

## 不适合场景

- 想快速要几个随便能点开的链接。
- 不需要验证、只需要灵感。
- 想让模型替你判断所有学术质量，而不做人工复核。
- 没有搜索/联网工具，却要求最新事实。

## 校验

这个 skill 使用 `skill-creator` 创建，并通过 `quick_validate.py` 校验。

## License

MIT

---

## English

Source Hunter is a Codex/Agent skill for collecting, verifying, ranking, and structuring high-quality sources for research, citation repair, literature review support, fact checking, and source-backed writing.

It is not a magic search prompt. It is a source-discipline layer: it pushes the model to avoid treating weak links, secondary summaries, questionable reports, or fabricated-looking citations as reliable evidence.

## What It Does

- Builds a source map instead of a loose reading list.
- Prioritizes primary, traceable, current sources.
- Separates academic, official, industry, and expert/community evidence.
- Downgrades uncertain items into search suggestions instead of inventing DOIs, arXiv IDs, report titles, or URLs.
- Supports quick source scans, citation repair, deeper review, and material gathering.

## Install

Recommended: clone the repository and run the install script.

Windows PowerShell:

```powershell
git clone https://github.com/nanlis/source-hunter-skill
.\source-hunter-skill\install.ps1
```

macOS / Linux:

```bash
git clone https://github.com/nanlis/source-hunter-skill
sh ./source-hunter-skill/install.sh
```

By default, the skill is installed to:

```text
%USERPROFILE%\.codex\skills\source-hunter   # Windows
~/.codex/skills/source-hunter               # macOS / Linux
```

If `CODEX_HOME` is set, it installs to:

```text
$CODEX_HOME/skills/source-hunter
```

Manual install:

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
examples/
  context-engineering.md
```

## Example

See [`examples/context-engineering.md`](examples/context-engineering.md) for a worked example on context engineering for AI agents. It shows the intended behavior when one source tier is weaker than another: mark thin coverage instead of padding the list with weak sources.

## Good Fit

- Citation repair.
- Literature or source scans.
- Source packs before writing.
- Fact checking and claim support.
- Literature reviews, topic exploration, and evidence maps.

## Not A Good Fit

- You only want a few quick links.
- You need inspiration but not verification.
- You expect the model to replace human judgment about academic quality.
- You have no browsing/search capability but need current facts.

## Validation

This skill was created with `skill-creator` and validated with `quick_validate.py`.

## License

MIT
