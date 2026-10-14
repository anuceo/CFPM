# Module dependency map

**Status: no dependency edge is established.** This document lists the 19
established modules as nodes only. No implementation order is implied.

Edges get added only when the project owner states a dependency, or an approved
contract names another module as an input or output. Each edge must cite its
source.

## Nodes (ESTABLISHED names)

- `CyclotomicEmbedding`
- `FractalGradientLayer`
- `PolyhedralCoordinateMapper`
- `BlockChamberRouter`
- `CarrySkipAdder`
- `ActivationAggregator`
- `EulerClassDecoder`
- `SymbolicPolicyComposer`
- `FeedbackAwareLoop`
- `RewardAutomaton`
- `RuleMiner`
- `ConfidencePruner`
- `RuleLifecycleManager`
- `RuleCareerManager`
- `RuleMigrationAudit`
- `RuleLineageGraph`
- `RuleClusterSwarm`
- `SymbolicPlannerAgents`
- `MetaAgentDelegator`

## Edges

| From | To | Kind (data / call / state) | Status | Source |
|---|---|---|---|---|
| — | — | — | UNRESOLVED | No edges recorded |

## Constraints (ESTABLISHED by repository rules)

- No circular dependencies between modules.
- Edge direction must match the data flow in `docs/data_contracts.md`.

## Open items

- The full edge set is UNRESOLVED (see `docs/open_questions.md`, Q-ARCH-2).
- The first dependency-ready module is UNRESOLVED. It needs one module whose
  contract has no unresolved upstream dependencies.
