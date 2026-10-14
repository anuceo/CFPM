# Architecture

## ESTABLISHED
- Project name: CycloFractal Polyhedral Machine (CFPM).
- Implementation language: Julia. Python is not a runtime or core implementation language.
- The 19 module names listed in `module_catalog.md`.
- Profile names `6D_8T`, `12D_16T`, `32D_64T`.

## PROPOSED (scaffold layout; awaiting review)
- One Julia package, `CFPM`, with each catalogued module eventually in `src/<ModuleName>.jl`, included from `src/CFPM.jl`.
  Whether these become Julia submodules or plain included files is UNRESOLVED (Q-ARCH-3).
- Profiles stored as TOML under `config/profiles/`.
- Tests under `test/`, one file per module, included from `test/runtests.jl`.

## UNRESOLVED
- System-level data flow between modules (see `module_dependency_map.md`).
- The execution model (see `execution_lifecycle.md`).
- How the mathematical layer (embedding, gradient, polyhedral mapping) relates to the symbolic and rule layer (policy, rules, agents).
  This document intentionally makes no claim about it.
