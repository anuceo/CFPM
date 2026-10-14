# Open questions

Every item is UNRESOLVED unless marked otherwise. Implementing an affected module is blocked
until the relevant question is answered by the project owner. IDs are stable. Answered items are
marked, never deleted.

## Specifications
- **Q-SPEC-1** Where are the authoritative CFPM specifications? *Phase 2: conceptual responsibilities recovered.
  Mathematical specifications and interface contracts are still missing.* PARTIALLY ANSWERED.
- **Q-SPEC-2** What is each of the 19 modules responsible for? *ANSWERED at the conceptual level in Phase 2 (`module_catalog.md`).
  Detailed behaviour is UNRESOLVED.*

## Profiles
- **Q-PROF-1** What do `D` and `T` denote in `6D_8T`, `12D_16T`, `32D_64T`?
- **Q-PROF-2** Which parameters does each profile set, and with what values?
- **Q-PROF-3** Which modules depend on which profile parameters?
- **Q-PROF-4** What are each profile's execution semantics (scheduling, parallelism) and resource allocation?
- **Q-PROF-5** What differences between the profiles are intended, and is there a scaling rule?

## Mathematics
- **Q-MATH-1** CyclotomicEmbedding: the order *n*; the choice of root-of-unity basis (all *n* roots, or a basis of Q(ζₙ));
  the input; the target space; exact or floating-point representation.
- **Q-MATH-2** FractalGradientLayer: the definition of the fractal gradient; the power-law memory kernel and its exponent(s);
  the history buffer's capacity and eviction policy.
- **Q-MATH-3** PolyhedralCoordinateMapper: which polyhedra or polytopes; the coordinate system and mapping;
  the role, degree and normalization convention of the spherical harmonics.
- **Q-MATH-4** BlockChamberRouter: the definitions of chamber, block and adjacency; the cochain complex and coefficients for the
  "cocycle pathways"; the routing rule and its tie-breaking.
- **Q-MATH-5** CarrySkipAdder: conventional carry-skip adder, a generalization, or a CFPM-specific operation?
  The operand representation; the meaning of "cocycle propagation" and how it relates to BlockChamberRouter's cocycles.
- **Q-MATH-6** EulerClassDecoder: the bundle (rank, base space, orientation) and coefficient ring; how it is built from upstream data;
  Euler class or Euler characteristic; the output semantics of "decoding"; behaviour when the prerequisites fail.
- **Q-MATH-7** ActivationAggregator: the aggregation operator; the dimensions and units of the activations;
  how the π-groups are derived for normalization.
- **Q-MATH-8** RewardAutomaton: the automaton type, states, alphabet and transitions; the reward definition;
  which umbral method is meant, and how it is used.
- **Q-MATH-9** Rule representation shared by RuleMiner, ConfidencePruner and the governance modules; the definition of confidence.
- **Q-MATH-10** RuleClusterSwarm: the feature space and similarity measure; "brightness"; the wolf-pack roles;
  usefulness criteria beyond firing frequency.
- **Q-MATH-11** SymbolicPolicyComposer and SymbolicPlannerAgents: the policy and plan representations, and the composition operators.

## Interfaces
- **Q-IF-1** The data contract for each conceptual edge in the core flow (8 edges; `module_dependency_map.md` layer A).
- **Q-IF-2** Attachment points for RewardAutomaton, RuleMiner, ConfidencePruner, the governance modules and the agents.
- **Q-IF-3** Lifecycle versus career: the boundary between RuleLifecycleManager and RuleCareerManager.
- **Q-IF-4** What a "migration" is in RuleMigrationAudit, the audit record schema, and its relationship to RuleLineageGraph provenance.
- **Q-IF-5** What pruning does in ConfidencePruner (delete, demote, archive, or a lifecycle transition).

## Scheduling and execution
- **Q-SCHED-1** Is the core flow synchronous? Is it strictly sequential?
- **Q-SCHED-2** What are a step, episode or cycle? How often do the rule modules run, relative to the core flow?
- **Q-SCHED-3** Termination conditions and iteration limits for FeedbackAwareLoop.
- **Q-SCHED-4** RNG ownership and seeding policy.

## Architecture
- **Q-ARCH-1** End-to-end data flow and execution lifecycle. *Phase 2: a conceptual flow was recovered.
  Contracts and semantics are UNRESOLVED.* PARTIALLY ANSWERED.
- **Q-ARCH-2** What are the actual dependency edges between modules?
- **Q-ARCH-3** Julia submodules (`module X ... end`), or plain included files within `CFPM`?
- **Q-ARCH-4** Agents (`SymbolicPlannerAgents`, `MetaAgentDelegator`) and `RuleClusterSwarm`: concurrency and determinism requirements.
- **Q-ARCH-5** External data sources or datasets, and how they are versioned.
- **Q-ARCH-6** FeedbackAwareLoop implies a runtime cycle. How does it relate to the "no circular dependencies" rule?
  Should the rule be applied to code dependencies only?
- **Q-ARCH-7** Is the governance group's membership correct? (PROPOSED: all `Rule*` modules except RuleMiner.)
- **Q-ARCH-8** Ownership and persistence of shared state: the history buffer, the rule store, audit logs, the lineage graph.

## Tooling
- **Q-TOOL-1** Minimum supported Julia version. `1.10` (LTS) is PROPOSED in `Project.toml`.
- **Q-TOOL-2** Commit `Manifest.toml`, or ignore it?
- **Q-TOOL-3** Add a CI workflow?
- **Q-TOOL-4** Julia is unavailable in the cloud session container. Downloading it from `julialang-s3.julialang.org` is blocked by the
  network policy. Should that host be allowed, or will tests be run in a Codespace?
