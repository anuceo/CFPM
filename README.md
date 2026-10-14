# CFPM

CycloFractal Polyhedral Machine (CFPM), implemented in Julia.

> **Status: scaffold only.** The repository holds the package skeleton,
> documentation templates and governance rules. No CFPM module or
> algorithm is implemented yet. See [`docs/implementation_status.md`](docs/implementation_status.md).

## Layout

| Path | Purpose |
|---|---|
| `Project.toml` | Julia package definition (`CFPM`) |
| `src/CFPM.jl` | Package entry point (no exports yet) |
| `test/runtests.jl` | Test entry point |
| `config/profiles/` | Profile placeholders: `6D_8T`, `12D_16T`, `32D_64T` (semantics UNRESOLVED) |
| `benchmarks/` | Benchmark harness location (no benchmarks yet) |
| `docs/` | Architecture, module catalog, contracts, status, open questions |
| `docs/decisions/` | Decision records |
| `docs/handoffs/` | Phase handoff notes |
| `CLAUDE.md` | Rules for AI-assisted work in this repository |

## Running tests

```bash
julia --project=. -e 'using Pkg; Pkg.test()'
```

## Status vocabulary

`ESTABLISHED` · `PROPOSED` · `UNRESOLVED` · `IMPLEMENTED` · `VERIFIED` — defined in [`CLAUDE.md`](CLAUDE.md).
