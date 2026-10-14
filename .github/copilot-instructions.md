# Copilot instructions — CFPM

The authoritative rules for this repository are in [`CLAUDE.md`](../CLAUDE.md). In short:

- Julia only for implementation; no Python runtime or core code.
- Do not invent CFPM mathematics (equations, dimensions, thresholds, weights, profile semantics).
- Label information `ESTABLISHED`, `PROPOSED`, `UNRESOLVED`, `IMPLEMENTED` or `VERIFIED`.
- Implement only modules whose contract is approved in `docs/module_catalog.md`; one module per change.
- Never fabricate test or benchmark results; record `NOT RUN` with a reason when tests cannot execute.
- Preserve profile names `6D_8T`, `12D_16T`, `32D_64T`.
