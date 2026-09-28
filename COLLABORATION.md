# Dome-World Collaboration

## Repository purpose
Dome-World holds the project's concept, narrative, policy, and technical materials. Existing repository material includes appendices, a planning briefing, and a small experimental Python text game. This guide establishes a reviewable collaboration workflow without reorganizing existing work.

## Botkeepers
The designated human maintainers are:
- @miigwech-potato
- @tauric-diana-613

Botkeepers steward the repository, review proposals, and decide what is merged. AI agents may assist with proposals and implementation; they do not assume the Botkeeper role.

## Canonical and experimental work
- main is the canonical line. A change becomes canonical only through the Botkeepers' agreement and merge process.
- td613-suggestions is the quarantined creative space. Work there remains a proposal and is not canonical.
- Feature branches are temporary proposal spaces. A branch, commit, or pull request is not approval.

## Branching and pull requests
1. Start collaboration proposals from td613-suggestions unless the Botkeepers direct otherwise.
2. Use a descriptive feature branch and keep changes small and coherent.
3. Open a pull request from the feature branch into td613-suggestions for inspection.
4. Describe what changed, why, what was checked, and any uncertainty or provenance.
5. Do not merge this proposal, and do not open a pull request to main as part of this task.

## Review expectations
- Pull requests are required for work entering either shared line.
- For main, the intended rule is one approving review by the Botkeeper who did not author the change, with agreement by both Botkeepers before canonical adoption.
- td613-suggestions is a proposal space and requires no approval before merge under the supplied policy; it still requires a pull request.
- How to handle a main change when both Botkeepers authored it, or when the non-author Botkeeper is unavailable: OWNER TO CONFIRM.
- Repository protections have not been configured by this document; their status must be verified in GitHub settings.

## Attribution and provenance
Preserve existing Git history and source attribution. Identify human and agent contributions accurately. Pull requests should cite relevant source/context and distinguish observed facts, interpretation, and proposed changes. Do not present unreviewed work as canonical. Required attribution format: OWNER TO CONFIRM.

## Reporting
Report observed repository state, changed paths and branches, commits and pull requests, checks and their results, assumptions, and any owner decisions still needed. Never claim a setting or governance rule exists unless it has been verified.
