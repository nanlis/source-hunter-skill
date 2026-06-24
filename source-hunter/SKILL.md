---
name: source-hunter
description: Systematically collect, verify, rank, and structure high-quality sources for any research topic. Use when the user asks for sources, references, citations, literature, papers, reports, official docs, evidence maps, research materials, high-quality evidence, source-backed writing inputs, literature review support, or citation repair.
---

# Source Hunter

## Purpose

Use this skill to build a verified source map, not a loose reading list. Prioritize primary, traceable, current sources and downgrade uncertain items into search suggestions instead of inventing bibliographic details.

Read `references/source-quality-standard.md` when the task is high stakes, asks for "high quality", needs many citations, or involves unfamiliar domains. Read `references/output-templates.md` when choosing between quick, review, citation, or material-gathering outputs.

## Workflow

1. Capture the topic and intended use.
   - Default use: `general`.
   - Use `citation` for citation repair, claim support, or bibliography cleanup.
   - Use `review` for literature review, evidence map, or state of the art.
   - Use `materials` for data points, quotes, examples, slides, or public-facing writing inputs.

2. Search by source tier.
   - L1 academic: peer-reviewed papers, top venues, review papers, field-appropriate preprints.
   - L2 official: official documentation, standards bodies, institutional pages, technical blogs, white papers.
   - L3 industry: credible consultancies, research labs, analyst firms, annual state-of reports, regulator or NGO reports.
   - L4 expert/community: named experts with verifiable domain background, long-form essays, technical talks, podcasts with transcripts.

3. Use layered search tactics.
   - Expand keywords with core terms, synonyms, narrower terms, broader concepts, and competing terminology.
   - For academic work, do citation chaining: follow references backward and cited-by links forward.
   - Prefer recent sources, then keep older sources only when they are foundational. Tune freshness by field: fast fields usually need a 2-year priority window; slower fields may use 5 years.
   - Search live whenever tools are available. If live search is unavailable, explicitly label memory-derived or unverified identifiers.

4. Verify every candidate before final output.
   - High confidence: title, author or institution, year, and identifier match a reliable page.
   - Medium confidence: source likely exists but one field is not verified; include only with a clear "identifier needs verification" label when live verification is impossible.
   - Low confidence: do not output as a source; convert it into a precise search query and platform recommendation.
   - Include at least one contrary or alternative-view source when the topic has a mainstream consensus.

5. Output a source map.
   - Start with a 3-5 sentence TL;DR source map: core lineage, key disputes, current frontier.
   - Then list sources by tier from L1 to L4, ordered by importance within each tier.
   - If a tier has limited coverage, say so immediately under that tier and give exact follow-up search terms.
   - Never force-fill a weak tier for visual completeness. A sparse, honest tier is better than a padded source list.
   - End with 2-3 precise search queries and a short next-step suggestion based on the user's intended use.

## Required Source Fields

For quick/default mode, each source needs:

- Full original title.
- Author or institution, year, and freshness marker such as `2024, 2y ago`.
- Verifiable identifier: DOI, arXiv ID, PubMed ID, standards number, official URL, or publisher page.

For review/depth mode, add:

- Method or core argument summary in one concise Chinese or English sentence.
- Relationship to other sources: cites, supports, contradicts, updates, or complements.

## Quality Rules

- Prefer primary sources over summaries.
- For official docs, use first-party pages only.
- For academic work, distinguish peer-reviewed papers from preprints.
- When reporting citation counts, warn that citation counts are age-biased and low counts for new work do not imply low quality.
- Do not use blogs, newsletters, or social posts as evidence for factual claims unless the author is the primary actor or a recognized expert and the item is clearly labeled as expert/community evidence.
- Keep public-facing output clean: source facts first, no backstage workflow language unless the user asks for audit notes.

## Failure Modes To Avoid

- Do not list plausible-but-unverified paper titles.
- Do not fill missing DOI/arXiv/URL fields from memory.
- Do not treat a vendor blog as neutral evidence when better third-party or academic evidence exists.
- Do not overfit to AI sources; choose field-specific databases and preprint platforms.
- Do not present all sources as equally strong; tier and label them.
- Do not sacrifice source quality to make every tier look complete. Mark missing or thin coverage instead.
