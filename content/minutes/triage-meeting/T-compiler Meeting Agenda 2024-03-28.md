---
tags: weekly, rustc
type: docs
note_id: iVOLhzajRKuaS4GzcSWVNQ
---

# T-compiler Meeting Agenda 2024-03-28

## Announcements

- A dot release 1.77.1 is out today to fix #122857 ([Zulip discussion](https://rust-lang.zulipchat.com/#narrow/stream/241545-t-release/topic/1.2E77.2E1/near/429535704))
  - Immediate fix provided by cargo, rustc fix will take a bit longer ([comment](https://github.com/rust-lang/rust/pull/123031#issuecomment-2022274835))
  - Will also backport #122693 (less critical)
  - [blog post](https://github.com/rust-lang/blog.rust-lang.org/blob/0bfdb1ef2c333a50e93699c2b70387a89dcc197a/posts/2024-03-28-Rust-1.77.1.md).
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- Types Team: ITE (Impl Trait Everywhere) Triage <time:2024-03-28T22:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Skip virtual drop for !needs_drop types" [compiler-team#730](https://github.com/rust-lang/compiler-team/issues/730) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Skip.20virtual.20drop.20for.20.21needs_drop.20types.20compiler-team.23730))
  - "allow all command line flags to be passed multiple times, overwriting previous usages" [compiler-team#731](https://github.com/rust-lang/compiler-team/issues/731) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/allow.20all.20command.20line.20flags.20to.20be.20passed.E2.80.A6.20compiler-team.23731))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Target families for executable format" [compiler-team#716](https://github.com/rust-lang/compiler-team/issues/716) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Target.20families.20for.20executable.20format.20compiler-team.23716)) (last review activity: about 55 days ago)
  - "Add `--emit=` to emit nothing" [compiler-team#718](https://github.com/rust-lang/compiler-team/issues/718) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60--emit.3D.60.20to.20emit.20nothing.20compiler-team.23718)) (last review activity: about 55 days ago)
  - "Promote riscv64gc-unknown-linux-musl to tier 2" [compiler-team#728](https://github.com/rust-lang/compiler-team/issues/728) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20riscv64gc-unknown-linux-gnu.20to.20ti.E2.80.A6.20compiler-team.23728)) (last review activity: about 20 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [Add a new `--build-id` flag to rustc (compiler-team#635)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1777545767)
      * @_**|125250** @_**|116107** @_**|125294** @_**|123856**
      * [other-existing-options (by petrochenkov)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1779597156) [option-name (by wesleywiser)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1785349936)
  - merge: [Retire the mailing list and make all decisions on zulip (compiler-team#649)](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618781780)
      * no pending checkboxs
      * [automatic-sync (by compiler-errors)](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660) [single-point-of-failure-via-stream-archival (by pnkfelix)](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1664056989)
  - merge: [Tracking Issue for RFC 3013: Checking conditional compilation at compile time (rust#82450)](https://github.com/rust-lang/rust/issues/82450#issuecomment-1965328542)
      * @_**|119009** @_**|116107** @_**|125294** @_**|119031** @_**|248906** @_**|232957**
      * no pending concerns
  - merge: [Limit `-C strip` on MSVC (rust#115120)](https://github.com/rust-lang/rust/pull/115120#issuecomment-2024832395)
      * @_**|119009** @_**|116083** @_**|123586** @_**|125250** @_**|116107** @_**|125294** @_**|119031** @_**|248906** @_**|426609** @_**|116118** @_**|216206** @_**|232957**
      * no pending concerns
  - merge: [Stabilize `--env-set` option (rust#119926)](https://github.com/rust-lang/rust/pull/119926#issuecomment-1898766442)
      * @_**|119009** @_**|116083** @_**|124288** @_**|123586** @_**|125250** @_**|119031** @_**|124287** @_**|116118**
      * [other-rustc-vars (by petrochenkov)](https://github.com/rust-lang/rust/pull/119926#issuecomment-1900703005)
  - merge: [Make casts of pointers to trait objects stricter (rust#120248)](https://github.com/rust-lang/rust/pull/120248#issuecomment-1981506568)
      * @_**|239881** @_**|116883** @_**|125270**
      * no pending concerns
  - merge: [sess: stabilize `-Zrelro-level` as `-Crelro-level` (rust#121694)](https://github.com/rust-lang/rust/pull/121694#issuecomment-1988156080)
      * @_**|119009** @_**|116083** @_**|119031** @_**|116118** @_**|232957**
      * no pending concerns
  - merge: [Add encoding for `f16` and `f128` (rust#122106)](https://github.com/rust-lang/rust/pull/122106#issuecomment-1983030121)
      * @_**|119009** @_**|116083** @_**|125250** @_**|125294** @_**|119031** @_**|232957**
      * no pending concerns
- Things in FCP (make sure you're good with it)
  - "Stabilize Wasm target features that are in phase 4 and 5" [rust#117457](https://github.com/rust-lang/rust/pull/117457)
- Accepted MCPs
  - "Dist rustc with overflow checks" [compiler-team#724](https://github.com/rust-lang/compiler-team/issues/724) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Dist.20rustc.20with.20overflow.20checks.20compiler-team.23724))
- MCPs blocked on unresolved concerns
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 2 months ago)
    - concern: [added-complexity-to-frontend](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-1845169318)
- Finalized FCPs (disposition merge)
  - "rework opaque type region inference" [rust#116891](https://github.com/rust-lang/rust/pull/116891)
  - "Normalize trait ref before orphan check & consider ty params in alias types to be uncovered" [rust#117164](https://github.com/rust-lang/rust/pull/117164)
  - "instantiate higher ranked goals outside of candidate selection" [rust#119820](https://github.com/rust-lang/rust/pull/119820)
  - "transmute: caution against int2ptr transmutation" [rust#122379](https://github.com/rust-lang/rust/pull/122379)
- Other teams finalized FCPs
  - "Tracking issue for Allow a re-export for `main` (RFC 1260)" [rust#28937](https://github.com/rust-lang/rust/issues/28937)
  - "`c_unwind` full stabilization request: change in `extern "C"` behavior" [rust#115285](https://github.com/rust-lang/rust/issues/115285)
  - "rework opaque type region inference" [rust#116891](https://github.com/rust-lang/rust/pull/116891)
  - "Prevent opaque types being instantiated twice with different regions within the same function" [rust#116935](https://github.com/rust-lang/rust/pull/116935)
  - "Normalize trait ref before orphan check & consider ty params in alias types to be uncovered" [rust#117164](https://github.com/rust-lang/rust/pull/117164)
  - "instantiate higher ranked goals outside of candidate selection" [rust#119820](https://github.com/rust-lang/rust/pull/119820)
  - "Split refining_impl_trait lint into _reachable, _internal variants" [rust#121720](https://github.com/rust-lang/rust/pull/121720)
  - "Stabilize associated type bounds (RFC 2289)" [rust#122055](https://github.com/rust-lang/rust/pull/122055)
  - "transmute: caution against int2ptr transmutation" [rust#122379](https://github.com/rust-lang/rust/pull/122379)

### WG checkins

- @_*WG-llvm* by @**nagisa** and @**Nikita Popov** ([previous checkin](https://hackmd.io/team/rust-compiler-team?nav=overview)):
  > Update to LLVM 18.1.2 (https://github.com/rust-lang/rust/pull/122772)

- @_*WG-mir-opt* by @**oli** ([previous checkin](https://hackmd.io/team/rust-compiler-team?nav=overview)):
  > no updates

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: [1.78] "Update to LLVM 18.1.2" [rust#122772](https://github.com/rust-lang/rust/pull/122772)
  - This will fix #122476 (thread sanitizer on x86 caused a compilation abort), upstream issue was [llvm-project#85226](https://github.com/llvm/llvm-project/issues/85226). Thanks @**Nikita Popov**!
  - Also fixes ([avr-hal#505](https://github.com/Rahix/avr-hal/issues/505) and [llvm-project#83362](https://github.com/llvm/llvm-project/issues/83362)
<!--
/poll Approve beta backport of #122772?
approve
decline
don't know
-->
- :beta: [1.78] "Encode implied predicates for traits" [rust#122891](https://github.com/rust-lang/rust/pull/122891)
  - patch authored by @**Michael Goulet (compiler-errors)** (thanks!)
  - Fixes #122859, regressed on nightly: `super_predicates` and `implied_predicates` queries differ for regular traits. In cross-crate positions this means that we used to forget the implied predicates from associated type bounds. ([explaination](https://github.com/rust-lang/rust/pull/122891#issue-2202971249))
<!--
/poll Approve beta backport of #122891?
approve
decline
don't know
-->
- No stable nominations for `T-compiler` this time.

[T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler+-label%3AI-lang-nominated+is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler+-label%3AI-libs-api-nominated+is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler+-label%3AI-async-nominated)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [63 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [34 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 1 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 5 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 37 P-high, 100 P-medium, 14 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "No backtrace on windows with current rustc stable" [rust#122857](https://github.com/rust-lang/rust/issues/122857)
  - Quick fix in cargo, in release 1.77.1 out today

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2024-03-26](https://github.com/rust-lang/rustc-perf/blob/a71e92ee7d976f7cb9bf51cc08b5680340ccd5d0/triage/2024-03-26.md)

An overall fairly quiet week with the unfortunate one exception of large instruction count and binary size regressions caused by changes in const evaluation. This was largely balanced out (at least in instruction count) by a group of small improvements, but the compiler did end up 0.2% slower on average across 97 benchmarks.

Triage done by **@rylev**.
Revision range: [21d94a3..73476d](https://perf.rust-lang.org/?start=21d94a3d2c63cacf8eaf9d0ca770c0b450c558d4&end=73476d49904751f8d90ce904e16dfbc278083d2c&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.0%  | [0.2%, 3.2%]   | 56    |
| Regressions (secondary)  | 0.6%  | [0.1%, 1.9%]   | 38    |
| Improvements (primary)   | -0.8% | [-1.5%, -0.2%] | 41    |
| Improvements (secondary) | -1.2% | [-5.2%, -0.4%] | 13    |
| All  (primary)           | 0.2%  | [-1.5%, 3.2%]  | 97    |


4 Regressions, 6 Improvements, 2 Mixed; 4 of them in rollups
63 artifact comparisons made in total

#### Regressions

recursively evaluate the constants in everything that is 'mentioned' [#122568](https://github.com/rust-lang/rust/pull/122568) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=47dd709bedda8127e8daec33327e0a9d0cdae845&end=df8ac8f1d74cffb96a93ae702d16e224f5b9ee8c&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.0% | [0.3%, 2.2%] | 67    |
| Regressions (secondary)  | 0.8% | [0.2%, 2.9%] | 24    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 1.0% | [0.3%, 2.2%] | 67    |
- An unfortunately large regression in instruction count that has to happen for correctness reasons.
- Additional regressions in binary size and an issue has been opened for it: #122936


Rollup of 8 pull requests [#122900](https://github.com/rust-lang/rust/pull/122900) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=85e449a3237e82c9ade8936a82bd4fc64cfe1057&end=0ad5e0d2deb8ac4b079923f3cc5a3a1c63efe4c8&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | -    | -            | 0     |
| Regressions (secondary)  | 0.5% | [0.4%, 0.6%] | 11    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | -    | -            | 0     |
- Seems that [#122784](https://github.com/rust-lang/rust/pull/122784) is the cause. Author and reviewer were pinged.


Replace visibility test with reachability test in dead code detection [#119552](https://github.com/rust-lang/rust/pull/119552) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0ad5e0d2deb8ac4b079923f3cc5a3a1c63efe4c8&end=c3087265993c74057fdbab07b44b80a55045070b&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 2.1% | [1.0%, 3.2%] | 4     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 2.1% | [1.0%, 3.2%] | 4     |
- More warnings are now emitted from ripgrep so this is to be expected


Rollup of 9 pull requests [#122966](https://github.com/rust-lang/rust/pull/122966) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9b8d12cf4c2311203aea83315552b15993bd4f81&end=548e14b43963882fb758deb89e8258d9b8c2fc2a&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.3%, 0.3%] | 1     |
| Regressions (secondary)  | 0.3% | [0.2%, 0.4%] | 6     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.3%, 0.3%] | 1     |
- The regressions are probably too small here for us to need to dig much deeper.


#### Improvements

clean up `Sized` checking [#122493](https://github.com/rust-lang/rust/pull/122493) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=148a41c6b5687f941c5256d9ef8145eb03b72094&end=196ff446d20088406b9d69978dddccc4682bd006&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.6%, -0.3%] | 2     |
| Improvements (secondary) | -0.7% | [-3.2%, -0.3%] | 11    |
| All  (primary)           | -0.4% | [-0.6%, -0.3%] | 2     |


Move more intrinsics to rustc_intrinsic [#122037](https://github.com/rust-lang/rust/pull/122037) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f296c162d8c6f84bcfee99c152d4fd63aaef3e38&end=200e3f7995e231535fdea3be9cb9a3f098b4c856&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.2%] | 4     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.3% | [-0.3%, -0.2%] | 4     |


Update cargo [#122753](https://github.com/rust-lang/rust/pull/122753) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=bd459c2877fe909ea57952ea2543b727e321f183&end=a77c20c4b987e74eb1a867d21d1edb8035a11660&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.8% | [-0.9%, -0.5%] | 5     |
| Improvements (secondary) | -0.6% | [-0.8%, -0.4%] | 8     |
| All  (primary)           | -0.8% | [-0.9%, -0.5%] | 5     |


select Vec::from_iter impls in a const block to optimize compile times [#122785](https://github.com/rust-lang/rust/pull/122785) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a0569fa8f91b5271e92d2f73fd252de7d3d05b9c&end=0ad927c0c07b65fc0dae37105e09c877c87c296a&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.6% | [-1.5%, -0.3%] | 10    |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.6% | [-1.5%, -0.3%] | 10    |


Replace `mir_built` query with a hook and use mir_const everywhere instead [#122721](https://github.com/rust-lang/rust/pull/122721) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0824b300eb0dae5d9ed59719d3f2732016683d66&end=13dac8fb731945ebc116cc65f23a260930e774e0&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.5%, 0.5%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.9%, -0.2%] | 17    |
| Improvements (secondary) | -0.5% | [-0.8%, -0.2%] | 11    |
| All  (primary)           | -0.3% | [-0.9%, 0.5%]  | 18    |


Don't emit load metadata in debug mode [#122849](https://github.com/rust-lang/rust/pull/122849) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8b9e47c136aeee998effdcae356e134b8de65891&end=73476d49904751f8d90ce904e16dfbc278083d2c&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-1.1%, -0.4%] | 13    |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.7% | [-1.1%, -0.4%] | 13    |


#### Mixed

Rollup of 10 pull requests [#122735](https://github.com/rust-lang/rust/pull/122735) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a385e5667c11098a01368c06e7c0c9236cd477cc&end=e760daa6a729b3d52a38804e9766f7d89dc27357&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.3%  | [0.1%, 0.6%]   | 5     |
| Improvements (primary)   | -0.7% | [-0.8%, -0.3%] | 11    |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 1     |
| All  (primary)           | -0.7% | [-0.8%, -0.3%] | 11    |
- The improvements outweigh the regressions so there's not a huge incentive to investigate further.


Rollup of 8 pull requests [#122830](https://github.com/rust-lang/rust/pull/122830) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7d01878bd0d1c4383c1158adeff0c392446ea3a2&end=a0569fa8f91b5271e92d2f73fd252de7d3d05b9c&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.1%  | [0.1%, 0.1%]   | 2     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.2%] | 2     |
| Improvements (secondary) | -1.2% | [-1.7%, -0.8%] | 8     |
| All  (primary)           | -0.3% | [-0.4%, -0.2%] | 2     |
- With only small regressions on stress tests, I think it's fine if we don't investigate this too deeply.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

- "tidy watcher" [rust#114209](https://github.com/rust-lang/rust/pull/114209)
  - cc: @**Wesley Wiser**
- "Fix gce ICE when encountering ill-formed consts" [rust#119060](https://github.com/rust-lang/rust/pull/119060)
  - cc: @**Michael Goulet (compiler-errors)**
- "Remove `suffix` from `MetaItemLit`" [rust#120705](https://github.com/rust-lang/rust/pull/120705) (last review activity: about 48 days ago)
  - cc: @**davidtwco**
- "Remove unnecessary impl sorting in queries and metadata" [rust#120812](https://github.com/rust-lang/rust/pull/120812) (last review activity: about 48 days ago)
  - @**cjgillot**
- "Suggest a borrow when using dbg" [rust#120990](https://github.com/rust-lang/rust/pull/120990) (last review activity: about 44 days ago)
  - cc: @**Esteban Küber** (o reroll?)

## Next week's WG checkins

- Skipping next week

Next meetings' agenda draft: [hackmd link](https://hackmd.io/aLmXuZKATsy2y-vB1ZgaJA)
