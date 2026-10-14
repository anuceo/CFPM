# Testing strategy

## ESTABLISHED (repository rules)
- Each module needs unit, boundary, invalid-input and, where meaningful, property tests.
- Integration tests run through the documented CFPM interface.
- Regression tests for affected modules run after every module change.
- Every run is recorded with its command, exit status and relevant output in `implementation_status.md`.
  Runs that could not execute are recorded as `NOT RUN` with a reason.
- Synthetic tests are kept separate from real-world validation.

## PROPOSED layout
- `test/runtests.jl`: entry point. Includes per-module files.
- `test/<module>_tests.jl`: one file per module.
- `test/integration/`: cross-module tests, added once contracts exist.
- Synthetic fixtures are named and labelled as synthetic.
- Only the `Test` stdlib for now. Further test dependencies need a decision record.

## Command
```bash
julia --project=. -e 'using Pkg; Pkg.test()'
```
