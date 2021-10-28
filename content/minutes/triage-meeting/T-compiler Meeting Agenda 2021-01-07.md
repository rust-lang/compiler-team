---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2021-01-07

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Welcome into 2021 :)
- New MCPs (take a look, see if you like them!)
  - "Add different entry points for x.py" [compiler-team#396](https://github.com/rust-lang/compiler-team/issues/396)
  - "Remove PredicateKind in favor of only Binder<PredicateAtom>" [compiler-team#397](https://github.com/rust-lang/compiler-team/issues/397)
- Old MCPs (not seconded, take a look)
  - "MCP: move compiler/ crates to stable Rust" [compiler-team#358](https://github.com/rust-lang/compiler-team/issues/358)
  - "Add 32-bit and 64-bit stderr/stdout files for ui tests" [compiler-team#365](https://github.com/rust-lang/compiler-team/issues/365)
  - "Add a `NOOP_METHOD_CALL` lint for methods which should never be directly called" [compiler-team#375](https://github.com/rust-lang/compiler-team/issues/375)
  - "Drop official support for Windows XP" [compiler-team#378](https://github.com/rust-lang/compiler-team/issues/378)
  - "MCP: More Cranelift-friendly portable SIMD intrinsics" [compiler-team#381](https://github.com/rust-lang/compiler-team/issues/381)
  - "Debuggable Macro Expansions" [compiler-team#386](https://github.com/rust-lang/compiler-team/issues/386)
  - "Move query implementation outside rustc_middle" [compiler-team#388](https://github.com/rust-lang/compiler-team/issues/388)
  - "Uplift the `invalid_atomic_ordering` lint from clippy to rustc" [compiler-team#390](https://github.com/rust-lang/compiler-team/issues/390)
  - "Staged queries" [compiler-team#391](https://github.com/rust-lang/compiler-team/issues/391)
  - "Do not traverse the HIR to generate metadata" [compiler-team#392](https://github.com/rust-lang/compiler-team/issues/392)
  - "Embed version numbers in backport nominations and regression labels" [compiler-team#393](https://github.com/rust-lang/compiler-team/issues/393)
- Pending FCP requests (check your boxes!)
  - "rustc: Stabilize `-Zrun-dsymutil` as `-Csplit-debuginfo`" [rust#79570](https://github.com/rust-lang/rust/pull/79570)
- Things in FCP (make sure you're good with it)
  - "Make it easier to build the standard library" [compiler-team#394](https://github.com/rust-lang/compiler-team/issues/394)
  - "Add a scheme to register functions from other crates with TyCtxt" [compiler-team#395](https://github.com/rust-lang/compiler-team/issues/395)
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - No new finished FCP (disposition merge) this time.

### WG checkins

@wg-polymorphization checkin by @**davidtwco**:
> Happy new year everyone! There's no news from the polymorphization working group. Working group members have been focusing their efforts elsewhere in the compiler recently.

@*WG-rfc-2229*  by @**nikomatsakis** and @**Matthew Jasper**:
- `capture_disjoint_fields` kind of works now and is available on the nightly.
- PRs for fixing some of the bugs and improving diagnostics are open and more fixes/improvements are currently in the works.
- Parts of the migration (lint) analaysis for handling change in Drop ordering have been implemented, PR is open and will posting follow ups after that.
- Need to discuss with T-lang about edge cases that we realized during the implementation phase of the RFC and an [issue](https://github.com/rust-lang/lang-team/issues/73) is open for scheduling a meeting.
- [Perf results](https://perf.rust-lang.org/compare.html?start=0f6f2d681b39c5f95459cd09cb936b6ceb27cd82&end=aee064ad665521e03371fbb810437a813fbdd365) after hacking around some of the bugs and enabling the feature by default didn't seem bad. Incremental compile seems to be affected but that is speculated because of duplicate information currently in TypeckResults (requiring more information to hashed). Work is being done to get rid of the duplicate information.

## Beta-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler)
- No beta nominations for `T-compiler` this time.

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3Alibs-impl)
- No beta nominations for `libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc)
- "Revert "Cleanup markdown span handling"" [rust#80381](https://github.com/rust-lang/rust/pull/80381)
  - @**GuillaumeGomez** approves the backport

:back: / :shrug: / :hand:

## Stable-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No stable nominations for `T-compiler` this time.

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3Alibs-impl)
- No stable nominations for `libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- No PRs waiting on team this time.

[libs-impl](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3Alibs-impl)
- No PRs waiting on `libs-impl` this time.

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [58 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+)
  - [37 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 6 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 34 P-high, 82 P-medium, 9 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3Alibs-impl)
- No `P-critical` issues for `libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high)

- No `P-high` beta regressions at this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee)
- "Panic with 'Missing tokens for nt ";"' when passing statement to proc macro from declarative macro" [rust#80760](https://github.com/rust-lang/rust/issues/80760)
  - opened by @**Koxiaet** 
  - looks like a regression on latest 1.51.0-nightly parsing the token `;` in a proc_macro
  - @**Camelid** points to pr [79812](https://github.com/rust-lang/rust/pull/79812)
  - no bisecting yet, but probably needs some attention
  
## Performance logs

Happy New Year! A slow week to start off the new year, with by far the most exciting development being the large gains in the `ctfe` benchmark caused by changes in serialization and deserialization.

Triage done by **@rylev**.
Revision range: [e2a2592885539ca97bfb1232669e7519a0c0703b..f4b9d32ef53c0629732ee131b640920ae12d1edb](https://perf.rust-lang.org/?start=e2a2592885539ca97bfb1232669e7519a0c0703b&end=f4b9d32ef53c0629732ee131b640920ae12d1edb&absolute=false&stat=instructions%3Au)

0 Regressions, 2 Improvements, 2 Mixed
2 of them in rollups

#### Improvements

Implement edition-based macro :pat feature [#80459](https://github.com/rust-lang/rust/issues/80459)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=b33e234155b33ab6bce280fb2445b62b68622b61&end=44e3daf5eee8263dfc3a2509e78ddd1f6f783a0e&stat=instructions:u) (up to -1.7% on `incr-unchanged` builds of `deep-vector-check`)
- Fixes the perf regression from [#80100](https://github.com/rust-lang/rust/pull/80100#issuecomment-750893149)

rustc_serialize: specialize opaque encoding and decoding of some u8 sequences [#80115](https://github.com/rust-lang/rust/issues/80115)
- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=5986dd878f3e432025eb1946149e3241d3998b1b&end=929f66af9bf587383ed6010403e738e79dfac0d6&stat=instructions:u) (up to -85.1% on `incr-unchanged` builds of `ctfe-stress-4-check`)
- In rustc-serialize, specialize encoding and decoding of some contiguous u8 sequences to use a more efficient implementation.

#### Mixed

Rollup of 9 pull requests [#80530](https://github.com/rust-lang/rust/issues/80530)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=e2267046859c9ceb932abc983561d53a117089f6&end=9775ffef2a4c3a36cadb58b72ea60cefb92c86ae&stat=instructions:u) (up to 2.6% on `full` builds of `ripgrep-opt`)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=e2267046859c9ceb932abc983561d53a117089f6&end=9775ffef2a4c3a36cadb58b72ea60cefb92c86ae&stat=instructions:u) (up to -1.5% on `incr-patched: println` builds of `cargo-debug`)
- Unsure which PRs were responsible for the performance impact, but we suspect [#80458](https://github.com/rust-lang/rust/pull/80458). 

Rollup of 12 pull requests [#80708](https://github.com/rust-lang/rust/issues/80708)
- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=9919ad6e9ed113557c68c430de2e0f434e4f5b6e&end=f412fb56b8d11c168e7ee49ee74e79c4ab2e5637&stat=instructions:u) (up to 5.9% on `incr-unchanged` builds of `deeply-nested-async-check`)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=9919ad6e9ed113557c68c430de2e0f434e4f5b6e&end=f412fb56b8d11c168e7ee49ee74e79c4ab2e5637&stat=instructions:u) (up to -1.4% on `full` builds of `coercions-debug`)
- The regression outweighs the improvement
- Unsure which PR is the cause of the regression, but [#80637](https://github.com/rust-lang/rust/pull/80637) is our best guess.

#### Nags requiring follow up

- stdarch is still a major contributor to libcore compile times.
- Investigate the two rollups that had perf impacts [#80530](https://github.com/rust-lang/rust/issues/80530) and [#80708](https://github.com/rust-lang/rust/pull/80708).


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "Unsoundness in type checking of trait impls. Differences in implied lifetime bounds are not considered." [rust#80176](https://github.com/rust-lang/rust/issues/80176)
  - opened by @**Frank Steffahn** 
  - here's a [repro](https://github.com/rust-lang/rust/issues/80176#issuecomment-748466836)
  - seems related to [rust#25860](https://github.com/rust-lang/rust/issues/25860)
  - waiting for a discussion when [also Niko can be there](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.20meeting.5D.202020-12-31.20.2354818/near/221297919)

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3Alibs-impl)
- No nominated issues for `libs-impl` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "RFC: Checking conditional compilation at compile time" [rfcs#3013](https://github.com/rust-lang/rfcs/pull/3013)