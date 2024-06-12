---
tags: weekly, rustc
type: docs
note_id: khtxxG3CQ5KkoiqKDN_qug
---

# T-compiler Meeting Agenda 2024-05-30

## Announcements

- Friday [steering meeting]: Project Goals by @_**nikomatsakis** 
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  -  "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 4 months ago)
    - concern: [added-complexity-to-frontend](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-1845169318)
  -  "Target families for executable format" [compiler-team#716](https://github.com/rust-lang/compiler-team/issues/716) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Target.20families.20for.20executable.20format.20compiler-team.23716)) (last review activity: 3 months ago)
  -  "Promote riscv64gc-unknown-linux-musl to tier 2" [compiler-team#728](https://github.com/rust-lang/compiler-team/issues/728) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20riscv64gc-unknown-linux-gnu.20to.20ti.E2.80.A6.20compiler-team.23728)) (last review activity: 2 months ago)
  -  "Only emit forward compatible v0 symbol names with graceful degradation" [compiler-team#737](https://github.com/rust-lang/compiler-team/issues/737) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Only.20emit.20forward.20compatible.20v0.20symbol.20na.E2.80.A6.20compiler-team.23737)) (last review activity: about 54 days ago)
  -  "Partial compilation using MIR-only rlibs" [compiler-team#738](https://github.com/rust-lang/compiler-team/issues/738) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Partial.20compilation.20using.20MIR-only.20rlibs.20compiler-team.23738)) (last review activity: about 47 days ago)
  -  "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: about 13 days ago)
  -  "Add a `--emit=nameres` for IDEs" [compiler-team#749](https://github.com/rust-lang/compiler-team/issues/749) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20.60--emit.3Dnameres.60.20for.20IDEs.20compiler-team.23749)) (last review activity: about 5 days ago)
  -  "Fully rustfmt `use` declarations" [compiler-team#750](https://github.com/rust-lang/compiler-team/issues/750) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23750)) (last review activity: about 5 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [Add a new `--build-id` flag to rustc (compiler-team#635)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1777545767)
    - @_**|125250** @_**|116107** @_**|125294** @_**|123856**
    - concerns: [other-existing-options (by petrochenkov)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1779597156) [option-name (by wesleywiser)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1785349936)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
  - merge: [Stabilize `--env-set` option (rust#119926)](https://github.com/rust-lang/rust/pull/119926#issuecomment-1898766442)
    - @_**|119009** @_**|124288** @_**|123586** @_**|125250** @_**|119031** @_**|124287** @_**|116118**
    - concerns: [other-rustc-vars (by petrochenkov)](https://github.com/rust-lang/rust/pull/119926#issuecomment-1900703005)
  - merge: [sanitizers: stabilize core sanitizers (i.e., AddressSanitizer, LeakSanitizer, MemorySanitizer, ThreadSanitizer) (rust#123617)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2135121317)
    - @_**|119009** @_**|116083** @_**|124288** @_**|123586** @_**|125250** @_**|119031** @_**|124287** @_**|426609** @_**|123856** @_**|116118** @_**|232957**
    - no pending concerns
  - merge: [allow overwriting the output of `rustc --version` (rust#124339)](https://github.com/rust-lang/rust/pull/124339#issuecomment-2075414901)
    - @_**|248906** @_**|426609** @_**|116118** @_**|216206** @_**|232957**
    - no pending concerns
  - merge: [Add `--print host-triple` to print host target triple (rust#125579)](https://github.com/rust-lang/rust/pull/125579#issuecomment-2133192548)
    - @_**|119009** @_**|116083** @_**|123586** @_**|125250** @_**|426609** @_**|116118** @_**|232957**
    - concerns: [triple vs tuple (by lcnr)](https://github.com/rust-lang/rust/pull/125579#issuecomment-2133938172)
- Things in FCP (make sure you're good with it)
  - "Promote arm64ec-pc-windows-msvc to tier 2" [compiler-team#746](https://github.com/rust-lang/compiler-team/issues/746) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20arm64ec-pc-windows-msvc.20to.20tier.202.20compiler-team.23746))
  - "Promote loongarch64-unknown-linux-musl to tier 2" [compiler-team#753](https://github.com/rust-lang/compiler-team/issues/753) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20loongarch64-unknown-linux-musl.20to.E2.80.A6.20compiler-team.23753))
  - "Show files produced by `--emit foo` in json artifact notifications" [rust#122597](https://github.com/rust-lang/rust/pull/122597)
- Accepted MCPs
  -  "Skip virtual drop for !needs_drop types" [compiler-team#730](https://github.com/rust-lang/compiler-team/issues/730) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Skip.20virtual.20drop.20for.20.21needs_drop.20types.20compiler-team.23730))
  -  "Add `--emit=thin-link-bitcode` to enable distributed ThinLTO users" [compiler-team#735](https://github.com/rust-lang/compiler-team/issues/735) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Zemit-thin-lto-index.3D.3Cpath.3E.60.20to.20ena.E2.80.A6.20compiler-team.23735))
  -  "Add --print=check-cfg" [compiler-team#743](https://github.com/rust-lang/compiler-team/issues/743) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20--print.3Dcheck-cfg.20compiler-team.23743))
  -  "Support `-Cforce-frame-pointers=non-leaf`" [compiler-team#744](https://github.com/rust-lang/compiler-team/issues/744) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Support.20.60-Cforce-frame-pointers.3Dnon-leaf.60.20compiler-team.23744))
  -  "`-Zfixed-x18`" [compiler-team#748](https://github.com/rust-lang/compiler-team/issues/748) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.60-Cfixed-x18.60.20compiler-team.23748))
- Finalized FCPs (disposition merge)
  - No new finished FCP (disposition merge) this time.
- Other teams finalized FCPs
  -  "Tracking Issue for asm_const" [rust#93332](https://github.com/rust-lang/rust/issues/93332)
  -  "Edition 2024: Make `!` fall back to `!`" [rust#123508](https://github.com/rust-lang/rust/pull/123508)
  -  "Edition 2024: don't special-case diverging blocks" [rust#123590](https://github.com/rust-lang/rust/pull/123590)
  -  "Turn remaining non-structural-const-in-pattern lints into hard errors" [rust#124661](https://github.com/rust-lang/rust/pull/124661)

### WG checkins

- @_*WG-async* by @**nikomatsakis** and @**tmandry**
  > Checkin text

- @_*WG-diagnostics* by @**Esteban Küber** and @**oli**
  > Checkin text

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Fix ICE in non-operand `aggregate_raw_ptr` intrinsic codegen" [rust#125184](https://github.com/rust-lang/rust/pull/125184)
  - Authored by scottmcm
  - Ben nominated:
    > I would like this in beta so that the stage0 compiler does not ICE if it gets passed -Zmir-opt-level=0. Yes I can work around this issue without huge difficulty, but the diff here is so small.
<!--
/poll Approve beta backport of #125184?
approve
decline
don't know
-->
- :beta: "Revert problematic opaque type change" [rust#125489](https://github.com/rust-lang/rust/pull/125489)
  - Authored by oli-obk
  - Fixes P-critical beta regression
<!--
/poll Approve beta backport of #125489?
approve
decline
don't know
-->
- :beta: "[BETA] revert leak check changes" [rust#125629](https://github.com/rust-lang/rust/pull/125629)
  - Authored by lcnr
  - Fixes P-critical beta regression
<!--
/poll Approve beta backport of #125629?
approve
decline
don't know
-->
- :beta: "ast: Revert a breaking attribute visiting order change #125734"
    - Authored by petrochenkov
    - Fixes P-high beta regression
<!--
/poll Approve beta backport of #125734?
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
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [4 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [3 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [64 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [34 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [3 P-critical, 1 P-high, 2 P-medium, 2 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 5 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 36 P-high, 100 P-medium, 16 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "`-C target_cpu=cortex-a72` (and `-target-cpu=native` on Raspberry Pi) wrongly enables crypto features that are optional on Cortex-A72" [rust#125033](https://github.com/rust-lang/rust/issues/125033)
    - Discussed extensively last week
- "regression: trait bound not satisfied" [rust#125194](https://github.com/rust-lang/rust/issues/125194)
    - Fix was beta nominated
- "regression: type annotations needed" [rust#125196](https://github.com/rust-lang/rust/issues/125196)
- "regression: ambiguous outer attributes" [rust#125199](https://github.com/rust-lang/rust/issues/125199)

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "regression: cannot find macro in scope" [rust#125201](https://github.com/rust-lang/rust/issues/125201)
    - Fix was beta nominated

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

# 2024-05-27 Triage Log

A relatively quiet week, with few large changes, the largest driven by further
increasing the scope of unsafe precondition checking.

Triage done by **@simulacrum**.
Revision range: [1d0e4afd..a59072ec](https://perf.rust-lang.org/?start=1d0e4afd4cac09078e12a232508c3e9f8d42535d&end=a59072ec4fb6824213df5e9de8cae4812fd4fe97&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 1.6%  | [0.2%, 6.3%]   | 84    |
| Regressions ❌ <br /> (secondary)  | 0.9%  | [0.1%, 3.8%]   | 66    |
| Improvements ✅ <br /> (primary)   | -0.4% | [-2.3%, -0.2%] | 37    |
| Improvements ✅ <br /> (secondary) | -1.7% | [-3.8%, -0.2%] | 22    |
| All ❌✅ (primary)                 | 1.0%  | [-2.3%, 6.3%]  | 121   |

2 Regressions, 3 Improvements, 5 Mixed; 3 of them in rollups
51 artifact comparisons made in total

#### Regressions

Rewrite native thread-local storage [#116123](https://github.com/rust-lang/rust/pull/116123) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ed172dbbaf1c702b99da54554b33b3fe65021da9&end=9c8a58fdb895204cb19eeb97472a78caa1c57c19&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 0.4% | [0.2%, 1.2%] | 10    |
| Regressions ❌ <br /> (secondary)  | 1.0% | [0.7%, 1.6%] | 9     |
| Improvements ✅ <br /> (primary)   | -    | -            | 0     |
| Improvements ✅ <br /> (secondary) | -    | -            | 0     |
| All ❌✅ (primary)                 | 0.4% | [0.2%, 1.2%] | 10    |

Regressions deemed worth the overall change's contents (see
https://github.com/rust-lang/rust/pull/116123#issuecomment-2009408868). The TLS
state is now stored in a single thread-local object rather than two, which
should decrease costs of addressing it in general (modulo LLVM difficulties).

Rollup of 6 pull requests [#125463](https://github.com/rust-lang/rust/pull/125463) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=78dd504f2fd87c0cfabff7d9174253411caf2f80&end=7601adcc764d42c9f2984082b49948af652df986&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 1.4%  | [1.1%, 2.0%]   | 8     |
| Regressions ❌ <br /> (secondary)  | 1.0%  | [0.4%, 1.8%]   | 23    |
| Improvements ✅ <br /> (primary)   | -0.5% | [-0.5%, -0.5%] | 1     |
| Improvements ✅ <br /> (secondary) | -0.3% | [-0.3%, -0.3%] | 1     |
| All ❌✅ (primary)                 | 1.2%  | [-0.5%, 2.0%]  | 9     |

Likely related to fixing an issue around LLD discovery, see
https://github.com/rust-lang/rust/pull/125463#issuecomment-2129069901. Bugfix
warrants spending a bit more time.

#### Improvements

Move the checks for Arguments constructors to inline const [#125518](https://github.com/rust-lang/rust/pull/125518) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0a59f113629aafb6e5ee55ad04a2d451a11d8466&end=75e2c5dcd0ddce0fe0eb3d4a2195cd51073c729b&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -     | -              | 0     |
| Regressions ❌ <br /> (secondary)  | -     | -              | 0     |
| Improvements ✅ <br /> (primary)   | -0.5% | [-0.7%, -0.3%] | 5     |
| Improvements ✅ <br /> (secondary) | -0.5% | [-0.9%, -0.4%] | 7     |
| All ❌✅ (primary)                 | -0.5% | [-0.7%, -0.3%] | 5     |


Remove `DefId` from `EarlyParamRegion` [#125468](https://github.com/rust-lang/rust/pull/125468) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=cdc509f7c09361466d543fc8311ce7066b10cc4f&end=fec98b3bbc94b54a0b3085d004708aabcc48081a&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -     | -              | 0     |
| Regressions ❌ <br /> (secondary)  | -     | -              | 0     |
| Improvements ✅ <br /> (primary)   | -0.4% | [-0.9%, -0.2%] | 48    |
| Improvements ✅ <br /> (secondary) | -0.8% | [-2.0%, -0.3%] | 19    |
| All ❌✅ (primary)                 | -0.4% | [-0.9%, -0.2%] | 48    |


[perf] Delay the construction of early lint diag structs [#125410](https://github.com/rust-lang/rust/pull/125410) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=fec98b3bbc94b54a0b3085d004708aabcc48081a&end=b582f807fae230b22ac126ff1d8a13262bb099ba&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -     | -              | 0     |
| Regressions ❌ <br /> (secondary)  | -     | -              | 0     |
| Improvements ✅ <br /> (primary)   | -0.5% | [-0.7%, -0.3%] | 12    |
| Improvements ✅ <br /> (secondary) | -2.0% | [-2.8%, -1.2%] | 13    |
| All ❌✅ (primary)                 | -0.5% | [-0.7%, -0.3%] | 12    |


#### Mixed

Follow-up fixes to `report_return_mismatched_types` [#123812](https://github.com/rust-lang/rust/pull/123812) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1d0e4afd4cac09078e12a232508c3e9f8d42535d&end=e8753914580fb42554a79a4b5c5fb4cc98933231&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 1.1%  | [0.6%, 1.8%]   | 3     |
| Regressions ❌ <br /> (secondary)  | 0.2%  | [0.1%, 0.2%]   | 6     |
| Improvements ✅ <br /> (primary)   | -     | -              | 0     |
| Improvements ✅ <br /> (secondary) | -1.1% | [-1.1%, -1.1%] | 2     |
| All ❌✅ (primary)                 | 1.1%  | [0.6%, 1.8%]   | 3     |

Seems to be limited primarily to one scenario in regex, with lots of new
metadata decoding. Asked for follow-up by PR author.

Make early lints translatable [#124417](https://github.com/rust-lang/rust/pull/124417) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=39e02f1bd1e53d009da382654139f7c0639172a8&end=791adf759cc065316f054961875052d5bc03e16c&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 1.5%  | [0.2%, 6.3%]   | 66    |
| Regressions ❌ <br /> (secondary)  | 0.4%  | [0.3%, 0.5%]   | 7     |
| Improvements ✅ <br /> (primary)   | -     | -              | 0     |
| Improvements ✅ <br /> (secondary) | -0.7% | [-1.1%, -0.6%] | 12    |
| All ❌✅ (primary)                 | 1.5%  | [0.2%, 6.3%]   | 66    |

Regressions are partially mitigated by #125410 (see earlier in the report).
Further follow-up is expected to investigate closing remaining gap
(https://github.com/rust-lang/rust/pull/124417#issuecomment-2126056523).

Panic directly in Arguments::new* instead of recursing [#117804](https://github.com/rust-lang/rust/pull/117804) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9c8a58fdb895204cb19eeb97472a78caa1c57c19&end=606afbb617a2949a4e35c4b0258ff94c980b9451&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 0.3%  | [0.3%, 0.3%]   | 2     |
| Regressions ❌ <br /> (secondary)  | 0.4%  | [0.1%, 0.9%]   | 9     |
| Improvements ✅ <br /> (primary)   | -0.5% | [-0.5%, -0.5%] | 1     |
| Improvements ✅ <br /> (secondary) | -     | -              | 0     |
| All ❌✅ (primary)                 | 0.0%  | [-0.5%, 0.3%]  | 3     |

Regressions are likely to be inliner noise, not meaningful changes.

Rollup of 7 pull requests [#125456](https://github.com/rust-lang/rust/pull/125456) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=606afbb617a2949a4e35c4b0258ff94c980b9451&end=5baee04b6349d176440cb1fcd5424a89f67b9f7b&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -     | -              | 0     |
| Regressions ❌ <br /> (secondary)  | 0.3%  | [0.2%, 0.4%]   | 8     |
| Improvements ✅ <br /> (primary)   | -0.3% | [-0.4%, -0.3%] | 2     |
| Improvements ✅ <br /> (secondary) | -0.5% | [-0.9%, -0.4%] | 7     |
| All ❌✅ (primary)                 | -0.3% | [-0.4%, -0.3%] | 2     |

Seems plausible that the regression is due to #124389 (since it affected derive
macros). But also seems not worth further investigation given it's a secondary
benchmark and minimal impact. Marked as triaged.

Add assert_unsafe_precondition to unchecked_{add,sub,neg,mul,shl,shr} methods [#121571](https://github.com/rust-lang/rust/pull/121571) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=14562ddf8c4302a52c72c9c71f5be6516fec5537&end=48f00110d0dae38b3046a9ac05d20ea321fd6637&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 1.5%  | [0.2%, 3.4%]   | 27    |
| Regressions ❌ <br /> (secondary)  | 1.8%  | [0.4%, 3.8%]   | 5     |
| Improvements ✅ <br /> (primary)   | -0.9% | [-2.5%, -0.3%] | 5     |
| Improvements ✅ <br /> (secondary) | -     | -              | 0     |
| All ❌✅ (primary)                 | 1.1%  | [-2.5%, 3.4%]  | 32    |

Regressions are likely expected as we're lowering more code that's late-removed.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

None this week

Next meetings' agenda draft: [hackmd link](#)
