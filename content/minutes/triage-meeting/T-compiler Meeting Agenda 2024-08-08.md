---
title: T-compiler Meeting Agenda 2024-08-08
tags: [weekly, ' rustc']

---

---
tags: weekly, rustc
type: docs
note_id: 8PHAmxDiTwiyWL202LNelw
---

# T-compiler Meeting Agenda 2024-08-08

## Announcements

- A Rust 1.80.1 will be out (with stable backports from last week): [blog post](https://github.com/rust-lang/blog.rust-lang.org/blob/4375ceaf547eeab0710f7e0591e56ea991842262/posts/2024-08-08-Rust-1.80.1.md).
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings
- Types Team: ITE (Impl Trait Everywhere) Triage <time:2024-08-08T22:00:00+01:00>
- wg-rust-analyzer steering meeting on Zulip (https://rust-lang.zulipchat.com/#narrow/stream/185405-t-compiler.2Fwg-rls-2.2E0/topic/Steering.20meeting) <time:2024-08-09T17:00:00+01:00>
- wg-macros triage meeting Zulip (https://rust-lang.zulipchat.com/#narrow/stream/410876-wg-macros.2Ftriage) <time:2024-08-09T18:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Don't track `--emit=` options as part of crate SVH" [compiler-team#769](https://github.com/rust-lang/compiler-team/issues/769) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Don.27t.20track.20.60--emit.3D.60.20options.20as.20part.20of.20.E2.80.A6.20compiler-team.23769))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Target families for executable format" [compiler-team#716](https://github.com/rust-lang/compiler-team/issues/716) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Target.20families.20for.20executable.20format.20compiler-team.23716)) (last review activity: 6 months ago)
  - "Partial compilation using MIR-only rlibs" [compiler-team#738](https://github.com/rust-lang/compiler-team/issues/738) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Partial.20compilation.20using.20MIR-only.20rlibs.20compiler-team.23738)) (last review activity: 3 months ago)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: 2 months ago)
- Pending FCP requests (check your boxes!)
  - merge: [sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets (rust#123617)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2135121317)
    - no pending checkboxes
    - concerns: [stabilization-scope (by wesleywiser)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2192330122)
  - merge: [Add `--print host-triple` to print host target triple (rust#125579)](https://github.com/rust-lang/rust/pull/125579#issuecomment-2133192548)
    - @_**|232957**
    - concerns (basically lifted because no consensus was found): [triple vs tuple (by lcnr)](https://github.com/rust-lang/rust/pull/125579#issuecomment-2133938172)
- Things in FCP (make sure you're good with it)
  - No FCP requests this time.
- Accepted MCPs
  - No new accepted proposals this time.
- MCPs blocked on unresolved concerns
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 6 months ago)
    - concern: [added-complexity-to-frontend](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-1845169318)
  - merge: [Add a new `--build-id` flag to rustc (compiler-team#635)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1777545767)
    - @_**|125250** @_**|116107** @_**|125294** @_**|123856**
    - concerns: [other-existing-options (by petrochenkov)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1779597156) [option-name (by wesleywiser)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1785349936)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
- Finalized FCPs (disposition merge)
  - "Enforce supertrait outlives obligations hold when confirming impl" [rust#124336](https://github.com/rust-lang/rust/pull/124336)
  - "Disallow setting some built-in cfg via set the command-line" [rust#126158](https://github.com/rust-lang/rust/pull/126158)
  - "turn `invalid_type_param_default` into a `FutureReleaseErrorReportInDeps`" [rust#127655](https://github.com/rust-lang/rust/pull/127655)
- Other teams finalized FCPs
  - "Enforce supertrait outlives obligations hold when confirming impl" [rust#124336](https://github.com/rust-lang/rust/pull/124336)
  - "turn `invalid_type_param_default` into a `FutureReleaseErrorReportInDeps`" [rust#127655](https://github.com/rust-lang/rust/pull/127655)
  - "Stabilize unsafe extern blocks (RFC 3484)" [rust#127921](https://github.com/rust-lang/rust/pull/127921)

### WG checkins

None

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Do not apply `#[do_not_recommend]` if the feature flag is not set" [rust#128674](https://github.com/rust-lang/rust/pull/128674)
  - Authored by weiznich
  - nominated preemptively (still a work in progress)
<!--
/poll Approve beta backport of #128674?
approve
deny
don't know
-->
- :beta: "Normalize when equating `dyn` tails in MIR borrowck" [rust#128694](https://github.com/rust-lang/rust/pull/128694)
  - Authored by compiler-errors
  - Fixes #128621 a P-high regression
<!--
/poll Approve beta backport of #128694?
approve
deny
don't know
-->
- No stable nominations for `T-compiler` this time.

[T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Stabilize `extended_varargs_abi_support`" [rust#116161](https://github.com/rust-lang/rust/pull/116161)
- "Better errors with bad/missing identifiers in MBEs" [rust#118939](https://github.com/rust-lang/rust/pull/118939)
- "Uplift `clippy::invalid_null_ptr_usage` lint" [rust#119220](https://github.com/rust-lang/rust/pull/119220)
- "Rename `AsyncIterator` back to `Stream`, introduce an AFIT-based `AsyncIterator` trait" [rust#119550](https://github.com/rust-lang/rust/pull/119550)
- "Initial support for auto traits with default bounds" [rust#120706](https://github.com/rust-lang/rust/pull/120706)
- "Disallow deriving (other than Copy/Clone) on types with unnamed fields" [rust#121270](https://github.com/rust-lang/rust/pull/121270)
- "Emit a warning if a `match` is too complex" [rust#122685](https://github.com/rust-lang/rust/pull/122685)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [65 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [37 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 0 P-high, 3 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 5 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 36 P-high, 100 P-medium, 16 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "ICE: `adding a def'n for node-id NodeId(18) and def kind AnonConst but a previous def'n exists`" [rust#128016](https://github.com/rust-lang/rust/issues/128016)
  - Can be fixed by #128760 in beta
  - Note: that patch points to `rust:beta` branch but it is not `beta-nominated`. Should it be?

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- "Generated WebAssembly unexpectedly requires reference types" [rust#128475](https://github.com/rust-lang/rust/issues/128475)
  - Alex Chrichton prepared #128511 to document this behaviour. "Fixing" this would very complicated and involves LLVM.

## Performance logs

> [triage logs 2024-08-06](https://github.com/rust-lang/rustc-perf/blob/master/triage/2024-08-06.md)

This week saw several large improvements caused mostly by the [update to LLVM 19](https://github.com/rust-lang/rust/pull/127513). There were some regressions in several pull requests, but most of them were immediately fixed in a follow-up PR.

Triage done by **@kobzol**.
Revision range: [7e3a9718..8c7e0e16](https://perf.rust-lang.org/?start=7e3a971870f23c94f7aceb53b490fb37333150ff&end=8c7e0e160831866bc1a40691a39455aac21271c0&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 1.0%  | [0.2%, 3.8%]    | 91    |
| Regressions (secondary)  | 1.9%  | [0.2%, 19.2%]   | 104   |
| Improvements (primary)   | -4.4% | [-15.8%, -0.3%] | 120   |
| Improvements (secondary) | -3.3% | [-10.4%, -0.2%] | 70    |
| All  (primary)           | -2.1% | [-15.8%, 3.8%]  | 211   |


6 Regressions, 3 Improvements, 5 Mixed; 4 of them in rollups
51 artifact comparisons made in total

#### Regressions

Rollup of 7 pull requests [#128413](https://github.com/rust-lang/rust/pull/128413) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f8060d282d42770fadd73905e3eefb85660d3278&end=249cf71f11a29b3fb68e8a35969569d8bb7958ee&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.6% | [0.2%, 1.9%] | 28    |
| Regressions (secondary)  | 0.3% | [0.2%, 0.4%] | 7     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.6% | [0.2%, 1.9%] | 28    |

- The regression was caused by https://github.com/rust-lang/rust/pull/128357.
- The regression should be fixed by https://github.com/rust-lang/rust/pull/128550.
- Marked as triaged.

Rollup of 6 pull requests [#128469](https://github.com/rust-lang/rust/pull/128469) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=28a58f2fa7f0c46b8fab8237c02471a915924fe5&end=71b211609605590423a68ba3f503e53404d4fdb4&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.7%]   | 10    |
| Regressions (secondary)  | 1.0%  | [0.2%, 2.1%]   | 36    |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 1     |
| Improvements (secondary) | -2.5% | [-2.5%, -2.5%] | 1     |
| All  (primary)           | 0.3%  | [-0.2%, 0.7%]  | 11    |

- The regression was caused by https://github.com/rust-lang/rust/pull/128443.
- The regression was later fixed in https://github.com/rust-lang/rust/pull/128544.
- Marked as triaged.

Rewrite binary search implementation [#128254](https://github.com/rust-lang/rust/pull/128254) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2cec7a85ed4868c90194a2187d2751788e298197&end=19326022d243f487b5752661cd9b597d620a489e&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.2%, 1.7%]   | 16    |
| Regressions (secondary)  | 6.2%  | [0.2%, 19.5%]  | 6     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -4.1% | [-4.1%, -4.1%] | 1     |
| All  (primary)           | 0.5%  | [0.2%, 1.7%]   | 16    |

- This PR optimized the standard library implementation of binary search.
- The regression is caused by LLVM spending more time in optimizing the new binary search, because it is now more amenable to unrolling and other optimizations.
- Marked as triaged.

Rollup of 7 pull requests [#128614](https://github.com/rust-lang/rust/pull/128614) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=bbf60c897e18a72923129c63ff33ce2de2968815&end=64ebd39da5ec28caa3bd7cbb3f22f5949432fe2b&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | -    | -            | 0     |
| Regressions (secondary)  | 0.8% | [0.4%, 1.3%] | 10    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | -    | -            | 0     |

- The regression was caused by https://github.com/rust-lang/rust/pull/127921.
- The compiler now performs more work, so a small regression is expected.
- Marked as triaged.

Update the stdarch submodule [#128466](https://github.com/rust-lang/rust/pull/128466) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8f63e9f8732d8688f2b5e1c816569f65ee185c7e&end=b389b0ab72cb0aa9acf4df0ae0c0e12090782da9&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.7% | [0.2%, 2.6%] | 13    |
| Regressions (secondary)  | 1.0% | [0.2%, 4.3%] | 32    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.7% | [0.2%, 2.6%] | 13    |

- Small regression on several benchmarks, caused by the standard library becoming larger.
- Marked as triaged.

Enforce supertrait outlives obligations hold when confirming impl [#124336](https://github.com/rust-lang/rust/pull/124336) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=83e9b93c90bcd7f52d17d09b52e3a2eff707c46a&end=2b78d920964e1d70927bcd208529bda0e11120d0&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.6% | [0.2%, 1.5%] | 95    |
| Regressions (secondary)  | 1.8% | [0.2%, 4.2%] | 38    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.6% | [0.2%, 1.5%] | 95    |

- Medium regression on a lot of primary benchmarks.
- Not marking as triaged yet, investigation ongoing.

#### Improvements

Rollup of 6 pull requests [#128504](https://github.com/rust-lang/rust/pull/128504) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e60ebb2f2c1facba87e7971798f3cbdfd309cd23&end=a886938671e1fde9d7271dce8ca3d6938bae9d2e&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.4% | [-0.5%, -0.3%] | 12    |
| All  (primary)           | -     | -              | 0     |


Delegation: second attempt to improve perf [#128441](https://github.com/rust-lang/rust/pull/128441) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=64ebd39da5ec28caa3bd7cbb3f22f5949432fe2b&end=8f63e9f8732d8688f2b5e1c816569f65ee185c7e&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.7%, -0.2%] | 9     |
| Improvements (secondary) | -0.5% | [-1.1%, -0.1%] | 9     |
| All  (primary)           | -0.4% | [-0.7%, -0.2%] | 9     |

Check divergence value first before doing span operations in `warn_if_unreachable` [#128544](https://github.com/rust-lang/rust/pull/128544) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ebd08d8ed5c8904de8700def78adc1dbd5727684&end=ab1527f1d6560168f9fd36fa8cd7ba677c1d36ad&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.5%, -0.2%] | 21    |
| Improvements (secondary) | -1.0% | [-2.1%, -0.2%] | 34    |
| All  (primary)           | -0.3% | [-0.5%, -0.2%] | 21    |


#### Mixed

Delegation: support generics for delegation from free functions [#125929](https://github.com/rust-lang/rust/pull/125929) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e69c19ea0b8cf29ab8188a0eb5e899655464a1ff&end=1ddedbaa5919b7b3e70d984660e21e844c615c97&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 0.8%]   | 11    |
| Regressions (secondary)  | 0.5%  | [0.1%, 1.2%]   | 10    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.4%, -0.2%] | 2     |
| All  (primary)           | 0.4%  | [0.2%, 0.8%]   | 11    |

- The regression was resolved in https://github.com/rust-lang/rust/pull/128441.
- Marked as triaged.

Update to LLVM 19 [#127513](https://github.com/rust-lang/rust/pull/127513) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e552c168c72c95dc28950a9aae8ed7030199aa0d&end=0b5eb7ba7bd796fb39c8bb6acd9ef6c140f28b65&stat=instructions:u)

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 1.3%  | [0.2%, 3.6%]    | 13    |
| Regressions (secondary)  | 0.9%  | [0.2%, 3.4%]    | 37    |
| Improvements (primary)   | -3.2% | [-15.8%, -0.2%] | 172   |
| Improvements (secondary) | -2.6% | [-10.5%, -0.2%] | 82    |
| All  (primary)           | -2.9% | [-15.8%, 3.6%]  | 185   |

- This was a large performance increase caused by an update to LLVM 19.
- Improvement far outweigh the regressions.
- Marked as triaged.

Accelerate GVN a little [#126991](https://github.com/rust-lang/rust/pull/126991) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=99322d84c4e216940621c356787331d8ae362326&end=28a58f2fa7f0c46b8fab8237c02471a915924fe5&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.3%, 0.3%]   | 1     |
| Regressions (secondary)  | 2.1%  | [2.1%, 2.1%]   | 1     |
| Improvements (primary)   | -0.4% | [-0.4%, -0.3%] | 2     |
| Improvements (secondary) | -0.7% | [-1.0%, -0.4%] | 6     |
| All  (primary)           | -0.2% | [-0.4%, 0.3%]  | 3     |

- More improvements than regressions.
- Marked as triaged.

Revert recent changes to dead code analysis [#128404](https://github.com/rust-lang/rust/pull/128404) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ad0a2b7180c06514370c4c7a7a73ee75158e88fa&end=1f47624f9abad7974afe1c016a4e8b07f4254ee4&stat=instructions:u)

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | -     | -               | 0     |
| Regressions (secondary)  | 1.1%  | [0.7%, 1.7%]    | 9     |
| Improvements (primary)   | -0.4% | [-1.2%, -0.2%]  | 47    |
| Improvements (secondary) | -2.9% | [-10.7%, -0.2%] | 15    |
| All  (primary)           | -0.4% | [-1.2%, -0.2%]  | 47    |

- More improvements than regressions.
- Marked as triaged.

Change output normalization logic to be linear against size of output [#128200](https://github.com/rust-lang/rust/pull/128200) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c9687a95a602091777e28703aa5abf20f1ce1797&end=8c7e0e160831866bc1a40691a39455aac21271c0&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.4%  | [0.3%, 0.5%]   | 6     |
| Improvements (primary)   | -0.9% | [-2.6%, -0.2%] | 19    |
| Improvements (secondary) | -0.5% | [-0.7%, -0.3%] | 10    |
| All  (primary)           | -0.9% | [-2.6%, -0.2%] | 19    |

- This PR fixed a small regression from https://github.com/rust-lang/rust/pull/127528.
- More improvements than regressions.
- Marked as triaged.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "ill-typed unused FFI declarations can cause UB" [rust#46188](https://github.com/rust-lang/rust/issues/46188)
  - nominated by @**RalfJ** ([comment](https://github.com/rust-lang/rust/issues/46188#issuecomment-2268730910))
  - Attempted to write a patch in #128247 but ultimately hard to fix (related [Zulip topic](https://rust-lang.zulipchat.com/#narrow/stream/187780-t-compiler.2Fwg-llvm/topic/Fixing.20codegen.20for.20multiple.20different.20imports.20of.20the.20same.20fn)). I am also increasingly skeptical whether LLVM will cope well with functions declared as `@func_name = external global [0 x i8]` -- aren't functions special e.g. in how they are treated by the linker on some platforms, and other things like that? Also this will hit entirely untested codepaths in LLVM.
  - How to best resolve this issue? Re-consider priority?
- "Tracking Issue for the C-cmse-nonsecure-call ABI" [rust#81391](https://github.com/rust-lang/rust/issues/81391)
  - nominated by @**Jieyou Xu** ([comment](https://github.com/rust-lang/rust/issues/81391#issuecomment-2267314513)):
  - also nominated for T-lang
  - Does this need an MCP/FCP for stabilization, or does this need further design?
  - Does this need a joint T-compiler/T-lang FCP?
  - We should help the people working on cmse-related things to find knowledgeable reviewers / domain experts who can help reviewing the changes, or otherwise provide advice on how to split related PRs for easier reviewing.
  - Are cmse-related efforts being tracked anywhere?
- "[DRAFT] #[contracts::requires(...)]" [rust#128045](https://github.com/rust-lang/rust/pull/128045)
  - nominated by @**Jieyou Xu** ([comment](https://github.com/rust-lang/rust/pull/128045#issuecomment-2267121847)): looking for a reviewer familiar with attribute handling / HIR/MIR changes
  - The current challenge seems to be that existing attribute handling only supports a "single path segment", i.e. `#[contracts(<inner_expr>)]` but not `#[contracts::requires(<inner_expr>)]`. We also can't trivially reuse existing `register_attr!` or visitor because they impose strict limits on the `<inner_expr>` and require it to be very primitive (like literals or identifiers or simple lists) but does not support arbitrary expressions like `x > 0`. To support the arbitrary inner expression (in that it may not necessarily be a valid rust expression), it may require relaxing that restriction, but it may raise further parsing/grammar questions. It's not clear what's the best path forward here.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Implement unification of const abstract impls" [rust#104803](https://github.com/rust-lang/rust/pull/104803) (last review activity: 12 months ago)
   - this is assigned to Oli which is now on vacation (and removed themself from a number of pending reviews). If anyone wants to pick it up here ...
- "Do not eagerly reject inference vars when trying to resolve method calls." [rust#126316](https://github.com/rust-lang/rust/pull/126316) (last review activity: about 53 days ago)
   - cc @**lcnr**

## Next week's WG checkins

None

Next meetings' agenda draft: [hackmd link](https://hackmd.io/pxKZfm4kToGkN9V1pC8L1Q)
