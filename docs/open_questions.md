# Open questions

All items are UNRESOLVED. Implementation of any affected module is blocked
until the relevant question is answered by the project owner.

## Specifications
- **Q-SPEC-1** Where are the authoritative CFPM specifications from the earlier project discussions?
  They are not in this repository.
- **Q-SPEC-2** What is each of the 19 catalogued modules responsible for? (`module_catalog.md`)

## Profiles
- **Q-PROF-1** What do `D` and `T` denote in `6D_8T`, `12D_16T`, `32D_64T`?
- **Q-PROF-2** Which parameters does each profile set, and with what values?
- **Q-PROF-3** Which modules depend on which profile parameters?

## Mathematics
- **Q-MATH-1** Cyclotomic embedding: the definition, including which cyclotomic fields, polynomials or roots of unity are involved,
  the inputs, and the target space.
- **Q-MATH-2** Fractal gradient: the definition of the fractal structure, and of the gradient taken over it.
- **Q-MATH-3** Polyhedral coordinates: which polyhedra or polytopes, and the coordinate system and mapping.
- **Q-MATH-4** Block chambers: what a chamber is (for example, chambers of a hyperplane arrangement or something else), and the routing rule.
- **Q-MATH-5** Carry-skip adder: whether this is the conventional digital-logic carry-skip adder or a CFPM-specific construction,
  and over what number representation.
- **Q-MATH-6** Euler class decoder: which bundle or space the Euler class is computed for, and what "decoding" yields.
- **Q-MATH-7** Activation aggregation: the aggregation operator, and its inputs and outputs.
- **Q-MATH-8** Reward automaton: the automaton type, its alphabet and states, and the reward semantics.
- **Q-MATH-9** Rule representation shared by RuleMiner, ConfidencePruner, the lifecycle, career, migration, lineage and cluster modules,
  including how confidence is defined.

## Architecture
- **Q-ARCH-1** What is the end-to-end data flow, and the execution lifecycle?
- **Q-ARCH-2** What are the dependency edges between modules? (`module_dependency_map.md`)
- **Q-ARCH-3** Should modules be Julia submodules (`module X ... end`) or plain included files within `CFPM`?
- **Q-ARCH-4** Agents (`SymbolicPlannerAgents`, `MetaAgentDelegator`, `RuleClusterSwarm`): are they concurrent,
  and what are their determinism requirements?
- **Q-ARCH-5** Are there external data sources or datasets, and how are they versioned?

## Tooling
- **Q-TOOL-1** Minimum supported Julia version. `1.10` (LTS) is PROPOSED in `Project.toml`.
- **Q-TOOL-2** Should `Manifest.toml` be committed, for application-style reproducibility, or ignored, for library-style use?
- **Q-TOOL-3** Should a CI workflow (for example, GitHub Actions running `Pkg.test()`) be added?
