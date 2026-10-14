# Profiles

| Profile | Name | Semantics |
|---|---|---|
| `6D_8T` | ESTABLISHED | UNRESOLVED |
| `12D_16T` | ESTABLISHED | UNRESOLVED |
| `32D_64T` | ESTABLISHED | UNRESOLVED |

The `.toml` files hold only `name` and `status`. They are placeholders, not
configurations. The repository does not define what `D` or `T` stands for.

## Fields that must be defined before any module uses a profile

| Field | Status |
|---|---|
| Meaning of `D` and of its numeric value | UNRESOLVED |
| Meaning of `T` and of its numeric value | UNRESOLVED |
| Whether the profiles form a scaling family, and the scaling rule | UNRESOLVED |
| Which modules read which profile parameters | UNRESOLVED |
| Any other per-profile parameters (sizes, orders, depths, thresholds) | UNRESOLVED |
| Validation rules (valid ranges, consistency constraints) | UNRESOLVED |
| Whether profiles other than these three are allowed | UNRESOLVED |
