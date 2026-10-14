# Execution lifecycle

## Recovered conceptual flow

**Status:** recovered in Phase 2 (2026-10-14) as the *proposed initial* conceptual flow.
It is a conceptual model, not an execution specification.

```
CyclotomicEmbedding → FractalGradientLayer → PolyhedralCoordinateMapper → BlockChamberRouter
  → CarrySkipAdder → ActivationAggregator → EulerClassDecoder → SymbolicPolicyComposer → FeedbackAwareLoop
```

### Associated components (outside the linear flow)

| Role | Modules |
|---|---|
| Reward and rule learning | `RewardAutomaton`, `RuleMiner` |
| Rule evaluation | `ConfidencePruner` |
| Rule governance and organization | `RuleLifecycleManager`, `RuleCareerManager`, `RuleMigrationAudit`, `RuleLineageGraph`, `RuleClusterSwarm` |
| Planning and coordination | `SymbolicPlannerAgents`, `MetaAgentDelegator` |

Assigning the five rule modules above to the governance and organization group is a PROPOSED reading of
"the rule-management modules". See `architecture.md`.

## What the flow does NOT establish

All of the following are UNRESOLVED until interface contracts exist:

- **Dependency direction.** An arrow means "conceptually feeds into". It does not mean "imports" or "calls".
- **Synchronous execution.** Stages may or may not run in lockstep.
- **Mandatory sequential execution.** Stages might be skippable, parallel, batched or reordered.
- **Where the associated components attach.** Which stage(s) RewardAutomaton, RuleMiner, ConfidencePruner,
  the governance modules and the agents read from or write to.
- **The feedback path.** What FeedbackAwareLoop feeds back to, and how this runtime cycle relates to the
  acyclic code-dependency rule in `CLAUDE.md`.
- **Granularity.** The definitions of a "step", "episode" or "cycle", and how often the rule modules run
  relative to the core flow.
- **Profile effects.** How `6D_8T`, `12D_16T` and `32D_64T` change execution: scheduling, resource allocation, parameters.

## Lifecycle items still to define (UNRESOLVED)

- Initialization: profile loading and validation.
- Per-step invocation order, and the data handed between stages (`data_contracts.md`).
- Termination conditions and iteration limits.
- Determinism: RNG ownership and seeding policy.
- State persistence across steps: for example, the FractalGradientLayer history buffer and the rule stores.
- Error propagation across module boundaries.
