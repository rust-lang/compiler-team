---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-07-14

## Announcements

- [Types Team: Backlog Bonanza](https://www.google.com/calendar/event?eid=M3JsYmdkN2F0cjdtYXE0Z2ljYzM4Nm42NTRfMjAyMjA3MTVUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-07-15T09:00:00-04:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings
- [wg-debugging triage meeting](https://www.google.com/calendar/event?eid=NjAwbDEwNzNmMzVsNDZucnFsdDdwbGJrdDRfMjAyMjA3MThUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-07-18T10:00:00-04:00>
- [wg-rls-2.0 steering meeting](https://www.google.com/calendar/event?eid=N2NxOWxzYWYxb3NicWNzbGsxYzdxcG9ydTJfMjAyMjA3MThUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-07-18T11:00:00-04:00>
- [Async WG triage meeting](https://www.google.com/calendar/event?eid=cXZ1NGZncDF1dXA1NnVnMnA1M2Mzb2lvdWVfMjAyMjA3MThUMTUzMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-07-18T11:30:00-04:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Add import_name_type parameter to #[link]" [compiler-team#525](https://github.com/rust-lang/compiler-team/issues/525) 
  - "Add `#[alias]` attribute to allow symbol aliasing" [compiler-team#526](https://github.com/rust-lang/compiler-team/issues/526) 
- Old MCPs (not seconded, take a look)
  - "Arbitrary annotations in compiletest" [compiler-team#513](https://github.com/rust-lang/compiler-team/issues/513) (last review activity: 2 months ago)
  - "Add support for the LoongArch architecture" [compiler-team#518](https://github.com/rust-lang/compiler-team/issues/518) (last review activity: about 27 days ago)
- Pending FCP requests (check your boxes!)
  - "Stabilize `-Zgcc-ld=lld` as `-Clink-self-contained=linker -Clinker-flavor=gcc-lld`" [compiler-team#510](https://github.com/rust-lang/compiler-team/issues/510#issuecomment-1119675764) 
  - "Increase the minimum linux-gnu versions" [rust#95026](https://github.com/rust-lang/rust/pull/95026#issuecomment-1077855006)
    - also mentioned in `S-waiting-on-team` section
  - "session: stabilize split debuginfo on linux" [rust#98051](https://github.com/rust-lang/rust/pull/98051#issuecomment-1153776703)
- Things in FCP (make sure you're good with it)
  - "Removing codegen logic for `nvptx-nvidia-cuda` (32-bit target)" [compiler-team#496](https://github.com/rust-lang/compiler-team/issues/496)
  - "`-Dwarnings` to cover all warnings" [compiler-team#473](https://github.com/rust-lang/compiler-team/issues/473) 
- Accepted MCPs
  - "`-Dwarnings` to cover all warnings" [compiler-team#473](https://github.com/rust-lang/compiler-team/issues/473) 
  - "Track licensing metadata with REUSE" [compiler-team#519](https://github.com/rust-lang/compiler-team/issues/519) 
  - "Revise how MIR variants are distinguished" [compiler-team#522](https://github.com/rust-lang/compiler-team/issues/522)
- Finalized FCPs (disposition merge)
  - "Remove migrate borrowck mode" [rust#95565](https://github.com/rust-lang/rust/pull/95565) 
  - "Modify MIR building to drop repeat expressions with length zero" [rust#95953](https://github.com/rust-lang/rust/pull/95953) 
  - "Lang: Stabilize usage of rustc_nonnull_optimization_guaranteed on -1" [rust#97122](https://github.com/rust-lang/rust/issues/97122) 
  - "Remove a back-compat hack on lazy TAIT" [rust#97346](https://github.com/rust-lang/rust/pull/97346) 
  - "Make outlives::{components,verify} agree" [rust#97406](https://github.com/rust-lang/rust/pull/97406) 
  - "make cenum_impl_drop_cast deny-by-default" [rust#97652](https://github.com/rust-lang/rust/pull/97652) 
  - "make const_err show up in future breakage reports" [rust#97743](https://github.com/rust-lang/rust/pull/97743) 
  - "lub: don't bail out due to empty binders" [rust#97867](https://github.com/rust-lang/rust/pull/97867) 
  - "allow unions with mutable references and tuples of allowed types" [rust#97995](https://github.com/rust-lang/rust/pull/97995)

### WG checkins

- @_*WG-llvm* by @**nagisa** and @**Nikita Popov** ([previous checkin](https://hackmd.io/team/rust-compiler-team?nav=overview)):
  > There have been some fixes for miscompiles and assertion failures. I think there's also been quite some uptick in discussions about interaction between rust and LLVM semantics recently, in many different areas (like dereferenceability, provenance, GEP inbounds, noundef, poison propagation, etc...) Usually those don't really go anywhere in the end though :) The LLVM 15 release is coming up, with branching at the end of the month. Expect an update around that time.

- @_*WG-traits* (Types team) by @**nikomatsakis** and @**Jack Huey** ([previous checkin](https://hackmd.io/team/rust-compiler-team?nav=overview)):
  > - Overall, things seem to be going well. I think there's a general feeling among the (types) team that creating the team was a good decision. We're collectively working through backlogged features (TAITs, GATs, NLL), making forward progress on defining the formal trait and type semantics (a-mir-formality), and making progress on actually changing rustc to fit that (through librarification and general cleanups).
  > - We had a planning meeting at the beginning of the month where we posted updates on the various initiatives if people are interested: https://rust-lang.zulipchat.com/#narrow/stream/326132-t-types.2Fmeetings/topic/meeting.202022-07-01
  > - GATs just got `fcp merge`d: https://github.com/rust-lang/rust/pull/96709#issuecomment-1181931456

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "promote placeholder bounds to 'static obligations" [rust#98713](https://github.com/rust-lang/rust/pull/98713)
  - fixes [rust#98693](https://github.com/rust-lang/rust/issues/98693), an unsound hole
  - PR from @**nikomatsakis** 
  - nominated for backport by @**Jack Huey**
- :beta: "Fix sized check ICE in asm check" [rust#99124](https://github.com/rust-lang/rust/pull/99124)
  - fixes [rust#99122](https://github.com/rust-lang/rust/issues/99122), a `P-medium` ICE
  - PR from @**Michael Goulet (compiler-errors)** 
  - nominated for backport by @**oli**
- :stable: "Return a FxIndexSet in is_late_bound query." [rust#99219](https://github.com/rust-lang/rust/pull/99219)
  - Fixes a `P-critical` unsoundness [rust#98890](https://github.com/rust-lang/rust/issues/98890)
  - @**cuviper** points out: this is a stable 1.62.0 backport of [rust#98959](https://github.com/rust-lang/rust/issues/98959)

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Increase the minimum linux-gnu versions" [rust#95026](https://github.com/rust-lang/rust/pull/95026)
  - what's the current status?
  - One registered concern (announcement in a rust-lang blog post)
  - ([comment](https://github.com/rust-lang/rust/pull/95026#issuecomment-1131972811)): concerns raised for very old systems and IoTs 
  - ([comment](https://github.com/rust-lang/rust/pull/95026#issuecomment-1132213595)): at some point we need to keep up with LLVM evolution
  - ([comment](https://github.com/rust-lang/rust/pull/95026#issuecomment-1140452497)): set a `Minimum Supported Linux Kernel`, so vendors can pin that version?
  - `T-libs` agreess to move forward ([comment](https://github.com/rust-lang/rust/pull/95026#issuecomment-1144222893))

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- "make member constraints pick static if no upper bounds" [rust#89056](https://github.com/rust-lang/rust/pull/89056) (last review activity: 9 months ago)
  - cc assigned reviewer @**lqd** 
- "Only compile #[used] as llvm.compiler.used for ELF targets" [rust#93718](https://github.com/rust-lang/rust/pull/93718) (last review activity: 2 months ago)
  - cc assigned reviewer @**pnkfelix**
- "Allow `impl Fn() -> impl Trait` in return position" [rust#93582](https://github.com/rust-lang/rust/pull/93582) (last review activity: 2 months ago)
  - cc assigned reviewer @**nikomatsakis** 
- "More proc macro tweaks" [rust#97445](https://github.com/rust-lang/rust/pull/97445) (last review activity: about 47 days ago)
  - highfive bot auto assigned @**eddyb**, reroll dice? 

## Issues of Note

### Short Summary

- [5 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [2 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [60 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [42 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 0 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [2 P-critical, 1 P-high, 3 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [2 P-critical, 41 P-high, 84 P-medium, 7 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Wrong cast of u16 to usize on aarch64" [rust#97463](https://github.com/rust-lang/rust/issues/97463)
  - PR [rust#97800](https://github.com/rust-lang/rust/pull/97800) is being worked by Felix
  - perhaps latest status in this [comment](https://github.com/rust-lang/rust/pull/97800#issuecomment-1176968020)?
- "`for<'a> &'a T: 'a` and closures regressed" [rust#98437](https://github.com/rust-lang/rust/issues/98437)
  - discussed previously ([notes](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bplanning.20meeting.5D.202022-07-01/near/288178369))
  - not assigned
- "Wrong optimization" [rust#98568](https://github.com/rust-lang/rust/issues/98568)
  - fixed by [rust#98567](https://github.com/rust-lang/rust/pull/98567), beta backport approved
- "Incremental compilation bug with `async fn` method capturing multiple lifetimes" [rust#98890](https://github.com/rust-lang/rust/issues/98890) 
  - fixed by [rust#98959](https://github.com/rust-lang/rust/pull/98959) authored by @**cjgillot** 
- "ICE with probably recursive opaque types and closures" [rust#99073](https://github.com/rust-lang/rust/issues/99073)
  - unsoundness hole, fixed by [rust#99079](https://github.com/rust-lang/rust/pull/99079)

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2022-07-12](https://github.com/rust-lang/rustc-perf/blob/337853c329f64f0b17f7c675616e46f0e38fe9dc/triage/2022-07-12.md)

A fairly noisy week (many entries below dropped and untagged as regressions),
largely driven by tt-muncher and html5ever. Our sensitivity assessment currently
takes roughly a week since new noise starts to learn the noise level, so it can
take some time for oscillations to stop reporting somewhat spurious results.

Otherwise, this week had a number of solid improvements, and was overall
positive, with improvements across many benchmarks.

Triage done by **@simulacrum**.
Revision range: [880646ca9c6dc21e04efe2f1940369a45b71ff2d..b3f4c3119957aa0a250cab08ab586b7a9a680ef1](https://perf.rust-lang.org/?start=880646ca9c6dc21e04efe2f1940369a45b71ff2d&end=b3f4c3119957aa0a250cab08ab586b7a9a680ef1&absolute=false&stat=instructions%3Au)

**Summary**:

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | 0.7%  | 1.4%  | 19    |
| Regressions (secondary)  | 2.1%  | 5.3%  | 13    |
| Improvements (primary)   | -1.1% | -2.5% | 153   |
| Improvements (secondary) | -2.1% | -9.9% | 121   |
| All  (primary)           | -0.9% | -2.5% | 172   |


3 Regressions, 6 Improvements, 3 Mixed; 3 of them in rollups
53 artifact comparisons made in total

#### Regressions

Make lowering a query [#95573](https://github.com/rust-lang/rust/pull/95573)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3e51277fe638dc0c8ceb6d1d3acc5aa247277c29&end=0f573a0c5474ad65bc9f0b0fd3a94d1b06dcfdfa&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | 0.5%  | 1.1%  | 76    |
| Regressions (secondary)  | 0.8%  | 2.4%  | 57    |
| Improvements (primary)   | N/A   | N/A   | 0     |
| Improvements (secondary) | -0.2% | -0.2% | 1     |
| All  (primary)           | 0.5%  | 1.1%  | 76    |

These results may partially be noise, and are overall limited enough in impact
that further investigation is not warranted at this time. Marked as triaged.

Rollup of 6 pull requests [#99047](https://github.com/rust-lang/rust/pull/99047)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=eba361ae36be41e42fb8fdf138455307e0ad407c&end=0f97e02bdc7a53176aa96a53ff8b533947d7649c&stat=instructions:u)

|                          | mean | max  | count |
|:------------------------:|:----:|:----:|:-----:|
| Regressions (primary)    | N/A  | N/A  | 0     |
| Regressions (secondary)  | 1.9% | 4.0% | 13    |
| Improvements (primary)   | N/A  | N/A  | 0     |
| Improvements (secondary) | N/A  | N/A  | 0     |
| All  (primary)           | N/A  | N/A  | 0     |

Looks to be a genuine regression, far exceeding the noise bound for the
[deeply-nested-multi benchmark][noise-graph-99047]. (This is the 4% spike on
that graph). Maybe caused by #98795, needs a little further investigation.

[noise-graph-99047]: https://perf.rust-lang.org/index.html?start=2022-06-08&end=2022-07-12&benchmark=deeply-nested-multi&profile=check&scenario=full&stat=instructions:u&kind=percentrelative

Enforce that layout size fits in isize in Layout [#95295](https://github.com/rust-lang/rust/pull/95295)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=95e77648e466c780a9adce2fa3d3eb5e423dc04e&end=4ec97d991b1bd86dc89fee761d79ac8e85239a08&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | 0.5%  | 1.5%  | 106   |
| Regressions (secondary)  | 0.6%  | 1.7%  | 39    |
| Improvements (primary)   | N/A   | N/A   | 0     |
| Improvements (secondary) | -1.3% | -1.5% | 6     |
| All  (primary)           | 0.5%  | 1.5%  | 106   |

As noted on the PR (thanks for triaging perf regressions!), this is a limited
in magnitude and a justified regression for a soundness fix. See
this [comment](https://github.com/rust-lang/rust/pull/95295#issuecomment-1179744091) for details.

#### Improvements

continue nll transition by removing stuff [#98584](https://github.com/rust-lang/rust/pull/98584)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=54f79babae06d3772c067f696e5b12db822ae25f&end=efb171e2350de2bec6dd1f035b99bc00535c1c15&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | N/A   | N/A   | 0     |
| Regressions (secondary)  | N/A   | N/A   | 0     |
| Improvements (primary)   | -1.0% | -2.3% | 66    |
| Improvements (secondary) | -1.2% | -3.6% | 63    |
| All  (primary)           | -1.0% | -2.3% | 66    |


interpret: remove support for unsized_locals [#98831](https://github.com/rust-lang/rust/pull/98831)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7665c3543079ebc3710b676d0fd6951bedfd4b29&end=8824d131619e58a38bde8bcf56401629b91a204a&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | N/A   | N/A   | 0     |
| Regressions (secondary)  | N/A   | N/A   | 0     |
| Improvements (primary)   | N/A   | N/A   | 0     |
| Improvements (secondary) | -0.6% | -0.8% | 11    |
| All  (primary)           | N/A   | N/A   | 0     |

Use a bitset instead of a hash map in HIR ID validator [#98841](https://github.com/rust-lang/rust/pull/98841)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e78e747f53c36e53ff99c94438d2efa26830fc4b&end=c461f7a16e8372216dbf7a54ab86ee958bec83b5&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | N/A   | N/A   | 0     |
| Regressions (secondary)  | N/A   | N/A   | 0     |
| Improvements (primary)   | -0.8% | -1.7% | 123   |
| Improvements (secondary) | -0.8% | -2.0% | 82    |
| All  (primary)           | -0.8% | -1.7% | 123   |

don't use `commit_if_ok` during `higher_ranked_sub` [#99056](https://github.com/rust-lang/rust/pull/99056)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f893495e3da91dc319d37861b803eed9d6c8c7c7&end=6dba4ed215e7a60f0a2a19c04f3f73691f89c509&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | N/A   | N/A   | 0     |
| Regressions (secondary)  | N/A   | N/A   | 0     |
| Improvements (primary)   | -0.7% | -0.7% | 7     |
| Improvements (secondary) | -0.8% | -0.9% | 6     |
| All  (primary)           | -0.7% | -0.7% | 7     |

More derive output improvements [#98758](https://github.com/rust-lang/rust/pull/98758)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1dcff2d5077244f49687ea25070958f23bd9edc6&end=fbdb07f4e7f4666085aec4b1ed2fd05817dc42cf&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | 0.6%  | 0.8%  | 2     |
| Regressions (secondary)  | 1.6%  | 2.3%  | 10    |
| Improvements (primary)   | -0.4% | -0.6% | 55    |
| Improvements (secondary) | -2.1% | -8.0% | 34    |
| All  (primary)           | -0.4% | 0.8%  | 57    |

Regressions appear primarily in tt-muncher and are spurious noise; cargo and
image also show slight regressions but much smaller in comparative magnitude.
Overall a small, but solid improvement.

Miscellaneous inlining improvements [#99028](https://github.com/rust-lang/rust/pull/99028)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=db78ab70a88a0a5e89031d7ee4eccec835dcdbde&end=86b8dd5389cd9d545418a60902222a4ba859365f&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | N/A   | N/A   | 0     |
| Regressions (secondary)  | 0.7%  | 1.4%  | 13    |
| Improvements (primary)   | -0.4% | -0.9% | 124   |
| Improvements (secondary) | -0.5% | -1.0% | 62    |
| All  (primary)           | -0.4% | -0.9% | 124   |

#### Mixed

Rollup of 7 pull requests [#98987](https://github.com/rust-lang/rust/pull/98987)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3dcb616888aac50d55160b025266d555dad937d9&end=7665c3543079ebc3710b676d0fd6951bedfd4b29&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | 0.6%  | 0.6%  | 1     |
| Regressions (secondary)  | N/A   | N/A   | 0     |
| Improvements (primary)   | -0.2% | -0.2% | 1     |
| Improvements (secondary) | -0.3% | -0.6% | 9     |
| All  (primary)           | 0.2%  | 0.6%  | 2     |


Rollup of 8 pull requests [#99014](https://github.com/rust-lang/rust/pull/99014)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=20dd6930134d07a5ef90393a040a1594ac8d714c&end=3e51277fe638dc0c8ceb6d1d3acc5aa247277c29&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | 0.5%  | 0.5%  | 1     |
| Regressions (secondary)  | 0.3%  | 0.3%  | 1     |
| Improvements (primary)   | N/A   | N/A   | 0     |
| Improvements (secondary) | -1.3% | -1.5% | 6     |
| All  (primary)           | 0.5%  | 0.5%  | 1     |

Don't allow ZST in ScalarInt  [#98957](https://github.com/rust-lang/rust/pull/98957)
[(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6c20ab744b0f82646d90ce9d25894823abc9c669&end=f893495e3da91dc319d37861b803eed9d6c8c7c7&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | N/A   | N/A   | 0     |
| Regressions (secondary)  | 4.4%  | 4.4%  | 2     |
| Improvements (primary)   | N/A   | N/A   | 0     |
| Improvements (secondary) | -0.4% | -0.4% | 2     |
| All  (primary)           | N/A   | N/A   | 0     |


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- "Revert #94158, "Apply noundef metadata to loads of types that do not permit raw init"" [rust#98966](https://github.com/rust-lang/rust/pull/98966)
  - nominated by @**Ben Kimock (Saethlin)** 
  > In #66151 we have decided against turning *technically UB* code into a panic on account of the amount of code that would be affected, so it doesn't seem right to turn *technically* into *directly visible to LLVM*. If the breakage from adding a panic for this case is too high, the danger from turning this case into visible UB should be as well.
  - cc @**Thom Chiovoloni**

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.

## Next week's WG checkins

- @_*WG-mir-opt* by @**oli**
- @_*wg-polymorphization* by @**davidtwco**
