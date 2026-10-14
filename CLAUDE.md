# CLAUDE.md — Rules for work in the CFPM repository

## Language and runtime
- Julia is the primary and only core implementation language. Do not add Python (or other languages) as a runtime or core implementation dependency.
- Use standard Julia package conventions (`Project.toml`, `src/`, `test/`). Add dependencies only when a module's approved contract requires them.

## Status vocabulary (use exactly these labels)
| Label | Meaning |
|---|---|
| `ESTABLISHED` | Stated by the project owner as a requirement or definition. |
| `PROPOSED` | Suggested by a contributor or assistant; not yet approved. Never present as a requirement. |
| `UNRESOLVED` | Needed but not yet defined. Blocks implementation if it affects mathematics or architecture. |
| `IMPLEMENTED` | Code exists and matches an approved contract. Does not imply tests passed. |
| `VERIFIED` | IMPLEMENTED, and tests were actually executed and passed, with the command and output recorded. |

## Mathematical integrity
- Do not invent equations, dimensions, thresholds, weights, profile semantics or optimization objectives.
- Do not substitute a conventional algorithm for a CFPM-specific mechanism without a decision record and owner approval.
- Do not claim topological, cyclotomic, harmonic, fractal or other mathematical properties unless their definitions are implemented and tested.
- Keep conceptual prototypes clearly distinguishable from validated implementations.
- Preserve the profile names `6D_8T`, `12D_16T`, `32D_64T`.

## Workflow
1. Before implementing a module, its contract in `docs/module_catalog.md` / `docs/data_contracts.md` must be filled in and approved.
2. Implement one module per change. Stop and report before starting the next.
3. Add unit, boundary, invalid-input and (where meaningful) property tests under `test/`.
4. Update `docs/implementation_status.md` with evidence: command, exit status, relevant output.
5. Record non-trivial choices in `docs/decisions/` and phase summaries in `docs/handoffs/`.

## Evidence
- Never fabricate test results, benchmark numbers, convergence, resilience or entropy measurements.
- If a test could not run, record it as `NOT RUN` with the reason.
- Keep synthetic tests separate from real-world validation.
- Do not claim commits, pushes or merges that did not happen.

## Change control
- Preserve public interfaces unless an approved change requires otherwise.
- Avoid circular module dependencies; record edges in `docs/module_dependency_map.md`.
- Do not silently modify unrelated modules, profiles, datasets or benchmarks.
