# JSP-000288 — A minimal stably complete sequence whose consecutive ratios do not converge

This is a **dedicated intake, statement-interface, and reproduction package** for an existing public Lean proof. It does not claim a new mathematical result or first-formalization priority.

## Result

**Catalog question:** Must ratios of consecutive terms in the specified minimal stably complete sequences converge to the golden ratio?

**Pinned formal endpoint:** `Erdos346.not_erdos_346`.

There is a strictly increasing positive sequence that remains complete after every finite deletion and becomes incomplete after every infinite deletion, has all consecutive ratios at least 6/5, and has two ratio subsequences converging to different limits.

## Why this target was selected

Exact counterexample and closed negation with only two custom modules. The weaker point is provenance: its comparator has Nanoda disabled and the upstream attribution trail is thinner.

## What this package contributes

- a direct theorem endpoint named `JSP000288.solution`;
- a commit-pinned upstream lock with per-source SHA-256 values;
- local statement and scope review;
- fail-closed source scanning for proof shortcuts;
- target-only compilation of custom modules;
- axiom allowlist enforcement;
- same-kernel `leanchecker` replay of the upstream and local modules;
- a GitHub Actions workflow and prepared official PR text.

The mathematical proof and substantive formalization remain attributed to the upstream contributors.

## Reproduce

Linux/macOS:

```bash
./verify.sh --clean
```

Windows PowerShell:

```powershell
.\verify.ps1 --clean
```

The verifier clones `plby/lean-proofs` at `8822f7ddef30fadbd92e1c6ab4ed897af356af5e`, checks the exact source hashes, uses Lean 4.33.0, retrieves the pinned dependency cache, compiles only the required custom modules, compiles the JSP wrapper and audit, enforces the axiom allowlist, and runs `leanchecker` on both modules.

A successful contributor-run verification is evidence, not organizer approval, independent human review, or permission to claim payment.

## Attribution

- **Mathematics:** Liam Price and GPT-5.5, following the attribution available in the pinned source.
- **Existing Lean work:** Liam Price and GPT-5.5, following the attribution available in the pinned source.
- **Prior registration/reproduction evidence:** TheJustinSunPrize/awards issue #22 (initial batch).
- **This package:** dedicated JSP interface, statement review, pinned reproduction, and submission preparation.

## Scope limitation

The proof refutes unconditional convergence. It does not settle a distinct variant that assumes the ratios converge. The upstream header references provenance material absent from the pinned tree, so attribution is reported conservatively.

## Current local status

`verification/STATUS.md` distinguishes checks actually run in the present environment from checks to be run after publishing the repository. Do not replace that distinction with a claimed green Lean build unless `verification/generated/result.json` exists and records `"status": "pass"`.
