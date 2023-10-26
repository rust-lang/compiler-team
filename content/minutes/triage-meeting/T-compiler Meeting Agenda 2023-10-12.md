---
tags: weekly, rustc
type: docs
note_id: Eq0n1oBvTaajzXK5WvKPng
---

# T-compiler Meeting Agenda 2023-10-12

## Announcements
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- [Types team meeting: review meetup outcomes](https://www.google.com/calendar/event?eid=MTg3MDhpdTc3YXBqMGMzbnNxanUwdWZnazhfMjAyMzEwMTZUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-10-16T10:00:00-04:00>
- [[Types] Rotating new solver / formality / polonius deep dive](https://www.google.com/calendar/event?eid=N29vMXZqbGZ1MDIxbzllMDI3dGhocWhhZmNfMjAyMzEwMTZUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-10-16T11:00:00-04:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Consistently use "region" terminology in later stages of the compiler" [compiler-team#634](https://github.com/rust-lang/compiler-team/issues/634) (last review activity: 4 months ago)
  - "Add a new `--build-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635) (last review activity: 4 months ago)
  - "Add support for visionOS targets" [compiler-team#642](https://github.com/rust-lang/compiler-team/issues/642) (last review activity: about 40 days ago)
  - "Match the behavior of `strip` and `split-debuginfo` across platforms" [compiler-team#669](https://github.com/rust-lang/compiler-team/issues/669) (last review activity: about 37 days ago)
- Pending FCP requests (check your boxes!)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649)
  - " Add `type` field to distinguish json diagnostic outputs" [compiler-team#673](https://github.com/rust-lang/compiler-team/issues/673)
  - "Stabilize `--json=unused-externs(-silent)`" [compiler-team#674](https://github.com/rust-lang/compiler-team/issues/674)
  - "Tracking issue for dyn upcasting coercion" [rust#65991](https://github.com/rust-lang/rust/issues/65991)
  - "Support overriding `warnings` level for a specific lint via command line" [rust#113307](https://github.com/rust-lang/rust/pull/113307)
  - "Update Windows platform support" [rust#115141](https://github.com/rust-lang/rust/pull/115141)
  - "make soft_unstable show up in future breakage reports" [rust#116274](https://github.com/rust-lang/rust/pull/116274)
  - "Remove support for compiler plugins." [rust#116412](https://github.com/rust-lang/rust/pull/116412)
- Things in FCP (make sure you're good with it)
  - "Add a blanket flag to enable/disable codegen UB checks" [compiler-team#625](https://github.com/rust-lang/compiler-team/issues/625)
  - "Report all lints, even if other errors already occurred." [compiler-team#633](https://github.com/rust-lang/compiler-team/issues/633)
  - "Simplify and improve explicitness of the check-cfg syntax" [compiler-team#636](https://github.com/rust-lang/compiler-team/issues/636)
  - "Add infrastructure to "compute the ABI of a Rust type, described as a C type"" [compiler-team#672](https://github.com/rust-lang/compiler-team/issues/672)
  - "Stabilize `--json=unused-externs(-silent)`" [compiler-team#674](https://github.com/rust-lang/compiler-team/issues/674)
  - "Have `rustc` produce a local log of execution metrics" [compiler-team#679](https://github.com/rust-lang/compiler-team/issues/679)
  - "Enable Parallel Rustc Front End In Nightly Builds" [compiler-team#681](https://github.com/rust-lang/compiler-team/issues/681)
- Accepted MCPs
  - "Add support for Zephyr OS" [compiler-team#629](https://github.com/rust-lang/compiler-team/issues/629)
  - "Add illumos Tier3 targets" [compiler-team#644](https://github.com/rust-lang/compiler-team/issues/644)
  - "Add option to pass environment variables" [compiler-team#653](https://github.com/rust-lang/compiler-team/issues/653)
  - "Add tidy rule against `issue-[0-9]+.rs` tests" [compiler-team#658](https://github.com/rust-lang/compiler-team/issues/658)
  - "Condemn `asmjs-unknown-emscripten` to push a boulder up a hill for eternity" [compiler-team#668](https://github.com/rust-lang/compiler-team/issues/668)
  - "Allow overriding default codegen backend on a per-target basis" [compiler-team#670](https://github.com/rust-lang/compiler-team/issues/670)
  - "Change how closure and generator types are printed to avoid clash with slice types" [compiler-team#675](https://github.com/rust-lang/compiler-team/issues/675)
  - "Offload dep graph encoding to a thread" [compiler-team#677](https://github.com/rust-lang/compiler-team/issues/677)
- Finalized FCPs (disposition merge)
  - "rustdoc-search: add impl disambiguator to duplicate assoc items" [rust#109422](https://github.com/rust-lang/rust/pull/109422)
  - "Rework negative coherence to properly consider impls that only partly overlap" [rust#112875](https://github.com/rust-lang/rust/pull/112875)
  - "stabilize combining +bundle and +whole-archive link modifiers" [rust#113301](https://github.com/rust-lang/rust/pull/113301)
  - "fix detecting references to packed unsized fields" [rust#115583](https://github.com/rust-lang/rust/pull/115583)
  - "rustdoc: show crate name beside smaller logo" [rust#115948](https://github.com/rust-lang/rust/pull/115948)

### WG checkins

- @_*WG-llvm* by @**nagisa** and @**Nikita Popov** ([previous checkin](https://hackmd.io/EoH5hPsnTdaD1dcKEVbYug#WG-checkins)):
  > The main news is that the change of alignment for i128 on x86 to match the SysV ABI has been merged. This may be tricky to phase in as it also affects layout of types in Rust.

- @_*WG-mir-opt* by @**oli** ([previous checkin](https://hackmd.io/IPpNv80sQAmD2ZTF6h56ng#WG-checkins)):
  > Checkin text

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No beta nominations for `T-compiler` this time.
- No stable nominations for `T-compiler` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- Other issues [in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [61 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [34 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 1 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 2 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 40 P-high, 100 P-medium, 19 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2023-10-10](https://github.com/rust-lang/rustc-perf/blob/master/triage/2023-10-10.md)

A quiet week, with few regressions and improvements.

Triage done by **@simulacrum**.
Revision range: [9998f4add08c3d09c82e00975cf3a293b30160ec..84d44dd1d8ec1e98fff94272ba4f96b2a1f044ca](https://perf.rust-lang.org/?start=9998f4add08c3d09c82e00975cf3a293b30160ec&end=84d44dd1d8ec1e98fff94272ba4f96b2a1f044ca&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.8%  | [0.3%, 2.9%]   | 47    |
| Regressions (secondary)  | 1.1%  | [0.2%, 4.8%]   | 19    |
| Improvements (primary)   | -2.0% | [-3.6%, -0.4%] | 2     |
| Improvements (secondary) | -0.5% | [-0.7%, -0.4%] | 11    |
| All  (primary)           | 0.7%  | [-3.6%, 2.9%]  | 49    |


1 Regressions, 2 Improvements, 4 Mixed; 1 of them in rollups
68 artifact comparisons made in total

#### Regressions

Rollup of 7 pull requests [#116492](https://github.com/rust-lang/rust/pull/116492) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=94bc9c737ea97d56f9b4076553ac37c05c1e3931&end=960754090acc9cdd2a5a57586f244c0fc712d26c&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.9% | [0.7%, 1.0%] | 2     |
| Regressions (secondary)  | 2.3% | [1.2%, 3.6%] | 4     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.9% | [0.7%, 1.0%] | 2     |

This is likely due to better ability to optimize, see
[comment](https://github.com/rust-lang/rust/pull/116481#issuecomment-1755433223).

#### Improvements

Rollup of 5 pull requests [#116455](https://github.com/rust-lang/rust/pull/116455) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3bcad65fbf67b6edf87c949531fbc13435882e6b&end=cdca82c2c853c8373c0c333a2fd7d1b480d7f1d2&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-0.9%, -0.5%] | 3     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.7% | [-0.9%, -0.5%] | 3     |


Generalize small dominators optimization [#116454](https://github.com/rust-lang/rust/pull/116454) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1e3c8f196b2753b3e463bc6be2dc446f36653279&end=4f4a413fe6931d0ad9d3ac6bd20ff36398961e64&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.5% | [-0.8%, -0.3%] | 7     |
| Improvements (secondary) | -0.9% | [-1.1%, -0.7%] | 7     |
| All  (primary)           | -0.5% | [-0.8%, -0.3%] | 7     |


#### Mixed

Make subtyping explicit in MIR [#115025](https://github.com/rust-lang/rust/pull/115025) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9998f4add08c3d09c82e00975cf3a293b30160ec&end=eb0f3ed59c6508a37c6598bc9762987f053993a7&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.4%, 0.8%]   | 2     |
| Regressions (secondary)  | 0.5%  | [0.1%, 1.1%]   | 17    |
| Improvements (primary)   | -0.5% | [-0.6%, -0.5%] | 2     |
| Improvements (secondary) | -0.5% | [-0.5%, -0.5%] | 1     |
| All  (primary)           | 0.0%  | [-0.6%, 0.8%]  | 4     |


Remove mir::LocalDecl::internal. [#116427](https://github.com/rust-lang/rust/pull/116427) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e2939270168f2a23ef2ec0b2a193dbb63f92ae07&end=5c3a0e932b7c6864f98dac739b576e9ff5913739&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.4%, 0.8%]   | 4     |
| Regressions (secondary)  | 0.1%  | [0.1%, 0.1%]   | 1     |
| Improvements (primary)   | -0.4% | [-0.4%, -0.4%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 0.4%  | [-0.4%, 0.8%]  | 5     |


Remove is global hack [#116417](https://github.com/rust-lang/rust/pull/116417) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=cdca82c2c853c8373c0c333a2fd7d1b480d7f1d2&end=cae0791da47bb01f16885eb233dcd66b0093a6e1&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.1%, 1.4%]   | 22    |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.7% | [-0.9%, -0.2%] | 7     |
| All  (primary)           | 0.4%  | [0.1%, 1.4%]   | 22    |


Always preserve DebugInfo in DeadStoreElimination. [#116183](https://github.com/rust-lang/rust/pull/116183) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ab039f79b8a0cfea01fb8aa10860560b9689e4c6&end=1e3c8f196b2753b3e463bc6be2dc446f36653279&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.2%, 3.1%]   | 30    |
| Regressions (secondary)  | 1.4%  | [0.1%, 2.3%]   | 13    |
| Improvements (primary)   | -1.1% | [-3.1%, -0.2%] | 4     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 1     |
| All  (primary)           | 0.5%  | [-3.1%, 3.1%]  | 34    |

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Code no longer compiles after -Zdrop-tracking-mir was enabled by default" [rust#116242](https://github.com/rust-lang/rust/issues/116242)
  - regression reported from @**tmandry** on some Fuchsia code
  - regressed in [rust#107421](https://github.com/rust-lang/rust/pull/107421)
  - @**apiraino** nominated to get more eyeballs on it: help get some context, which group of people to assign (wg-async?) and maybe priority (is it a bad regression?)
  - [Zulip prioritization short topic](https://rust-lang.zulipchat.com/#narrow/stream/245100-t-compiler.2Fwg-prioritization.2Falerts/topic/.23116242.20Code.20no.20longer.20compiles.20after.20-Zdrop-tracking-mir.20w.E2.80.A6)

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Implement jump threading MIR opt" [rust#107009](https://github.com/rust-lang/rust/pull/107009) (last review activity: 6 months ago)
  - This was rerolled to you @**Wesley Wiser**, do you have time for that or roll again?
- "Require `type_map::stub` callers to supply file information" [rust#104342](https://github.com/rust-lang/rust/pull/104342) (last review activity: 3 months ago)
  - same as above cc @**Wesley Wiser** (sorry Wes for being hit by the rustbot!)
- "Fix ICE when trying to convert `ConstKind::Error` to usize" [rust#113712](https://github.com/rust-lang/rust/pull/113712) (last review activity: 2 months ago)
  - cc: @**cjgillot**
- "Make privacy visitor use types more (instead of HIR)" [rust#113671](https://github.com/rust-lang/rust/pull/113671) (last review activity: about 34 days ago)
  - cc: @**Vadim Petrochenkov** 
- "Add `type` field to distinguish json diagnostic outputs" [rust#115691](https://github.com/rust-lang/rust/pull/115691) (last review activity: about 30 days ago)
  - [mcp#673](https://github.com/rust-lang/compiler-team/issues/673#issuecomment-1713521573) pending FCP in progress
- "tvOS simulator support on Apple Silicon for rustc" [rust#115773](https://github.com/rust-lang/rust/pull/115773) (last review activity: about 29 days ago)
  - cc @**Thom Chiovoloni** 

## Next week's WG checkins

- @_*T-rust-analyzer* by @**Lukas Wirth**

Next meeting's agenda draft: [hackmd link](https://hackmd.io/dkZMBk7MSyG0NjHpb_Ce_A)
