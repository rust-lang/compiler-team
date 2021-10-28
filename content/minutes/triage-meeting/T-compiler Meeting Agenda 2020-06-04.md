---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2020-06-04

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Today: 1.44 will be released :tada:
- Tomorrow (Friday): We have our [planning meeting](https://forge.rust-lang.org/compiler/steering-meeting.html); you should [submit proposals!](https://forge.rust-lang.org/compiler/steering-meeting/submit.html)
- Major Changes Proposals:
  - Seconded proposals (in FCP)
    - "RFC 2229 implementation plan" [#292](https://github.com/rust-lang/compiler-team/issues/292)
    - "create windows working group" [#293](https://github.com/rust-lang/compiler-team/issues/293)
    - "Remove Spans from HIR" [#294](https://github.com/rust-lang/compiler-team/issues/294)
    - "move leak-check to during coherence, candidate eval" [#295](https://github.com/rust-lang/compiler-team/issues/295)
    - "Introduce `ty_error`/`ty_error_with_message`/`ty_error_const` to construct error type or const" [#297](https://github.com/rust-lang/compiler-team/issues/297)
    - "`mv src/lib{std,core,alloc,test,etc} std/lib{std,core,alloc,test,etc}`" [#298](https://github.com/rust-lang/compiler-team/issues/298)
    - "Preserve `PlaceContext` through projections" [#300](https://github.com/rust-lang/compiler-team/issues/300)
  - New proposals (not seconded)
    - No new not seconded proposals
  - Old proposals (not seconded)
    - "Integration of the Cranelift backend with rustc" [#270](https://github.com/rust-lang/compiler-team/issues/270)
    - "Decentralize queries" [#277](https://github.com/rust-lang/compiler-team/issues/277)
    - "illumos toolchain builds" [#279](https://github.com/rust-lang/compiler-team/issues/279)
    - "Make `CONTRIBUTING.md` into a series of tutorials" [#296](https://github.com/rust-lang/compiler-team/issues/296)

## Beta-nominations

No beta nominations this time for [`T-compiler`](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=label%3Abeta-nominated+label%3AT-compiler), [`libs-impl`](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=label%3Abeta-nominated+label%3Alibs-impl) and [`T-rustdoc`](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=label%3Abeta-nominated+label%3AT-rustdoc).

## Stable-nominations

No stable nominations this time for [`T-compiler`](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=label%3Astable-nominated+label%3AT-compiler), [`libs-impl`](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=label%3Astable-nominated+label%3Alibs-impl) and [`T-rustdoc`](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=label%3Astable-nominated+label%3AT-rustdoc).

## PR's S-waiting-on-team

[T-compiler S-waiting-on-team](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)

- "Print environment variables accessed by rustc as special comments into depinfo files" [#71858](https://github.com/rust-lang/rust/pull/71858)
  - In FCP, disposition-merge
  - Assigned to @**simulacrum** 
- "Don't emit structure padding members if no padding is required." [#72541](https://github.com/rust-lang/rust/pull/72541)
  - This is also nominated for T-compiler
  - This needs discussion from some people with LLVM knowledge
  - It sounds like eddyb is saying supporting SPIR-V isn't viable so we shouldn't take this patch regardless.
  - Assigned to @**eddyb**
- "Implement `--extern-location`" [#72603](https://github.com/rust-lang/rust/pull/72603)
  - This is also nominated for T-compiler and T-cargo
  - What process should we follow with this? MCP/RFC?
  - Assigned to @**Matthew Jasper**

No [libs-impl S-waiting-on-team](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3Alibs-impl).

## Issues of Note

### Short Summary

- [4 P-critical issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-critical+)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [37 P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-high+)
  - [16 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+is%3Aissue+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [3 P-medium regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
  - All of them are unassigned.
- [2 P-critical, 4 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
  - Only the P-criticals are assigned.
- [71 regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)
  - [17 of those are not prioritized](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-stable+-label%3AP-critical+-label%3AP-high+-label%3AP-medium+-label%3AP-low).

There is one less `P-critical` issues and 3 less `P-high` issues in comparison with last week.

### P-critical

- "Unsoundness due to variance of trait objects WRT associated types" [#71550](https://github.com/rust-lang/rust/issues/71550)
  - This issue is assigned to @**spastorino** and has an [PR open](https://github.com/rust-lang/rust/pull/71896).
  - Crater run from the fix suggested 16 non-spurious regressions.
  - Niko suspects we should land the PR, at the start of a release cycle.
  - We are starting a new cycle, so should we merge?.
- "Trait object with non-static lifetime is accepted where static lifetime is expected and required" [#72315](https://github.com/rust-lang/rust/issues/72315)
  - This issue is related to the previous one, and fixed by the same [PR](https://github.com/rust-lang/rust/pull/71896).
- "LLVM error: "Instruction does not dominate all uses!" on Windows" [#72470](https://github.com/rust-lang/rust/issues/72470)
  - Assigned to @**pnkfelix**
  - It is also a regression
      - supposedly injected by [PR #71840](https://github.com/rust-lang/rust/pull/71840)
  - Rejects valid code.
  - It's windows only.
  - This seems to indicate incorrect MIR being generated.
  - We've decided to revert.
- "ICE when structurally matching a struct containing an associated type on latest Nightly." [#72896](https://github.com/rust-lang/rust/issues/72896)
  - Detected one day after the nightly release
  - Breaks valid code
  - Assigned to @**lcnr** 

### Unassigned P-high regressions

There are no unassigned P-high regressions.

## Performance logs

[Triage done by njn](https://github.com/rust-lang/rustc-perf/tree/master/triage#triage-logs)

Regressions
- Nothing of note!

Improvements
- [perf: Revert accidental inclusion of a part of #69218](https://github.com/rust-lang/rust/pull/71996)
  ([instructions](https://perf.rust-lang.org/compare.html?start=2873165725c15e96dae521a412065c144d9c7a25&end=664fcd3f046e2a6824602da0fad81e3e2bb0d409&stat=instructions:u))
- [Pass more `Copy` types by value.](https://github.com/rust-lang/rust/pull/72494)
  ([instructions](https://perf.rust-lang.org/compare.html?start=664fcd3f046e2a6824602da0fad81e3e2bb0d409&end=45127211566c53bac386b66909a830649182ab7a&stat=instructions:u)):
  This fixes part of the regression from
  [#72055](https://github.com/rust-lang/rust/pull/72055) from last week.
- [Rollup of 9 pull requests](https://github.com/rust-lang/rust/pull/72778)
  ([instructions](https://perf.rust-lang.org/compare.html?start=91fb72a8a9f53de2bcc5638c1358fcb552dba8ce&end=74e80468347471779be6060d8d7d6d04e98e467f&stat=instructions:u))

## Nominated Issues

[T-compiler I-nominated](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)

- "tag/niche terminology cleanup" [#72497](https://github.com/rust-lang/rust/pull/72497)
  - Nominated to determine if this is the terminology we want to use.
  - Assigned to @**eddyb**
- "Don't emit structure padding members if no padding is required." [#72541](https://github.com/rust-lang/rust/pull/72541)
  - Nominated to determine if this is a patch we want to take. 
      - @**eddyb** writes: "I don't think supporting SPIR-V is a plausible goal for the Rust LLVM backend, given all the limitations I've heard about. It would require a lot of transformation of anything involving memory IIRC."
  - Assigned to @**eddyb**
- "Implement `--extern-location`" [#72603](https://github.com/rust-lang/rust/pull/72603)
  - Nominated:
      - to determine what process should we follow with this. MCP/RFC?
      - for visbility on the feature and to elicit review feedback.
  - Assigned to @**Matthew Jasper**  
- "Cycle error through variance computation when using `-> _`." [#72730](https://github.com/rust-lang/rust/issues/72730)
    - (This is an issue)
    - @**eddyb** nominated "for discussion (on the topic of variance of "function item" types)."

[libs-impl I-nominated](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3Alibs-impl)

- "`nth_back()` for `Zip` returns wrong values" [#68536](https://github.com/rust-lang/rust/issues/68536)
  - Nominated to determine how can we fix this problem and to raise awareness of it.

## WG checkins

@*T-compiler/WG-meta* checkin by @**nikomatsakis** and @**spastorino**:

>- Merged the MCP RFC
>- Proposed meeting and elaborated some on the idea of "areas" of the compiler
>- Renamed ICE Breaker groups to notify groups
>- Working on creating a Windows notification group -- will likely pull the trigger soon

@*WG-mir-opt* checkin by @**oli**:

>## Major things
>* "dumb" NRVO optimization #72205
>* Const prop now works on user variables #71518 
>* Thread local storage accesses are now a dedicated runtime operation (mir rvalue) #71192
>* Unused reads of discriminants are now removed, just like unused normal reads #70595 
>* SimplifyLocals optimization is now run repeatedly to a fixed point #70755
>* All mir-opt tests are now `--bless`able #70721
>* Fearlessly optimize away constants #70820
>* mir-opt-level 0 doesn't run optional optimizations anymore #70073
>* MIR drop generation at MIR building time reworked into a structured scheme instead of ad-hoc generation #71840
>* `Operand::Copy` of `&mut T` is unsound #72093 #72820
>    * We now have a dedicated MIR validation pass that checks whether the result of your optimizations upholds a bunch of invariants. Please encode all  invariants you can think of in this pass in addition to documentation.
>
>## Interesting snippets
>* MIR can have multiple `return` terminators and everything is fine #72563
>* Make mir dumps less noisy #71200
>* More aggressively const prop aggregates, mutable variables and field accesses #72135 #71953
>* The `return` terminator is now treated as a read from `_0` (the return place)  #72048
>* SimplifyArmIdentity can now run on mir-opt-level 1 #69756
