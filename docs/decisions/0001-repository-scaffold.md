# 0001 — Repository scaffold layout

- **Status:** PROPOSED (awaiting owner review)
- **Date:** 2026-10-14

## Context
The repository contained only `README.md` (`# CFPM`). Phase 1B asked for a Julia scaffold able to receive the CFPM specifications.

## Decision
- A single Julia package named `CFPM`, with a new random UUID, version `0.0.1` and `julia = "1.10"` compat.
- No runtime dependencies. `Test` is the only test-only dependency, declared through `[extras]`/`[targets]`.
- The single non-exported constant `CFPM.PROFILE_NAMES`. It holds the established profile names and has no semantics.
- Profile placeholder TOML files hold only `name` and `status`.
- No `Manifest.toml` is committed, since none was generated (Q-TOOL-2).

## Consequences
- Future modules are added under `src/` and `test/` following `CLAUDE.md`.
- The Julia version floor and the package layout can be revised when Q-TOOL-1 and Q-ARCH-3 are answered.

## Approved by
—
