# Agent and contributor guidance

## Repository structure
The inspected root contains project appendices, a strategic-planning briefing, an opening letter, a README, and the existing Dome_world_game text simulation. Collaboration guidance lives in COLLABORATION.md. This proposal adds docs/HONEY-BEE.md, projects/domeblox/README.md, and a reserved bots/dome-world workspace. Domeblox has not been found; do not treat Dome_world_game as a Domeblox implementation. No existing AGENTS.md or CONTRIBUTING.md was present at inspection.

## Conventions
- Preserve the existing repository layout and make small, relevant changes.
- Preserve spelling, capitalization, diacritics, symbols, and terminology in project material.
- Do not silently rewrite unrelated content or claim an implementation exists when it does not.
- Document provenance and uncertainty in the pull request.

## Do Not Normalize
Never silently rename project vocabulary:
- Dome-World
- Flow-Core
- battery-pool (never "cistern")
- cleansing-chute
- wool (never "fur")
- no "greywater" or "blackwater"
- hõt-出-上 (keep the hyphens; never arrows)
- hõt//cōl, 上//下, à//出 (opposed pairs use the double slash; never arrows)
- 𝄐 means Rest (never "integrate" or "cool")
- (•) is the in-game rendering of 𝄐; neither is a typo

If uncertain whether a term is canonical, preserve its existing form and flag the uncertainty for human review.

## Flow-Core glossary
- 米 — Pattern-flow; the rhythm by which work moves.
- à — Accumulated proposals awaiting review.
- 出 — Reviewed work released into the shared repository.
- 𝄐 — Fermata (Rest): the work has reached a stable stopping point. Nothing remains required. The repository holds in readiness until the next movement begins.

## Documentation and architecture
Keep documentation readable and retain glyphs and diacritics. Do not make architectural decisions automatically. If an architectural change appears necessary, document a proposed Architecture Decision Record under docs/adr/ before implementation and request human review. Do not assume GitHub Issue creation is available.

## Tests
Inspect the existing setup before proposing tests or commands. Run relevant existing checks when a code change warrants them, and report exact commands and results. This proposal is documentation and empty scaffolding only; no test suite or automated test command was identified during inspection, and no tests are being run for this documentation-only change.

## Branch and review workflow
Never work directly on main. Use feature branches from td613-suggestions for proposals and open pull requests into td613-suggestions. Do not merge a proposal or target main for this task. A branch, commit, and pull request are not approval. See COLLABORATION.md for Botkeeper roles and review expectations. Do not change repository settings, access, or branch protection.

## Reporting
Report observed state, paths changed, branch and pull request, checks performed and results, assumptions, and owner actions still required. Do not claim that settings or governance are active unless verified.
