# 2026-10-14 — Phase 2: architecture recovery

## Starting point
Branch `ccr-3639acac-ezrnp3` at `4960567` (the scaffold). No algorithms existed. Julia tests had NOT RUN.

## Recovered (now ESTABLISHED at the conceptual level)
- A conceptual responsibility for each of the 19 modules, with the owner's caveats
  (CarrySkipAdder relationship, Buckingham π compliance, Euler class prerequisites,
  RewardAutomaton equations, RuleClusterSwarm firing frequency, the FractalGradientLayer history buffer).
- Five conceptual subsystems. The governance group's exact membership is a PROPOSED reading.
- The conceptual core flow
  `CyclotomicEmbedding → … → FeedbackAwareLoop`, recorded as the *proposed initial* flow.

## Still UNRESOLVED
- Every module contract: types, equations, parameters, error behaviour.
- Every data contract between modules, and every implementation dependency edge.
- Profile semantics (`D`, `T`, parameters, scheduling, resources, intended differences).
- Execution semantics: synchrony, sequencing, the feedback cycle, step granularity, RNG policy.
- See `docs/open_questions.md`. New in this phase: Q-PROF-4/5, Q-MATH-10/11, Q-IF-1–5, Q-SCHED-1–4, Q-ARCH-6–8, Q-TOOL-4.

## Conflicts noted with earlier documentation
1. **The acyclicity rule versus the feedback loop.** `CLAUDE.md` forbids circular dependencies.
   FeedbackAwareLoop implies a runtime cycle. Interim reading (PROPOSED): the rule applies to code dependencies only. Tracked as Q-ARCH-6.
2. **"Recovered" versus "proposed" flow.** The flow comes from earlier discussions, but the owner calls it the *proposed initial* flow.
   It is recorded as PROPOSED, not as a confirmed dependency graph.
3. **Earlier placeholders replaced.** Phase 1B marked the responsibilities UNRESOLVED and said `architecture.md` made no claim about how
   the mathematical and symbolic layers relate. Both are now superseded at the conceptual level only.

## Files changed
`docs/module_catalog.md`, `docs/execution_lifecycle.md`, `docs/module_dependency_map.md`, `docs/architecture.md`,
`docs/open_questions.md`, `docs/implementation_status.md`, `docs/decisions/README.md` (note only), and this handoff.

## Evidence
`Pkg.test()`: NOT RUN. Julia is unavailable in the container.

## Next step
Owner review. CyclotomicEmbedding is the PROPOSED first candidate, since it has no conceptual upstream module.
It still needs Q-MATH-1 and the profile questions answered before a contract can be drafted.
