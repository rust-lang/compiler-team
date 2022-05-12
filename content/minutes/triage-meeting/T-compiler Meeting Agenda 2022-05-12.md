---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-05-12

## Announcements

- Next week: release of Rust stable 1.61
- Tomorrow <time:2022-05-13T13:00:00+02:00> Types Team: Chalkification [calendar link](https://calendar.google.com/calendar/event?eid=M3JsYmdkN2F0cjdtYXE0Z2ljYzM4Nm42NTRfMjAyMjA1MTNUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn&ctz=GMT+02:00), [issue](https://github.com/rust-lang/wg-traits/issues/42)
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Replace generic parameter list with separate lists per param kind" [compiler-team#515](https://github.com/rust-lang/compiler-team/issues/515) 
- Old MCPs (not seconded, take a look)
  - "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441) (last review activity: 10 months ago)
  - "Make `-Z binary-dep-depinfo` the default behavior" [compiler-team#464](https://github.com/rust-lang/compiler-team/issues/464) (last review activity: 7 months ago)
  - "Tier 3 target proposal: riscv64gc-linux-android (Android target for `riscv64gc`)" [compiler-team#472](https://github.com/rust-lang/compiler-team/issues/472) (last review activity: 5 months ago)
  - "`-Dwarnings` to cover all warnings" [compiler-team#473](https://github.com/rust-lang/compiler-team/issues/473) (last review activity: 5 months ago)
  - "Build-time execution sandboxing" [compiler-team#475](https://github.com/rust-lang/compiler-team/issues/475) (last review activity: 4 months ago)
  - "Dealing with type/const ambiguities" [compiler-team#480](https://github.com/rust-lang/compiler-team/issues/480) (last review activity: 3 months ago)
  - "Removing codegen logic for `nvptx-nvidia-cuda` (32-bit target)" [compiler-team#496](https://github.com/rust-lang/compiler-team/issues/496) (last review activity: about 54 days ago)
  - "Change compiletest declarations parsing" [compiler-team#512](https://github.com/rust-lang/compiler-team/issues/512) (last review activity: about 5 days ago)
  - "Arbitrary annotations in compiletest" [compiler-team#513](https://github.com/rust-lang/compiler-team/issues/513) (last review activity: about 5 days ago)
- Pending FCP requests (check your boxes!)
  - "Stabilize `-Zgcc-ld=lld` as `-Clink-self-contained=linker -Clinker-flavor=gcc-lld`" [compiler-team#510](https://github.com/rust-lang/compiler-team/issues/510#issuecomment-1119675764) 
  - "Tracking issue for Consistent no-prelude attribute (RFC 501)" [rust#20561](https://github.com/rust-lang/rust/issues/20561#issuecomment-1059258740) 
  - "Tracking Issue for `-Z terminal-width`" [rust#84673](https://github.com/rust-lang/rust/issues/84673#issuecomment-1087141663) 
  - "Increase the minimum linux-gnu versions" [rust#95026](https://github.com/rust-lang/rust/pull/95026#issuecomment-1077855006) 
  - "Stabilize the `bundle` native library modifier" [rust#95818](https://github.com/rust-lang/rust/pull/95818#issuecomment-1120471247) 
  - "Remove label/lifetime shadowing warnings" [rust#96296](https://github.com/rust-lang/rust/pull/96296#issuecomment-1114024288)
- Things in FCP (make sure you're good with it)
  - "Add attribute to run specific tests in an isolated process" [compiler-team#508](https://github.com/rust-lang/compiler-team/issues/508) 
  - "Add an `EarlyBinder` type" [compiler-team#514](https://github.com/rust-lang/compiler-team/issues/514) 
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - No new finished FCP (disposition merge) this time.

### WG checkins

- @_*WG-rls2.0* by @**matklad** ([previous checkin](https://hackmd.io/Fv3TSalbT_CYVUEonihWzg#WG-checkins))
> Checkin text

- @_*WG-self-profile* by @**mw** and @**Wesley Wiser** ([previous checkin](https://hackmd.io/FdqBRFiPTmqBl3Eq8sOjOQ#WG-checkins))
> Checkin text

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Forbid lifetime bounds in nested opaque types in binders" [#96970](https://github.com/rust-lang/rust/pull/96970)
    - PR pushed by @**oli** to avoid the regression in P-critical [rust#96194](https://github.com/rust-lang/rust/issues/96194) 

[T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Stabilize the `bundle` native library modifier" [rust#95818](https://github.com/rust-lang/rust/pull/95818)
  - @**Vadim Petrochenkov**  added `I-compiler-nominated` (needs discussion or just team ticking their box?)

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- "Mir-Opt for copying enums with large discrepancies" [rust#85158](https://github.com/rust-lang/rust/pull/85158) (last review activity: about 47 days ago)
  - pr author asks [for comment](https://github.com/rust-lang/rust/pull/85158#issuecomment-1119222751) cc @**Wesley Wiser** 
- "Only tag data if debug assertions are enabled." [rust#95850](https://github.com/rust-lang/rust/pull/95850) (last review activity: about 31 days ago)
  - review assigned to `@ghost` (self review cc: @**cjgillot**?) 
- "Warn about dead tuple struct fields" [rust#95977](https://github.com/rust-lang/rust/pull/95977) (last review activity: about 28 days ago)
  - previous review from @**eddyb**
- "Implement #[deprecated_safe]" [rust#95025](https://github.com/rust-lang/rust/pull/95025) (last review activity: about 21 days ago)
  - cc @**eddyb** and @**Esteban Küber** ?
- "Initial work on Miri permissive-exposed-provenance" [rust#95826](https://github.com/rust-lang/rust/pull/95826) (last review activity: about 22 days ago)
  - previous review from @**RalfJ** 

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [60 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [46 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 1 P-high, 3 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 40 P-high, 82 P-medium, 10 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "nested RPIT and HRTB: unclear semantics and future incompatibility" [rust#96194](https://github.com/rust-lang/rust/issues/96194)
  - @**aliemjay** reports an accidental stabilization
  - [Thread on irlo](https://internals.rust-lang.org/t/semantics-of-nested-impl-trait-hrtbs/16492/5)
  - Wg-prio [Zulip topic](https://rust-lang.zulipchat.com/#narrow/stream/245100-t-compiler.2Fwg-prioritization.2Falerts/topic/.2396194.20nested.20RPIT.20and.20HRTB.3A.20unclear.20semantics.20and.20future.20i.E2.80.A6) with thoughts from @**Jack Huey** and @**cjgillot** (esp. [comment](https://rust-lang.zulipchat.com/#narrow/stream/245100-t-compiler.2Fwg-prioritization.2Falerts/topic/.2396194.20nested.20RPIT.20and.20HRTB.3A.20unclear.20semantics.20and.20future.20i.E2.80.A6/near/282029705)) 
  - `T-lang` nominated for discussion
  - (authored by @**oli**): a "small" PR that avoids the issue is up and beta nominated: [rust#96970](https://github.com/rust-lang/rust/pull/96970)

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs](https://github.com/rust-lang/rustc-perf/blob/master/triage/2022-05-10.md)

A good week: Several performance improvements, many around macro expansion. Only
one regression of note, and that PR author opened an issue to follow up on it.

Triage done by **@pnkfelix**.
Revision range: [468492c2..c51871c4](https://perf.rust-lang.org/?start=468492c2af3993f18b1fe98052200575c4a2e678&end=c51871c469f7ed3b35ae25d7e6e77bc73fbdd0e3&absolute=false&stat=instructions%3Au)

**Summary**:

|       | Regressions (primary) | Regressions (secondary) | Improvements  (primary) | Improvements  (secondary) | All   (primary) |
|:-----:|:---------------------:|:-----------------------:|:-----------------------:|:-------------------------:|:---------------:|
| count | 11                    | 37                      | 117                     | 65                        | 128             |
| mean  | 0.7%                  | 0.7%                    | -1.2%                   | -1.6%                     | -1.1%           |
| max   | 1.5%                  | 1.9%                    | -6.5%                   | -5.2%                     | -6.5%           |


2 Regressions, 4 Improvements, 1 Mixed; 1 of them in rollups
59 artifact comparisons made in total

#### Regressions

Add a new Rust attribute to support embedding debugger visualizers [#91779](https://github.com/rust-lang/rust/pull/91779) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=322a14919d6cc67af45477b623857b30fae63f9d&end=a7d6768e3b60209d4195c822ea3247482909b604&stat=instructions:u)

|       | Regressions (primary) | Regressions (secondary) | Improvements  (primary) | Improvements  (secondary) | All   (primary) |
|:-----:|:---------------------:|:-----------------------:|:-----------------------:|:-------------------------:|:---------------:|
| count | 88                    | 52                      | 0                       | 0                         | 88              |
| mean  | 0.4%                  | 0.5%                    | N/A                     | N/A                       | 0.4%            |
| max   | 0.9%                  | 1.0%                    | N/A                     | N/A                       | 0.9%            |

* Original PR author opened issue #96786 to investigate these regressions, and marked as triaged.
* (PR #96795 claims to resolve some of the regressions, but rust-timer didn't see any significant change from that.)

Rollup of 6 pull requests [#96877](https://github.com/rust-lang/rust/pull/96877) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0e345b76a5550d82caff5540649ee0ba6e3b4f3f&end=0dd7e10282aaa7a3e1f5660f8bb043ee4ea07355&stat=instructions:u)

|       | Regressions (primary) | Regressions (secondary) | Improvements  (primary) | Improvements  (secondary) | All   (primary) |
|:-----:|:---------------------:|:-----------------------:|:-----------------------:|:-------------------------:|:---------------:|
| count | 18                    | 0                       | 0                       | 0                         | 18              |
| mean  | 0.4%                  | N/A                     | N/A                     | N/A                       | 0.4%            |
| max   | 0.7%                  | N/A                     | N/A                     | N/A                       | 0.7%            |

* inspected graphs for the benchmarks at top of list of regressions: webrender-2022, regex-1.5.5, clap-3.1.6, cargo-0.60.0. It seems like any long-term effect here is quite minor, and
  the fact that *this* PR was tagged as significant is due to a blip in the measurements.
* marking as triaged.

#### Improvements

Speed up `Token::{ident,lifetime}` [#96683](https://github.com/rust-lang/rust/pull/96683) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=364bf39e3179e148742466810d0cb9c8ec1c343a&end=343889b7234bf786e2bc673029467052f22fca08&stat=instructions:u)

|       | Regressions (primary) | Regressions (secondary) | Improvements  (primary) | Improvements  (secondary) | All   (primary) |
|:-----:|:---------------------:|:-----------------------:|:-----------------------:|:-------------------------:|:---------------:|
| count | 0                     | 0                       | 151                     | 82                        | 151             |
| mean  | N/A                   | N/A                     | -0.9%                   | -0.7%                     | -0.9%           |
| max   | N/A                   | N/A                     | -6.9%                   | -4.0%                     | -6.9%           |


Overhaul `MacArgs` [#96546](https://github.com/rust-lang/rust/pull/96546) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=343889b7234bf786e2bc673029467052f22fca08&end=4c60a0ea5b2385d7400df9db1ad04e96f2a4c154&stat=instructions:u)

|       | Regressions (primary) | Regressions (secondary) | Improvements  (primary) | Improvements  (secondary) | All   (primary) |
|:-----:|:---------------------:|:-----------------------:|:-----------------------:|:-------------------------:|:---------------:|
| count | 1                     | 1                       | 16                      | 9                         | 17              |
| mean  | 0.3%                  | 0.2%                    | -0.8%                   | -0.2%                     | -0.8%           |
| max   | 0.3%                  | 0.2%                    | -1.4%                   | -0.3%                     | -1.4%           |


Remove ItemLikeVisitor impls from rustc_typeck [#96531](https://github.com/rust-lang/rust/pull/96531) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4799baa70d0ff1780ee6dffb743d62c79235ace9&end=f6e5570460b2bb925021dc667ead2a9834ea88cb&stat=instructions:u)

|       | Regressions (primary) | Regressions (secondary) | Improvements  (primary) | Improvements  (secondary) | All   (primary) |
|:-----:|:---------------------:|:-----------------------:|:-----------------------:|:-------------------------:|:---------------:|
| count | 0                     | 0                       | 9                       | 9                         | 9               |
| mean  | N/A                   | N/A                     | -0.3%                   | -0.4%                     | -0.3%           |
| max   | N/A                   | N/A                     | -0.4%                   | -0.6%                     | -0.4%           |


Optimize switch sources representation and usage [#96838](https://github.com/rust-lang/rust/pull/96838) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=88860d5474a32f507dde8fba8df35fd2064f11b9&end=cb390735b03aa44229ff2858be8fedbd7b0ce7cb&stat=instructions:u)

|       | Regressions (primary) | Regressions (secondary) | Improvements  (primary) | Improvements  (secondary) | All   (primary) |
|:-----:|:---------------------:|:-----------------------:|:-----------------------:|:-------------------------:|:---------------:|
| count | 0                     | 0                       | 4                       | 7                         | 4               |
| mean  | N/A                   | N/A                     | -0.7%                   | -2.0%                     | -0.7%           |
| max   | N/A                   | N/A                     | -1.0%                   | -2.6%                     | -1.0%           |


#### Mixed

store `codegen_fn_attrs` in crate metadata [#96473](https://github.com/rust-lang/rust/pull/96473) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0dd7e10282aaa7a3e1f5660f8bb043ee4ea07355&end=88860d5474a32f507dde8fba8df35fd2064f11b9&stat=instructions:u)

|       | Regressions (primary) | Regressions (secondary) | Improvements  (primary) | Improvements  (secondary) | All   (primary) |
|:-----:|:---------------------:|:-----------------------:|:-----------------------:|:-------------------------:|:---------------:|
| count | 6                     | 28                      | 89                      | 39                        | 95              |
| mean  | 0.3%                  | 0.6%                    | -0.5%                   | -1.6%                     | -0.4%           |
| max   | 0.6%                  | 2.2%                    | -1.4%                   | -4.8%                     | -1.4%           |

* the regressions here were [anticipated](https://github.com/rust-lang/rust/pull/96473#issuecomment-1117448044) during development. The only regressions that arose were from [doc builds](https://github.com/rust-lang/rust/pull/96473#issuecomment-1121292857) (which I confirmed via inspection of the 6 regressing cases).

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- "Stabilize the `bundle` native library modifier" [rust#95818](https://github.com/rust-lang/rust/pull/95818)
  - @**Vadim Petrochenkov** added label `I-compiler-nominated`
  - PR closes [rust#37403](https://github.com/rust-lang/rust/issues/37403)
  - Stabilization report at [comment](https://github.com/rust-lang/rust/pull/95818#issuecomment-1120470945)

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.

## Next week's WG checkins

- @_*WG-async-foundations* by @**nikomatsakis** and @**tmandry** ([previous checkin](https://hackmd.io/EewyTLZXQpmtfaH633GU-A#WG-checkins))
- @_*WG-traits* (generic associated types) by @**Jack Huey** ([previous checkin](https://hackmd.io/EewyTLZXQpmtfaH633GU-A#WG-checkins))
