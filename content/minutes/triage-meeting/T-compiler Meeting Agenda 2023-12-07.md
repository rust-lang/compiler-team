---
tags: weekly, rustc
type: docs
note_id: CBacAmB6TTyQJb4kmrBGfw
---

# T-compiler Meeting Agenda 2023-12-07

## Announcements

- 1.74.1 is released ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/241545-t-release/topic/1.2E74.2E1)) and [blog post](https://blog.rust-lang.org/2023/12/07/Rust-1.74.1.html)
  - With some P-high/critical regression were fixed (a big thanks to those that helped debugging and fixing)
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- [AFIT/RPITIT Impl Triage](https://www.google.com/calendar/event?eid=N2VsaWszdm9rY3NhdDF1MjdyMjVqajNpcWVfMjAyMzEyMDdUMjEwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-12-07T16:00:00-05:00>
- [Types team meeting](https://www.google.com/calendar/event?eid=MTg3MDhpdTc3YXBqMGMzbnNxanUwdWZnazhfMjAyMzEyMTFUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-12-11T10:00:00-05:00>
- [[Types] Rotating new solver / formality / polonius deep dive](https://www.google.com/calendar/event?eid=N29vMXZqbGZ1MDIxbzllMDI3dGhocWhhZmNfMjAyMzEyMTFUMTYwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-12-11T11:00:00-05:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Require `--known-broken-llvm` flag for x.py to skip codegen tests on old LLVM" [compiler-team#687](https://github.com/rust-lang/compiler-team/issues/687) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Require.20.60--known-broken-llvm.60.20flag.20for.20x.2E.E2.80.A6.20compiler-team.23687))
    - concern [codegen-tests-are-for-new-optimizations](https://github.com/rust-lang/compiler-team/issues/687#issuecomment-1809869102)
  - "Semantics of `-Cinstrument-coverage=all`" [compiler-team#690](https://github.com/rust-lang/compiler-team/issues/690) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Semantics.20of.20.60-Cinstrument-coverage.3Dall.60.20compiler-team.23690))
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692))
    - concern: [added-complexity-to-frontend](https://rust-lang.zulipchat.com/#narrow/stream/233931-t-compiler.2Fmajor-changes/topic/Add.20hygiene.20attributes.20to.20compile.20expande.E2.80.A6.20compiler-team.23692/near/403245433)
  - "New Tier-3 target: `wasm32-wasi-preview2`" [compiler-team#694](https://github.com/rust-lang/compiler-team/issues/694) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/New.20Tier-3.20target.3A.20.60wasm32-wasi-preview2.60.20compiler-team.23694))
  - "Smooth the renaming transition of `wasm32-wasi`" [compiler-team#695](https://github.com/rust-lang/compiler-team/issues/695) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Smooth.20the.20renaming.20transition.20of.20.60wasm32.E2.80.A6.20compiler-team.23695))
- Old MCPs (not seconded, take a look)
  - "De-llvm some integer intrinsics that on the Rust side always use `u32`" [compiler-team#693](https://github.com/rust-lang/compiler-team/issues/693) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/De-llvm.20some.20integer.20intrinsics.20that.20on.20t.E2.80.A6.20compiler-team.23693)) (last review activity: about 10 days ago)
- Pending FCP requests (check your boxes!)
  - "Add a new `--build-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20new.20.60--build-id.60.20flag.20to.20rustc.20compiler-team.23635))
    - concern [option-name](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1777545767)
    - concern [other-existing-options](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1777545767)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618781780)
    - concern [single-point-of-failure-via-stream-archival](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618781780)
  - "Stabilize `--json=unused-externs(-silent)`" [compiler-team#674](https://github.com/rust-lang/compiler-team/issues/674) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stabilize.20.60--json.3Dunused-externs.28-silent.29.60.20compiler-team.23674))
    - concern [lint-interactions](https://github.com/rust-lang/compiler-team/issues/674#issuecomment-1746696850)
  - "Support overriding `warnings` level for a specific lint via command line" [rust#113307](https://github.com/rust-lang/rust/pull/113307)
    - concern [nesting](https://github.com/rust-lang/rust/pull/113307#issuecomment-1621305927)
  - "Update Windows platform support" [rust#115141](https://github.com/rust-lang/rust/pull/115141)
    - concern [needs blog post](https://github.com/rust-lang/rust/pull/115141#issuecomment-1740089459)
  - "make soft_unstable show up in future breakage reports" [rust#116274](https://github.com/rust-lang/rust/pull/116274)
  - "Stabilize Wasm target features that are in phase 4 and 5" [rust#117457](https://github.com/rust-lang/rust/pull/117457)
  - "static mut: allow mutable reference to arbitrary types, not just slices and arrays" [rust#117614](https://github.com/rust-lang/rust/pull/117614)
- Things in FCP (make sure you're good with it)
  - "Promote tier 3 riscv32 bare metal targets to tier 2" [compiler-team#701](https://github.com/rust-lang/compiler-team/issues/701)
  - "Add a stable flag to enable/disable codegen UB checks" [compiler-team#625](https://github.com/rust-lang/compiler-team/issues/625) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20blanket.20flag.20to.20enable.2Fdisable.20code.E2.80.A6.20compiler-team.23625))
    - concern [needs-fcp](https://github.com/rust-lang/compiler-team/issues/625#issuecomment-1672919695)
  - "Report all lints, even if other errors already occurred." [compiler-team#633](https://github.com/rust-lang/compiler-team/issues/633) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Report.20all.20lints.2C.20even.20if.20other.20errors.20al.E2.80.A6.20compiler-team.23633))
    - concern [errors-inherently-higher-priority](https://github.com/rust-lang/compiler-team/issues/633#issuecomment-1545905322)
  - "Add infrastructure to "compute the ABI of a Rust type, described as a C type"" [compiler-team#672](https://github.com/rust-lang/compiler-team/issues/672) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20infrastructure.20to.20.22compute.20the.20ABI.20of.E2.80.A6.20compiler-team.23672))
  - "Stabilize `--json=unused-externs(-silent)`" [compiler-team#674](https://github.com/rust-lang/compiler-team/issues/674) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stabilize.20.60--json.3Dunused-externs.28-silent.29.60.20compiler-team.23674))
  - "Support response files generated by ninja with `@ninja:path` syntax" [compiler-team#684](https://github.com/rust-lang/compiler-team/issues/684) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Use.20shell.20parsing.20for.20response.20files.20compiler-team.23684))
  - "Add `-Zexperimental-target`" [compiler-team#685](https://github.com/rust-lang/compiler-team/issues/685) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Zexperimental-target.60.20compiler-team.23685))
    - concern [doesn-t-justify-the-maintenance](https://github.com/rust-lang/compiler-team/issues/685#issuecomment-1804693114)
  - "Consistent `Handler` naming" [compiler-team#699](https://github.com/rust-lang/compiler-team/issues/699) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Consistent.20.60Handler.60.20naming.20compiler-team.23699))
  - "Stabilize THIR unsafeck" [rust#117673](https://github.com/rust-lang/rust/pull/117673)
  - "guarantee that char and u32 are ABI-compatible" [rust#118032](https://github.com/rust-lang/rust/pull/118032)
  - "Propose rules for team repo maintenance" [rust-forge#707](https://github.com/rust-lang/rust-forge/pull/707)
- Accepted MCPs
  - "Add -Z small-data-threshold" [compiler-team#689](https://github.com/rust-lang/compiler-team/issues/689) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20-Z.20small-data-threshold.20compiler-team.23689))
  - "Add `$message_type` field to distinguish json diagnostic outputs" [compiler-team#673](https://github.com/rust-lang/compiler-team/issues/673) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.20Add.20.60type.60.20field.20to.20json.20diagnostic.20outp.E2.80.A6.20compiler-team.23673))
  - "Set alignment of `i128` to 128 bits for x86" [compiler-team#683](https://github.com/rust-lang/compiler-team/issues/683) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Set.20alignment.20of.20.60i128.60.20to.20128.20bits.20compiler-team.23683))
  - "Stop emitting less useful debug sections: `.debug_pubnames` and `.debug_pubtypes`" [compiler-team#688](https://github.com/rust-lang/compiler-team/issues/688) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Flag.20to.20stop.20emitting.20less.20useful.20debug.20s.E2.80.A6.20compiler-team.23688))
- Finalized FCPs (disposition merge)
  - "Tracking issue for dyn upcasting coercion" [rust#65991](https://github.com/rust-lang/rust/issues/65991)
  - "TAIT defining scope options" [rust#107645](https://github.com/rust-lang/rust/issues/107645)
    - Note: seems there is disagreement about the status of this proposal. See this [comment](https://github.com/rust-lang/rust/issues/107645#issuecomment-1819331287) and also @**Jack Huey** [comment](https://github.com/rust-lang/rust/issues/107645#issuecomment-1789947052)
  - "[style edition 2024] Combine all delimited exprs as last argument" [rust#114764](https://github.com/rust-lang/rust/pull/114764)
  - "generalize: handle occurs check failure in aliases" [rust#117088](https://github.com/rust-lang/rust/pull/117088)
  - "dropck_outlives check whether generator witness needs_drop" [rust#117134](https://github.com/rust-lang/rust/pull/117134)
  - "Stabilize C string literals" [rust#117472](https://github.com/rust-lang/rust/pull/117472)
  - "generator layout: ignore fake borrows" [rust#117712](https://github.com/rust-lang/rust/pull/117712)

### WG checkins

- @_*T-rust-analyzer* checkin by @**Lukas Wirth** ([previous checkin](https://hackmd.io/CG_A-TBVTBqsH_mfID3Fvg#WG-checkins)):
  > Big things happened! rust-analyzer now uses proper spans for associating things from macro inputs to expansions (although not quite what rustc uses, as rustc's spans are the opposite of being incremental), they are roughly `(FileId, AstId, TextRangeRelativeToAstId, SyntaxContextId)`, https://github.com/rust-lang/rust-analyzer/pull/15959. That PR also switched our `$crate` resolution over to the marking `SyntaxContext` approach that rustc uses meaning we can now start making all of r-a's name resolution hygienic. Finally, support for  implicit format args in almost all IDE features has landed, https://github.com/rust-lang/rust-analyzer/pull/16027

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No beta nominations for `T-compiler` this time.
- :stable: "Make subtyping explicit in MIR" [rust#115025](https://github.com/rust-lang/rust/pull/115025)
  - This is a dependency of #116415 (stable backport approved [2 weeks ago](https://github.com/rust-lang/rust/pull/116415#issuecomment-1822543299), fixes a number of regressions and ICEs)
  - it probably /needs/ to be backported into 1.74.1 as well ([comment](https://github.com/rust-lang/rust/pull/115025#issuecomment-1838841143))
<!--
/poll Approve stable backport of #115025?
approve
approve but does not justify new dot release
decline
don't know
-->
    
[T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- Other issues [in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [60 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [33 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 2 P-high, 4 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 3 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 39 P-high, 100 P-medium, 18 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Miscompilation of Bevy (and some wgpu) apps resulting in segfault on macOS." [rust#117902](https://github.com/rust-lang/rust/issues/117902)
  - long and painful reduction (thanks @**lqd** and @**Ben Kimock (Saethlin)**!)
  - finally cornered to an LLVM issue (submitted as [llvm-project#74680](https://github.com/llvm/llvm-project/issues/74680), see [comment](https://github.com/rust-lang/rust/issues/117902#issuecomment-1843945104))) 
- "1.74 causes an internal compiler error: broken MIR in Item" [rust#117976](https://github.com/rust-lang/rust/issues/117976)
  - stable backports of #116415 and #115025 into 1.74.1 should fix this

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "regression: new resolution failures in 1.74" [rust#117056](hjttps://github.com/rust-lang/rust/issues/117056)
  - (mentioned last week) these regressions *should* hopefully be all fixed
- "Problem running a method on the output of a function that returns an associated type ("missing optimized MIR")" [rust#117997](https://github.com/rust-lang/rust/issues/117997)
  - Culprit identified in #117076 cc: @petrochenkov (reviewer)
  - Issue prioritization review: really P-high?

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2023-12-05](https://github.com/rust-lang/rustc-perf/blob/master/triage/2023-12-05.md)

A small number of perf changes that unfortunately led to quite a few perf regressions. A large chunk of those regressions were in rustdoc and were considered acceptable since rustdoc is now doing strictly more work. Some other regressions have already been fixed and will hopefully soon be merged. The last of the regressions are still under investigation, but hopefully they will be resolved soon.

Triage done by **@rylev**.
Revision range: [df0295f0..9358642e](https://perf.rust-lang.org/?start=df0295f07175acc7325ce3ca4152eb05752af1f2&end=9358642e3b8560eee89e6f40aa996c8394a3db31&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 3.0%  | [0.2%, 12.3%]  | 53    |
| Regressions (secondary)  | 4.1%  | [0.2%, 11.6%]  | 102   |
| Improvements (primary)   | -0.3% | [-0.5%, -0.1%] | 65    |
| Improvements (secondary) | -0.6% | [-1.2%, -0.2%] | 25    |
| All  (primary)           | 1.1%  | [-0.5%, 12.3%] | 118   |


4 Regressions, 1 Improvements, 1 Mixed; 1 of them in rollups
60 artifact comparisons made in total

#### Regressions

Rollup of 5 pull requests [#118473](https://github.com/rust-lang/rust/pull/118473) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c52b8763bf36027f24baabe1f97cab3d3571c9e5&end=1670ff64bf1ccb2ad71068254b53725631c55864&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.4% | [1.4%, 1.4%] | 1     |
| Regressions (secondary)  | 0.1% | [0.1%, 0.1%] | 3     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 1.4% | [1.4%, 1.4%] | 1     |
- Noise


Restore `#![no_builtins]` crates participation in LTO. [#113923](https://github.com/rust-lang/rust/pull/113923) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9cf18e98f82d85fa41141391d54485b8747da46f&end=8c2b57721728233e074db69d93517614de338055&stat=instructions:u)

| (instructions:u)         | mean | range         | count |
|:------------------------:|:----:|:-------------:|:-----:|
| Regressions (primary)    | 6.4% | [0.8%, 12.4%] | 17    |
| Regressions (secondary)  | 5.3% | [0.5%, 12.2%] | 72    |
| Improvements (primary)   | -    | -             | 0     |
| Improvements (secondary) | -    | -             | 0     |
| All  (primary)           | 6.4% | [0.8%, 12.4%] | 17    |
- Builtin function symbols that erroneously do not get GCed
- [#118568](https://github.com/rust-lang/rust/pull/118568) seems to reverse these perf regressions.


Portable SIMD subtree update [#118077](https://github.com/rust-lang/rust/pull/118077) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0908f173fd884ae90584e0b0bca83cb270c23936&end=3f1e30a0a595f1d29fb10d41d9a58811ffdefb6a&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.7% | [0.3%, 2.1%] | 14    |
| Regressions (secondary)  | 1.3% | [0.2%, 2.2%] | 23    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.7% | [0.3%, 2.1%] | 14    |
- All doc regressions due to more docs being generated and thus acceptable


Add an assume that the index is inbounds to slice::get_unchecked [#116915](https://github.com/rust-lang/rust/pull/116915) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c9808f87028e16d134438787cab3d4cc16d05fe2&end=85a4bd8f5873aa3ec5eb38baf63b89aa9bd21a7b&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 2.5%  | [0.3%, 4.5%]   | 10    |
| Regressions (secondary)  | 0.4%  | [0.3%, 0.6%]   | 3     |
| Improvements (primary)   | -0.5% | [-0.5%, -0.5%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 2.2%  | [-0.5%, 4.5%]  | 11    |
- Still under investigation and perhaps a revert is called for


#### Improvements

resolve: Feed the `def_kind` query immediately on `DefId` creation [#118188](https://github.com/rust-lang/rust/pull/118188) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=df0295f07175acc7325ce3ca4152eb05752af1f2&end=5facb422f8a5a61df515572fe79b02433639d565&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.5%, -0.2%] | 58    |
| Improvements (secondary) | -0.5% | [-1.0%, -0.1%] | 34    |
| All  (primary)           | -0.3% | [-0.5%, -0.2%] | 58    |


#### Mixed

add track_caller for arith ops [#114841](https://github.com/rust-lang/rust/pull/114841) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=bbefc9837f4157cc09ed60e6d7b21e345d582dd9&end=b1e56deadaf4b08cd591feaa1a1283348298427d&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.4%]   | 6     |
| Regressions (secondary)  | 0.7%  | [0.2%, 1.3%]   | 12    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.2% | [-0.3%, -0.2%] | 3     |
| All  (primary)           | 0.3%  | [0.2%, 0.4%]   | 6     |
- Only really affecting rustdoc which is an acceptable tradeoff given the wins in diagnostics


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "resolve: re-export ambiguity as warning" [rust#114682](https://github.com/rust-lang/rust/pull/114682) (last review activity: about 55 days ago)
  - cc: **vadim petrochenkov**
- "LLVM 18 x86 data layout update" [rust#116672](https://github.com/rust-lang/rust/pull/116672) (last review activity: about 49 days ago)
  - cc: @**nikita Popov** (will this be part of the next LLVM 18 upgrade?)
- "WIP fix unsoundness via adjusting overlap check for some Pin impls" [rust#116706](https://github.com/rust-lang/rust/pull/116706) (last review activity: about 48 days ago)
  - cc: @**Michael (compiler-errors) Goulet** do you need a review at this time? Also from T-libs?
- "discard invalid spans in external blocks" [rust#116420](https://github.com/rust-lang/rust/pull/116420) (last review activity: about 46 days ago)
  - cc: @**nils (Nilstrieb)** 
- "large_assignments: Lint on specific large args passed to functions" [rust#116520](https://github.com/rust-lang/rust/pull/116520) (last review activity: about 43 days ago)
  - latest [comment](https://github.com/rust-lang/rust/pull/116520#issuecomment-1771119477) mentions [WG-compiler-performance](https://github.com/orgs/rust-lang/teams/wg-compiler-performance) for an opinion. Who can have a look at that?

## Next week's WG checkins

- @_*WG-diagnostics* by @**Esteban Küber** and @**oli**
- @_*WG-rustc-dev-guide* by @**Santiago Pastorino** and @**Yuki Okushi|217081**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/aNZxRH4vSlqax-QqPc_h-A)
