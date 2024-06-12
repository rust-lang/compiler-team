---
tags: weekly, rustc
type: docs
note_id: ZtmRDIGyQUSe0RD6mYjbBA
---

# T-compiler Meeting Agenda 2024-04-25

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- No meetings scheduled for next week

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Build LLVM using CI image's Clang on Win + MacOS, instead of installing a copy" [compiler-team#742](https://github.com/rust-lang/compiler-team/issues/742) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Build.20LLVM.20using.20CI.20image.27s.20Clang.20on.20Win.20.E2.80.A6.20compiler-team.23742))
  - "Add --print=check-cfg" [compiler-team#743](https://github.com/rust-lang/compiler-team/issues/743) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20--print.3Dcheck-cfg.20compiler-team.23743))
- Old MCPs (not seconded, take a look)
  - "Target families for executable format" [compiler-team#716](https://github.com/rust-lang/compiler-team/issues/716) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Target.20families.20for.20executable.20format.20compiler-team.23716)) (last review activity: 2 months ago)
  - "Promote riscv64gc-unknown-linux-musl to tier 2" [compiler-team#728](https://github.com/rust-lang/compiler-team/issues/728) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20riscv64gc-unknown-linux-gnu.20to.20ti.E2.80.A6.20compiler-team.23728)) (last review activity: about 48 days ago)
  - "Add `-Zemit-thin-lto-index=<path>` to enable distributed ThinLTO users" [compiler-team#735](https://github.com/rust-lang/compiler-team/issues/735) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Zemit-thin-lto-index.3D.3Cpath.3E.60.20to.20ena.E2.80.A6.20compiler-team.23735)) (last review activity: about 20 days ago)
  - "Only emit forward compatible v0 symbol names with graceful degradation" [compiler-team#737](https://github.com/rust-lang/compiler-team/issues/737) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Only.20emit.20forward.20compatible.20v0.20symbol.20na.E2.80.A6.20compiler-team.23737)) (last review activity: about 20 days ago)
  - "Partial compilation using MIR-only rlibs" [compiler-team#738](https://github.com/rust-lang/compiler-team/issues/738) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Partial.20compilation.20using.20MIR-only.20rlibs.20compiler-team.23738)) (last review activity: about 13 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [Add a new `--build-id` flag to rustc (compiler-team#635)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1777545767)
    - @_**|125250** @_**|116107** @_**|125294** @_**|123856**
    - concerns: [other-existing-options (by petrochenkov)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1779597156) [option-name (by wesleywiser)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1785349936)
  - merge: [Retire the mailing list and make all decisions on zulip (compiler-team#649)](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618781780)
    - no pending checkboxs
    - concerns: [automatic-sync (by compiler-errors)](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660) [single-point-of-failure-via-stream-archival (by pnkfelix)](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1664056989)
  - merge: [Stabilize `--env-set` option (rust#119926)](https://github.com/rust-lang/rust/pull/119926#issuecomment-1898766442)
    - @_**|119009** @_**|116083** @_**|124288** @_**|123586** @_**|125250** @_**|119031** @_**|124287** @_**|116118**
    - concerns: [other-rustc-vars (by petrochenkov)](https://github.com/rust-lang/rust/pull/119926#issuecomment-1900703005)
  - merge: [Show files produced by `--emit foo` in json artifact notifications (rust#122597)](https://github.com/rust-lang/rust/pull/122597#issuecomment-2063945502)
    - @_**|119009** @_**|116083** @_**|123586** @_**|116107** @_**|125294** @_**|119031** @_**|248906** @_**|124287** @_**|426609** @_**|116118** @_**|232957**
    - no pending concerns
  - merge: [Disable `version_check::supports_feature` on nightly (rust#124339)](https://github.com/rust-lang/rust/pull/124339#issuecomment-2075414901)
    - @_**|119009** @_**|116083** @_**|123586** @_**|125250** @_**|116107** @_**|119031** @_**|248906** @_**|124287** @_**|426609** @_**|123856** @_**|116118** @_**|216206** @_**|232957**
    - no pending concerns
- Things in FCP (make sure you're good with it)
  - "Skip virtual drop for !needs_drop types" [compiler-team#730](https://github.com/rust-lang/compiler-team/issues/730) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Skip.20virtual.20drop.20for.20.21needs_drop.20types.20compiler-team.23730))
  - "Make casts of pointers to trait objects stricter" [rust#120248](https://github.com/rust-lang/rust/pull/120248)
- Accepted MCPs
  - "allow all command line flags to be passed multiple times, overwriting previous usages" [compiler-team#731](https://github.com/rust-lang/compiler-team/issues/731) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/allow.20all.20command.20line.20flags.20to.20be.20passed.E2.80.A6.20compiler-team.23731))
  - "Policy: no discussions on T-compiler tracking issues" [compiler-team#739](https://github.com/rust-lang/compiler-team/issues/739) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Lock.20all.20tracking.20issues.20to.20prevent.20discu.E2.80.A6.20compiler-team.23739))
- MCPs blocked on unresolved concerns
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 3 months ago)
    - concern: [added-complexity-to-frontend](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-1845169318)
- Finalized FCPs (disposition merge)
  - "Tracking Issue for RFC 3013: Checking conditional compilation at compile time" [rust#82450](https://github.com/rust-lang/rust/issues/82450)
  - "Ignore `-C strip` on MSVC" [rust#115120](https://github.com/rust-lang/rust/pull/115120)
  - "sess: stabilize `-Zrelro-level` as `-Crelro-level`" [rust#121694](https://github.com/rust-lang/rust/pull/121694)
  - "stabilize `-Znext-solver=coherence`" [rust#121848](https://github.com/rust-lang/rust/pull/121848)
  - "Use fulfillment in method probe, not evaluation" [rust#122317](https://github.com/rust-lang/rust/pull/122317)
  - "Fix trait solver overflow with `non_local_definitions` lint" [rust#123594](https://github.com/rust-lang/rust/pull/123594)
  - "More DefineOpaqueTypes::Yes" [rust#123794](https://github.com/rust-lang/rust/pull/123794)
- Other teams finalized FCPs
  - "Stabilise inline_const" [rust#104087](https://github.com/rust-lang/rust/pull/104087)
  - "restrict promotion of `const fn` calls" [rust#121557](https://github.com/rust-lang/rust/pull/121557)
  - "stabilize `-Znext-solver=coherence`" [rust#121848](https://github.com/rust-lang/rust/pull/121848)
  - "Use fulfillment in method probe, not evaluation" [rust#122317](https://github.com/rust-lang/rust/pull/122317)
  - "Fix trait solver overflow with `non_local_definitions` lint" [rust#123594](https://github.com/rust-lang/rust/pull/123594)
  - "More DefineOpaqueTypes::Yes" [rust#123794](https://github.com/rust-lang/rust/pull/123794)

### WG checkins

None today

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No beta nominations for `T-compiler` this time.
- No stable nominations for `T-compiler` this time.

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
- [61 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [34 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 2 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 5 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 36 P-high, 100 P-medium, 16 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2024-04-23](https://github.com/rust-lang/rustc-perf/blob/master/triage/2024-04-23.md)

A week dominated by small mixed changes to perf with improvements slightly outweighing regressions. There were no pure regressions, and many of the mixed perf results were deemed worth it for their potential improvements to runtime performance through further optimization from LLVM.

Triage done by **@rylev**.
Revision range: [ccfcd950..a77f76e2](https://perf.rust-lang.org/?start=ccfcd950b333fed046275dd8d54fe736ca498aa7&end=a77f76e26302e9a084fb321817675b1dfc1dcd63&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 1.8%]   | 57    |
| Regressions (secondary)  | 0.4%  | [0.2%, 1.9%]   | 26    |
| Improvements (primary)   | -0.8% | [-3.4%, -0.2%] | 50    |
| Improvements (secondary) | -0.6% | [-1.9%, -0.1%] | 32    |
| All  (primary)           | -0.2% | [-3.4%, 1.8%]  | 107   |


0 Regressions, 5 Improvements, 6 Mixed; 2 of them in rollups
62 artifact comparisons made in total

#### Regressions

None (😎)

#### Improvements

Simplify shallow resolver to just fold ty/consts [#123537](https://github.com/rust-lang/rust/pull/123537) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1cec373f65eb76e8e4b4d1847213cf3ec6c292b6&end=3fba2782310b2754259a3c329220a5b1e6cf9a5c&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.3%, 0.3%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.9% | [-1.4%, -0.2%] | 8     |
| Improvements (secondary) | -0.3% | [-0.4%, -0.2%] | 11    |
| All  (primary)           | -0.8% | [-1.4%, 0.3%]  | 9     |


rustdoc-search: single result for items with multiple paths [#119912](https://github.com/rust-lang/rust/pull/119912) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3412f0174934778dd803081dc7c4b5864309350f&end=e3181b091e88321f5ea149afed6db0edf0a4f37b&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.3%, -0.2%] | 3     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.2% | [-0.3%, -0.2%] | 3     |


interpret: use ScalarInt for bin-ops; avoid PartialOrd for ScalarInt [#124113](https://github.com/rust-lang/rust/pull/124113) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d1a0fa5ed3ffe52d72f761d3c95cbeb0a9cdfe66&end=ce3263e60e73f4018592cbfba540cf8bef4399de&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.2%] | 4     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.3% | [-0.4%, -0.2%] | 4     |


PatRangeBoundary::compare_with: als add a fast-path for signed integers [#124190](https://github.com/rust-lang/rust/pull/124190) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=584f183dc0e0ce8d981811ebbf67886c0cfef9e0&end=c3ceb00281f9557dcf5bba54fc44c9931cc90d42&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -3.3% | [-3.3%, -3.3%] | 1     |
| All  (primary)           | -     | -              | 0     |


Rollup of 7 pull requests [#124271](https://github.com/rust-lang/rust/pull/124271) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=25087e02b34775520856b6cc15e50f5ed0c35f50&end=9cf10bcf5b368de79abc24fc4d50a9d85b377ffa&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.5%  | [0.5%, 0.5%]   | 1     |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 1     |
| Improvements (secondary) | -0.9% | [-2.1%, -0.4%] | 9     |
| All  (primary)           | -0.2% | [-0.2%, -0.2%] | 1     |


#### Mixed

Implement syntax for `impl Trait` to specify its captures explicitly (`feature(precise_capturing)`) [#123468](https://github.com/rust-lang/rust/pull/123468) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ad18fe08de03fbb459c05475bddee22707b4f0ec&end=4e1f5d90bca45207605a88e39b1f76abcdb85d2f&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 4     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.8% | [-0.8%, -0.8%] | 1     |
| All  (primary)           | 0.2%  | [0.2%, 0.2%]   | 4     |
- Very small regression on a stress test


At debuginfo=0, don't inline debuginfo when inlining [#123949](https://github.com/rust-lang/rust/pull/123949) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0e15f5ee8fb3f9edcb8a35b1cbd9f8d352be54a0&end=3412f0174934778dd803081dc7c4b5864309350f&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.0%  | [0.3%, 1.8%]   | 5     |
| Regressions (secondary)  | 1.0%  | [0.2%, 3.4%]   | 4     |
| Improvements (primary)   | -0.9% | [-2.4%, -0.1%] | 22    |
| Improvements (secondary) | -1.2% | [-1.8%, -0.2%] | 10    |
| All  (primary)           | -0.6% | [-2.4%, 1.8%]  | 27    |
- Improvements outweighed the regressions and was deemed worth it by the reviewer.


Always display stability version even if it's the same as the containing item [#118441](https://github.com/rust-lang/rust/pull/118441) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=07d0d7ce3fd22e4fadd61206034af6fadcdb3e4f&end=d1a0fa5ed3ffe52d72f761d3c95cbeb0a9cdfe66&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.3%]   | 2     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 0.1%  | [-0.2%, 0.3%]  | 3     |
- Noise that is reversed in the next run.


Tell LLVM Vec::len is invariant across growth [#123930](https://github.com/rust-lang/rust/pull/123930) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=426a698606ca94d4c4a674a346c701bf44b0aeb3&end=13eb8c736ce58a794434ee316cb86f1091f66c7e&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.1%, 1.6%]   | 7     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.5%]   | 11    |
| Improvements (primary)   | -0.5% | [-0.9%, -0.4%] | 8     |
| Improvements (secondary) | -0.2% | [-0.2%, -0.1%] | 3     |
| All  (primary)           | -0.1% | [-0.9%, 1.6%]  | 15    |
-  The regressions come from LLVM, and it was deemed worth it given the possibility for LLVM to perform more optimization.


fix normalizing in different `ParamEnv`s with the same `InferCtxt` [#124203](https://github.com/rust-lang/rust/pull/124203) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f22a0c2d9f9cd83dfe84b65e9fa1b3fa8303c7b5&end=1b3fba066c21e7c3471fca710783fc1e6546a1ca&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 4.1%  | [4.1%, 4.1%]   | 1     |
| Improvements (primary)   | -0.7% | [-2.4%, -0.2%] | 9     |
| Improvements (secondary) | -0.9% | [-0.9%, -0.9%] | 1     |
| All  (primary)           | -0.7% | [-2.4%, -0.2%] | 9     |
- Noise


Rollup of 5 pull requests [#124241](https://github.com/rust-lang/rust/pull/124241) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1b3fba066c21e7c3471fca710783fc1e6546a1ca&end=fb898629a26e4acec59c928ce3ec00a62675d1cc&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.2%, 1.6%]   | 7     |
| Regressions (secondary)  | 0.3%  | [0.3%, 0.3%]   | 1     |
| Improvements (primary)   | -0.9% | [-2.8%, -0.3%] | 7     |
| Improvements (secondary) | -3.9% | [-3.9%, -3.9%] | 1     |
| All  (primary)           | -0.1% | [-2.8%, 1.6%]  | 14    |
- More time spent in LLVM previously
- Pinged the author and reviewer for their perspective.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Tracking issue: 32bit x86 targets without SSE2 have unsound floating point behavior" [rust#114479](https://github.com/rust-lang/rust/issues/114479)
  - Nominated by @**apiraino** (github [comment](https://github.com/rust-lang/rust/issues/114479#issuecomment-2076723049), zulip prioritization [topic](https://rust-lang.zulipchat.com/#narrow/stream/245100-t-compiler.2Fwg-prioritization.2Falerts/topic/.23114479.20Tracking.20issue.3A.2032bit.20x86.20targets.20without.20SSE2.20have.E2.80.A6/near/434964647))
  - > This tracking issue shows that we have targets that intersect tier platforms support in different ways. For example i686 are tier 1 but i686 "non-SSE2" are tier 2 (and suffer from codegen unsoundnesses). All these differences are not apparent [in our documentation](https://doc.rust-lang.org/rustc/platform-support.html). Should we add a bit of nuances to our target policy? If yes, how?
  - > [Ralf] Altogether I think there are enough issues with floating point on x86 without SSE (this one, and also #115567) that IMO we should say that tier 1 hardfloat targets require SSE period. It is already the case that using feature flags to turn a hardfloat target into a softfloat target is unsound (Cc #116344), and we should simply hard-error in those cases (e.g. disabling the x87 feature on any hardfloat x86 target). IMO we should do the same when disabling SSE/SSE2 on an i686 target.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Enable DestinationPropagation by default." [rust#115105](https://github.com/rust-lang/rust/pull/115105) (last review activity: 3 months ago)
  - cc @**mw**
- "Remove unnecessary impl sorting in queries and metadata" [rust#120812](https://github.com/rust-lang/rust/pull/120812) (last review activity: 2 months ago)
  - @**cjgillot**
- "Use Box<[T]> for ProcessResult::Changed" [rust#121355](https://github.com/rust-lang/rust/pull/121355) (last review activity: 2 months ago)
  - cc: @**Esteban Küber**? Note: @**Michael Goulet (compiler-errors)** was not in favour of this patch
- "Handle .init_array link_section specially on wasm" [rust#121533](https://github.com/rust-lang/rust/pull/121533) (last review activity: 2 months ago)
  - cc @**Esteban Küber**
- "Allow a MIR analysis to perform the state `join` directly" [rust#114900](https://github.com/rust-lang/rust/pull/114900) (last review activity: about 59 days ago)
  - cc: @**cjgillot**

## Next week's WG checkins

- @_*WG-async* by @**nikomatsakis** and @**tmandry**
- @_*WG-diagnostics* by @**Esteban Küber** and @**oli**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/j7ulhAwrQQeguFno_ejZog)
