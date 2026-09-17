# Statement correspondence — JSP-000288

## Human statement

Must ratios of consecutive terms in the specified minimal stably complete sequences converge to the golden ratio?

## Formal endpoint

- Upstream: `Erdos346.not_erdos_346`
- Dedicated JSP interface: `JSP000288.solution`

## Correspondence

There is a strictly increasing positive sequence that remains complete after every finite deletion and becomes incomplete after every infinite deletion, has all consecutive ratios at least 6/5, and has two ratio subsequences converging to different limits.

The local theorem is a transparent re-export of the pinned upstream declaration, so it introduces no additional hypothesis and hides no unfinished obligation. `Audit.lean` prints both theorem types and their transitive axiom dependencies.



## Out of scope

The proof refutes unconditional convergence. It does not settle a distinct variant that assumes the ratios converge. The upstream header references provenance material absent from the pinned tree, so attribution is reported conservatively.
