---
tags: weekly, rustc
type: docs
note_id: aNZxRH4vSlqax-QqPc_h-A
---

# T-compiler Meeting Agenda 2023-12-14

## Announcements

- [Compiler Team Planning meeting](https://www.google.com/calendar/event?eid=MDJyYnJ1cGFtdWR1c2lnNjFmcHJ2b3JlODFfMjAyMzEyMTVUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-12-15T10:00:00-05:00>
- Google Summer of Code 2024: brainstorming ideas in ([Zulip thread](https://rust-lang.zulipchat.com/#narrow/stream/335408-foundation/topic/Google.20Summer.20of.20Code.20and.20idea.20list))
  - Do top teams have a wish for projects to be submitted?
  - Do top teams have *capacity* to mentor GSoC participants?
  - GSoC details at [this link](https://google.github.io/gsocguides/mentor/defining-a-project-ideas-list), time window for submissions **Jan, 22nd 2024** until **Feb. 6th, 2024**
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- [AFIT/RPITIT Impl Triage](https://www.google.com/calendar/event?eid=N2VsaWszdm9rY3NhdDF1MjdyMjVqajNpcWVfMjAyMzEyMTRUMjEwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-12-14T16:00:00-05:00>
- [Types team meeting](https://www.google.com/calendar/event?eid=MTg3MDhpdTc3YXBqMGMzbnNxanUwdWZnazhfMjAyMzEyMThUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-12-18T10:00:00-05:00>
- [[Types] Rotating new solver / formality / polonius deep dive](https://www.google.com/calendar/event?eid=N29vMXZqbGZ1MDIxbzllMDI3dGhocWhhZmNfMjAyMzEyMThUMTYwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-12-18T11:00:00-05:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Require `--known-broken-llvm` flag for x.py to skip codegen tests on old LLVM" [compiler-team#687](https://github.com/rust-lang/compiler-team/issues/687) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Require.20.60--known-broken-llvm.60.20flag.20for.20x.2E.E2.80.A6.20compiler-team.23687))
    - concern [codegen-tests-are-for-new-optimizations](https://github.com/rust-lang/compiler-team/issues/687#issuecomment-1809869102)
  - "Semantics of `-Cinstrument-coverage=all`" [compiler-team#690](https://github.com/rust-lang/compiler-team/issues/690) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Semantics.20of.20.60-Cinstrument-coverage.3Dall.60.20compiler-team.23690))
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692))
    - concern: [added-complexity-to-frontend](https://rust-lang.zulipchat.com/#narrow/stream/233931-t-compiler.2Fmajor-changes/topic/Add.20hygiene.20attributes.20to.20compile.20expande.E2.80.A6.20compiler-team.23692/near/403245433)
  - "New Tier-3 target: `wasm32-wasi-preview2`" [compiler-team#694](https://github.com/rust-lang/compiler-team/issues/694) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/New.20Tier-3.20target.3A.20.60wasm32-wasi-preview2.60.20compiler-team.23694))
  - "Smooth the renaming transition of `wasm32-wasi`" [compiler-team#695](https://github.com/rust-lang/compiler-team/issues/695) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Smooth.20the.20renaming.20transition.20of.20.60wasm32.E2.80.A6.20compiler-team.23695))
  - "Introduce perma-unstable `wasm-c-abi` flag" [compiler-team#703](https://github.com/rust-lang/compiler-team/issues/703) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Introduce.20perma-unstable.20.60wasm-c-abi.60.20flag.20compiler-team.23703))
- Old MCPs (not seconded, take a look)
  - No old proposals this time (cool, we finally catched up with MCPs!)
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
  - "Add a stable flag to enable/disable codegen UB checks" [compiler-team#625](https://github.com/rust-lang/compiler-team/issues/625) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20blanket.20flag.20to.20enable.2Fdisable.20code.E2.80.A6.20compiler-team.23625))
    - concern [needs-fcp](https://github.com/rust-lang/compiler-team/issues/625#issuecomment-1672919695)
  - "Report all lints, even if other errors already occurred." [compiler-team#633](https://github.com/rust-lang/compiler-team/issues/633) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Report.20all.20lints.2C.20even.20if.20other.20errors.20al.E2.80.A6.20compiler-team.23633))
    - concern [errors-inherently-higher-priority](https://github.com/rust-lang/compiler-team/issues/633#issuecomment-1545905322)
  - "Add infrastructure to "compute the ABI of a Rust type, described as a C type"" [compiler-team#672](https://github.com/rust-lang/compiler-team/issues/672) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20infrastructure.20to.20.22compute.20the.20ABI.20of.E2.80.A6.20compiler-team.23672))
  - "Stabilize `--json=unused-externs(-silent)`" [compiler-team#674](https://github.com/rust-lang/compiler-team/issues/674) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stabilize.20.60--json.3Dunused-externs.28-silent.29.60.20compiler-team.23674))
  - "Support response files generated by ninja with `@ninja:path` syntax" [compiler-team#684](https://github.com/rust-lang/compiler-team/issues/684) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Use.20shell.20parsing.20for.20response.20files.20compiler-team.23684))
  - "Add `-Zexperimental-target`" [compiler-team#685](https://github.com/rust-lang/compiler-team/issues/685) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Zexperimental-target.60.20compiler-team.23685))
    - concern [doesn-t-justify-the-maintenance](https://github.com/rust-lang/compiler-team/issues/685#issuecomment-1804693114)
  - "De-llvm some integer intrinsics that on the Rust side always use `u32`" [compiler-team#693](https://github.com/rust-lang/compiler-team/issues/693) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/De-llvm.20some.20integer.20intrinsics.20that.20on.20t.E2.80.A6.20compiler-team.23693))
  - "Consistent `Handler` naming" [compiler-team#699](https://github.com/rust-lang/compiler-team/issues/699) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Consistent.20.60Handler.60.20naming.20compiler-team.23699))
  - "Promote tier 3 riscv32 bare metal targets to tier 2" [compiler-team#701](https://github.com/rust-lang/compiler-team/issues/701) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20bare.20metal.20targets.E2.80.A6.20compiler-team.23701))
  - "Use the MSVC provided Address Sanitizer runtime when building for MSVC" [compiler-team#702](https://github.com/rust-lang/compiler-team/issues/702) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Use.20the.20MSVC.20provided.20Address.20Sanitizer.20r.E2.80.A6.20compiler-team.23702))
  - "Stabilize THIR unsafeck" [rust#117673](https://github.com/rust-lang/rust/pull/117673)
  - "Propose rules for team repo maintenance" [rust-forge#707](https://github.com/rust-lang/rust-forge/pull/707)
- Accepted MCPs
  - " Add `$message_type` field to distinguish json diagnostic outputs" [compiler-team#673](https://github.com/rust-lang/compiler-team/issues/673) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.20Add.20.60type.60.20field.20to.20json.20diagnostic.20outp.E2.80.A6.20compiler-team.23673))
  - "Set alignment of `i128` to 128 bits for x86" [compiler-team#683](https://github.com/rust-lang/compiler-team/issues/683) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Set.20alignment.20of.20.60i128.60.20to.20128.20bits.20compiler-team.23683))
  - "Stop emitting less useful debug sections: `.debug_pubnames` and `.debug_pubtypes`" [compiler-team#688](https://github.com/rust-lang/compiler-team/issues/688) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Flag.20to.20stop.20emitting.20less.20useful.20debug.20s.E2.80.A6.20compiler-team.23688))
  - "Add -Z small-data-threshold" [compiler-team#689](https://github.com/rust-lang/compiler-team/issues/689) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20-Z.20small-data-threshold.20compiler-team.23689))
- Finalized FCPs (disposition merge)
  - "Tracking issue for dyn upcasting coercion" [rust#65991](https://github.com/rust-lang/rust/issues/65991)
  - "TAIT defining scope options" [rust#107645](https://github.com/rust-lang/rust/issues/107645)
  - "[style edition 2024] Combine all delimited exprs as last argument" [rust#114764](https://github.com/rust-lang/rust/pull/114764)
  - "Use version-sorting for all sorting" [rust#115046](https://github.com/rust-lang/rust/pull/115046)
  - "check `FnDef` return type for WF" [rust#115538](https://github.com/rust-lang/rust/pull/115538)
  - "generalize: handle occurs check failure in aliases" [rust#117088](https://github.com/rust-lang/rust/pull/117088)
  - "dropck_outlives check whether generator witness needs_drop" [rust#117134](https://github.com/rust-lang/rust/pull/117134)
  - "Stabilize C string literals" [rust#117472](https://github.com/rust-lang/rust/pull/117472)
  - "generator layout: ignore fake borrows" [rust#117712](https://github.com/rust-lang/rust/pull/117712)
  - "Add lint against ambiguous wide pointer comparisons" [rust#117758](https://github.com/rust-lang/rust/pull/117758)
  - "guarantee that char and u32 are ABI-compatible" [rust#118032](https://github.com/rust-lang/rust/pull/118032)

### WG checkins

- T-types checkin by  @**Jack Huey** ([HackMD link](https://hackmd.io/Edf1Pg0SRUaSw9JIdwF1Tg)):
  > - We have automatic planning meeting agenda creation and stream opening!
  >   - triagebot#1739 and triagebot#1742
  > - Lots of work done by Michael on extracting things into `rustc_type_ir`
  >    - Too many to list!
  > - async fns in traits and RPITs in traits are stable in 1.75
  >    - Further work on e.g. RTN stalled on new trait solver
  > - There is a plan to stabilize a TAIT MVP, many open lang questions being decided
  > - RFC accepted for RPITs to capture all lifetimes
  >    - RFC: https://github.com/rust-lang/rfcs/pull/3498
  >    - impl: https://github.com/rust-lang/rust/pull/116952
  > - Trait upcasting to be stable in 1.76
  > - Plan to stabilize a subset of negative impls
  > - Lots of ongoing work to next trait solver
  >   - Tracked in types-team#105 and types-team#112
  >   - Plan is still to stabilize next trait solver in coherence *first*
  > - Good progress on a location-insenstive Polonius-based borrow check in rustc
  >   - Blog post with roadmap: https://blog.rust-lang.org/inside-rust/2023/10/06/polonius-update.html
  >   

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "temporarily revert "ice on ambguity in mir typeck"" [rust#118736](https://github.com/rust-lang/rust/pull/118736)
  - Reverts #116530 as a temporary measure to fix #117577 (P-medium regression, see [comment](https://github.com/rust-lang/rust/issues/117577#issuecomment-1793563079))
<!--
/poll Approve beta backport of #118736?
approve
decline
don't know
-->
- No stable nominations for `T-compiler` this time.

[T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- Other issues [in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [60 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [32 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 1 P-high, 3 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 3 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 38 P-high, 100 P-medium, 18 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Miscompilation of Bevy (and some wgpu) apps resulting in segfault on macOS." [rust#117902](https://github.com/rust-lang/rust/issues/117902)
  - Pending review of LLVM patch [llvm-project#75184](https://github.com/llvm/llvm-project/pull/75184) to close issue LLVM [llvm-project#74680](https://github.com/llvm/llvm-project/issues/74680), see [comment](https://github.com/rust-lang/rust/issues/117902#issuecomment-1843945104)))

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No new `P-high` regressions

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2023-12-11](https://github.com/rust-lang/rustc-perf/blob/022edbea80a746395513ea8849db035c007138ef/triage/2023-12-11.md)

A quiet week overall. A few smaller crate (e.g., helloworld) benchmarks saw
significant improvements in
[#118568](https://github.com/rust-lang/rust/pull/118568), but this merely
restores performance regressed earlier.

Triage done by **@simulacrum**.
Revision range: [9358642..5701093](https://perf.rust-lang.org/?start=9358642e3b8560eee89e6f40aa996c8394a3db31&end=57010939ed1d00076b4af0ed06a81ec69ea5e4a8&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.2%, 1.3%]    | 111   |
| Regressions (secondary)  | 0.7%  | [0.1%, 1.5%]    | 34    |
| Improvements (primary)   | -5.2% | [-11.1%, -0.5%] | 18    |
| Improvements (secondary) | -4.6% | [-10.5%, -0.4%] | 72    |
| All  (primary)           | -0.3% | [-11.1%, 1.3%]  | 129   |

5 Regressions, 2 Improvements, 3 Mixed; 2 of them in rollups
69 artifact comparisons made in total

#### Regressions

compile-time evaluation: detect writes through immutable pointers [#118324](https://github.com/rust-lang/rust/pull/118324) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f16c81fa79940da0c3e4cedd7b064ecdee2278bf&end=0e7f91b75e7484a713e2f644212cfc1aa7478a28&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | -    | -            | 0     |
| Regressions (secondary)  | 0.9% | [0.3%, 1.4%] | 12    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | -    | -            | 0     |

> I feel like the remaining regression is small enough to be acceptable. We're doing more checks in const-eval, and there are no regressions in the builds of real crates.

(https://github.com/rust-lang/rust/pull/118324#issuecomment-1832836626)

Introduce support for `async gen` blocks [#118420](https://github.com/rust-lang/rust/pull/118420) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2b399b52753eac351067e73f4ff0de829443b9a7&end=f967532a47eb728ada44473a5c4c2eca1a45fe30&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.2% | [0.1%, 0.3%] | 23    |
| Regressions (secondary)  | 0.4% | [0.2%, 0.7%] | 3     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.2% | [0.1%, 0.3%] | 23    |

New functionality costs some additional time across some benchmarks.

Rollup of 6 pull requests [#118763](https://github.com/rust-lang/rust/pull/118763) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2d2f1b2099a9cf10d4300042f5ea15a65a203dae&end=dc3a3539d595272c6a578c35f5eb6a85b867aca8&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.4% | [0.2%, 0.5%] | 18    |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.4% | [0.2%, 0.5%] | 18    |

> We do a little bit more work after that PR because the reachable set is
> slightly bigger and that in turn means more MIR gets encoded and things like
> that.

(https://github.com/rust-lang/rust/pull/118763#issuecomment-1850073772)

Don't warn an empty pattern unreachable if we're not sure the data is valid [#118308](https://github.com/rust-lang/rust/pull/118308) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c722d5191c26bbeea77dee2c06d814075ae785f2&end=06e02d5b259c1e88cbf0c74366d9e0a4c7cfd6d9&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.6% | [0.2%, 0.9%] | 4     |
| Regressions (secondary)  | 1.0% | [1.0%, 1.0%] | 6     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.6% | [0.2%, 0.9%] | 4     |

> Yeah I expected a perf regression because of the validity tracking. It adds
> an extra step for every constructor we try, and match-stress has an enum with
> 8000 of these. I don't think there's a way around it, I need to know the
> validity of every inspected place.

(https://github.com/rust-lang/rust/pull/118308#issuecomment-1831103831)

This adds costs particularly to crates with lots or large matches, seen across
a few primary workloads and within rustc bootstrap. This is a diagnostic
correctness fix, so some cost is acceptable.

Restore `const PartialEq` [#118661](https://github.com/rust-lang/rust/pull/118661) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8b1ba11cb1176cd7b8a0f4b55d1c97ee9fd3662d&end=6f40082313d8374bdf962aba943a712d5322fae6&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.4%]   | 9     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.6%]   | 11    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.8% | [-0.8%, -0.8%] | 1     |
| All  (primary)           | 0.3%  | [0.2%, 0.4%]   | 9     |

Feature addition carrying likely unavoidable cost in some benchmarks.

#### Improvements

Avoid adding builtin functions to `symbols.o`  [#118568](https://github.com/rust-lang/rust/pull/118568) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0e7f91b75e7484a713e2f644212cfc1aa7478a28&end=503e129328080e924c0ddfca6abf4c2812580102&stat=instructions:u)

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | -     | -               | 0     |
| Regressions (secondary)  | -     | -               | 0     |
| Improvements (primary)   | -6.6% | [-11.0%, -0.7%] | 14    |
| Improvements (secondary) | -5.0% | [-10.7%, -0.3%] | 66    |
| All  (primary)           | -6.6% | [-11.0%, -0.7%] | 14    |

Smaller benchmarks show significant improvements, recovering a past performance
regression. See PR description for details.

Rollup of 8 pull requests [#118838](https://github.com/rust-lang/rust/pull/118838) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=57010939ed1d00076b4af0ed06a81ec69ea5e4a8&end=21cce21d8c012f14cf74d5afddd795d324600dac&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.9% | [-1.0%, -0.9%] | 6     |
| All  (primary)           | -     | -              | 0     |

https://github.com/rust-lang/rust/pull/118822 is the likely cause, but not
worth digging deeper on this improvement.

#### Mixed

split `NormalizesTo` out of `Projection` 3 [#118725](https://github.com/rust-lang/rust/pull/118725) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d6fa38a9b2426487e010a6c16862132f89755e41&end=21982a4383a92ec00ec11204584b86f3f17c92ef&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 0.9%]   | 17    |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.3%]   | 3     |
| Improvements (primary)   | -2.6% | [-2.6%, -2.6%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 0.3%  | [-2.6%, 0.9%]  | 18    |

Moving code around in hot area, with slightly different work being done. Seems to add some cost to a few primary benchmarks.

See details in https://github.com/rust-lang/rust/pull/118725#issuecomment-1847121861

never_patterns: Parse match arms with no body [#118527](https://github.com/rust-lang/rust/pull/118527) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ae612bedcbfc7098d1711eb35bc7ca994eb17a4c&end=2b399b52753eac351067e73f4ff0de829443b9a7&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.1%  | [0.1%, 0.1%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.9% | [-1.0%, -0.8%] | 2     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.5% | [-1.0%, 0.1%]  | 3     |

Regression is justified by the extra work for this new feature.

Improve `print_tts` [#114571](https://github.com/rust-lang/rust/pull/114571) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d86d65bbc19b928387f68427fcc3a0da498d8a19&end=a9cb8ee82132b6ef0f8db3e3bc25f98dfae08c04&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 1     |
| Regressions (secondary)  | 0.8%  | [0.5%, 1.0%]   | 8     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.2% | [-0.3%, -0.2%] | 2     |
| All  (primary)           | 0.2%  | [0.2%, 0.2%]   | 1     |

Regressions mostly limited to secondary benchmarks. Single primary regression is in incr-unchanged and is relatively small.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Require `type_map::stub` callers to supply file information" [rust#104342](https://github.com/rust-lang/rust/pull/104342) (last review activity: 6 months ago)
  - cc @**Wesley Wiser** (would you prefer reassigning?)
- "compiler: allow transmute of ZST arrays with generics" [rust#114009](https://github.com/rust-lang/rust/pull/114009) (last review activity: 4 months ago)
  - cc: @**wesley wiser**
- "fix(parse): avoid panic when cfg wrapper by bracket under `capture-cfg` mode" [rust#113056](https://github.com/rust-lang/rust/pull/113056) (last review activity: 4 months ago)
  - cc: @**aaron hill** (still actively reviewing PRs?)
- "Limit `-C strip` on MSVC" [rust#115120](https://github.com/rust-lang/rust/pull/115120) (last review activity: 3 months ago)
  - PR author reassigned review? [comment](https://github.com/rust-lang/rust/pull/115120#issuecomment-1841092948)
- "Stabilize `extended_varargs_abi_support`" [rust#116161](https://github.com/rust-lang/rust/pull/116161) (last review activity: 2 months ago)
  - cc: @**wesley wiser**
- "make soft_unstable show up in future breakage reports" [rust#116274](https://github.com/rust-lang/rust/pull/116274)
  - FCP waiting on your checkboxes @**esteban küber** @**wesley wiser** @**pnkfelix** ([comment](https://github.com/rust-lang/rust/pull/116274#issuecomment-1793405783)) (apropos refreshing the FCP process)
- "Create the previous dep graph index on a background thread" [rust#116375](https://github.com/rust-lang/rust/pull/116375) (last review activity: 2 months ago)
  - cc: **cjgillot**

## Next week's WG checkins

@*T-compiler/meeting* is the next meeting on Dec, 21st happening, correct?

- @_*WG-llvm* by @**nagisa** and @**Nikita Popov**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/dpHKGJflSWiY_yyXprzSww)
