## Submission type

- [ ] Mathematical solver information
- [x] Lean proof or formalization author information / dedicated proof-intake evidence

## Problem and proposed change

**Problem ID:** JSP-000288 / Erdős 346.

The catalog currently records the mathematical result as solved but its Lean-proof field has not yet been finalized. This PR proposes adding a fixed public proof reference and accurate attribution after maintainer review.

**Exact scope:** There is a strictly increasing positive sequence that remains complete after every finite deletion and becomes incomplete after every infinite deletion, has all consecutive ratios at least 6/5, and has two ratio subsequences converging to different limits.

The proof refutes unconditional convergence. It does not settle a distinct variant that assumes the ratios converge. The upstream header references provenance material absent from the pinned tree, so attribution is reported conservatively.

## Proof source

Replace the placeholders after publishing this package:

```json
[
  {
    "repository": "https://github.com/chiewoscar/jsp-000288-stable-complete-ratios",
    "branch": "main",
    "commit": "FULL_40_CHARACTER_COMMIT_SHA"
  },
  {
    "repository": "https://github.com/plby/lean-proofs",
    "branch": "main",
    "commit": "8822f7ddef30fadbd92e1c6ab4ed897af356af5e"
  }
]
```

- Dedicated theorem: `JSP000288.solution` in `JSP000288.lean`.
- Substantive upstream endpoint: `Erdos346.not_erdos_346`.
- Upstream comparator permits only `propext`, `Classical.choice`, and `Quot.sound`; Nanoda is not enabled in that comparator configuration.
- Build and replay instructions: `README.md` and `scripts/verify.py`.
- Exact statement map: `STATEMENT.md`.
- Priority and overlap disclosure: `PRIOR_ART.md`.

## Attribution and overlap

- Mathematical credit: Liam Price and GPT-5.5, following the attribution available in the pinned source.
- Existing Lean credit: Liam Price and GPT-5.5, following the attribution available in the pinned source.
- Existing broad evidence registration: official issue #22; catalog-source registration PR #40.

This submission does **not** claim a new mathematical discovery or first formalization. It is a dedicated JSP interface and reproducible intake package for the existing proof. Please assess whether that dedicated statement-review, reproduction, and integration work merits any contribution recognition without displacing earlier public work.

## Verification

Before opening the PR, run:

```bash
python3 scripts/verify.py --clean
```

Then replace this paragraph with the exact commit, CI run, generated `verification/generated/result.json`, source/archive SHA-256, and any independent-checker evidence actually obtained. Do not claim a passed Lean build before those artifacts exist.

The verifier checks the pinned upstream commit and source hashes, compiles the required custom modules, compiles the JSP interface and audit, rejects local proof shortcuts, validates the axiom closure, and replays both modules with Lean's bundled checker. That checker uses Lean's own kernel and is not an independently implemented verifier.

## Submission checklist

- [x] The proposed catalog change is limited to Lean-proof information and attribution.
- [x] The complete original scoped result is represented; no partial theorem is presented as full closure.
- [x] Existing mathematical and formalization credit is preserved.
- [x] The official PR contains no vendored upstream proof source, build artifact, or binary.
- [ ] The public repository URL and full commit SHA above have been filled in.
- [ ] The clean verification and public CI have actually passed at that SHA.
- [ ] Verification artifacts have been archived and linked with byte count and SHA-256 if required.

Maintainer statement review, designated verification, priority assessment, recipient confirmation, eligibility, and any award decision remain pending.
