# Verification status — JSP-000288

## Completed while preparing this package

- local file generation and archive creation;
- Python verifier syntax compilation;
- fail-closed static scan of the local Lean wrapper and audit;
- SHA-256 manifest generation;
- live official PR-title collision search for `JSP-000288`;
- upstream theorem, comparator, scope, and prior-evidence inspection.

## Not claimed in this environment

A new Lean compiler run was **not** completed inside the current artifact-building container. Therefore this package does not claim that its newly generated wrapper has already passed `lake` or `leanchecker` here.

Publish the repository and run:

```bash
python3 scripts/verify.py --clean
```

A successful run creates `verification/generated/result.json` with `"status": "pass"`, source hashes, axiom closures, and replayed modules. Preserve the generated logs and link the public CI run before submitting the prize PR.

Existing third-party reproduction evidence is described in `PRIOR_ART.md`; it is not relabeled as a run performed by this package preparer.
