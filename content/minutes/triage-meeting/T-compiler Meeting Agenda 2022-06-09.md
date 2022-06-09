---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-06-09

## Announcements

- Tomorrow <time:2022-06-10T15:00:00+02:00> Types Team: Planning/Deep-Dive, [calendar link](https://calendar.google.com/calendar/event?eid=M3JsYmdkN2F0cjdtYXE0Z2ljYzM4Nm42NTRfMjAyMjA2MTBUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn&ctz=GMT+02:00)
- Tomorrow <time:2022-06-10T16:00:00+02:00> T-compiler steering: ~~path sanitisation changes [rfc#3127](https://github.com/rust-lang/rfcs/pull/3127)~~  2022 Q2 P-high review [compiler-team#517](https://github.com/rust-lang/compiler-team/issues/517) , [calendar link](https://calendar.google.com/calendar/event?eid=M3JsYmdkN2F0cjdtYXE0Z2ljYzM4Nm42NTRfMjAyMjA2MTBUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn&ctz=GMT+02:00)
- The steering meeting regarding rfc#3127 will now be a week later; see [Zulip message](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bplanning.20meeting.5D.202022-06-03/near/285524534) for why dates were swapped.
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- <time:2022-06-13T17:00:00+02:00> wg-rls-2.0 weekly sync-up [calendar link](https://calendar.google.com/calendar/event?eid=MXJnbzBscDExNHJjNmVsdGhsaW8xcDljMmdfMjAyMjA2MTNUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn&ctz=GMT+02:00)
- <time:2022-06-13T22:00:00+02:00> [wg-traits] GATs Sync [calendar link](https://www.google.com/calendar/event?eid=Y3VpY2NkbXBoZTJkMHJmcmZxZmU4MjhodDBfMjAyMjA2MTNUMjAwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn&ctz=GMT+02:00)
- <time:2022-06-15T15:00:00+02:00> [Types team] Hack session: Advanced subtyping [calendar link](https://www.google.com/calendar/event?eid=MDkxcnJqbGpwNm9sNWVqazB0b3U4azZkN2FfMjAyMjA2MTVUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn&ctz=GMT+02:00)

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "Tier 3 target proposal: riscv64gc-linux-android (Android target for `riscv64gc`)" [compiler-team#472](https://github.com/rust-lang/compiler-team/issues/472) (last review activity: 5 months ago)
    - :loudspeaker: Stale MCP: will be closed next week
    - [Zulip discussion](https://rust-lang.zulipchat.com/#narrow/stream/233931-t-compiler.2Fmajor-changes/topic/Tier.203.20target.20proposal.3A.20riscv64gc-linux-a.E2.80.A6.20compiler-team.23472)
    - MCP author replied to all questions, so it seems no visible concern to be addressed
  - "`-Dwarnings` to cover all warnings" [compiler-team#473](https://github.com/rust-lang/compiler-team/issues/473) (last review activity: 5 months ago)
    - :loudspeaker: Stale MCP: will be closed next week
    - [Zulip discussion](https://rust-lang.zulipchat.com/#narrow/stream/233931-t-compiler.2Fmajor-changes/topic/.60-Dwarnings.60.20to.20cover.20all.20warnings.20compiler-team.23473)
    - Comments seem to underline possible conflicts with `cargo` linting system.
  - "Dealing with type/const ambiguities" [compiler-team#480](https://github.com/rust-lang/compiler-team/issues/480) (last review activity: 4 months ago)
  - "Removing codegen logic for `nvptx-nvidia-cuda` (32-bit target)" [compiler-team#496](https://github.com/rust-lang/compiler-team/issues/496) (last review activity: 2 months ago)
  - "Arbitrary annotations in compiletest" [compiler-team#513](https://github.com/rust-lang/compiler-team/issues/513) (last review activity: about 24 days ago)
- Pending FCP requests (check your boxes!)
  - "Stabilize `-Zgcc-ld=lld` as `-Clink-self-contained=linker -Clinker-flavor=gcc-lld`" [compiler-team#510](https://github.com/rust-lang/compiler-team/issues/510#issuecomment-1119675764) 
  - "Increase the minimum linux-gnu versions" [rust#95026](https://github.com/rust-lang/rust/pull/95026#issuecomment-1077855006)
    - Note: T-libs discussed and approved this change ([comment](https://github.com/rust-lang/rust/pull/95026#issuecomment-1144222893))
- Things in FCP (make sure you're good with it)
  - No FCP requests this time.
- Accepted MCPs
  - "Build-time execution sandboxing" [compiler-team#475](https://github.com/rust-lang/compiler-team/issues/475) 
  - "Change compiletest declarations parsing" [compiler-team#512](https://github.com/rust-lang/compiler-team/issues/512)
- Finalized FCPs (disposition merge)
  - "Tracking Issue for `-Z terminal-width`" [rust#84673](https://github.com/rust-lang/rust/issues/84673) 
  - "Remove migrate borrowck mode" [rust#95565](https://github.com/rust-lang/rust/pull/95565) 
  - "Stabilize the `bundle` native library modifier" [rust#95818](https://github.com/rust-lang/rust/pull/95818) 
  - "Modify MIR building to drop repeat expressions with length zero" [rust#95953](https://github.com/rust-lang/rust/pull/95953) 
  - "Remove label/lifetime shadowing warnings" [rust#96296](https://github.com/rust-lang/rust/pull/96296) 
  - "Lang: Stabilize usage of rustc_nonnull_optimization_guaranteed on -1" [rust#97122](https://github.com/rust-lang/rust/issues/97122)

### WG checkins

- @_*WG-traits* Traits (generic work of the WG) by @**nikomatsakis** and @**Jack Huey** ([previous checkin](https://hackmd.io/jxlX991ESb62LmuKImWWFA#WG-checkins))
> Officially renamed to types team. Steady progress on various initiatives. Biggest update is migrate mode removal. Over this month, we're going to do triage during deep dives.

- @_*WG-mir-opt* MIR Optimizations by @**oli** ([previous checkin](https://hackmd.io/OpHTC_XERyaxTWH2JLfSzw#WG-checkins))
> Checkin text

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Update LLVM submodule" [rust#97690](https://github.com/rust-lang/rust/pull/97690)
  - Fixes [rust#97428](https://github.com/rust-lang/rust/issues/97428), `P-critical` unsoundness bug
  - author @**Nikita Popov** mentions that LLVM upgrade should be safe ([comment](https://github.com/rust-lang/rust/pull/97690#issuecomment-1148303196))
- :beta: "Fail gracefully when encountering an HRTB in APIT. " [rust#97683](https://github.com/rust-lang/rust/pull/97683) 
  - Fixes [rust#96954](https://github.com/rust-lang/rust/issues/96954), a `P-medium` ICE that should be an error (like in stable)
  - @**nagisa** nominated ([comment](https://github.com/rust-lang/rust/pull/97683#issuecomment-1146805060))
- :beta: "Aarch64 call abi does not zeroext (and one cannot assume it does so)" [rust#97800](https://github.com/rust-lang/rust/pull/97800)
  - Fixes a `P-critical` unsoundness bug on tier 1 platform
  - patch author and backport nomination by @**pnkfelix**
- :stable: "Aarch64 call abi does not zeroext (and one cannot assume it does so)" [rust#97800](https://github.com/rust-lang/rust/pull/97800) 
  - also stable backport, [comment](https://github.com/rust-lang/rust/pull/97800#issuecomment-1147832665) clarifies the nomination: if we had to do a point release for other reasons, should this be included?

[T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- No PRs waiting on `T-compiler` this time.
  - (4 PRs omitted because either drafts or waiting on other teams / RFC process)

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- "reduce RPC overhead for common proc_macro operations" [rust#86822](https://github.com/rust-lang/rust/pull/86822)
  - nominated by @**nnethercote** ([comment](https://github.com/rust-lang/rust/pull/86822#issuecomment-1150514376))
  - PR is also `I-compiler-nominated`
- "Add option to pass environment variables" [rust#94387](https://github.com/rust-lang/rust/pull/94387) (last review activity: about 33 days ago)
  - cc latest reviewers: @**Esteban Küber** and @**bjorn3**
- "`Clone` suggestions" [rust#95115](https://github.com/rust-lang/rust/pull/95115) (last review activity: about 26 days ago)
  - assigned reviewer @**Esteban Küber**, suggests an additional reviewer ([comment](https://github.com/rust-lang/rust/pull/95115#issuecomment-1107672151))
  - also cc: @**oli** and @**Jak{e,ob} Degen** (as they left comments, too)
  - any actionable for the PR author at this time?
- "Add Finalize statement to make deaggregation "reversible" by storing all information in MIR" [rust#96043](https://github.com/rust-lang/rust/pull/96043) (last review activity: about 25 days ago)
  - unsure about status: maybe a comment on latest perf run results?
  - cc: @**Wesley Wiser** since assigned reviewer
- "Print type of every call in a method call chain" [rust#96918](https://github.com/rust-lang/rust/pull/96918) (last review activity: about 20 days ago)
  - unsure about current status
  - cc: @**Michael Goulet (compiler-errors)** maybe to comment on latest notes left by @**Esteban Küber**?
- "Only compile #[used] as llvm.compiler.used for ELF targets" [rust#93718](https://github.com/rust-lang/rust/pull/93718) (last review activity: about 55 days ago)
  - seems ready for another round of review
  - cc @**pnkfelix** 

## Issues of Note

### Short Summary

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [62 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [47 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 5 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 2 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 40 P-high, 78 P-medium, 9 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Infinite recursion optimized away with `opt-level=z`" [rust#97428](https://github.com/rust-lang/rust/issues/97428)
  - Fixed by upgrading to LLVM/14.x (#97690)
  - #97690 incorporates fix by @**Nikita Popov** [comment](https://github.com/rust-lang/rust/issues/97428#issuecomment-1141175822)
- "Wrong cast of u16 to usize on aarch64" [rust#97463](https://github.com/rust-lang/rust/issues/97463)
  - Fixed by #97800

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2022-06-07](https://github.com/rust-lang/rustc-perf/blob/1d5630da266bf4b7c25b33e3885909b30016ff40/triage/2022-06-07.md)

A busy week in compiler performance, but fortunately improvements outweighed regressions. The biggest improvements came from @nnethercote's work on making the decoding of `SourceFile::lines` lazy which significantly cuts the costs of decoding crate metadata. The biggest regressions came from the removal of json handling in `rustc_serialize` which has been a multi-month effort to improve the maintainability of json (de-)serialization in the compiler.

Triage done by **@rylev**.
Revision range: [0a43923a..bb55bd](https://perf.rust-lang.org/?start=0a43923a86c3b8f11d005884871b152f59b746f7&end=bb55bd449e65e611da928560d948982d73e50027&absolute=false&stat=instructions%3Au)

**Summary**:

|                          | mean  | max    | count |
|:------------------------:|:-----:|:------:|:-----:|
| Regressions (primary)    | 0.5%  | 3.2%   | 36    |
| Regressions (secondary)  | 0.3%  | 0.9%   | 15    |
| Improvements (primary)   | -1.3% | -15.1% | 124   |
| Improvements (secondary) | -2.7% | -13.5% | 182   |
| All  (primary)           | -0.9% | -15.1% | 160   |


2 Regression, 6 Improvements, 5 Mixed; 4 of them in rollups
48 artifact comparisons made in total

#### Regressions

rewrite error handling for unresolved inference vars [#89862](https://github.com/rust-lang/rust/pull/89862) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=72f7e3144a386c820c188350092d2d93a74889b8&end=e40d5e83dc133d093c22c7ff016b10daa4f40dcf&stat=instructions:u)

|                          | mean | max  | count |
|:------------------------:|:----:|:----:|:-----:|
| Regressions (primary)    | 0.2% | 0.3% | 7     |
| Regressions (secondary)  | 0.4% | 1.0% | 23    |
| Improvements (primary)   | N/A  | N/A  | 0     |
| Improvements (secondary) | N/A  | N/A  | 0     |
| All  (primary)           | 0.2% | 0.3% | 7     |
- Ran cache grind diff and saw that `ObligationForest::process_obligations` is getting called a lot more. 
- I'm very unfamiliar with trait resolution, so I'm unsure if this is a red herring or not. 
- In any case, [here](https://gist.github.com/rylev/8e5fd44e2ee0db7f3dd449eb0e88ccbd) is the full diff. 
- Left a comment as such [here](https://github.com/rust-lang/rust/pull/89862#issuecomment-1148733903)


Remove all json handling from rustc_serialize [#85993](https://github.com/rust-lang/rust/pull/85993) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9a74608543d499bcc7dd505e195e8bfab9447315&end=7e9b92cb43a489b34e2bcb8d21f36198e02eedbc&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | 0.5%  | 1.3%  | 68    |
| Regressions (secondary)  | 0.9%  | 3.5%  | 40    |
| Improvements (primary)   | -0.4% | -0.6% | 3     |
| Improvements (secondary) | -0.5% | -1.0% | 24    |
| All  (primary)           | 0.5%  | 1.3%  | 71    |
- @nnethercote was not able to reproduce the regressions in a local build, and it seems the consensus is that the regressions are worth the hit.


#### Improvements

Make params be SmallVec as originally was [#97670](https://github.com/rust-lang/rust/pull/97670) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a6b8c6954829669a5c4fa320c3e6132edf04fcfc&end=f15370b4e44988ad5d228b25e939650c0a6c2ec7&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | N/A   | N/A   | 0     |
| Regressions (secondary)  | N/A   | N/A   | 0     |
| Improvements (primary)   | -0.2% | -0.2% | 3     |
| Improvements (secondary) | N/A   | N/A   | 0     |
| All  (primary)           | -0.2% | -0.2% | 3     |


Add PID to LLVM PGO profile path [#97137](https://github.com/rust-lang/rust/pull/97137) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c7b0452ece11bf714f7cf2003747231931504d59&end=63641795406e1831a822f011242fdfb225fc8fbc&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | N/A   | N/A   | 0     |
| Regressions (secondary)  | N/A   | N/A   | 0     |
| Improvements (primary)   | -0.6% | -0.8% | 20    |
| Improvements (secondary) | -0.7% | -1.0% | 8     |
| All  (primary)           | -0.6% | -0.8% | 20    |


Rollup of 6 pull requests [#97742](https://github.com/rust-lang/rust/pull/97742) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4e725bad73747a4c93a3ac53106e4b4006edc665&end=43874a2ee749c2dd9f052172341f2f87fa36cd79&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | N/A   | N/A   | 0     |
| Regressions (secondary)  | N/A   | N/A   | 0     |
| Improvements (primary)   | N/A   | N/A   | 0     |
| Improvements (secondary) | -1.9% | -2.6% | 12    |
| All  (primary)           | N/A   | N/A   | 0     |


interpret: better control over whether we read data with provenance [#97684](https://github.com/rust-lang/rust/pull/97684) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=79b6bad406155cad4481150fc5dfa0da5394e3b6&end=9d20fd109809f20c049d6895a5be27a1fbd39daa&stat=instructions:u)

|            | mean | max | count |
|:----------:|:----:|:---:|:-----:|
| Regressions (primary) | N/A  | N/A | 0     |
| Regressions (secondary) | N/A  | N/A | 0     |
| Improvements (primary) | -0.7% | -1.9% | 8     |
| Improvements (secondary) | -5.5% | -10.5% | 12    |
| All  (primary) | -0.7% | -1.9% | 8     |


Remove migrate borrowck mode [#95565](https://github.com/rust-lang/rust/pull/95565) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9f7e997c8bc3cacd2ab4eb75e63cb5fa9279c7b0&end=bb55bd449e65e611da928560d948982d73e50027&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | N/A   | N/A   | 0     |
| Regressions (secondary)  | N/A   | N/A   | 0     |
| Improvements (primary)   | -0.5% | -1.9% | 47    |
| Improvements (secondary) | -0.5% | -1.4% | 21    |
| All  (primary)           | -0.5% | -1.9% | 47    |


Lazify `SourceFile::lines`. [#97575](https://github.com/rust-lang/rust/pull/97575) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=44e9516c8535c6f41f2d1c444657cd672b4ab81b&end=e71440575c930dcecac288b7c3536410d688b351&stat=instructions:u)

|                          | mean  | max    | count |
|:------------------------:|:-----:|:------:|:-----:|
| Regressions (primary)    | N/A   | N/A    | 0     |
| Regressions (secondary)  | 0.4%  | 0.5%   | 6     |
| Improvements (primary)   | -1.8% | -15.3% | 52    |
| Improvements (secondary) | -2.9% | -13.8% | 124   |
| All  (primary)           | -1.8% | -15.3% | 52    |


#### Mixed

Add `#[inline]` to `Vec`'s `Deref/DerefMut` [#97553](https://github.com/rust-lang/rust/pull/97553) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=02916c4c75912f70b651c0b20b501444ce2ca231&end=395a09c3dafe0c7838c9ca41d2b47bb5e79a5b6d&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | 0.5%  | 0.8%  | 6     |
| Regressions (secondary)  | 0.4%  | 0.7%  | 31    |
| Improvements (primary)   | -1.2% | -1.7% | 10    |
| Improvements (secondary) | -1.1% | -1.9% | 10    |
| All  (primary)           | -0.5% | -1.7% | 16    |
- As with any chance to inlining, performance is expected to change and to not always have a positive impact. 
- The improvements outweigh the regressions (especially in primary benchmarks), and so it doesn't seem worth it to dig too much more into this. 


Rollup of 6 pull requests [#97644](https://github.com/rust-lang/rust/pull/97644) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5e6bb83268518dcd74c96b5504f485b71e604e4c&end=9598b4b594c97dff66feb93522e22db500deea07&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | N/A   | N/A   | 0     |
| Regressions (secondary)  | 0.6%  | 0.7%  | 5     |
| Improvements (primary)   | -0.2% | -0.3% | 2     |
| Improvements (secondary) | -0.3% | -0.5% | 11    |
| All  (primary)           | -0.2% | -0.3% | 2     |
- The improvements outweigh the regressions (which are pretty small and contained in secondary benchmarks).
- Given it's in a rollup, it's not worth the effort to investigate.


Rollup of 5 pull requests [#97654](https://github.com/rust-lang/rust/pull/97654) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=20976bae5c426c738262db376eadbd8859aafc08&end=44e9516c8535c6f41f2d1c444657cd672b4ab81b&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | N/A   | N/A   | 0     |
| Regressions (secondary)  | 0.6%  | 0.6%  | 1     |
| Improvements (primary)   | N/A   | N/A   | 0     |
| Improvements (secondary) | -0.6% | -0.8% | 8     |
| All  (primary)           | N/A   | N/A   | 0     |
- The improvements outweigh the regressions (which are pretty small and contained in secondary benchmarks).
- Given it's in a rollup, it's not worth the effort to investigate.


Rollup of 3 pull requests [#97694](https://github.com/rust-lang/rust/pull/97694) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e40d5e83dc133d093c22c7ff016b10daa4f40dcf&end=9a74608543d499bcc7dd505e195e8bfab9447315&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | 0.2%  | 0.2%  | 1     |
| Regressions (secondary)  | 0.3%  | 0.5%  | 5     |
| Improvements (primary)   | -0.4% | -0.6% | 12    |
| Improvements (secondary) | -0.3% | -0.5% | 13    |
| All  (primary)           | -0.4% | -0.6% | 13    |
- The improvements outweigh the regressions (which are pretty small and almost completely contained in secondary benchmarks).
- Given it's in a rollup, it's not worth the effort to investigate.


Inline `bridge::Buffer` methods. [#97604](https://github.com/rust-lang/rust/pull/97604) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c3384ea35cafc3a8a6554a2ad524dbf70df4bbcd&end=cb0584f86b8cfa952dffad55f7d83bd90765120f&stat=instructions:u)

|                          | mean  | max   | count |
|:------------------------:|:-----:|:-----:|:-----:|
| Regressions (primary)    | 3.8%  | 3.8%  | 1     |
| Regressions (secondary)  | N/A   | N/A   | 0     |
| Improvements (primary)   | -0.3% | -0.3% | 1     |
| Improvements (secondary) | -2.1% | -2.1% | 3     |
| All  (primary)           | 1.8%  | 3.8%  | 2     |
- I'm a bit confused as this PR was opened to address a performance regression, but it seems to be itself a partial perf regression (at least in instruction counts). 
- This causes a near 4% perf regression in [serde_derive-1.0.136](https://github.com/rust-lang/rustc-perf/tree/master/collector/benchmarks/serde_derive-1.0.136). Granted that particular benchmark has been somewhat noisy but not nearly to the level seen here. 
- Add a comment seeking [justification](https://github.com/rust-lang/rust/pull/97604#issuecomment-1148722741)

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- "reduce RPC overhead for common proc_macro operations" [rust#86822](https://github.com/rust-lang/rust/pull/86822)
  - nominated by @**nnethercote** ([comment](https://github.com/rust-lang/rust/pull/86822#issuecomment-1150514376))
  - points out better perf results and that the PR is ready for review
- "sess: stabilize `--terminal-width`" [rust#95635](https://github.com/rust-lang/rust/pull/95635) 
  - nominated by @**oli** for a mention for T-compiler 
- "Update Mac Catalyst support for Clang 13" [rust#96392](https://github.com/rust-lang/rust/pull/96392)
  - nominated by @**Esteban Küber** in [comment](https://github.com/rust-lang/rust/pull/96392#issuecomment-1138887246) to find someone more conversant with that platform
  - @__**Thom Chiovoloni** pinged a list of names that could help ([comment](https://github.com/rust-lang/rust/pull/96392#issuecomment-1138893845))

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- "New rustc and Cargo options to allow path sanitisation by default" [rfcs#3127](https://github.com/rust-lang/rfcs/pull/3127)
  - @**Andy Wang** asked for T-compiler to sign-off the changes ([comment](https://github.com/rust-lang/rfcs/pull/3127#issuecomment-1132855632))
  - @**bjorn3** followed with a review
  - related T-compiler meeting [compiler-team#516](https://github.com/rust-lang/compiler-team/issues/516)

## Next week's WG checkins

- @_*wg-polymorphization* Polymorphization by @**davidtwco** ([previous checkin](https://hackmd.io/Fv3TSalbT_CYVUEonihWzg#WG-checkins))
- @_*WG-rls2.0* RLS 2.0 by @**matklad** ([previous checkin](https://hackmd.io/Fv3TSalbT_CYVUEonihWzg#WG-checkins))
