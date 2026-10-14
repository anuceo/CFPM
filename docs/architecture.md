# Architecture

## ESTABLISHED
- Project name: CycloFractal Polyhedral Machine (CFPM).
- Implementation language: Julia. Python is not a runtime or core implementation language.
- The 19 module names, and their conceptual responsibilities (`module_catalog.md`), recovered in Phase 2.
- Profile names `6D_8T`, `12D_16T`, `32D_64T`. Their semantics are UNRESOLVED.
- Mathematical theories named for some modules (cyclotomic, fractal, power-law, spherical harmonics, cocycles,
  Buckingham π, Euler class, umbral, firefly/wolf-pack) are *inspirations or associated concepts*.
  No property derived from them is claimed until it is defined, implemented and tested.

## Conceptual subsystems (recovered)

| Subsystem | Modules | Status |
|---|---|---|
| Core processing flow | CyclotomicEmbedding, FractalGradientLayer, PolyhedralCoordinateMapper, BlockChamberRouter, CarrySkipAdder, ActivationAggregator, EulerClassDecoder, SymbolicPolicyComposer, FeedbackAwareLoop | Membership and conceptual order recovered. Order is the PROPOSED initial flow (`execution_lifecycle.md`). |
| Reward and rule learning | RewardAutomaton, RuleMiner | Recovered |
| Rule evaluation | ConfidencePruner | Recovered |
| Rule governance and organization | RuleLifecycleManager, RuleCareerManager, RuleMigrationAudit, RuleLineageGraph, RuleClusterSwarm | Group recovered. Exact membership is PROPOSED: these are the "rule-management modules" read as all `Rule*` modules except RuleMiner. |
| Planning and coordination | SymbolicPlannerAgents, MetaAgentDelegator | Recovered |

## PROPOSED (scaffold layout; awaiting review, see decision record 0001)
- One Julia package, `CFPM`. Each module would eventually live in `src/<ModuleName>.jl`, included from `src/CFPM.jl`.
- Profiles stored as TOML under `config/profiles/`.
- One test file per module under `test/`.

## UNRESOLVED architectural questions
Full list in `open_questions.md`.
- Inter-module data contracts (`data_contracts.md`) and actual dependency edges (`module_dependency_map.md`).
- How the associated subsystems attach to the core flow.
- The feedback cycle and how it relates to the acyclic code-dependency rule.
- Shared rule representation and the rule store: who owns rules, and who may mutate them.
- Agent concurrency and determinism.
- Profile semantics, and how profiles parameterize modules.
- Submodules versus included files (Q-ARCH-3).
