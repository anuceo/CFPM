# Module catalog

## Status of this catalog
- Module **names**: `ESTABLISHED`.
- **Conceptual responsibilities**: `ESTABLISHED`. They were recovered from earlier project discussions in Phase 2 (2026-10-14).
  They state *what* each module is for. They are **not** mathematical specifications.
- **Associated concepts and inspirations**: `ESTABLISHED` as inspirations only.
  None of their mathematical properties is claimed until it is defined, implemented and tested.
- **Contracts** (interfaces, types, equations, parameters): `UNRESOLVED` for every module.
- **Implementation**: none. No module is `IMPLEMENTED` or `VERIFIED`.

Subsystem grouping: see `architecture.md`.

## Summary

| # | Module file | Subsystem | Responsibility | Contract | Code |
|---|---|---|---|---|---|
| 1 | `CyclotomicEmbedding.jl` | Core pipeline | ESTABLISHED (conceptual) | UNRESOLVED | none |
| 2 | `FractalGradientLayer.jl` | Core pipeline | ESTABLISHED (conceptual) | UNRESOLVED | none |
| 3 | `PolyhedralCoordinateMapper.jl` | Core pipeline | ESTABLISHED (conceptual) | UNRESOLVED | none |
| 4 | `BlockChamberRouter.jl` | Core pipeline | ESTABLISHED (conceptual) | UNRESOLVED | none |
| 5 | `CarrySkipAdder.jl` | Core pipeline | ESTABLISHED (conceptual) | UNRESOLVED | none |
| 6 | `ActivationAggregator.jl` | Core pipeline | ESTABLISHED (conceptual) | UNRESOLVED | none |
| 7 | `EulerClassDecoder.jl` | Core pipeline | ESTABLISHED (conceptual) | UNRESOLVED | none |
| 8 | `SymbolicPolicyComposer.jl` | Core pipeline | ESTABLISHED (conceptual) | UNRESOLVED | none |
| 9 | `FeedbackAwareLoop.jl` | Core pipeline | ESTABLISHED (conceptual) | UNRESOLVED | none |
| 10 | `RewardAutomaton.jl` | Reward and rule learning | ESTABLISHED (conceptual) | UNRESOLVED | none |
| 11 | `RuleMiner.jl` | Reward and rule learning | ESTABLISHED (conceptual) | UNRESOLVED | none |
| 12 | `ConfidencePruner.jl` | Rule evaluation | ESTABLISHED (conceptual) | UNRESOLVED | none |
| 13 | `RuleLifecycleManager.jl` | Rule governance and organization | ESTABLISHED (conceptual) | UNRESOLVED | none |
| 14 | `RuleCareerManager.jl` | Rule governance and organization | ESTABLISHED (conceptual) | UNRESOLVED | none |
| 15 | `RuleMigrationAudit.jl` | Rule governance and organization | ESTABLISHED (conceptual) | UNRESOLVED | none |
| 16 | `RuleLineageGraph.jl` | Rule governance and organization | ESTABLISHED (conceptual) | UNRESOLVED | none |
| 17 | `RuleClusterSwarm.jl` | Rule governance and organization | ESTABLISHED (conceptual) | UNRESOLVED | none |
| 18 | `SymbolicPlannerAgents.jl` | Planning and coordination | ESTABLISHED (conceptual) | UNRESOLVED | none |
| 19 | `MetaAgentDelegator.jl` | Planning and coordination | ESTABLISHED (conceptual) | UNRESOLVED | none |

## Contract template (all fields required before implementation)

1. Purpose and intended responsibilities
2. Public types, functions and exports
3. Inputs and outputs: types, dimensions, units, valid ranges
4. State ownership and mutation behaviour
5. Dependencies and permitted dependency direction
6. Determinism and reproducibility (RNG seeding, ordering)
7. Invalid-input and error-handling behaviour
8. Mathematical definitions, assumptions, limitations
9. Required tests: unit, edge cases, invalid input, property, integration
10. Acceptance criteria
11. Relationship to the profiles (`6D_8T`, `12D_16T`, `32D_64T`)

In each entry below, item 1 is partly answered by the recovered responsibility.
Items 2–11 are `UNRESOLVED` unless stated otherwise.

## Per-module entries

### 1. `CyclotomicEmbedding.jl`

- **Subsystem:** Core pipeline
- **Responsibility (ESTABLISHED, conceptual):** Cyclotomic embedding using a root-of-unity basis.
- **Associated concepts (inspiration; no property claimed):** Roots of unity / cyclotomic structure.
- **Implementation:** none

**Unresolved contract (module-specific):**
- UNRESOLVED: Order *n* of the roots of unity, and whether it depends on the profile.
- UNRESOLVED: Which basis: all *n* roots of unity, or a basis of the cyclotomic field Q(ζₙ) (for example the power basis with φ(n) elements), or another choice.
- UNRESOLVED: What is embedded: input type, shape and valid range.
- UNRESOLVED: Output representation: exact algebraic (for example, integer coefficient vectors) or floating-point complex values. Output dimension.
- UNRESOLVED: Which properties the embedding must preserve, and how to test them.
- UNRESOLVED: contract template items 2–11.

### 2. `FractalGradientLayer.jl`

- **Subsystem:** Core pipeline
- **Responsibility (ESTABLISHED, conceptual):** Fractal gradient processing, and power-law-inspired temporal memory with an actual history buffer.
- **Associated concepts (inspiration; no property claimed):** Fractal structure; power-law temporal decay.
- **Constraint:** The history buffer must be real stored state, not a stand-in for one (ESTABLISHED).
- **Implementation:** none

**Unresolved contract (module-specific):**
- UNRESOLVED: Definition of the "fractal gradient": the structure it is taken over, and the operator.
- UNRESOLVED: Power-law memory: the kernel form, the exponent(s), and whether any value is profile-dependent.
- UNRESOLVED: History buffer: capacity, element type, eviction policy, reset semantics.
- UNRESOLVED: Ownership and mutation of the buffer, including its thread-safety requirements.
- UNRESOLVED: Do not claim long-memory or fractal properties until they are defined and tested.
- UNRESOLVED: contract template items 2–11.

### 3. `PolyhedralCoordinateMapper.jl`

- **Subsystem:** Core pipeline
- **Responsibility (ESTABLISHED, conceptual):** Polyhedral coordinate mapping. Laplace spherical harmonics are an associated concept.
- **Associated concepts (inspiration; no property claimed):** Polyhedra / polytopes; Laplace spherical harmonics.
- **Constraint:** Spherical harmonics are an *associated concept*. How they are used is not established.
- **Implementation:** none

**Unresolved contract (module-specific):**
- UNRESOLVED: Which polyhedra or polytopes, and in what ambient dimension.
- UNRESOLVED: Definition of the coordinate system and of the mapping.
- UNRESOLVED: Role of spherical harmonics, if any: maximum degree ℓ, real or complex convention, normalization, and the sampling or projection method.
- UNRESOLVED: Input contract from FractalGradientLayer, and output contract to BlockChamberRouter.
- UNRESOLVED: contract template items 2–11.

### 4. `BlockChamberRouter.jl`

- **Subsystem:** Core pipeline
- **Responsibility (ESTABLISHED, conceptual):** Chamber routing, adjacency relationships, and cocycle pathways.
- **Associated concepts (inspiration; no property claimed):** Chambers; adjacency; cocycles.
- **Implementation:** none

**Unresolved contract (module-specific):**
- UNRESOLVED: Definition of a "chamber" and of a "block".
- UNRESOLVED: Definition of adjacency between chambers.
- UNRESOLVED: "Cocycle": the cochain complex, degree and coefficient group, and what a "cocycle pathway" is.
- UNRESOLVED: The routing rule, plus a tie-breaking rule so routing is deterministic.
- UNRESOLVED: The output contract to CarrySkipAdder.
- UNRESOLVED: contract template items 2–11.

### 5. `CarrySkipAdder.jl`

- **Subsystem:** Core pipeline
- **Responsibility (ESTABLISHED, conceptual):** Carry-skip computation with cocycle propagation.
- **Associated concepts (inspiration; no property claimed):** Carry-skip addition; cocycles.
- **Constraint:** How conventional carry-skip logic relates to the intended CFPM operation is UNRESOLVED (ESTABLISHED caveat).
- **Implementation:** none

**Unresolved contract (module-specific):**
- UNRESOLVED: Is this the conventional digital carry-skip adder, a generalization, or a CFPM-specific operation?
- UNRESOLVED: Number representation: base, width, signedness, or a non-numeric operand type.
- UNRESOLVED: The meaning of "cocycle propagation", and whether it relates to BlockChamberRouter's cocycles.
- UNRESOLVED: Block size and skip criterion, and whether they depend on the profile.
- UNRESOLVED: Overflow and invalid-operand behaviour.
- UNRESOLVED: contract template items 2–11.

### 6. `ActivationAggregator.jl`

- **Subsystem:** Core pipeline
- **Responsibility (ESTABLISHED, conceptual):** Activation aggregation and normalization inspired by the Buckingham π theorem.
- **Associated concepts (inspiration; no property claimed):** Buckingham π theorem (inspiration only).
- **Constraint:** Do not claim dimensional-analysis compliance until dimensions and units are defined (ESTABLISHED caveat).
- **Implementation:** none

**Unresolved contract (module-specific):**
- UNRESOLVED: The physical or abstract dimensions and units of each activation quantity.
- UNRESOLVED: The aggregation operator.
- UNRESOLVED: Normalization: which dimensionless groups, and how they are derived.
- UNRESOLVED: Input arity and shape, and the output contract to EulerClassDecoder.
- UNRESOLVED: contract template items 2–11.

### 7. `EulerClassDecoder.jl`

- **Subsystem:** Core pipeline
- **Responsibility (ESTABLISHED, conceptual):** Topology-related decoding.
- **Associated concepts (inspiration; no property claimed):** Euler class (a topological invariant of oriented real vector bundles).
- **Constraint:** Using an Euler class as a decoder requires explicit inputs, topological prerequisites and output semantics (ESTABLISHED caveat).
- **Implementation:** none

**Unresolved contract (module-specific):**
- UNRESOLVED: Which oriented vector bundle (rank, base space) the Euler class is taken of, and how it is constructed from the upstream data.
- UNRESOLVED: Coefficient ring, and the computation method (for example, discrete or combinatorial).
- UNRESOLVED: Is the intended object the Euler class, or the Euler characteristic? They are distinct.
- UNRESOLVED: What "decoding" produces: output type and semantics for SymbolicPolicyComposer.
- UNRESOLVED: Preconditions (orientability, rank conditions) and the behaviour when they fail.
- UNRESOLVED: contract template items 2–11.

### 8. `SymbolicPolicyComposer.jl`

- **Subsystem:** Core pipeline
- **Responsibility (ESTABLISHED, conceptual):** Symbolic policy composition.
- **Associated concepts (inspiration; no property claimed):** Symbolic policies.
- **Implementation:** none

**Unresolved contract (module-specific):**
- UNRESOLVED: Policy representation and symbol set.
- UNRESOLVED: Composition operators and their algebraic properties, if any are required.
- UNRESOLVED: The input contract from EulerClassDecoder, and the interaction with RuleMiner and the rule modules.
- UNRESOLVED: The output contract to FeedbackAwareLoop.
- UNRESOLVED: contract template items 2–11.

### 9. `FeedbackAwareLoop.jl`

- **Subsystem:** Core pipeline
- **Responsibility (ESTABLISHED, conceptual):** Feedback-aware processing, and integration with downstream reward or policy behaviour.
- **Associated concepts (inspiration; no property claimed):** Feedback.
- **Implementation:** none

**Unresolved contract (module-specific):**
- UNRESOLVED: What the feedback signal is, and where it comes from.
- UNRESOLVED: Which earlier stages, if any, it feeds back into: a runtime data cycle versus a code-level dependency.
- UNRESOLVED: Loop termination and iteration limits.
- UNRESOLVED: Interface with RewardAutomaton and SymbolicPolicyComposer.
- UNRESOLVED: contract template items 2–11.

### 10. `RewardAutomaton.jl`

- **Subsystem:** Reward and rule learning
- **Responsibility (ESTABLISHED, conceptual):** Reward-state and transition logic inspired by umbral methods.
- **Associated concepts (inspiration; no property claimed):** Umbral methods (inspiration only).
- **Constraint:** The exact equations and state definitions are UNRESOLVED (ESTABLISHED caveat).
- **Implementation:** none

**Unresolved contract (module-specific):**
- UNRESOLVED: Automaton type, state set, input alphabet, transition function.
- UNRESOLVED: Reward definition and range.
- UNRESOLVED: Which umbral method is meant, and how it maps onto states and transitions.
- UNRESOLVED: Inputs from FeedbackAwareLoop and outputs to policy or rule modules.
- UNRESOLVED: contract template items 2–11.

### 11. `RuleMiner.jl`

- **Subsystem:** Reward and rule learning
- **Responsibility (ESTABLISHED, conceptual):** Rule discovery from observed patterns.
- **Associated concepts (inspiration; no property claimed):** Rule discovery.
- **Implementation:** none

**Unresolved contract (module-specific):**
- UNRESOLVED: Rule representation, shared by all the rule modules.
- UNRESOLVED: The source and format of the observed patterns.
- UNRESOLVED: Discovery criteria. No specific mining algorithm (for example, association-rule mining) is assumed.
- UNRESOLVED: Determinism of the discovery process.
- UNRESOLVED: contract template items 2–11.

### 12. `ConfidencePruner.jl`

- **Subsystem:** Rule evaluation
- **Responsibility (ESTABLISHED, conceptual):** Evaluation and pruning of rules using defined confidence criteria.
- **Associated concepts (inspiration; no property claimed):** Confidence-based pruning.
- **Constraint:** The confidence criteria must be explicitly defined (ESTABLISHED).
- **Implementation:** none

**Unresolved contract (module-specific):**
- UNRESOLVED: The definition of confidence.
- UNRESOLVED: Threshold(s), and whether they depend on the profile.
- UNRESOLVED: What "pruning" does: delete, demote, archive, or a lifecycle transition.
- UNRESOLVED: The interaction with RuleLifecycleManager and RuleMigrationAudit.
- UNRESOLVED: contract template items 2–11.

### 13. `RuleLifecycleManager.jl`

- **Subsystem:** Rule governance and organization
- **Responsibility (ESTABLISHED, conceptual):** Management of rule lifecycle states.
- **Associated concepts (inspiration; no property claimed):** Lifecycle states.
- **Implementation:** none

**Unresolved contract (module-specific):**
- UNRESOLVED: The state set and the allowed transitions.
- UNRESOLVED: Transition triggers, and which modules may request them.
- UNRESOLVED: How this differs from RuleCareerManager.
- UNRESOLVED: contract template items 2–11.

### 14. `RuleCareerManager.jl`

- **Subsystem:** Rule governance and organization
- **Responsibility (ESTABLISHED, conceptual):** Management of rule development and progression.
- **Associated concepts (inspiration; no property claimed):** Rule progression.
- **Implementation:** none

**Unresolved contract (module-specific):**
- UNRESOLVED: The definition of progression: levels, metrics, criteria.
- UNRESOLVED: Where its responsibility ends and RuleLifecycleManager's begins.
- UNRESOLVED: contract template items 2–11.

### 15. `RuleMigrationAudit.jl`

- **Subsystem:** Rule governance and organization
- **Responsibility (ESTABLISHED, conceptual):** Audit records for rule migration and changes.
- **Associated concepts (inspiration; no property claimed):** Auditing.
- **Implementation:** none

**Unresolved contract (module-specific):**
- UNRESOLVED: What a "migration" is: between lifecycle states, clusters, versions, profiles, or something else.
- UNRESOLVED: The audit record schema.
- UNRESOLVED: Immutability (for example, an append-only log), persistence, and retention.
- UNRESOLVED: contract template items 2–11.

### 16. `RuleLineageGraph.jl`

- **Subsystem:** Rule governance and organization
- **Responsibility (ESTABLISHED, conceptual):** Rule ancestry, relationships, and provenance.
- **Associated concepts (inspiration; no property claimed):** Lineage and provenance graphs.
- **Implementation:** none

**Unresolved contract (module-specific):**
- UNRESOLVED: Node and edge types.
- UNRESOLVED: Whether the graph must be acyclic.
- UNRESOLVED: The provenance schema, and its relationship to RuleMigrationAudit records.
- UNRESOLVED: contract template items 2–11.

### 17. `RuleClusterSwarm.jl`

- **Subsystem:** Rule governance and organization
- **Responsibility (ESTABLISHED, conceptual):** Rule clustering inspired by firefly brightness and wolfpack search.
- **Associated concepts (inspiration; no property claimed):** Firefly algorithm (brightness); wolf-pack search (inspiration only).
- **Constraint:** Low firing frequency alone must not be treated as proof that a rule is useless (ESTABLISHED).
- **Implementation:** none

**Unresolved contract (module-specific):**
- UNRESOLVED: The rule feature space and the similarity measure.
- UNRESOLVED: The definition of "brightness", and how the wolfpack-search roles map onto rules.
- UNRESOLVED: The usefulness criteria beyond firing frequency.
- UNRESOLVED: The number of clusters, stopping criteria, and RNG seeding.
- UNRESOLVED: contract template items 2–11.

### 18. `SymbolicPlannerAgents.jl`

- **Subsystem:** Planning and coordination
- **Responsibility (ESTABLISHED, conceptual):** Agents for symbolic planning.
- **Associated concepts (inspiration; no property claimed):** Symbolic planning.
- **Implementation:** none

**Unresolved contract (module-specific):**
- UNRESOLVED: The planning formalism: state, action and goal representation.
- UNRESOLVED: The number of agents and their lifecycle.
- UNRESOLVED: Inputs from the policy and rule modules.
- UNRESOLVED: contract template items 2–11.

### 19. `MetaAgentDelegator.jl`

- **Subsystem:** Planning and coordination
- **Responsibility (ESTABLISHED, conceptual):** Coordination and delegation among agents.
- **Associated concepts (inspiration; no property claimed):** Delegation / coordination.
- **Implementation:** none

**Unresolved contract (module-specific):**
- UNRESOLVED: The delegation policy.
- UNRESOLVED: Concurrency model, and the determinism requirements.
- UNRESOLVED: Failure and timeout handling.
- UNRESOLVED: contract template items 2–11.
