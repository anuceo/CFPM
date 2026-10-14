# Execution lifecycle

**Status: UNRESOLVED.** No lifecycle has been specified.

Before anything is implemented, these must be defined:

- Initialization: how a profile is loaded and validated.
- The order in which modules are invoked for one step or episode, if a step or episode concept exists.
- Whether feedback loops exist, and where.
- When rule-management modules run, relative to the main computation.
- Termination conditions.
- Determinism: RNG ownership and seeding policy.
- Error propagation across module boundaries.
