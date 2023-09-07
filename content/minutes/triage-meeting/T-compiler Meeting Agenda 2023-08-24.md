---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2023-08-24

## Announcements

- Today 1.72 stable release ([blog post draft](https://github.com/rust-lang/blog.rust-lang.org/blob/2e8f90b448c8d9c5d1b48feb5fe0e28ad7cf603e/posts/2023-08-24-Rust-1.72.0.md))
- [Compiler Team Planning meeting](https://www.google.com/calendar/event?eid=MDJyYnJ1cGFtdWR1c2lnNjFmcHJ2b3JlODFfMjAyMzA4MjVUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-08-25T10:00:00-04:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- [wg-async open discussion](https://www.google.com/calendar/event?eid=ajVtNGowYjlzdDNhM2VwZG9vNjg4OTlzNDBfMjAyMzA4MjRUMTYwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-08-24T12:00:00-04:00>
- [AFIT/RPITIT Impl Triage](https://www.google.com/calendar/event?eid=N2VsaWszdm9rY3NhdDF1MjdyMjVqajNpcWVfMjAyMzA4MjRUMjAwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-08-24T16:00:00-04:00>
- [Types team meeting](https://www.google.com/calendar/event?eid=MTg3MDhpdTc3YXBqMGMzbnNxanUwdWZnazhfMjAyMzA4MjhUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-08-28T10:00:00-04:00>
- [[Types] Rotating new solver / formality / polonius deep dive](https://www.google.com/calendar/event?eid=N29vMXZqbGZ1MDIxbzllMDI3dGhocWhhZmNfMjAyMzA4MjhUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-08-28T11:00:00-04:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - "Simplify and improve explicitness of the check-cfg syntax" [compiler-team#636](https://github.com/rust-lang/compiler-team/issues/636) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-t-compiler.2Fmajor-changes/topic/Simplify.20and.20improve.20explicitness.20of.20the.20.E2.80.A6.20compiler-team.23636)) (last review activity: 2 months ago)
    - no discussion or seconding
  - "Add support for visionOS targets" [compiler-team#642](https://github.com/rust-lang/compiler-team/issues/642) (last review activity: about 53 days ago)
    - Felix [suggested](https://rust-lang.zulipchat.com/#narrow/stream/233931-t-compiler.2Fmajor-changes/topic/Add.20support.20for.20visionOS.20targets.20compiler-team.23642/near/371336514) to close until LLVM adds support for this target, no counter-argument
- Old MCPs (not seconded, take a look)
  - "Cell Broadband Engine SPU support" [compiler-team#614](https://github.com/rust-lang/compiler-team/issues/614) (last review activity: 4 months ago) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Cell.20Broadband.20Engine.20SPU.20support.20compiler-team.23614))
    - Unsure if we want to second this (Felix raised a [mild concern](https://rust-lang.zulipchat.com/#narrow/stream/233931-t-compiler.2Fmajor-changes/topic/Cell.20Broadband.20Engine.20SPU.20support.20compiler-team.23614/near/377335508))
  - "Consistently use "region" terminology in later stages of the compiler" [compiler-team#634](https://github.com/rust-lang/compiler-team/issues/634) (last review activity: 2 months ago) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Consistently.20use.20.22region.22.20terminology.20in.20.E2.80.A6.20compiler-team.23634)) 
  - "Add a new `--build-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635) (last review activity: 2 months ago) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20new.20.60--build-id.60.20flag.20to.20rustc.20compiler-team.23635))
    - proposal received mixed comments
  - "Add illumos Tier3 targets" [compiler-team#644](https://github.com/rust-lang/compiler-team/issues/644) (last review activity: about 28 days ago) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20illumos.20Tier3.20targets.20compiler-team.23644))
    - [rustc#112936](https://github.com/rust-lang/rust/pull/112936) is waiting for the MCP to be seconded
  - "Migrate away from u32 as an offset/length type" [compiler-team#647](https://github.com/rust-lang/compiler-team/issues/647) (last review activity: about 46 days ago) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Migrate.20away.20from.20u32.20as.20an.20offset.2Flength.E2.80.A6.20compiler-team.23647))
    - some bits merged without t-compiler seconding ([comment](https://rust-lang.zulipchat.com/#narrow/stream/233931-t-compiler.2Fmajor-changes/topic/Migrate.20away.20from.20u32.20as.20an.20offset.2Flength.E2.80.A6.20compiler-team.23647/near/376040465))
    - the scope will be clarified and split into a follow-up MCP replacing this one ([comment](https://rust-lang.zulipchat.com/#narrow/stream/233931-t-compiler.2Fmajor-changes/topic/Migrate.20away.20from.20u32.20as.20an.20offset.2Flength.E2.80.A6.20compiler-team.23647/near/386612842))
  - "Add `builtin:$path` option to the `-L` flag" [compiler-team#659](https://github.com/rust-lang/compiler-team/issues/659) (last review activity: about 18 days ago) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60builtin.3A.24path.60.20option.20to.20the.20.60-L.60.20fl.E2.80.A6.20compiler-team.23659))
  - "Allow anonymous constants to be folded across crates (weak linkage + COMDAT)" [compiler-team#662](https://github.com/rust-lang/compiler-team/issues/662) (last review activity: about 4 days ago) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20anonymous.20constants.20to.20be.20folded.20ac.E2.80.A6.20compiler-team.23662)) 
  - "Promote loongarch64-unknown-none* to Tier 2" [compiler-team#664](https://github.com/rust-lang/compiler-team/issues/664) (last review activity: about 4 days ago) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20loongarch64-unknown-none.2A.20to.20Tier.E2.80.A6.20compiler-team.23664))
- Pending FCP requests (check your boxes!)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618781780)
  - "Tracking issue for dyn upcasting coercion" [rust#65991](https://github.com/rust-lang/rust/issues/65991#issuecomment-1670127912)
  - "stabilize combining +bundle and +whole-archive link modifiers" [rust#113301](https://github.com/rust-lang/rust/pull/113301#issuecomment-1679904521)
  - "Support overriding `warnings` level for a specific lint via command line" [rust#113307](https://github.com/rust-lang/rust/pull/113307#issuecomment-1621305927)
  - "Stabilize `PATH` option for `--print KIND=PATH`" [rust#114183](https://github.com/rust-lang/rust/pull/114183#issuecomment-1656270266)
- Things in FCP (make sure you're good with it)
  - "Add a blanket flag to enable/disable codegen UB checks" [compiler-team#625](https://github.com/rust-lang/compiler-team/issues/625)
  - "Add support for Zephyr OS" [compiler-team#629](https://github.com/rust-lang/compiler-team/issues/629)
  - "Report all lints, even if other errors already occurred." [compiler-team#633](https://github.com/rust-lang/compiler-team/issues/633)
  - "Add option to pass environment variables" [compiler-team#653](https://github.com/rust-lang/compiler-team/issues/653)
  - "Add tidy rule against `issue-[0-9]+.rs` tests" [compiler-team#658](https://github.com/rust-lang/compiler-team/issues/658)
  - "Move a `wasm32-wasi-preview1-threads` target to tier 2" [compiler-team#661](https://github.com/rust-lang/compiler-team/issues/661)
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - "Lower `Or` pattern without allocating place" [rust#111752](https://github.com/rust-lang/rust/pull/111752)
  - "style-guide: Add section on bugs, and resolving bugs" [rust#113383](https://github.com/rust-lang/rust/pull/113383)

### WG checkins

- @_*WG-llvm* by @**nagisa** and @**Nikita Popov** ([previous checkin](https://hackmd.io/dPMI9IZqR0uzp4fuZVr4lg#WG-checkins)):
  > Nikita reports:
  > * Main news is that we upgraded to LLVM 17 (https://github.com/rust-lang/rust/pull/114048), with very nice perf results. Smoothest LLVM upgrade in a while.
  > * We also bumped the minimum LLVM version to 15 recently, which mainly means that we only support opaque pointers now. That cleans up various stuff in codegen and especially codegen tests.

- @_*WG-mir-opt* by @**oli** ([previous checkin](https://hackmd.io/IPpNv80sQAmD2ZTF6h56ng#WG-checkins)):
  > No updates, oli is on vacation.

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: [1.73.0-beta.1] "Add projection obligations when comparing impl too" [rust#115039](https://github.com/rust-lang/rust/pull/115039)
  - Fixes #115033 and #115051, reported breaking compilations in 2 crates. Seems good to backport this.
<!--
/poll Approve beta backport of #115039?
approve
decline
don't know
-->
- :beta: [1.73.0-beta.1] "Contents of reachable statics is reachable" [rust#115114](https://github.com/rust-lang/rust/pull/115114)
  - fixes #115052, ICE when compiling, possibly leading also to linking errors
  - nominated by @**pnkfelix** ([comment](https://github.com/rust-lang/rust/pull/115114#issuecomment-1691013640)) 
<!--
/poll Approve beta backport of #115114?
approve
decline
don't know
-->

- No stable nominations for `T-compiler` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "More distinctive pretty-printing of function item types" [rust#99927](https://github.com/rust-lang/rust/pull/99927)
  - Has been stale for months, both [on Zulip](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/More.20distinctive.20pretty-printing.20of.20function.20item.20types) and [Github](https://github.com/rust-lang/rust/pull/99927#issuecomment-1501179063)
  - candidate for closing or just in the backburner? cc @**Esteban Küber** 
- Other issues [in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [54 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [28 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 0 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 2 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [2 P-critical, 35 P-high, 100 P-medium, 18 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "ICE: broken mir while building rustc" [rust#114375](https://github.com/rust-lang/rust/issues/114375)
  - on stable since #109075 ([comment](https://github.com/rust-lang/rust/issues/114375#issuecomment-1684010652)) but only triggers with `-Zvalidate-mir`. Taken care of by @**Michael Goulet (compiler-errors)** in #115005 ([comment](https://github.com/rust-lang/rust/issues/114375#issuecomment-1685085911))
  - issue is now closed, can remove the `I-compiler-nominated`? anything to discuss cc @**Wesley Wiser**?
- "ScalarReplacementOfAggregates causes rustc to emit invalid LLVM debuginfo (and sometimes rustc segfaults)" [rust#115113](https://github.com/rust-lang/rust/issues/115113)
  - Mitigated by [rust#115139](https://github.com/rust-lang/rust/pull/115139) and (related) [rust#115140](https://github.com/rust-lang/rust/pull/115140)
  - missed the 1.72 train, though. @**Josh Stone (cuviper)** volunteered to contribute a patch after 1.72 is out ([comment](https://github.com/rust-lang/rust/issues/115113#issuecomment-1688956644))
  - Real world fallout so far seems this [bugzilla issue](https://bugzilla.redhat.com/show_bug.cgi?id=2226564) and [rust#115156](https://github.com/rust-lang/rust/issues/115156)

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- "RPIT hidden types can be ill-formed" [rust#114728](https://github.com/rust-lang/rust/issues/114728)
  - taken care of by @**aliemjay** in #114933

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2023-08-22](https://github.com/rust-lang/rustc-perf/blob/master/triage/2023-08-22.md)

A week with very few real regressions and some good improvements through work done by @cjgillot who found a few spots where the compiler was doing unnecessary work.

Triage done by **@rylev**.
Revision range: [e845910..d4a881](https://perf.rust-lang.org/?start=e8459109bbb440764c1c877032189a27b9e76c4e&end=d4a881e1433cd10e424843353e1f939f5a798f4e&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.4%  | [0.5%, 2.6%]   | 13    |
| Regressions (secondary)  | 0.6%  | [0.3%, 0.8%]   | 8     |
| Improvements (primary)   | -0.7% | [-1.4%, -0.3%] | 59    |
| Improvements (secondary) | -0.8% | [-1.3%, -0.3%] | 38    |
| All  (primary)           | -0.3% | [-1.4%, 2.6%]  | 72    |


3 Regressions, 2 Improvements, 2 Mixed; 2 of them in rollups
28 artifact comparisons made in total

#### Regressions

Warn on inductive cycle in coherence leading to impls being considered not overlapping [#114023](https://github.com/rust-lang/rust/pull/114023) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d7e751006cb3691d1384b74196a9cb45447acfa8&end=a32978a5e8a3c34bb5caa1175f7404c2ede019b6&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.3% | [0.6%, 2.5%] | 10    |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 1.3% | [0.6%, 2.5%] | 10    |
- The author is investigating whether this is due to the use of a temporary lint or if there is some more fundamental change happening here.


Rollup of 7 pull requests [#114879](https://github.com/rust-lang/rust/pull/114879) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4e3ce0e782a30d467ddbc542c3eb5d215eac1b9d&end=60713f4234c56e21f77e37c61dd731247d0b9429&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.3%, 0.3%] | 2     |
| Regressions (secondary)  | 0.5% | [0.4%, 0.6%] | 8     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.3%, 0.3%] | 2     |
- The perf result seems to just be noise.


Remove conditional use of `Sharded` from query caches [#114892](https://github.com/rust-lang/rust/pull/114892) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f3b4c6746aa0e278797ae52e2c16fdef04136e3a&end=c5833f1956bea474034ffec5ab2c75f343548038&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.4% | [0.2%, 0.5%] | 3     |
| Regressions (secondary)  | 0.5% | [0.4%, 0.6%] | 8     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.4% | [0.2%, 0.5%] | 3     |
- Perf results are small and worth the simplification in code.


#### Improvements

Do not mark shallow_lint_levels_on as eval_always. [#114536](https://github.com/rust-lang/rust/pull/114536) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=656ee47db32e882fb02913f6204e09cc7a41a50e&end=4e3ce0e782a30d467ddbc542c3eb5d215eac1b9d&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.4%  | [0.4%, 0.4%]   | 1     |
| Improvements (primary)   | -0.7% | [-1.3%, -0.3%] | 30    |
| Improvements (secondary) | -0.5% | [-1.0%, -0.3%] | 15    |
| All  (primary)           | -0.7% | [-1.3%, -0.3%] | 30    |


Only run MaybeInitializedPlaces dataflow once to elaborate drops [#111555](https://github.com/rust-lang/rust/pull/111555) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=07438b0928c6691d6ee734a5a77823ec143be94d&end=f3b4c6746aa0e278797ae52e2c16fdef04136e3a&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.6%  | [0.6%, 0.6%]   | 1     |
| Improvements (primary)   | -0.8% | [-1.3%, -0.3%] | 27    |
| Improvements (secondary) | -0.7% | [-1.1%, -0.4%] | 32    |
| All  (primary)           | -0.8% | [-1.3%, -0.3%] | 27    |


#### Mixed

add a csky-unknown-linux-gnuabiv2 target [#113658](https://github.com/rust-lang/rust/pull/113658) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f960bdf1feacad4ab5a079c76ff31053c1799f71&end=180dffba142c47240ca0d93096ce90b9fd97c8d7&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.3%  | [0.3%, 1.9%]   | 3     |
| Regressions (secondary)  | 0.3%  | [0.3%, 0.3%]   | 1     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.2%] | 4     |
| Improvements (secondary) | -0.3% | [-0.4%, -0.2%] | 4     |
| All  (primary)           | 0.4%  | [-0.3%, 1.9%]  | 7     |
- Noise


Rollup of 10 pull requests [#114852](https://github.com/rust-lang/rust/pull/114852) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4f4dae055b470c889968b02964a28477f9daff62&end=c57393e4f8b88444fbf0985a81a2d662862f2733&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.5%, 0.6%]   | 4     |
| Regressions (secondary)  | 1.0%  | [1.0%, 1.0%]   | 3     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 1     |
| All  (primary)           | 0.5%  | [0.5%, 0.6%]   | 4     |
- Noise

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues at this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs at this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "compiler: be more clear about transparent layout violations" [rust#114015](https://github.com/rust-lang/rust/pull/114015)(last review activity: about 28 days ago)
  - Another one circling around, now autorolled to @_**Michael Goulet (compiler-errors)** but maybe up for grabs 
- "Ignore host C++ runtime in a cross build scenario" [rust#114078](https://github.com/rust-lang/rust/pull/114078)(last review activity: about 27 days ago)
  - cc: @**Josh Stone (cuviper)** (or reroll)

## Next week's WG checkins

- @_*T-rust-analyzer* by @**Lukas Wirth**

Next meetings' agenda draft: <https://hackmd.io/0WLg3ph5Rkqmvv692KMhLA>

