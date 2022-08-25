---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-08-04

## Announcements

- [Types Team: Planning/Deep-Dive meeting](https://www.google.com/calendar/event?eid=M3JsYmdkN2F0cjdtYXE0Z2ljYzM4Nm42NTRfMjAyMjA4MDVUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-08-05T09:00:00-04:00>
- Next Thursday August, 11th release of Rust stable 1.63
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings
- [wg-rls-2.0 weekly sync-up](https://www.google.com/calendar/event?eid=MXJnbzBscDExNHJjNmVsdGhsaW8xcDljMmdfMjAyMjA4MDhUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-08-08T11:00:00-04:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Use RangeInclusive in SpanData instead of lo/hi" [compiler-team#534](https://github.com/rust-lang/compiler-team/issues/534) 
  - "Rewrite compiletest out of tree" [compiler-team#536](https://github.com/rust-lang/compiler-team/issues/536) 
- Old MCPs (not seconded, take a look)
  - "Arbitrary annotations in compiletest" [compiler-team#513](https://github.com/rust-lang/compiler-team/issues/513) (last review activity: 3 months ago)
  - "Add support for the LoongArch architecture" [compiler-team#518](https://github.com/rust-lang/compiler-team/issues/518) (last review activity: about 48 days ago)
  - "Add `#[alias]` attribute to allow symbol aliasing" [compiler-team#526](https://github.com/rust-lang/compiler-team/issues/526) (last review activity: about 13 days ago)
- Pending FCP requests (check your boxes!)
  - "[RFC] Support `.comment` section like GCC/Clang (`!llvm.ident`)" [rust#97550](https://github.com/rust-lang/rust/pull/97550#issuecomment-1191578213) 
  - "Update cc-rs to 1.0.73 for compiler + bootstrap" [rust#99477](https://github.com/rust-lang/rust/pull/99477#issuecomment-1196934940) 
- Things in FCP (make sure you're good with it)
  - "Debuggable Macro Expansions" [compiler-team#386](https://github.com/rust-lang/compiler-team/issues/386) 
  - "Add import_name_type parameter to #[link]" [compiler-team#525](https://github.com/rust-lang/compiler-team/issues/525) 
  - "Re-add most early unstable syntax gates as future-compat lints" [compiler-team#535](https://github.com/rust-lang/compiler-team/issues/535) 
  - "Introduce `core::marker::Tuple` to properly type-check `extern "rust-call"` calls" [compiler-team#537](https://github.com/rust-lang/compiler-team/issues/537) 
  - "Increase the minimum linux-gnu versions" [rust#95026](https://github.com/rust-lang/rust/pull/95026) 
- Accepted MCPs
  - "Removing codegen logic for `nvptx-nvidia-cuda` (32-bit target)" [compiler-team#496](https://github.com/rust-lang/compiler-team/issues/496) 
  - "Introduce `-Z` flag to control how proc-macros are run" [compiler-team#528](https://github.com/rust-lang/compiler-team/issues/528) 
  - "move hir typeck into separate crate" [compiler-team#529](https://github.com/rust-lang/compiler-team/issues/529) 
  - "Create `#[rustc_on_type_error]` mimicking `#[rustc_on_unimplemented]` for E0308 customization" [compiler-team#530](https://github.com/rust-lang/compiler-team/issues/530) 
  - "Split `Predicate` into `Goal` and `Clause`" [compiler-team#531](https://github.com/rust-lang/compiler-team/issues/531) 
  - "Deref is not a projection" [compiler-team#532](https://github.com/rust-lang/compiler-team/issues/532) 
  - "Remove HashStable impl for collection types with unstable iteration order" [compiler-team#533](https://github.com/rust-lang/compiler-team/issues/533) 
- Finalized FCPs (disposition merge)
  - "Stabilize `-Zgcc-ld=lld` as `-Clink-self-contained=linker -Clinker-flavor=gcc-lld`" [compiler-team#510](https://github.com/rust-lang/compiler-team/issues/510) 
  - "Remove migrate borrowck mode" [rust#95565](https://github.com/rust-lang/rust/pull/95565) 
  - "Modify MIR building to drop repeat expressions with length zero" [rust#95953](https://github.com/rust-lang/rust/pull/95953) 
  - "Lang: Stabilize usage of rustc_nonnull_optimization_guaranteed on -1" [rust#97122](https://github.com/rust-lang/rust/issues/97122) 
  - "Remove a back-compat hack on lazy TAIT" [rust#97346](https://github.com/rust-lang/rust/pull/97346) 
  - "Make outlives::{components,verify} agree" [rust#97406](https://github.com/rust-lang/rust/pull/97406) 
  - "make cenum_impl_drop_cast deny-by-default" [rust#97652](https://github.com/rust-lang/rust/pull/97652) 
  - "make const_err show up in future breakage reports" [rust#97743](https://github.com/rust-lang/rust/pull/97743) 
  - "lub: don't bail out due to empty binders" [rust#97867](https://github.com/rust-lang/rust/pull/97867) 
  - "allow unions with mutable references and tuples of allowed types" [rust#97995](https://github.com/rust-lang/rust/pull/97995) 
  - "do not mark interior mutable shared refs as dereferenceable" [rust#98017](https://github.com/rust-lang/rust/pull/98017) 
  - "session: stabilize split debuginfo on linux" [rust#98051](https://github.com/rust-lang/rust/pull/98051)

### WG checkins

- @_*WG-async-foundations* by @**nikomatsakis** and @**tmandry** ([previous checkin](https://hackmd.io/EewyTLZXQpmtfaH633GU-A#WG-checkins)):
  > Checkin text

- @_*WG-traits* (Generic associated types initiative) by @**Jack Huey** ([previous checkin](https://hackmd.io/FkajQEA9RXe9dnnKk6SQqQ#WG-checkins)):
  > No new updates - stabilization PR is FCP-merged for lang+types

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "allow numbers with provenance within CTFE execution" [rust#99965](https://github.com/rust-lang/rust/pull/99965)
  - There are some undocumented UB behaviours or (iiuc) *indeed* documented but not enough well communicated ([comment](https://github.com/rust-lang/rust/issues/99923#issuecomment-1200083285))
  - This beta's backport goal seems to revert some of [rust#99965](https://github.com/rust-lang/rust/issues/99965) and allow time for a discussion on [rust#99923](https://github.com/rust-lang/rust/issues/99923) to happen
- :beta: "Fix backwards-compatibility check for tests with `+whole-archive`" [rust#100068](https://github.com/rust-lang/rust/pull/100068)
  - Fixes [rust#100066](https://github.com/rust-lang/rust/issues/100066)
  - introduced by mistake in 1.61 ([rust#95606](https://github.com/rust-lang/rust/pull/95606)) ([comment](https://github.com/rust-lang/rust/pull/100068#issuecomment-1203951944))
- :stable: "Fix backwards-compatibility check for tests with `+whole-archive`" [rust#100068](https://github.com/rust-lang/rust/pull/100068)
  - stable nomination only in case a 1.63.1 will be planned ([comment](https://github.com/rust-lang/rust/pull/100068#issuecomment-1203951944))

[T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Tracking issue for dyn upcasting coercion" [rust#65991](https://github.com/rust-lang/rust/issues/65991)
  - Unsure about the status, waiting on `T-lang`?

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- "Suggest using an appropriate keyword for `struct` and `enum`" [rust#94996](https://github.com/rust-lang/rust/pull/94996) (last review activity: 4 months ago)
  - cc: @**Esteban Küber**
- "Implement special-cased projection error message for some common traits" [rust#98863](https://github.com/rust-lang/rust/pull/98863) (last review activity: about 31 days ago)
  - rustbot autoassigned @**Esteban Küber** (reroll?)
- "Track `derive` attrs for more accurate suggestion" [rust#98965](https://github.com/rust-lang/rust/pull/98965) (last review activity: about 29 days ago)
  - perhaps waiting on @**Vadim Petrochenkov**

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [57 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [38 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [2 P-critical, 1 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 2 P-high, 2 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 36 P-high, 84 P-medium, 6 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Wrong cast of u16 to usize on aarch64" [rust#97463](https://github.com/rust-lang/rust/issues/97463)
  - PR [rust#97800](https://github.com/rust-lang/rust/pull/97800) from Felix was reviewed and r'ed from Wesley

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "Source of lifetime coercion is not reported starting in 1.63" [rust#99256](https://github.com/rust-lang/rust/issues/99256)
  - Assigned `P-high` ([comment](https://rust-lang.zulipchat.com/#narrow/stream/245100-t-compiler.2Fwg-prioritization.2Falerts/topic/.2399256.20Source.20of.20lifetime.20coercion.20is.20not.20reported.20starting.E2.80.A6/near/291051147)) but that's open to discussion

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "`for<'a> &'a T: 'a` and closures regressed" [rust#98437](https://github.com/rust-lang/rust/issues/98437)
  - @**Jack Huey** adds a comment from `T-types` (see [comment](https://github.com/rust-lang/rust/issues/98437#issuecomment-1200032668))
  - Close this issue? Remove the regression label?

## Performance logs

> [triage logs for 2022-08-02](https://github.com/rust-lang/rustc-perf/blob/master/triage/2022-08-02.md)

A good week! We had one regression from [#99123](https://github.com/rust-lang/rust/pull/99123)
that could use further study, but we had a huge swath of improvements. The downward trend of the
[performance graph summary](https://perf.rust-lang.org/?start=2022-07-04&end=2022-08-03&kind=percentfromfirst&stat=instructions%3Au)
is striking. Perhaps best of all: Only *one* rollup PR impacted performance this week which makes
things so much easier to evaluate! Great work everyone!

Triage done by **@pnkfelix**.
Revision range: [50166d5e..792bc5a0](https://perf.rust-lang.org/?start=50166d5e5e82ca795306824decbe4ffabcc23d3d&end=792bc5a0102d0973d42183a2b267850bb905236f&absolute=false&stat=instructions%3Au)

**Summary**:

|                          | mean  | max    | count |
|:------------------------:|:-----:|:------:|:-----:|
| Regressions (primary)    | 0.4%  | 0.7%   | 5     |
| Regressions (secondary)  | 0.6%  | 1.1%   | 11    |
| Improvements (primary)   | -0.8% | -3.3%  | 140   |
| Improvements (secondary) | -0.9% | -11.0% | 95    |
| All  (primary)           | -0.8% | -3.3%  | 145   |


1 Regressions, 4 Improvements, 4 Mixed; 1 of them in rollups
30 Untriaged Pull Requests
44 artifact comparisons made in total

#### Regressions

`proc_macro`: use crossbeam channels for the `proc_macro` cross-thread bridge [#99123](https://github.com/rust-lang/rust/pull/99123) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8f68c43ca6a6381a4d73f887f112e9fb95769905&end=bd84c73ffe0a54ce2d77c92948a26ffa8fec04a3&stat=instructions:u)

|                          | mean | max  | count |
|:------------------------:|:----:|:----:|:-----:|
| Regressions (primary)    | 0.9% | 1.4% | 11    |
| Regressions (secondary)  | N/A  | N/A  | 0     |
| Improvements (primary)   | N/A  | N/A  | 0     |
| Improvements (secondary) | N/A  | N/A  | 0     |
| All  (primary)           | 0.9% | 1.4% | 11    |

* all 11 regressions are to various profiles+scenarios for html5ever
* @nnethercote and @eddyb are discussing the regression to html5ever on the PR (#99123)
* not marking as triaged, not yet at least; lets try and see if eddyb's suggested mitigation actually helps here

#### Improvements

Rollup of 7 pull requests [#99816](https://github.com/rust-lang/rust/pull/99816) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=da5b546d2e563747b16a16dae83bacf49aa0bf3b&end=2643b16468fda787470340890212591d8bc832b7&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | N/A   | N/A   | 0     |
| Regressions (secondary)  | 1.0%  | 1.0%  | 1     |
| Improvements (primary)   | -0.2% | -0.2% | 1     |
| Improvements (secondary) | -0.5% | -1.6% | 10    |
| All  (primary)           | -0.2% | -0.2% | 1     |

* primary improvement was `hyper check incr-unchanged`; secondaries were `coercions debug full`, and 9 variations on `extern`. Secondary regression was `deep-vector opt incr-patched: println`.

anonymize all bound vars, not just regions [#99730](https://github.com/rust-lang/rust/pull/99730) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3924dac7bb29bc8eb348059c901e8f912399c857&end=211637d0802a1c17d41b414e091e9a8691b26068&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | N/A   | N/A   | 0     |
| Regressions (secondary)  | N/A   | N/A   | 0     |
| Improvements (primary)   | -0.4% | -0.6% | 56    |
| Improvements (secondary) | -0.4% | -0.9% | 36    |
| All  (primary)           | -0.4% | -0.6% | 56    |

* As is, this PR registered compilation time improvements
* However, @simulacrum noted that it was associated with a nearly 2% regression to *bootstrap times*.


Limit symbols exported from proc macros [#99944](https://github.com/rust-lang/rust/pull/99944) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6423ab3a755fed97f75b2361849155d4e996d02f&end=25bb1c13bd472b75ceebee3b8dcf4dcbc431a8be&stat=instructions:u)

|                          | mean  | max    | count |
|:------------------------:|:-----:|:------:|:-----:|
| Regressions (primary)    | N/A   | N/A    | 0     |
| Regressions (secondary)  | N/A   | N/A    | 0     |
| Improvements (primary)   | -0.6% | -2.9%  | 41    |
| Improvements (secondary) | -2.4% | -10.7% | 11    |
| All  (primary)           | -0.6% | -2.9%  | 41    |

* wow, this was a big win! serde_derive incr-unchanged builds up to 3% faster; ripgrep check is up to 1.75% faster, hyper and webrender check 1% faster.



Lexer improvements [#99884](https://github.com/rust-lang/rust/pull/99884) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1f5d8d49eb6111931091f700d07518cd2b80bc18&end=dcb444af0a417766dde9b7b8f537fa1ba1568daf&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | N/A   | N/A   | 0     |
| Regressions (secondary)  | N/A   | N/A   | 0     |
| Improvements (primary)   | -0.3% | -0.6% | 42    |
| Improvements (secondary) | -0.5% | -1.2% | 48    |
| All  (primary)           | -0.3% | -0.6% | 42    |

* This was a very *broad* win, where a huge number of benchmarks all improved by a relatively small amount. 
* I'm impressed by the [inventiveness shown during PR review](https://github.com/rust-lang/rust/pull/99884#pullrequestreview-1055325175).

#### Mixed

Remove remaining uses of box syntax from librustdoc [#99577](https://github.com/rust-lang/rust/pull/99577) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5dda74a48cd50de10539478c1e0b6699bfdab665&end=3924dac7bb29bc8eb348059c901e8f912399c857&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | N/A   | N/A   | 0     |
| Regressions (secondary)  | 0.3%  | 0.3%  | 4     |
| Improvements (primary)   | -0.3% | -0.3% | 2     |
| Improvements (secondary) | N/A   | N/A   | 0     |
| All  (primary)           | -0.3% | -0.3% | 2     |

* as you might expect, the limited number of performance changes here were to doc benchmarks (specifically serde and libc doc).

Remove `TreeAndSpacing`. [#99887](https://github.com/rust-lang/rust/pull/99887) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c907b6f7e0f89c3c4146b585961d2ddcf173584b&end=1202bbaf48a0a919a2e0cfd8b7dce97e8fc3030d&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | 0.3%  | 0.3%  | 1     |
| Regressions (secondary)  | 0.2%  | 0.2%  | 1     |
| Improvements (primary)   | -0.3% | -0.4% | 5     |
| Improvements (secondary) | -0.4% | -0.9% | 16    |
| All  (primary)           | -0.2% | -0.4% | 6     |

* already triaged by nnethercote: "There's a single regressing result and 25 improved results. The changes are all very small. This is fine"

Thin `AssocItem` [#95884](https://github.com/rust-lang/rust/pull/95884) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=fe3342816a282949f014caa05ea2e669ff9d3d3c&end=21de280cccb4eb02ead6bf0af40e2355a9136d6f&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | 0.3%  | 0.4%  | 16    |
| Regressions (secondary)  | 0.5%  | 0.6%  | 9     |
| Improvements (primary)   | -0.3% | -0.4% | 7     |
| Improvements (secondary) | -0.4% | -0.5% | 8     |
| All  (primary)           | 0.1%  | 0.4%  | 23    |

* already triaged by nnethercote: "This looks perf-neutral, with the improvements roughly the same size as the regressions."

Remove `fn backtrace` and replace with usages of provider API [#99431](https://github.com/rust-lang/rust/pull/99431) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9d5cd21a5d4d5325b1f1c9903d000d19e3703e2a&end=9538d2d0f1c708affa36ef8917729efec2e5e0ed&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | N/A   | N/A   | 0     |
| Regressions (secondary)  | 1.5%  | 1.5%  | 2     |
| Improvements (primary)   | -0.9% | -1.4% | 2     |
| Improvements (secondary) | N/A   | N/A   | 0     |
| All  (primary)           | -0.9% | -1.4% | 2     |

* the improvements are to building primary benchmark cargo opt in incr-patch: println and incr-full, by -1.38% and -0.42% respectively . The regression was to the externs incr-full in debug and opt profiles, both by 1.52%.
* this is entirely acceptable (and wasn't marked as a performance regression by the bot in the first place)

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- "compiler-builtins CI fails on powerpc64" [rust#99853](https://github.com/rust-lang/rust/issues/99853)
  - Seems that - for this Tier 2 target - tests are slowly degrading 
  - Opened a [topic on Zulip](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/Tests.20failing.20for.20target.20powerpc64le-unknown-linux-gnu) to get more eyeballs
  - cc @**Nikita Popov** 

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.

## Next week's WG checkins

- @_*WG-diagnostics* by @**Esteban Küber** and @**oli**
- @_*WG-rustc-dev-guide* by @**Santiago Pastorino** and @**Yuki Okushi|217081**
