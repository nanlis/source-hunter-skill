# Example: Context Engineering For AI Agents

User request:

```text
Use $source-hunter to collect verified, high-quality sources for this topic: context engineering for AI agents.
```

## TL;DR Source Map

Context engineering is emerging from the practical problem of keeping long-running AI agents grounded as they accumulate tool outputs, memory, files, retrieved passages, and intermediate plans. The strongest current sources are first-party engineering writeups from Anthropic and LangChain-style practitioner material, while the academic layer is still forming around adjacent topics such as RAG chunking, context compression, LLM agents, and context-management surveys. A good source map should not pretend every tier is equally mature: for this topic, official engineering sources are stronger than peer-reviewed consensus.

## L1 Academic / Preprint

1. `A Survey of Context Engineering for Large Language Models`
   - arXiv, 2025, recent
   - Identifier: arXiv:2507.13334
   - Why it matters: Attempts to formalize context engineering beyond prompt design and connect retrieval, memory, tool use, and agent systems.
   - Status: Preprint.

2. `Reconstructing Context: Evaluating Advanced Chunking Strategies for Retrieval-Augmented Generation`
   - Carlo Merola, Jaspinder Singh, 2025, recent
   - Identifier: arXiv:2504.19754
   - Why it matters: Useful adjacent evidence on contextual retrieval and late chunking, two practical techniques for preserving context in RAG systems.
   - Status: Preprint.

3. `Large Language Model Agent: A Survey on Methodology, Applications and Challenges`
   - arXiv, 2025, recent
   - Identifier: arXiv:2503.21460
   - Why it matters: Broader agent-system survey; use as background for planning, memory, tool use, and collaboration mechanisms.
   - Status: Preprint.

Coverage note: L1 is still thin for the exact term "context engineering for AI agents". Use adjacent searches such as `context management LLM agents survey`, `RAG contextual retrieval`, and `agent memory context compression`.

## L2 Official / First-Party

1. `Effective context engineering for AI agents`
   - Anthropic, 2025, recent
   - URL: https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents
   - Why it matters: Clear first-party framing of context engineering as curation and maintenance of the tokens available during agent inference.

2. `Contextual Retrieval`
   - Anthropic, 2024
   - URL: https://www.anthropic.com/engineering/contextual-retrieval
   - Why it matters: Concrete retrieval technique connected to context quality; reports failure-reduction numbers for retrieval.

3. `Building effective agents`
   - Anthropic, 2024
   - URL: https://www.anthropic.com/research/building-effective-agents
   - Why it matters: Agent design principles around simplicity, transparency, and agent-computer interface documentation.

4. `How we built our multi-agent research system`
   - Anthropic, 2025
   - URL: https://www.anthropic.com/engineering/multi-agent-research-system
   - Why it matters: First-party case of orchestrator-worker agents and parallel research workflows.

## L3 Industry / Practitioner

1. `Context Engineering`
   - LangChain, 2025
   - URL: https://www.langchain.com/blog/context-engineering-for-agents
   - Why it matters: Practical taxonomy for context operations: write, select, compress, and isolate.

2. `Context Engineering in Practice: Building an AI Research Assistant`
   - Inngest, 2025
   - URL: https://www.inngest.com/blog/context-engineering-in-practice
   - Why it matters: Practitioner view of agent architecture and context-building choices.

3. `Context Engineering - LLM Memory and Retrieval for AI Agents`
   - Weaviate, 2025
   - URL: https://weaviate.io/blog/context-engineering
   - Why it matters: Useful industry framing for memory, retrieval, and context organization.

## L4 Expert / Community

1. Simon Willison note on Anthropic's multi-agent research system
   - Simon Willison, 2025
   - URL: https://simonwillison.net/2025/Jun/14/multi-agent-research-system/
   - Why it matters: Expert commentary and summarization; use as interpretation, not primary evidence.

2. Hacker News discussion of `Effective context engineering for AI agents`
   - Hacker News, 2025
   - URL: https://news.ycombinator.com/item?id=45418251
   - Why it matters: Community objections and implementation reactions; useful for alternative views.

## Alternative / Contrary View

Use multi-agent and context-engineering claims carefully. Some practitioners argue that adding more agents or more context can increase cost, latency, and failure surface. Treat "context engineering" as an operational discipline, not a magic replacement for retrieval evaluation, tool design, and human review.

## Search Suggestions

- `context engineering AI agents arXiv`
- `context management LLM agents survey`
- `contextual retrieval late chunking RAG arXiv`
- `AI agent context compression survey`
