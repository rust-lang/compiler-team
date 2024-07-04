---
tags: weekly, rustc
type: docs
note_id: X-gaY--lTLGfQCL_VEdVcA
---

# T-compiler Meeting Agenda 2024-06-20

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).
- Tomorrow <time:2024-06-21T16:00:00+02:00> Bonanza backlog meeting (see [comment](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bplanning.5D.202024-05-24/near/440519331))

### Other WG meetings

- Types Team: ITE (Impl Trait Everywhere) Triage <time:2024-06-20T22:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  -  "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 5 months ago)
    - concern: [added-complexity-to-frontend](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-1845169318)
  -  "Target families for executable format" [compiler-team#716](https://github.com/rust-lang/compiler-team/issues/716) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Target.20families.20for.20executable.20format.20compiler-team.23716)) (last review activity: 4 months ago)
  -  "Promote riscv64gc-unknown-linux-musl to tier 2" [compiler-team#728](https://github.com/rust-lang/compiler-team/issues/728) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20riscv64gc-unknown-linux-gnu.20to.20ti.E2.80.A6.20compiler-team.23728)) (last review activity: 3 months ago)
  -  "Partial compilation using MIR-only rlibs" [compiler-team#738](https://github.com/rust-lang/compiler-team/issues/738) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Partial.20compilation.20using.20MIR-only.20rlibs.20compiler-team.23738)) (last review activity: 2 months ago)
  -  "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: about 34 days ago)
  -  "Enable `clang-format` for `rustc`" [compiler-team#756](https://github.com/rust-lang/compiler-team/issues/756) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Enable.20.60clang-format.60.20for.20.60rustc.60.20compiler-team.23756)) (last review activity: about 5 days ago)
  -  "Promote wasm32-wasip2 to a Tier 2 target" [compiler-team#760](https://github.com/rust-lang/compiler-team/issues/760) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20wasm32-wasip2.20to.20a.20Tier.202.20target.20compiler-team.23760)) (last review activity: about 0 days ago)
  -  "Promote Mac Catalyst targets to Tier 2" [compiler-team#761](https://github.com/rust-lang/compiler-team/issues/761) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20Mac.20Catalyst.20targets.20to.20Tier.202.20compiler-team.23761)) (last review activity: about 2 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [sanitizers: stabilize core sanitizers (i.e., AddressSanitizer, LeakSanitizer, MemorySanitizer, ThreadSanitizer) (rust#123617)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2135121317)
    - @**|119009** @**|124288** @**|125250** @**|119031** @**|124287** @**|426609**
    - Stabilization report at [comment](https://github.com/rust-lang/rust/pull/123617#issuecomment-2116573592)
    - no pending concerns
  - merge: [Remove the `missing_copy_implementations` lint. (rust#126293)](https://github.com/rust-lang/rust/pull/126293#issuecomment-2162328824)
    - @_**|119009** @_**|116083** @_**|125250** @_**|426609** @_**|123856** @_**|116118**
    - no pending concerns
- Things in FCP (make sure you're good with it)
  - "Contracts: Experimental attributes and language intrinsics" [compiler-team#759](https://github.com/rust-lang/compiler-team/issues/759) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Contracts.3A.20Experimental.20attributes.20and.20la.E2.80.A6.20compiler-team.23759))
  - "allow overwriting the output of `rustc --version`" [rust#124339](https://github.com/rust-lang/rust/pull/124339)
  - "Remove the `box_pointers` lint." [rust#126018](https://github.com/rust-lang/rust/pull/126018)
- Accepted MCPs
  -  "Fully rustfmt `use` declarations" [compiler-team#750](https://github.com/rust-lang/compiler-team/issues/750) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23750))
  -  "Remove `src/tools/rust-demangler`" [compiler-team#754](https://github.com/rust-lang/compiler-team/issues/754) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Remove.20.60src.2Ftools.2Frust-demangler.60.20compiler-team.23754))
  -  "Extract rustc stable hasher into it's own crate" [compiler-team#755](https://github.com/rust-lang/compiler-team/issues/755) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Extract.20rustc.20stable.20hasher.20into.20it.27s.20own.E2.80.A6.20compiler-team.23755))
- MCPs blocked on unresolved concerns
  - merge: [Add `--print host-triple` to print host target triple (rust#125579)](https://github.com/rust-lang/rust/pull/125579#issuecomment-2133192548)
    - @_**|119009** @_**|125250** @_**|426609** @_**|232957**
    - concerns: [triple vs tuple (by lcnr)](https://github.com/rust-lang/rust/pull/125579#issuecomment-2133938172)
  - merge: [Add a new `--build-id` flag to rustc (compiler-team#635)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1777545767)
    - @_**|125250** @_**|116107** @_**|125294** @_**|123856**
    - concerns: [other-existing-options (by petrochenkov)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1779597156) [option-name (by wesleywiser)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1785349936)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
  - merge: [Stabilize `--env-set` option (rust#119926)](https://github.com/rust-lang/rust/pull/119926#issuecomment-1898766442)
    - @_**|119009** @_**|124288** @_**|123586** @_**|125250** @_**|119031** @_**|124287** @_**|116118**
    - concerns: [other-rustc-vars (by petrochenkov)](https://github.com/rust-lang/rust/pull/119926#issuecomment-1900703005)
- Finalized FCPs (disposition merge)
  -  "Collect relevant item bounds from trait clauses for nested rigid projections" [rust#120752](https://github.com/rust-lang/rust/pull/120752)
- Other teams finalized FCPs
  -  "Collect relevant item bounds from trait clauses for nested rigid projections" [rust#120752](https://github.com/rust-lang/rust/pull/120752)

### WG checkins

None

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Only compute `specializes` query if (min)specialization is enabled in the crate of the specializing impl" [rust#126139](https://github.com/rust-lang/rust/pull/126139)
  - Authored by compiler-errors
  - Fixes #125197
  - Mentioned [last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202024-06-13/near/444474760): missed the beta backport, are we going to stable backport?
<!--
/poll Approve beta backport of #126139?
approve
don't know
-->
- :beta: "Add pub struct with allow(dead_code) into worklist" [rust#126315](https://github.com/rust-lang/rust/pull/126315)
  - Authored by mu001999
  - Fixes #126289, A P-medium lint regression
<!--
/poll Approve beta backport of #126315?
approve
don't know
-->
- :stable: "defrost `RUST_MIN_STACK=ice rustc hello.rs`" [rust#125302](https://github.com/rust-lang/rust/pull/125302)
  - Authored by workingjubilee
  - Fixes #126431, a panic when setting the env var `RUST_MIN_STACK` incorrectly
  - author [suggests](https://github.com/rust-lang/rust/pull/125302#issuecomment-2166824981) stable backport, if a dot release is planned
<!--
/poll Approve stable backport of #125302?
approve
approve but does not justify new dot release
decline
don't know
-->
- :stable: "Closures are recursively reachable" [rust#125996](https://github.com/rust-lang/rust/pull/125996)
  - Authored by tmiasko
  - Fixes #126012, a P-medium missing MIR optimization, [reported by tmiasko](https://github.com/rust-lang/rust/pull/125996#issuecomment-2148927340) (seems to not have received other reports in the wild)
  - This fix lost the previous beta backport train so nominated for stable (if a point release is planned)
<!--
/poll Approve stable backport of #125996?
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
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [67 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [37 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 1 P-high, 2 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 5 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 36 P-high, 100 P-medium, 17 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- None new

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- None new

## Performance logs

> [triage logs for 2024-06-18](https://github.com/rust-lang/rustc-perf/blob/master/triage/2024-06-18.md)

Regressions outnumbered the improvements this week, but most of the regressions were deemed worth it for one reason or another. Overall, compiler performance didn't end up changing very much.

Triage done by **@rylev**.
Revision range: [b5b13568..c2932aaf](https://perf.rust-lang.org/?start=b5b13568fb5da4ac988bde370008d6134d3dfe6c&end=c2932aaf9d20acbc9259c762f1a06f8767c6f13f&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 1.0%]   | 63    |
| Regressions (secondary)  | 0.7%  | [0.2%, 2.4%]   | 70    |
| Improvements (primary)   | -0.6% | [-1.2%, -0.2%] | 8     |
| Improvements (secondary) | -1.1% | [-5.2%, -0.2%] | 7     |
| All  (primary)           | 0.3%  | [-1.2%, 1.0%]  | 71    |


5 Regressions, 2 Improvements, 7 Mixed; 2 of them in rollups
58 artifact comparisons made in total

#### Regressions

Print `token::Interpolated` with token stream pretty printing. [#125174](https://github.com/rust-lang/rust/pull/125174) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3ea5e236ecb4c5f22437059f82d3915d311e4ec0&end=d0227c6a19c2d6e8dceb87c7a2776dc2b10d2a04&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.2%, 0.4%] | 9     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.2%, 0.4%] | 9     |
- No discussion of the perf run done before merging, so I asked the author/reviewer for their thoughts.
- It seems like most libc benchmarks were negatively impacted while no other benchmarks were. I'm not quite sure why that would be.


Add `TyCtxt::is_lang_item`, use it in the compiler [#126491](https://github.com/rust-lang/rust/pull/126491) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9239d3eb2b08bfdff30c86cdd9ce32687e488f5d&end=8217b412a235407243f2516ebc859e7b3af8345a&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.2%, 0.4%] | 10    |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.2%, 0.4%] | 10    |
- The change was deemed worth it despite the perf regression.


Indicate in `non_local_defs` lint that the macro needs to change [#125722](https://github.com/rust-lang/rust/pull/125722) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8217b412a235407243f2516ebc859e7b3af8345a&end=1d1356d0f67131f97b4f1631a24cd10d7dbcca42&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.2% | [0.2%, 0.2%] | 6     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.2% | [0.2%, 0.2%] | 6     |
- Only the diesel benchmark is affected, which is somewhat expected as it triggers the lint many many times (over 150 times).


Rollup of 6 pull requests [#126605](https://github.com/rust-lang/rust/pull/126605) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=11380368dc53d0b2fc3a627408818eff1973ce9a&end=04ab7b2be0db3e6787f5303285c6b2ee6279868d&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.3%, 0.4%] | 6     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.3%, 0.4%] | 6     |
- The benchmarks impacted seem to now swing wildly back and forth with every run so this isn't a perf regression per say.


Migrate `inaccessible-temp-dir`, `output-with-hyphens` and `issue-10971-temps-dir` `run-make` tests to `rmake` [#126279](https://github.com/rust-lang/rust/pull/126279) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=59e2c01c2217a01546222e4d9ff4e6695ee8a1db&end=c2932aaf9d20acbc9259c762f1a06f8767c6f13f&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.3%, 0.3%] | 6     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.3%, 0.3%] | 6     |
- This has to be noise, this PR only modified tests.


#### Improvements

Migrate `link-arg`, `link-dedup` and `issue-26092` `run-make` tests to `rmake` format [#125500](https://github.com/rust-lang/rust/pull/125500) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=04ab7b2be0db3e6787f5303285c6b2ee6279868d&end=59e2c01c2217a01546222e4d9ff4e6695ee8a1db&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.4%, -0.3%] | 6     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.4% | [-0.4%, -0.3%] | 6     |


Migrate `extern-flag-fun`, `incremental-debugger-visualiser` and `incremental-session-fail` `run-make` tests to `rmake.rs` [#126490](https://github.com/rust-lang/rust/pull/126490) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c2932aaf9d20acbc9259c762f1a06f8767c6f13f&end=67cfc3a558a54e351d14120099bf3158812b4130&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.3%] | 6     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.3% | [-0.4%, -0.3%] | 6     |


#### Mixed

Add `SingleUseConsts` mir-opt pass [#125910](https://github.com/rust-lang/rust/pull/125910) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b5b13568fb5da4ac988bde370008d6134d3dfe6c&end=fa1681c9f6a66f0240c46c98bfef6209c9d6df23&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.3%, 0.4%]   | 2     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.2%] | 4     |
| Improvements (secondary) | -2.3% | [-2.9%, -1.7%] | 2     |
| All  (primary)           | -0.1% | [-0.4%, 0.4%]  | 6     |
- Wash on instruction counts, but nice binary size wins. The cycles improvements on tt-muncher is noise returning back to normal.


Make `ObligationEmittingRelation`s emit `Goal` rather than `Obligation` [#126130](https://github.com/rust-lang/rust/pull/126130) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9a7bf4ae947feddac27007cbe26d161f4ff5a910&end=76c73827dcd0b363e60b22c3cef64bde4171bf17&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.4%  | [0.1%, 0.6%]   | 14    |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.2% | [-0.2%, -0.2%] | 1     |
-  I'm asssuming the perf regression was deemed acceptable since these only occurred in stress tests?


Tait must be constrained if in sig [#113169](https://github.com/rust-lang/rust/pull/113169) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=bdb1b7f5d9715cc96cb437134eff93fa229defd1&end=02c7a5921e3de5c2b3ecb2e0082c1dafce0729a1&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.7%, 0.7%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.3%] | 2     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.0% | [-0.4%, 0.7%]  | 3     |
- Probably noise + we need the fix 


Extend SCC construction to enable extra functionality  [#125069](https://github.com/rust-lang/rust/pull/125069) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8337ba9189de188e2ed417018af2bf17a57d51ac&end=8cf5101d77cd9eeb12751c563d8098aba2c604d0&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.3%]   | 6     |
| Regressions (secondary)  | 0.5%  | [0.1%, 1.0%]   | 10    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 2     |
| All  (primary)           | 0.2%  | [0.2%, 0.3%]   | 6     |
- The perf regressions were brought down since the first perf run, but there's still instruction count regressions in primary benchmarks here (albeit not large ones). I asked the author/reviewer for thoughts.


Remove superfluous UbChecks from `SliceIndex` methods [#126299](https://github.com/rust-lang/rust/pull/126299) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=bc3618f31ea3866e6abea6995ec3979d12ffc65d&end=cd0c944b0750db887291bc25f20a05f8f31a8195&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 0.6%]   | 4     |
| Regressions (secondary)  | 0.8%  | [0.5%, 1.3%]   | 5     |
| Improvements (primary)   | -0.4% | [-0.6%, -0.2%] | 3     |
| Improvements (secondary) | -0.6% | [-0.8%, -0.4%] | 7     |
| All  (primary)           | 0.1%  | [-0.6%, 0.6%]  | 7     |
- Perf is largely a wash and was expected to have far reach consequences since it changes how slices are codegened.


rustc_span: Optimize more hygiene operations using `Span::map_ctxt` [#126543](https://github.com/rust-lang/rust/pull/126543) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d7f6ebacee13b6c03623c4b74197280454ede8de&end=6b65c30f8e0f6c18aa5f32cbad869b1d036c7851&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 1     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.4%]   | 3     |
| Improvements (primary)   | -1.1% | [-1.4%, -0.3%] | 4     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.2%] | 3     |
| All  (primary)           | -0.8% | [-1.4%, 0.2%]  | 5     |
- Improvements outweigh the regressions which all seemed to be reversed sometime soon after this landed. 


Rollup of 3 pull requests [#126581](https://github.com/rust-lang/rust/pull/126581) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e23ae72ac7a393961886ea62df065ebb6def7d51&end=3baa20b783474330adb7ba7b3ddb02ac9facdf49&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 1.3%  | [1.3%, 1.3%]   | 1     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.2%] | 6     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.3% | [-0.4%, -0.2%] | 6     |
- Regression might be noise (and isn't big enough to care about even if it isn't)

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "in asm!() using a local numeric label made of all 0's and 1's gives a confusing error" [rust#94426](https://github.com/rust-lang/rust/issues/94426)
  - nominated by @**Josh Triplett**
  - (assumed for suggesting what the behaviour here should be)
  - issue reporter comments:
    > As per Rust By Example, we use 2: as a local label there to work around an LLVM bug that mistakes labels like 0:, 1:, or 10: for binary. This example works. However, if we don't know about this rule, and we try to use 0: instead, the error we get is confusing

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

- "Stop using LLVM struct types for array/pointer offset GEPs" [rust#122325](https://github.com/rust-lang/rust/pull/122325) (last review activity: 3 months ago)
  - cc @**Nikita Popov**
- "Apply dllimport in ThinLTO for -Z dylib-lto" [rust#122790](https://github.com/rust-lang/rust/pull/122790) (last review activity: 3 months ago)
  - cc @**Wesley Wiser**
- "[WIP] Enforce may-define-must-define for ATPITs" [rust#123046](https://github.com/rust-lang/rust/pull/123046) (last review activity: 2 months ago)
  - cc: @**aliemjay**
- "CFI: Fix fn items, closures, and Fn trait objects" [rust#123082](https://github.com/rust-lang/rust/pull/123082) (last review activity: 2 months ago)
  - cc @**Michael Goulet (compiler-errors)**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/PfNc4XsWTbmI-XxbcooiGw)
