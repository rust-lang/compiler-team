---
tags: weekly, rustc
type: docs
note_id: W9ogAl3gSc-m6y6R0oZJvA
---

# T-compiler Meeting Agenda 2025-09-04

This week short agenda due to [RustConf](https://rustconf.com) 2025 conference.

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "fix drop scope for `super let` bindings within `if let`" [rust#145342](https://github.com/rust-lang/rust/pull/145342)
  - Authored by dianne
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23145342.3A.20beta-nominated/near/534330643)
  - Merged just a few hours ago
  - Discussed previously [here](https://github.com/rust-lang/rust/issues/146163#issuecomment-3253019563)
  - Addresses this [comment](https://github.com/rust-lang/rust/issues/145328#issuecomment-3182034384) and this [comment](https://github.com/rust-lang/rust/pull/145342#issuecomment-3190686395) (issues A and B from this [list](https://github.com/rust-lang/rust/pull/145342#issuecomment-3193477003))
- :beta: "When determining if a trait has no entries for the purposes of omitting vptrs from subtrait vtables, consider its transitive supertraits' entries, instead of just its own entries." [rust#145807](https://github.com/rust-lang/rust/pull/145807)
  - Authored by zachs18
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23145807.3A.20beta-nominated/near/536806663), in favor.
  - Merged last week. Fixes P-critical #145752 stable regression ([comment](https://github.com/rust-lang/rust/pull/145807#issuecomment-3237333464))
  - No stable nomination (we are ~2 weeks from the next release)
- :beta: "don't apply temporary lifetime extension rules to non-extended `super let`" [rust#145838](https://github.com/rust-lang/rust/pull/145838)
  - Authored by dianne, nominated by @_**theemathas** ([comment](https://github.com/rust-lang/rust/pull/145838#issuecomment-3235519766))
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23145838.3A.20beta-nominated/near/536709387), mostly towards declining the backport
  - Intended to fix #145784, stable regression
  - Not merged yet, being tested against multiple crater runs
- No stable nominations for `T-compiler` this time.

[T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Cross linker lto error: conflict llvm version." [rust#145981](https://github.com/rust-lang/rust/issues/145981)
  - Fixed by revert #146133 ([comment](https://github.com/rust-lang/rust/issues/145981#issuecomment-3246659310))
- "staticlib with lto=fat now includes compiler_builtins as llvm bitcode after rustup update" [rust#146145](https://github.com/rust-lang/rust/issues/146145)
  - Also fixed by revert #146133
- "Miscomputation error on nightly starting with 2025-08-11" [rust#146163](https://github.com/rust-lang/rust/issues/146163)
  - Upstream LLVM issue llvm-project#156849 ([comment](https://github.com/rust-lang/rust/issues/146163#issuecomment-3253019563))

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

Next meeting's agenda draft: [hackmd link](https://hackmd.io/6xxxIQXbTqikqeoFhSgejw)
