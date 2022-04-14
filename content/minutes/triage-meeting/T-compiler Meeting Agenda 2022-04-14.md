---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-04-14

## Announcements

- Tomorrow <time:2022-04-15T13:00:00+02:00> Types Team: Deep-dive on Lazy TAIT [calendar link](https://calendar.google.com/calendar/event?eid=M3JsYmdkN2F0cjdtYXE0Z2ljYzM4Nm42NTRfMjAyMjA0MTVUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn&ctz=UTC)
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).
- pnkfelix unilaterally approved [PR 94461: Create (unstable) 2024 edition](https://github.com/rust-lang/rust/pull/94461). However, if any of you think that step should instead go through an MCP, let me know.

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  -  "Add attribute to run specific tests in an isolated process" [compiler-team#508](https://github.com/rust-lang/compiler-team/issues/508) 
  -  "Add a weak warning lint level" [compiler-team#509](https://github.com/rust-lang/compiler-team/issues/509) 
- Old MCPs (not seconded, take a look)
  -  "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441) (last review activity: 9 months ago)
  -  "Make `-Z binary-dep-depinfo` the default behavior" [compiler-team#464](https://github.com/rust-lang/compiler-team/issues/464) (last review activity: 6 months ago)
  -  "Tier 3 target proposal: riscv64gc-linux-android (Android target for `riscv64gc`)" [compiler-team#472](https://github.com/rust-lang/compiler-team/issues/472) (last review activity: 4 months ago)
  -  "`-Dwarnings` to cover all warnings" [compiler-team#473](https://github.com/rust-lang/compiler-team/issues/473) (last review activity: 4 months ago)
  -  "Build-time execution sandboxing" [compiler-team#475](https://github.com/rust-lang/compiler-team/issues/475) (last review activity: 3 months ago)
  -  "Dealing with type/const ambiguities" [compiler-team#480](https://github.com/rust-lang/compiler-team/issues/480) (last review activity: 2 months ago)
  -  "Removing codegen logic for `nvptx-nvidia-cuda` (32-bit target)" [compiler-team#496](https://github.com/rust-lang/compiler-team/issues/496) (last review activity: about 27 days ago)
  -  "Add `yeet` experimentally" [compiler-team#501](https://github.com/rust-lang/compiler-team/issues/501) (last review activity: about 13 days ago)
- Pending FCP requests (check your boxes!)
  - "Tracking issue for Consistent no-prelude attribute (RFC 501)" [rust#20561](https://github.com/rust-lang/rust/issues/20561#issuecomment-1059258740) 
  - "Tracking Issue for `-Z terminal-width`" [rust#84673](https://github.com/rust-lang/rust/issues/84673#issuecomment-1087141663) 
  - "Increase the minimum linux-gnu versions" [rust#95026](https://github.com/rust-lang/rust/pull/95026#issuecomment-1077855006)
- Things in FCP (make sure you're good with it)
  -  "Add TyKind::Alias to keep type alias information" [compiler-team#504](https://github.com/rust-lang/compiler-team/issues/504) 
  -  "try to not rely on attributes from extern crates" [compiler-team#505](https://github.com/rust-lang/compiler-team/issues/505) 
- Accepted MCPs
  -  "Add support for MIR opt unit tests via a new `-Z` flag" [compiler-team#502](https://github.com/rust-lang/compiler-team/issues/502) 
  -  "Remove -Zast-json" [compiler-team#503](https://github.com/rust-lang/compiler-team/issues/503) 
- Finalized FCPs (disposition merge)
  -  "Fix constants not getting dropped if part of a diverging expression" [rust#94775](https://github.com/rust-lang/rust/pull/94775) 
  -  "[`let_chains`] Forbid `let` inside parentheses" [rust#95008](https://github.com/rust-lang/rust/pull/95008)
  
### WG checkins

@*WG-Self-Profile* checkin by @**mw** / @**Wesley Wiser** ([previous checkin](https://hackmd.io/HYT7NJFwS8q8Xp1h_CmfTQ#WG-checkins)):
> @**lqd** is improving the way we capture arguments to self-profile data with the goal of getting much more detailed information about proc-macro expansions in profile traces. (#95689)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Check that all hidden types are the same and then deduplicate them." [rust#95731](https://github.com/rust-lang/rust/pull/95731)
  - beta backport postponed to this week ([prev. discussion](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202022-04-07/near/278169055))
  - cc: @**oli**, since patch author

[T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- No PRs waiting on `T-compiler` this time.

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- "Reject `#[thread_local]` attribute on non-static items" [rust#95006](https://github.com/rust-lang/rust/pull/95006) (last review activity: about 21 days ago)
  - rustbot assigned to @**Wesley Wiser**, reroll dice?
  - maybe PR missed the mention last week (in case sorry for the double reminder)
- "remove find_use_placement" [rust#95194](https://github.com/rust-lang/rust/pull/95194) (last review activity: about 22 days ago)
  - PR author is looking for a reviewer (they asked @**pnkfelix** since this should fix [#94941](https://github.com/rust-lang/rust/issues/94941))
- "Check var scope if it exist" [rust#94849](https://github.com/rust-lang/rust/pull/94849) (last review activity: about 20 days ago)
  - last review from @**oli**
  - PR is probably ready for another review pass
- "Fix late-bound ICE" [rust#92289](https://github.com/rust-lang/rust/pull/92289) (last review activity: about 20 days ago)
  - after last review from @**Esteban Küber**, unsure if it's now waiting on author
  - (pending a rebase)
- "when checking pointee metadata, canonicalize the `Sized` check" [rust#95315](https://github.com/rust-lang/rust/pull/95315) (last review activity: about 19 days ago)
  - Probably needs a reviewer
- "Add `round_ties_even` to `f32` and `f64`" [rust#95317](https://github.com/rust-lang/rust/pull/95317) (last review activity: about 19 days ago)
  - Probably needs a reviewer (for the compiler part)
- "make unaligned_references lint deny-by-default" [rust#95372](https://github.com/rust-lang/rust/pull/95372) (last review activity: about 17 days ago)
  - Probably needs an opinion from T-compiler about enabling the lint ([comment](https://github.com/rust-lang/rust/pull/95372#issuecomment-1080073054))
  
## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [58 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [44 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 2 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 38 P-high, 82 P-medium, 10 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high stable regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-stable+label%3AP-high)
- rustc 1.59/1.60 builds musl binaries that segfault, when compiling with musl-gcc wrappers, due to static-pie default [rust#95926](https://github.com/rust-lang/rust/issues/95926)

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2022-04-12](https://github.com/rust-lang/rustc-perf/blob/master/triage/2022-04-12.md)

A week with a large amount of changes in rollups, which makes performance triage difficult. The performance team and the infra team are working on finding ways to automate marking PRs as likely a poor choice for rolling up. Otherwise, the week overall saw a ~1% improvement in incremental check builds, with smaller improvements to incremental debug and release builds. A number of benchmarks have been updated in the last few weeks, which has meant a decrease in the automated noise assessment's algorithm performance, but that should settle out to steady state behavior on its own in the next few days.

Triage done by **@simulacrum**.
Revision range: [949b98cab8a186b98bf87e64374b8d0848c55271..4e1927db3c399fa34dc71992bd5dbec09f945c3d](https://perf.rust-lang.org/?start=949b98cab8a186b98bf87e64374b8d0848c55271&end=4e1927db3c399fa34dc71992bd5dbec09f945c3d&absolute=false&stat=instructions%3Au)

5 Regressions, 4 Improvements, 7 Mixed; 7 of them in rollups
50 artifact comparisons made in total

#### Regressions

Update libc to 0.2.121 [#95688](https://github.com/rust-lang/rust/pull/95688) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2310da432ca1c3e87f1d17e069f2336f2d4939e5&end=846993ec43c615c64a0496d3eb3c8615830842e4&stat=instructions:u)

| | Regressions 😿 <br />(primary) | Regressions 😿 <br />(secondary) | Improvements 🎉 <br />(primary) | Improvements 🎉 <br />(secondary) | All 😿 🎉 <br />(primary) |
|:---:|:---:|:---:|:---:|:---:|:---:|
| count | 8 | 19 | 0 | 0 | 8 |
| mean | 1.2% | 0.9% | N/A | N/A | 1.2% |
| max | 1.2% | 1.2% | N/A | N/A | 1.2% |
* This is pretty likely to just be natural increases in compile times when key dependencies like libc increase in size.

Rollup of 6 pull requests [#95840](https://github.com/rust-lang/rust/pull/95840) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=399dd8049d4b27329350937e3e17077205bdc0bf&end=fbdb10f9fabe47eb763cb4b52b5721740cc63783&stat=instructions:u)

| | Regressions 😿 <br />(primary) | Regressions 😿 <br />(secondary) | Improvements 🎉 <br />(primary) | Improvements 🎉 <br />(secondary) | All 😿 🎉 <br />(primary) |
|:---:|:---:|:---:|:---:|:---:|:---:|
| count | 10 | 21 | 0 | 3 | 10 |
| mean | 0.6% | 0.9% | N/A | -0.4% | 0.6% |
| max | 1.2% | 1.3% | N/A | -0.5% | 1.2% |
* Primarily limited to doc builds, seems likely to be caused by #95769.

Rollup of 7 pull requests [#95889](https://github.com/rust-lang/rust/pull/95889) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=027a232755fa9728e9699337267f6675dfd0a8ba&end=1f7fb6413d6d6c0c929b223e478e44c3db991b03&stat=instructions:u)

| | Regressions 😿 <br />(primary) | Regressions 😿 <br />(secondary) | Improvements 🎉 <br />(primary) | Improvements 🎉 <br />(secondary) | All 😿 🎉 <br />(primary) |
|:---:|:---:|:---:|:---:|:---:|:---:|
| count | 5 | 0 | 0 | 0 | 5 |
| mean | 0.3% | N/A | N/A | N/A | 0.3% |
| max | 0.5% | N/A | N/A | N/A | 0.5% |
* Unclear cause, and fairly small regression. Given this is a rollup likely not worth the time to investigate -- benefit/cost tradeoff is not worth it.

Faster parsing for lower numbers for radix up to 16 (cont.) [#95399](https://github.com/rust-lang/rust/pull/95399) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b8f4cb6231dc7d4ff9afe62de798af0dc18ae835&end=4e1927db3c399fa34dc71992bd5dbec09f945c3d&stat=instructions:u)

| | Regressions 😿 <br />(primary) | Regressions 😿 <br />(secondary) | Improvements 🎉 <br />(primary) | Improvements 🎉 <br />(secondary) | All 😿 🎉 <br />(primary) |
|:---:|:---:|:---:|:---:|:---:|:---:|
| count | 0 | 14 | 0 | 0 | 0 |
| mean | N/A | 0.3% | N/A | N/A | N/A |
| max | N/A | 0.5% | N/A | N/A | N/A |
* Unclear that this will be an easy regression to investigate, changes are pretty extensive, and justification slim beyond theoretical microbenchmarks.

Rollup of 7 pull requests [#95855](https://github.com/rust-lang/rust/pull/95855) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8c1fb2eb23964b56bd279b12aa925935d8559870&end=8bf93e9b6791acee3a594ed202fdfe45ad9952b5&stat=instructions:u)

| | Regressions 😿 <br />(primary) | Regressions 😿 <br />(secondary) | Improvements 🎉 <br />(primary) | Improvements 🎉 <br />(secondary) | All 😿 🎉 <br />(primary) |
|:---:|:---:|:---:|:---:|:---:|:---:|
| count | 0 | 9 | 5 | 1 | 5 |
| mean | N/A | 1.0% | -0.8% | -1.0% | -0.8% |
| max | N/A | 1.7% | -1.1% | -1.0% | -1.1% |

#### Improvements

- Call `compute_locs` once per rule [#95669](https://github.com/rust-lang/rust/pull/95669) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b6ab1fae73a14db17a59e81c532a2b8f048ac159&end=c2afaba465e0bf44b9b37beba8d908b78dcdadc7&stat=instructions:u)
- Shrink `Nonterminal` [#95715](https://github.com/rust-lang/rust/pull/95715) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ed6c958ee4bf081deec951996ace9c508360c1d9&end=fa723160318fac5f3fa6f4141cfc41c0606a3008&stat=instructions:u)
- rustdoc: Early doc link resolution fixes and refactorings [#95706](https://github.com/rust-lang/rust/pull/95706) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=fa723160318fac5f3fa6f4141cfc41c0606a3008&end=dd38eea722c1f6f970a314435533e91cc2c14ffb&stat=instructions:u)
- CI: update `rustc-perf` version used in CI and also the corresponding PGO benchmarks [#95724](https://github.com/rust-lang/rust/pull/95724) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4bb685e4714a2b310774f45c3d023d1743de8bd0&end=399dd8049d4b27329350937e3e17077205bdc0bf&stat=instructions:u)

#### Mixed

Rollup of 5 pull requests [#95667](https://github.com/rust-lang/rust/pull/95667) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=949b98cab8a186b98bf87e64374b8d0848c55271&end=634770c0a7f8598164ab825cfe419cc8b03c36e5&stat=instructions:u)

| | Regressions 😿 <br />(primary) | Regressions 😿 <br />(secondary) | Improvements 🎉 <br />(primary) | Improvements 🎉 <br />(secondary) | All 😿 🎉 <br />(primary) |
|:---:|:---:|:---:|:---:|:---:|:---:|
| count | 17 | 39 | 14 | 0 | 31 |
| mean | 6.2% | 7.9% | -0.8% | N/A | 3.1% |
| max | 39.4% | 38.9% | -1.6% | N/A | 39.4% |
* Investigation shows this regression to be primarily caused by new support for diagnostic translations; investigation is ongoing, but it sounds like there are ways to claw back some of the performance hit.

Rollup of 8 pull requests [#95702](https://github.com/rust-lang/rust/pull/95702) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=306ba8357fb36212b7d30efb9eb9e41659ac1445&end=bbe9d27b8ff36da56638aa43d6d0cdfdf89a4e57&stat=instructions:u)

| | Regressions 😿 <br />(primary) | Regressions 😿 <br />(secondary) | Improvements 🎉 <br />(primary) | Improvements 🎉 <br />(secondary) | All 😿 🎉 <br />(primary) |
|:---:|:---:|:---:|:---:|:---:|:---:|
| count | 2 | 6 | 2 | 6 | 4 |
| mean | 0.3% | 1.1% | -0.2% | -0.4% | 0.1% |
| max | 0.4% | 1.2% | -0.2% | -0.7% | 0.4% |
* Unclear cause. Regression *might* be noise, but it's hard to say -- the keccak benchmark is in line with the ~1% noise we've seen elsewhere this week, but the other benchmarks (particularly in the primary category) seem potentially less likely to be noise. deep-vector is also affected.

Rollup of 6 pull requests [#95742](https://github.com/rust-lang/rust/pull/95742) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c2afaba465e0bf44b9b37beba8d908b78dcdadc7&end=8f36334ca939a67cce3f37f24953ff6f2d3f3d33&stat=instructions:u)

| | Regressions 😿 <br />(primary) | Regressions 😿 <br />(secondary) | Improvements 🎉 <br />(primary) | Improvements 🎉 <br />(secondary) | All 😿 🎉 <br />(primary) |
|:---:|:---:|:---:|:---:|:---:|:---:|
| count | 6 | 31 | 12 | 10 | 18 |
| mean | 0.4% | 0.5% | -0.6% | -0.4% | -0.3% |
| max | 0.7% | 0.8% | -2.4% | -0.6% | -2.4% |
* Fairly large number of benchmarks showing small-ish changes, both positive and negative. Cause is unclear.

Avoid accessing HIR from MIR passes [#95487](https://github.com/rust-lang/rust/pull/95487) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=18f32b73bdb3833c18c73fe3062bde8e1721ccca&end=027a232755fa9728e9699337267f6675dfd0a8ba&stat=instructions:u)

| | Regressions 😿 <br />(primary) | Regressions 😿 <br />(secondary) | Improvements 🎉 <br />(primary) | Improvements 🎉 <br />(secondary) | All 😿 🎉 <br />(primary) |
|:---:|:---:|:---:|:---:|:---:|:---:|
| count | 0 | 9 | 1 | 0 | 1 |
| mean | N/A | 0.5% | -0.6% | N/A | -0.6% |
| max | N/A | 0.9% | -0.6% | N/A | -0.6% |

Add new `Deinit` statement [#95125](https://github.com/rust-lang/rust/pull/95125) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=43998d544108b613c4631ed60249880167e8aafc&end=625e4dd13a3abd0cc59807af66c3c4cd63440852&stat=instructions:u)

| | Regressions 😿 <br />(primary) | Regressions 😿 <br />(secondary) | Improvements 🎉 <br />(primary) | Improvements 🎉 <br />(secondary) | All 😿 🎉 <br />(primary) |
|:---:|:---:|:---:|:---:|:---:|:---:|
| count | 27 | 39 | 4 | 17 | 31 |
| mean | 0.5% | 1.4% | -0.9% | -1.0% | 0.3% |
| max | 1.6% | 4.1% | -1.4% | -2.2% | 1.6% |

Rollup of 7 pull requests [#95944](https://github.com/rust-lang/rust/pull/95944) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=90ca44752a79dd414d9a0ccf7a74533a99080988&end=de392c7d31602ddf0fae1143c5ad822a1abe89df&stat=instructions:u)

| | Regressions 😿 <br />(primary) | Regressions 😿 <br />(secondary) | Improvements 🎉 <br />(primary) | Improvements 🎉 <br />(secondary) | All 😿 🎉 <br />(primary) |
|:---:|:---:|:---:|:---:|:---:|:---:|
| count | 0 | 6 | 5 | 9 | 5 |
| mean | N/A | 0.4% | -0.2% | -0.5% | -0.2% |
| max | N/A | 0.5% | -0.4% | -1.8% | -0.4% |


Respect -Z verify-llvm-ir and other flags that add extra passes when combined with -C no-prepopulate-passes in the new LLVM Pass Manager. [#95893](https://github.com/rust-lang/rust/pull/95893) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=36f4ded69eb50c080991d624b7cd7f40466cea25&end=b8f4cb6231dc7d4ff9afe62de798af0dc18ae835&stat=instructions:u)

| | Regressions 😿 <br />(primary) | Regressions 😿 <br />(secondary) | Improvements 🎉 <br />(primary) | Improvements 🎉 <br />(secondary) | All 😿 🎉 <br />(primary) |
|:---:|:---:|:---:|:---:|:---:|:---:|
| count | 0 | 3 | 0 | 6 | 0 |
| mean | N/A | 0.5% | N/A | -0.4% | N/A |
| max | N/A | 0.6% | N/A | -0.5% | N/A |

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- "Allow dynamic linking on ios." [rust#95847](https://github.com/rust-lang/rust/pull/95847)
  - nominated by @**Wesley Wiser** to discuss the possibility to enable dynamic linking back again
  - previous discussion in pull request [rust#77716](https://github.com/rust-lang/rust/pull/77716)

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.
