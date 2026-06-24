# Source Quality Standard

## Methodology Anchors

Use these as methodological anchors when explaining why the workflow is strict:

- PRISMA 2020: Page et al., "The PRISMA 2020 statement: an updated guideline for reporting systematic reviews", BMJ 2021, doi:10.1136/bmj.n71. Use for transparent search, screening, and reporting discipline.
- PRISMA-ScR: Tricco et al., "PRISMA Extension for Scoping Reviews (PRISMA-ScR): Checklist and Explanation", Annals of Internal Medicine 2018, doi:10.7326/M18-0850. Use for broad topic mapping and evidence-map style outputs.
- FActScore: Min et al., "FActScore: Fine-grained Atomic Evaluation of Factual Precision in Long Form Text Generation", EMNLP 2023 / arXiv:2305.14251. Use the atomic-fact idea when checking factual claims one by one.
- True grounding: Lee et al., "How Well Do Large Language Models Truly Ground?", NAACL 2024 / arXiv:2311.09069. Use the principle that a response should use necessary evidence and stay within evidence limits.
- Information Foraging: Pirolli and Card, "Information Foraging", Psychological Review 1999, doi:10.1037/0033-295X.106.4.643. Use for source-map design: make information scent, source relationships, and next search paths visible.
- AGREE grounding: Ye and Sun / Google Research, "Effective large language model adaptation for improved grounding", 2024. Use for the importance of citations and retrieved support.
- Anthropic context engineering: Anthropic, "Effective context engineering for AI agents", 2025. Use for context-budget discipline: load detailed references only when needed and shape output to the downstream task.

## Search Platforms By Domain

- General scholarly: Google Scholar, Semantic Scholar, Crossref, OpenAlex, publisher pages.
- Biomedical: PubMed, Europe PMC, medRxiv, bioRxiv, Cochrane Library.
- AI/CS: ACL Anthology, arXiv, OpenReview, IEEE Xplore, ACM Digital Library, Papers with Code for implementation context.
- Economics/social science: SSRN, NBER, RePEc, institutional working-paper pages.
- Policy/legal/regulatory: official regulator sites, legislation portals, court or agency pages, OECD, World Bank, UN bodies.
- Standards/engineering: ISO/IEC/IEEE pages, W3C, IETF RFCs, NIST, vendor docs only for vendor-specific claims.

## Verification Protocol

1. Build a candidate list with confidence labels.
2. Verify title, author/institution, year, and identifier against reliable pages.
3. Downgrade any uncertain item:
   - High: output normally.
   - Medium: output only if the uncertainty is disclosed or if live verification is impossible.
   - Low: replace with a search recommendation; do not invent a citation.
4. Spot-check for overconfidence. If every item is high confidence, verify 2-3 identifiers again.
5. Add at least one contrary or alternative source when the field has debate.

## Ranking Heuristics

Rank stronger when a source is:

- Primary, official, or peer reviewed.
- Recent enough for the field.
- Methodologically transparent.
- Widely cited or central to citation chains, with age bias considered.
- Directly relevant to the user's topic and downstream use.

Rank weaker when a source is:

- A secondary summary with no primary links.
- A vendor or interested-party claim without independent support.
- A preprint with no external uptake in a high-risk domain.
- Missing identifiers or hard to trace.
