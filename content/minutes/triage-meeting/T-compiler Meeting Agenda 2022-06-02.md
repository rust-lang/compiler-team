---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-06-02

## Announcements

- Tomorrow  <time:2022-06-03T10:00:00-04:00 Types Team: Planning/Deep-Dive [calendar link](https://calendar.google.com/calendar/event?eid=M3JsYmdkN2F0cjdtYXE0Z2ljYzM4Nm42NTRfMjAyMjA2MDNUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn&ctz=GMT+02:00)
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).
- Stable MIR MVP: https://github.com/rust-lang/rust/pull/97385
    - basically just a single entry point for all external users of MIR
    - expected to evolve to wrap common APIs with less-frequently changing ones.
    - no path towards actual stabilization yet

## Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- <time:2022-06-06T16:00:00+02:00> wg-debugging status & design meeting
- <time:2022-06-06T17:00:00+02:00> wg-rls-2.0 steering meeting
- <time:2022-06-06T17:30:00+02:00> Async WG triage meeting
- <time:2022-06-06T22:00:00+02:00> [wg-traits] GATs Sync
- <time:2022-06-15T15:00:00+02:00> [Types team] Hack session: Advanced subtyping

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "Tier 3 target proposal: riscv64gc-linux-android (Android target for `riscv64gc`)" [compiler-team#472](https://github.com/rust-lang/compiler-team/issues/472) (last review activity: 5 months ago)
    - :loudspeaker: Stale MCP: candidate for closing
    - [Zulip discussion](https://rust-lang.zulipchat.com/#narrow/stream/233931-t-compiler.2Fmajor-changes/topic/Tier.203.20target.20proposal.3A.20riscv64gc-linux-a.E2.80.A6.20compiler-team.23472)
    - MCP author replied to all questions, so it seems no visible concern to be addressed
  - "`-Dwarnings` to cover all warnings" [compiler-team#473](https://github.com/rust-lang/compiler-team/issues/473) (last review activity: 5 months ago)
  - "Dealing with type/const ambiguities" [compiler-team#480](https://github.com/rust-lang/compiler-team/issues/480) (last review activity: 4 months ago)
  - "Removing codegen logic for `nvptx-nvidia-cuda` (32-bit target)" [compiler-team#496](https://github.com/rust-lang/compiler-team/issues/496) (last review activity: 2 months ago)
  - "Arbitrary annotations in compiletest" [compiler-team#513](https://github.com/rust-lang/compiler-team/issues/513) (last review activity: about 24 days ago)
- Pending FCP requests (check your boxes!)
  - "Stabilize `-Zgcc-ld=lld` as `-Clink-self-contained=linker -Clinker-flavor=gcc-lld`" [compiler-team#510](https://github.com/rust-lang/compiler-team/issues/510#issuecomment-1119675764) 
  - "Increase the minimum linux-gnu versions" [rust#95026](https://github.com/rust-lang/rust/pull/95026#issuecomment-1077855006)
    - Note: T-libs discussed and approved this change ([comment])(https://github.com/rust-lang/rust/pull/95026#issuecomment-1144222893)
- Things in FCP (make sure you're good with it)
  - "Build-time execution sandboxing" [compiler-team#475](https://github.com/rust-lang/compiler-team/issues/475) 
  - "Change compiletest declarations parsing" [compiler-team#512](https://github.com/rust-lang/compiler-team/issues/512) 
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - "Tracking Issue for `-Z terminal-width`" [rust#84673](https://github.com/rust-lang/rust/issues/84673) 
  - "Remove migrate borrowck mode" [rust#95565](https://github.com/rust-lang/rust/pull/95565) 
  - "Stabilize the `bundle` native library modifier" [rust#95818](https://github.com/rust-lang/rust/pull/95818) 
  - "Modify MIR building to drop repeat expressions with length zero" [rust#95953](https://github.com/rust-lang/rust/pull/95953) 
  - "Remove label/lifetime shadowing warnings" [rust#96296](https://github.com/rust-lang/rust/pull/96296) 

### WG checkins

- @_*WG-traits* (impl trait) by @**nikomatsakis** @**oli** ([prev. checkin](https://hackmd.io/xSZrlTLfSTyli92VFlLuOQ#WG-checkins))
    * [fix soundness bug where a TAIT could imply a lifetime bound that doesn't hold](https://github.com/rust-lang/rust/pull/95519)
    * [anonymous lifetimes on TAITs mentioned in function args can be connected to anonymous output lifetimes](https://github.com/rust-lang/rust/pull/96903)
    * [fix a bunch of ICEs that occurred because closures could now be malformed for certain params of a TAIT](https://github.com/rust-lang/rust/pull/96899)
    * [diagnostic improvement: hidden types are checked to be wf for the TAIT at definition site of each hidden type, not once for the opaque type](https://github.com/rust-lang/rust/pull/96736)
    * [soundness fix: no TAIT in impl block headers](https://github.com/rust-lang/rust/pull/95973)
    * [merge all defining uses of a TAIT within a function, instead of merging them at the end with other uses](https://github.com/rust-lang/rust/pull/95767)
    * next steps in flight are 
        * [check generators for wf](https://github.com/rust-lang/rust/pull/97183)
        * [treat RPITs and TAITs the same if used in function return types or across match arms](https://github.com/rust-lang/rust/pull/96727)
        * [fix the remaining soundness bug of TAIT and RPIT](https://github.com/rust-lang/rust/pull/95474)
        * [remove a back compat hack for RPIT that allowed opaque types to ignore assoc type bounds if the hidden type satisfies them](https://github.com/rust-lang/rust/pull/97346)
- @_*WG-llvm* by @**nagisa** and @**Nikita Popov** ([prev. checkin](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202022-04-28/near/280501429))
> * Last bits for opaque pointer support in rust have landed (https://github.com/rust-lang/rust/pull/94214) and I've enabled them in LLVM today, so we should be able to pick this up with the LLVM 15 upgrade without further changes.
> * There's a proposal for first-class aborting unwind support (https://discourse.llvm.org/t/rfc-add-call-unwindabort-to-llvm-ir/62543), that will likely be useful for rust as well.
> * There's a PR for virtual function elimination with LTO (https://github.com/rust-lang/rust/pull/96285). Though looks like it's not entirely sound at the moment.

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "don't do `Sized` and other return type checks on RPIT's real type" [rust#97431](https://github.com/rust-lang/rust/pull/97431) 
  - nominated by @**oli**
  - fixes [rust#97226](https://github.com/rust-lang/rust/issues/97226), ICE when doing `Sized` check against the RPIT's real type
- :beta: "Fix indices and remove some unwraps in arg mismatch algorithm" [rust#97557](https://github.com/rust-lang/rust/pull/97557)
  - patch authored and nominated for backport by @**Michael Goulet (compiler-errors)** 
  - Fixes [rust#97484](https://github.com/rust-lang/rust/issues/97484) (ICE when parsing args)
  - not yet merged (cc @**Jack Huey** for review) 

[T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- No PRs waiting on `T-compiler` this time.

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- "Add option to pass environment variables" [rust#94387](https://github.com/rust-lang/rust/pull/94387) (last review activity: about 33 days ago)
  - cc latest reviewers: @**Esteban Küber** and @**bjorn3**
- "`Clone` suggestions" [rust#95115](https://github.com/rust-lang/rust/pull/95115) (last review activity: about 26 days ago)
  - assigned reviewer @**Esteban Küber** which suggested an additional reviewer ([comment](https://github.com/rust-lang/rust/pull/95115#issuecomment-1107672151))
  - also cc: @**oli** (as they left comments, too) 
- "Add Finalize statement to make deaggregation "reversible" by storing all information in MIR" [rust#96043](https://github.com/rust-lang/rust/pull/96043) (last review activity: about 25 days ago)
  - maybe a comment on perf run results? maybe cc: @**Wesley Wiser**
- "Remove opaque types from typeck expectations" [rust#96727](https://github.com/rust-lang/rust/pull/96727) (last review activity: about 25 days ago)
  - assigned for review to @**lcnr** 
- "Print type of every call in a method call chain" [rust#96918](https://github.com/rust-lang/rust/pull/96918) (last review activity: about 20 days ago)
  - cc: @**Michael Goulet (compiler-errors)**  maybe for comment on latest author comment?

## Issues of Note

### Short Summary

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [62 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [47 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 4 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 2 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 39 P-high, 77 P-medium, 9 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Infinite recursion optimized away with `opt-level=z`" [rust#97428](https://github.com/rust-lang/rust/issues/97428)
  - @**Nikita Popov** already provided patch LLVM upstream and backport for our LLVM fork ([comment](https://github.com/rust-lang/rust/issues/97428#issuecomment-1141175822))
- "Wrong cast of u16 to usize on aarch64" [rust#97463](https://github.com/rust-lang/rust/issues/97463)
  - very old unsoundness issue ([comment](https://github.com/rust-lang/rust/issues/97463#issuecomment-1142191696)) on tier 1 platform ([tier support list](https://github.com/rust-lang/rust/issues/97463#issuecomment-1142191696)), surfaced just now

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2022-05-31](https://github.com/rust-lang/rustc-perf/blob/master/triage/2022-05-31.md)

A good week: The regressions were small; some have follow-up PR's in flight to
address them; and we saw a big improvement from PR
[#97345](https://github.com/rust-lang/rust/pull/97345), which adds more fast
paths for quickly exiting comparisons between two types (such as `BitsImpl<M>`
and `BitsImpl<N>` for const integers `M` and `N`). This improved compile-times
for the `bitmaps` benchmark by 50-65% in some cases (including the trunk
`nalgebra`, according to independent investigation from nnethercote). That same
PR had more modest improvements (1% to 2%) to the compile-times for a number of
other crates. Many thanks to lcnr and nnethercote for some excellent work here!

Triage done by **@pnkfelix**.
Revision range: [43d9f385..0a43923a](https://perf.rust-lang.org/?start=43d9f3859e0204e764161ee085a360274b5f3e9a&end=0a43923a86c3b8f11d005884871b152f59b746f7&absolute=false&stat=instructions%3Au)

**Summary**:

|                          | mean  | max    | count |
|:------------------------:|:-----:|:------:|:-----:|
| Regressions (primary)    | N/A   | N/A    | 0     |
| Regressions (secondary)  | 0.8%  | 0.9%   | 3     |
| Improvements (primary)   | -4.0% | -65.9% | 227   |
| Improvements (secondary) | -2.0% | -7.7%  | 217   |
| All  (primary)           | -4.0% | -65.9% | 227   |


3 Regressions, 1 Improvements, 9 Mixed; 0 of them in rollups
59 artifact comparisons made in total
24 Untriaged Pull Requests

#### Regressions

Proc macro tweaks [#97004](https://github.com/rust-lang/rust/pull/97004) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9a42c6509d399fd205917ebce474b31315c5d3e9&end=f558990814bb43cfb67db321b299dfdf275663e3&stat=instructions:u)

|                          | mean | max  | count |
|:------------------------:|:----:|:----:|:-----:|
| Regressions (primary)    | 0.2% | 0.2% | 1     |
| Regressions (secondary)  | 0.6% | 1.5% | 10    |
| Improvements (primary)   | N/A  | N/A  | 0     |
| Improvements (secondary) | N/A  | N/A  | 0     |
| All  (primary)           | 0.2% | 0.2% | 1     |

* aparently making a `Buffer<T>` non-generic (its solely instantiated at `u8`) caused a performance regression.
* there is ongoing follow-up work to address the regression, either by making the buffer generic again, or by adding `#[inline]` annotations.
* see e.g. [PR 97539](https://github.com/rust-lang/rust/pull/97539)


rustdoc: include impl generics / self in search index [#96652](https://github.com/rust-lang/rust/pull/96652) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=84288ed6d5307ed44a0f78e2f1ee55fbadf4e978&end=0acc4a35853215a6f9388ab61455ced309711003&stat=instructions:u)

|                          | mean | max  | count |
|:------------------------:|:----:|:----:|:-----:|
| Regressions (primary)    | 0.5% | 1.0% | 3     |
| Regressions (secondary)  | 1.1% | 1.1% | 3     |
| Improvements (primary)   | N/A  | N/A  | 0     |
| Improvements (secondary) | N/A  | N/A  | 0     |
| All  (primary)           | 0.5% | 1.0% | 3     |

* This regressed doc-generation for a few primary benchmarks, but I think that might be a inherent cost of a change like this. I marked it as triaged based on that assumption.

Move things to `rustc_type_ir` [#97287](https://github.com/rust-lang/rust/pull/97287) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=303d916867040e269b54adf3cfc7f5c903dc26ff&end=0f06824013761ed6829887019033f1001e68f623&stat=instructions:u)

|                          | mean | max  | count |
|:------------------------:|:----:|:----:|:-----:|
| Regressions (primary)    | 0.5% | 0.7% | 9     |
| Regressions (secondary)  | 1.1% | 1.1% | 3     |
| Improvements (primary)   | N/A  | N/A  | 0     |
| Improvements (secondary) | N/A  | N/A  | 0     |
| All  (primary)           | 0.5% | 0.7% | 9     |

* During development, this PR was identified as regressing one primary benchmark, `bitmaps` (in a variety of contexts), and the PR author [said](https://github.com/rust-lang/rust/pull/97287#issuecomment-1139917174) better to take that perf hit and deal with it later.
* In the PR that landed, the number of regressing variants was smaller, but the affected set of benchmarks slightly larger: [both `bitmaps` and `unicode-normalization`](https://perf.rust-lang.org/compare.html?start=303d916867040e269b54adf3cfc7f5c903dc26ff&end=0f06824013761ed6829887019033f1001e68f623&stat=instructions:u) are affected, regressing by 0.35% to 0.70%.
* My very brief inpsection of the flamegraphs ([old](https://perf.rust-lang.org/perf/processed-self-profile?commit=303d916867040e269b54adf3cfc7f5c903dc26ff&benchmark=bitmaps-3.1.0-check&scenario=full&type=flamegraph), [new](https://perf.rust-lang.org/perf/processed-self-profile?commit=0f06824013761ed6829887019033f1001e68f623&benchmark=bitmaps-3.1.0-check&scenario=full&type=flamegraph)) didn't show any smoking guns.
* At this point I think we can just live with this performance hit.

#### Improvements

Add suggestion for relaxing static lifetime bounds on dyn trait impls in NLL [#97284](https://github.com/rust-lang/rust/pull/97284) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=764b8615e9149431d8790e3c07cb663642fe393d&end=ed76b773b57cf0aa48ec4e2fc6d6a3f7a9079491&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | N/A   | N/A   | 0     |
| Regressions (secondary)  | N/A   | N/A   | 0     |
| Improvements (primary)   | -0.2% | -0.2% | 1     |
| Improvements (secondary) | -5.3% | -5.9% | 6     |
| All  (primary)           | -0.2% | -0.2% | 1     |

* This managed to improve performance (slightly), probably because it [restructured](https://github.com/rust-lang/rust/pull/97284/commits/3c6c8d5a8dbf4db20450ed5793ef35f29c13466c#r882897413) the `CallArgument` and that had fallout that ended up being positive overall (despite our intuition being that it would hurt performance due to the increase in size).
* It might be nice to confirm that hypothesis independently (by isolating just that structural change and confirming that it has a similar effect on performance here) ...
* ... but, the improvements are essentially isolated to just the secondary wg-grammar benchmark, so its not really worth too much digging, except if we think it might reveal other structural changes we should make elsewhere.

#### Mixed

add a deep fast_reject routine [#97345](https://github.com/rust-lang/rust/pull/97345) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=cbdce423201f1b155c46f3ec690a644cf3b4ba53&end=4a99c5f504ab65a0fd9d60f515811e1d9cff8c0a&stat=instructions:u)

|                          | mean   | max    | count |
|:------------------------:|:------:|:------:|:-----:|
| Regressions (primary)    | N/A    | N/A    | 0     |
| Regressions (secondary)  | 0.9%   | 1.6%   | 10    |
| Improvements (primary)   | -11.0% | -65.8% | 45    |
| Improvements (secondary) | -0.5%  | -0.9%  | 12    |
| All  (primary)           | -11.0% | -65.8% | 45    |

* this was great, as noted in summary.


Move various checks to typeck so them failing causes the typeck result to get tainted [#96046](https://github.com/rust-lang/rust/pull/96046) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=46147119ec545045948bc799581d93edd3b1617b&end=56fd680cf9226ab424f88d4e3b43c5e088d17f19&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | N/A   | N/A   | 0     |
| Regressions (secondary)  | 0.9%  | 1.1%  | 4     |
| Improvements (primary)   | -0.3% | -0.4% | 4     |
| Improvements (secondary) | -0.3% | -0.3% | 24    |
| All  (primary)           | -0.3% | -0.4% | 4     |

* This had some small improvements to primary benchmarks.
* The CTFE stress test regressed, but I assume that was expected since this was a change to the CTFE engine (to address some ICE's).

Update jemalloc to v5.3 [#96790](https://github.com/rust-lang/rust/pull/96790) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=56fd680cf9226ab424f88d4e3b43c5e088d17f19&end=ebbcbfc236ced21d5e6a92269edb704692ff26b8&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | N/A   | N/A   | 0     |
| Regressions (secondary)  | 0.3%  | 0.3%  | 1     |
| Improvements (primary)   | -0.9% | -6.2% | 212   |
| Improvements (secondary) | -1.1% | -3.2% | 191   |
| All  (primary)           | -0.9% | -6.2% | 212   |

* This had various improvements to our primary benchmarks' instruction counts.
* The other big thing to observe: the max-rss was improved in several primary
  benchmarks (by 1% to 6%), and some secondary benchmarks saw even more
  significant improvements to their max-rss.

Split dead store elimination off dest prop [#97158](https://github.com/rust-lang/rust/pull/97158) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=19abca1172ae10d5c084b6c3013d92680f92dd8b&end=68314177e70017c08f6cdf295631bb508f9f85bc&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | 0.5%  | 1.3%  | 15    |
| Regressions (secondary)  | 0.6%  | 2.3%  | 12    |
| Improvements (primary)   | -0.4% | -1.9% | 50    |
| Improvements (secondary) | -0.6% | -1.3% | 33    |
| All  (primary)           | -0.2% | -1.9% | 65    |

* The changes here were investigated by [the PR author](https://github.com/rust-lang/rust/pull/97158#issuecomment-1140550402).
* Marking as triaged based on their investigation.

Try to cache region_scope_tree as a query [#97383](https://github.com/rust-lang/rust/pull/97383) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=68314177e70017c08f6cdf295631bb508f9f85bc&end=4f39fb1f34d4bd25d9ce96afe7b2d109f073e286&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | N/A   | N/A   | 0     |
| Regressions (secondary)  | 1.0%  | 1.0%  | 3     |
| Improvements (primary)   | -1.7% | -4.7% | 98    |
| Improvements (secondary) | -2.4% | -7.7% | 43    |
| All  (primary)           | -1.7% | -4.7% | 98    |

* This was a targeted PR to address the regressions introduced by PR [#95563](https://github.com/rust-lang/rust/pull/95563) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=acfd327fd4e3a302ebb0a077f422a527a7935333&end=653463731a7f01f519cf85f444869def27f00395&stat=instructions:u).
* It seems to succeed at recovering the instruction-count performance lost in that PR.
* It doesn't *quite* recover all of the max-rss lost
  (PR [#97383 improves max-rss by about 3.75%](https://perf.rust-lang.org/compare.html?start=6ac8adad1f7d733b5b97d1df4e7f96e73a46db42&end=209f91e1787d0d29a0e566fa93f35d52e60ea84a&stat=max-rss)
  while PR [#95563 degraded max-rss by about 4%](https://perf.rust-lang.org/compare.html?start=acfd327fd4e3a302ebb0a077f422a527a7935333&end=653463731a7f01f519cf85f444869def27f00395&stat=max-rss)),
  but its close enough to satisfy our needs.

proc_macro: don't pass a client-side function pointer through the server. [#97461](https://github.com/rust-lang/rust/pull/97461) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4f39fb1f34d4bd25d9ce96afe7b2d109f073e286&end=116201eefebcf45074ae232377e7145f5fbb704b&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | 0.5%  | 0.5%  | 2     |
| Regressions (secondary)  | N/A   | N/A   | 0     |
| Improvements (primary)   | -0.4% | -0.8% | 11    |
| Improvements (secondary) | -2.6% | -5.4% | 10    |
| All  (primary)           | -0.3% | -0.8% | 13    |

* On the primary benchmarks, this mostly yielded small improvements; the one exception was `serde_derive` (debug), which regressed by ~0.5% for the full and incr-full variants.
* Looking at the flamegraphs for the before and after commits, and at the [table at bottom of details page](https://perf.rust-lang.org/detailed-query.html?commit=116201eefebcf45074ae232377e7145f5fbb704b&base_commit=4f39fb1f34d4bd25d9ce96afe7b2d109f073e286&benchmark=serde_derive-1.0.136-debug&scenario=full), it seems like the instruction-count regression is in `codegen_module`
* Looking at the history of serde_derive-debug (massively zoomed in on the "Percent Delta from First" Graph kind), it seems reasonable to think that something *did* happen on this PR.
* .... but I also don't really think its a big enough regression to be worth tearing our hair out over. This is a (smallish) win overall, and even for serde_derive-debug, it is a small regression in the context of much larger wins, so overall the trajectory is good.
* Marked as triaged.

Replace `#[default_method_body_is_const]` with `#[const_trait]` [#96964](https://github.com/rust-lang/rust/pull/96964) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=855fc022fe879f4e3493a024f9c6b981d6317612&end=5c780b98d10f48d6255cf2deb2643194b9221c02&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | 0.2%  | 0.3%  | 9     |
| Regressions (secondary)  | 0.2%  | 0.3%  | 3     |
| Improvements (primary)   | N/A   | N/A   | 0     |
| Improvements (secondary) | -1.1% | -1.1% | 3     |
| All  (primary)           | 0.2%  | 0.3%  | 9     |

* The primary regressions are mostly in variants of stm32f4, with a two serde and one syn thrown in for good measure.
* The improvements are solely to ctfe stress test, which I guess makes sense given the PR?
* Anyway, the regressions seem minor, and they are contained to an unstable feature that the stdlib is using.
* Marking as triaged.

improve format impl for literals [#97480](https://github.com/rust-lang/rust/pull/97480) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e810f750a2a407f9caeabba39059578e844add14&end=4a8d2e3856c0c75c71998b6c85937203839b946d&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | 0.4%  | 0.5%  | 4     |
| Regressions (secondary)  | N/A   | N/A   | 0     |
| Improvements (primary)   | N/A   | N/A   | 0     |
| Improvements (secondary) | -1.5% | -1.5% | 1     |
| All  (primary)           | 0.4%  | 0.5%  | 4     |

* This is adding a fast-path so that `format!("literal")` will compile into the same code as `"literal".to_owned()`.
* The primary regression is solely contained to `bitmaps`.
* Its possible that the regression to `bitmaps` is due to `format!("literal")` being totally unused in that code; all instances of `format!` there take an additional argument.
  So its *possible* that the extra code to check about whether to use the fast-path is slowing things down there.
* But I personally don't believe that explanation here: Unless I'm misunderstanding the code, there is some amount of macro-expansion into multiple instances of `format!`, but
  most of the expanded code is going to be dominated by all the `impl` blocks, not the relatively few `format!` instances. (Unless I massively misunderstand how the macros and/or codegen and/or inlining end up linking up here.)
* So: I don't believe the best hypothesis I have for what is happening here.
* But I also do not think the regression here is large enough to warrant further investigation.
* Marking as triaged.

errors: simplify referring to fluent attributes [#97357](https://github.com/rust-lang/rust/pull/97357) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c35035cefc709abddabfb28ecc6a326458d46ce2&end=7be9ec27652f2c3b820d341158b0e005f42e248e&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | N/A   | N/A   | 0     |
| Regressions (secondary)  | 0.4%  | 0.6%  | 9     |
| Improvements (primary)   | N/A   | N/A   | 0     |
| Improvements (secondary) | -0.4% | -0.5% | 4     |
| All  (primary)           | N/A   | N/A   | 0     |

* There were some regressions here, but they are few, minor, and contained solely to secondary benchmarks (specifically projection-caching and wg-grammar). Marking as triaged.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- "Update Mac Catalyst support for Clang 13" [rust#96392](https://github.com/rust-lang/rust/pull/96392)
  - nominated by @**Esteban Küber** in [comment](https://github.com/rust-lang/rust/pull/96392#issuecomment-1138887246) to find someone more conversant with that platform
  - @__**Thom Chiovoloni** pinged a list of names that could help ([comment](https://github.com/rust-lang/rust/pull/96392#issuecomment-1138893845))

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No new RFC to be discussed

## Next week's WG checkins

- @_*WG-traits* Traits (generic work of the WG) by @**nikomatsakis** and @**Jack Huey** 
- @_*WG-mir-opt* MIR Optimizations by @**oli**
