---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-05-05

## Announcements

- Tomorrow <time:2022-05-06T15:00:00+02:00> Chalkification planning [calendar link](https://calendar.google.com/calendar/event?eid=MDZiOWIwYm1yZTBtc2pxdXZvdGhhM3VrbmFfMjAyMjA1MDZUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn&ctz=UTC)
- Tomorrow <time:2022-05-06T15:00:00+02:00> Types team: Planning/Deep-Dive [calendar link](https://calendar.google.com/calendar/event?eid=M3JsYmdkN2F0cjdtYXE0Z2ljYzM4Nm42NTRfMjAyMjA1MDZUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn&ctz=UTC)
- Tomorrow <time:2022-05-06T16:00:00+02:00> monthly Compiler Team Planning [calendar link](https://calendar.google.com/calendar/event?eid=MDJyYnJ1cGFtdWR1c2lnNjFmcHJ2b3JlODFfMjAyMjA1MDZUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn&ctz=UTC)
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  -  "Change compiletest declarations parsing" [compiler-team#512](https://github.com/rust-lang/compiler-team/issues/512) 
  -  "Arbitrary annotations in compiletest" [compiler-team#513](https://github.com/rust-lang/compiler-team/issues/513) 
- Old MCPs (not seconded, take a look)
  -  "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441) (last review activity: 10 months ago)
  -  "Make `-Z binary-dep-depinfo` the default behavior" [compiler-team#464](https://github.com/rust-lang/compiler-team/issues/464) (last review activity: 7 months ago)
  -  "Tier 3 target proposal: riscv64gc-linux-android (Android target for `riscv64gc`)" [compiler-team#472](https://github.com/rust-lang/compiler-team/issues/472) (last review activity: 4 months ago)
  -  "`-Dwarnings` to cover all warnings" [compiler-team#473](https://github.com/rust-lang/compiler-team/issues/473) (last review activity: 4 months ago)
  -  "Build-time execution sandboxing" [compiler-team#475](https://github.com/rust-lang/compiler-team/issues/475) (last review activity: 4 months ago)
  -  "Dealing with type/const ambiguities" [compiler-team#480](https://github.com/rust-lang/compiler-team/issues/480) (last review activity: 3 months ago)
  -  "Removing codegen logic for `nvptx-nvidia-cuda` (32-bit target)" [compiler-team#496](https://github.com/rust-lang/compiler-team/issues/496) (last review activity: about 47 days ago)
  -  "Add attribute to run specific tests in an isolated process" [compiler-team#508](https://github.com/rust-lang/compiler-team/issues/508) (last review activity: about 7 days ago)
  -  "Stabilize `-Zgcc-ld=lld`" [compiler-team#510](https://github.com/rust-lang/compiler-team/issues/510) (last review activity: about 7 days ago)
- Pending FCP requests (check your boxes!)
  - "Tracking issue for Consistent no-prelude attribute (RFC 501)" [rust#20561](https://github.com/rust-lang/rust/issues/20561#issuecomment-1059258740) 
  - "Tracking Issue for `-Z terminal-width`" [rust#84673](https://github.com/rust-lang/rust/issues/84673#issuecomment-1087141663) 
  - "Increase the minimum linux-gnu versions" [rust#95026](https://github.com/rust-lang/rust/pull/95026#issuecomment-1077855006) 
  - "Remove label/lifetime shadowing warnings" [rust#96296](https://github.com/rust-lang/rust/pull/96296#issuecomment-1114024288) 
- Things in FCP (make sure you're good with it)
  - No FCP requests this time.
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  -  "Enforce Copy bounds for repeat elements while considering lifetimes" [rust#95819](https://github.com/rust-lang/rust/pull/95819) 
  -  "Stabilize `$$` and `${ignore}` in Rust 1.62.0" [rust#95860](https://github.com/rust-lang/rust/pull/95860) 
  -  "Remove mutable_borrow_reservation_conflict lint and allow the code pattern" [rust#96268](https://github.com/rust-lang/rust/pull/96268)

### WG checkins

- @_*WG-mir-opt* by @**oli** ([previous checkin](https://hackmd.io/PPMtXP7hSqmyqD30CUw_cQ#WG-checkins))
> * preliminary work on removing ProjectionKind::Deref: #95857
> * @**Jak{e,ob} Degen** reviewed the MIR and documented its semantics: #95320
- @_*wg-polymorphization* by @**davidtwco** ([previous checkin](https://hackmd.io/Fv3TSalbT_CYVUEonihWzg#WG-checkins))
> No update from wg-polymorphization. Members of the working group are focusing on other areas.

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No backport nominations for `T-compiler` this time.

[T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "generalize "incoherent impls" impl for user defined types" [rust#96520](https://github.com/rust-lang/rust/pull/96520)
  - PR author @**lcnr** 
  - @**Jack Huey** and @**Vadim Petrochenkov** left some comments
  - mentioning just in case T-compiler need to do more reviewing (also T-libs have a say here) 

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- "Increase the minimum linux-gnu versions" [rust#95026](https://github.com/rust-lang/rust/pull/95026) (last review activity: about 34 days ago)
  - was pending [RFC approval](https://github.com/rust-lang/rust/pull/95026#issuecomment-1077855006), now approved
  - seems to also be approved by @_**Pietro Albini** ([comment](https://github.com/rust-lang/rust/pull/95026#pullrequestreview-917711939=)) and already is mentioned in the release notes for 1.61
  - maybe `the S-waiting-on-review` flag can be lifted?
- "Cache more queries on disk" [rust#95418](https://github.com/rust-lang/rust/pull/95418) (last review activity: about 33 days ago)
  - discussed at length [previously](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202022-04-07/near/278173925), a follow-up meeting [was mentioned](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202022-04-07/near/278177316)
  - unsure about the current status here 
- "AddNicheCases MirPass" [rust#95652](https://github.com/rust-lang/rust/pull/95652) (last review activity: about 29 days ago)
  - last comments from assignee @**RalfJ**
- "Support tool lints with the `#[expect]` attribute (RFC 2383)" [rust#95542](https://github.com/rust-lang/rust/pull/95542) (last review activity: about 29 days ago)
  - cc: @**Wesley Wiser** (sorry for pinging two meetings in a row)
- "Warn about dead tuple struct fields" [rust#95977](https://github.com/rust-lang/rust/pull/95977) (last review activity: about 21 days ago)
  - previous review from @**eddyb**
- "Implement #[deprecated_safe]" [rust#95025](https://github.com/rust-lang/rust/pull/95025) (last review activity: about 21 days ago)
  - cc @**eddyb** and @**Esteban Küber** ?
- "Warn on unused `#[doc(hidden)]` attributes on trait impl items" [rust#96008](https://github.com/rust-lang/rust/pull/96008) (last review activity: about 20 days ago)
  It's marked as waiting for review: is it the actual status (based on latest comments)?
- "Memory-map the dep-graph instead of reading it up front" [rust#95543](https://github.com/rust-lang/rust/pull/95543) (last review activity: about 20 days ago)
  - was reviewed by @**mw**, should the review flag be switched to waiting on author?
- "Disable unwinding for emscripten again" [rust#95950](https://github.com/rust-lang/rust/pull/95950) (last review activity: about 18 days ago)
  - side question for @**pnkfelix**: what would an actionable for [this comment](https://github.com/rust-lang/rust/pull/95950#issuecomment-1105381516) be? Specifically, who should own writing the MCP to document the process of enabling unwinding again?

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [60 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [46 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 1 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 40 P-high, 83 P-medium, 10 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "3.2_f32 formatted as 0 on powerpc64le" [rust#96306](https://github.com/rust-lang/rust/issues/96306)
  - miscompilation on tier 2 platform `powerpc64le-unknown-linux-gnu`
  - @**nagisa** provided some insights in [comment](https://github.com/rust-lang/rust/issues/96306#issuecomment-1107659860)
  - bug seems to not reproduce on latest nightly ([comment](https://github.com/rust-lang/rust/issues/96306#issuecomment-1117378031)) but more related regressions show up
  - (reassess priority?)

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "Regression in nightly-2022-05-01 relating to trait objects" [rust#96664](https://github.com/rust-lang/rust/issues/96664)
  - handled by @**cjgillot** in PR #96715
- "cycle detected when computing the super predicates of `...`" [rust#96665](https://github.com/rust-lang/rust/issues/96665)
  - related to #96664
  - equally handled by @**cjgillot** in PR #96715

## Performance logs

> [triage logs for 2022-05-03](https://github.com/rust-lang/rustc-perf/blob/master/triage/2022-05-03.md)

Performance overall improved in the last week, but some of this is due to fixing
regressions from prior weeks. This week also brings an average of 4% improvement
in memory usage across all profiles due to
[#95171](https://github.com/rust-lang/rust/pull/95171) bumping the LLVM/clang
used on x86_64-unknown-linux-gnu to compile C and C++ code linked into rustc.

Triage done by **@simulacrum**.
Revision range: [1c988cfa0b7f4d3bc5b1cb40dc5002f5adbfb9ad..468492c2af3993f18b1fe98052200575c4a2e678](https://perf.rust-lang.org/?start=1c988cfa0b7f4d3bc5b1cb40dc5002f5adbfb9ad&end=468492c2af3993f18b1fe98052200575c4a2e678&absolute=false&stat=instructions%3Au)

**Summary**:
|       | Regressions (primary) | Regressions (secondary) | Improvements (primary) | Improvements (secondary) | All (primary) |
|:-----:|:---------------------:|:-----------------------:|:----------------------:|:------------------------:|:-------------:|
| count | 13                    | 1                       | 78                     | 29                       | 91            |
| mean  | 0.8%                  | 0.3%                    | -0.9%                  | -0.8%                    | -0.7%         |
| max   | 1.5%                  | 0.3%                    | -2.7%                  | -2.1%                    | -2.7%         |


4 Regressions, 3 Improvements, 1 Mixed; 1 of them in rollups
52 artifact comparisons made in total

#### Regressions

Rollup of 8 pull requests [#96428](https://github.com/rust-lang/rust/pull/96428)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3d237ab52920924694f6fc3e47ee8588514bfa70&end=082e4ca49770ebc9cb0ee616f3726a67471be8cb&stat=instructions:u)

|       | Regressions (primary) | Regressions (secondary) | Improvements (primary) | Improvements (secondary) | All (primary) |
|:-----:|:---------------------:|:-----------------------:|:----------------------:|:------------------------:|:-------------:|
| count | 7                     | 2                       | 1                      | 0                        | 8             |
| mean  | 1.3%                  | 0.3%                    | -0.4%                  | N/A                      | 1.1%          |
| max   | 1.8%                  | 0.3%                    | -0.4%                  | N/A                      | 1.8%          |

Looks likely to be related to the new [`impl Default for
AssertUnwindSafe`](https://github.com/rust-lang/rust/pull/95949), though
detailed query pages do not reflect the regressions. Marking the regression as
triaged, because it's unlikely we would want to revert the impl at this point.
However, it's probably the case that impls for public standard library types may
want to avoid being rolled up, as they can influence downstream performance
across both rustdoc and regular compilation.

Enforce Copy bounds for repeat elements while considering lifetimes [#95819](https://github.com/rust-lang/rust/pull/95819)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1c8966e5e9dc099b55206f34af81242d03bdb413&end=a707f401074bc769bab4efb2bfdde7f6c5a4068d&stat=instructions:u)

|       | Regressions (primary) | Regressions (secondary) | Improvements (primary) | Improvements (secondary) | All (primary) |
|:-----:|:---------------------:|:-----------------------:|:----------------------:|:------------------------:|:-------------:|
| count | 2                     | 0                       | 0                      | 0                        | 2             |
| mean  | 0.8%                  | N/A                     | N/A                    | N/A                      | 0.8%          |
| max   | 1.0%                  | N/A                     | N/A                    | N/A                      | 1.0%          |

Incremental-only regressions in a single benchmark. Looks likely to be a
somewhat real change, but not one we can do much about: the extra enforcement
naturally adds dependency edges which require re-computing.

Handle generic bounds in a uniform way in HIR [#93803](https://github.com/rust-lang/rust/pull/93803)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=76d4862fdd131b6f79dc0a31857f888d26bcdb27&end=d201c812d40932509b2b5307c0b20c1ce78d21da&stat=instructions:u)

|       | Regressions (primary) | Regressions (secondary) | Improvements (primary) | Improvements (secondary) | All (primary) |
|:-----:|:---------------------:|:-----------------------:|:----------------------:|:------------------------:|:-------------:|
| count | 11                    | 4                       | 0                      | 0                        | 11            |
| mean  | 0.3%                  | 0.3%                    | N/A                    | N/A                      | 0.3%          |
| max   | 0.5%                  | 0.3%                    | N/A                    | N/A                      | 0.5%          |

A regression primarily to diesel (quite common this week), but relatively slight
and with a relatively good tradeoff to code maintenance. Earlier PR runs had
some slight improvements which were used as a justification for regresions on
benchmarks; this doesn't seem to be the case anymore, so asked for an updated
justification on the regression.

Inline core::panic::Location methods [#96348](https://github.com/rust-lang/rust/pull/96348)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d201c812d40932509b2b5307c0b20c1ce78d21da&end=579d26876ddc5426be32cca1a026b6fd7fc5be24&stat=instructions:u)

|       | Regressions (primary) | Regressions (secondary) | Improvements (primary) | Improvements (secondary) | All (primary) |
|:-----:|:---------------------:|:-----------------------:|:----------------------:|:------------------------:|:-------------:|
| count | 0                     | 11                      | 0                      | 0                        | 0             |
| mean  | N/A                   | 0.5%                    | N/A                    | N/A                      | N/A           |
| max   | N/A                   | 0.8%                    | N/A                    | N/A                      | N/A           |

Secondary-only regressions, most likely due to slightly different codegen in
relatively hot code (e.g., due to increased or decreased register pressure). Not
likely to be an important change.

#### Improvements

- Fix incremental perf regression unsafety checking [#96425](https://github.com/rust-lang/rust/pull/96425)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=082e4ca49770ebc9cb0ee616f3726a67471be8cb&end=a7197189cd0e3a86d1b661d1dceb8bdff021d0b8&stat=instructions:u)
- Move Derefer before Retag [#96549](https://github.com/rust-lang/rust/pull/96549)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=508e0584e384556b7e66f57b62e4feeba864b6da&end=6eda7642bd284d3d2bc6a1d57b68e2ef2b65e062&stat=instructions:u)

#### Mixed

Inline `__iterator_get_unchecked` for some iterator adapters. [#92566](https://github.com/rust-lang/rust/pull/92566)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=bed05e996e37e44b1a3980b84754af621fd3c4ce&end=3d0ac7ea23888438752957eeeb5aa2b73b4fda72&stat=instructions:u)

|       | Regressions (primary) | Regressions (secondary) | Improvements (primary) | Improvements (secondary) | All (primary) |
|:-----:|:---------------------:|:-----------------------:|:----------------------:|:------------------------:|:-------------:|
| count | 1                     | 2                       | 3                      | 1                        | 4             |
| mean  | 0.2%                  | 0.3%                    | -0.4%                  | -0.2%                    | -0.2%         |
| max   | 0.2%                  | 0.3%                    | -0.4%                  | -0.2%                    | -0.4%         |

Update LLVM used for building rustc in CI for x64 [#95171](https://github.com/rust-lang/rust/pull/95171)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b2c2a32870e15af02eb89de434c36535439dbf5a&end=1388b38c52d1ca9fbc80bf42fa007504fb0b1b41)

|       | Regressions (primary) | Regressions (secondary) | Improvements (primary) | Improvements (secondary) | All (primary) |
|:-----:|:---------------------:|:-----------------------:|:----------------------:|:------------------------:|:-------------:|
| count | 0                     | 0                       | 1                      | 0                        | 1             |
| mean  | N/A                   | N/A                     | -0.5%                  | N/A                      | -0.5%         |
| max   | N/A                   | N/A                     | -0.5%                  | N/A                      | -0.5%         |

A solid improvement in memory usage, with a rough average of 4% less memory used
across many check, debug, and opt builds, presumably due to better
optimizations when compiling C and C++ code linked into rustc.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- "Rust beta: "cannot infer type" when compiling `bottom` crate" [rust#96074](https://github.com/rust-lang/rust/issues/96074)
  - [previously discussed](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202022-04-21/near/279688676)
  - @**Josh Triplett** nominated also for T-compiler ([comment](https://github.com/rust-lang/rust/issues/96074#issuecomment-1109953457))
  - which attracted comments from @**Esteban Küber** @**Jack Huey** @**lcnr** 
  - also asked to beta backport a revert (#96489 approved, [comment](https://github.com/rust-lang/rust/issues/96074#issuecomment-1111327562))
  - Can the `I-nominated-compiler` be removed?

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.
