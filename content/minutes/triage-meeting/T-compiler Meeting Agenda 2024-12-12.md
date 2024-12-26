---
tags: weekly, rustc
type: docs
note_id: 52nD0SaYTmyjZO7BO7aF9Q
---

# T-compiler Meeting Agenda 2024-12-12

## Announcements

- Team compiler is looking for someone taking on a 4-weekly rotation shift on the rustc performance triaging (details on [Zulip thread](https://rust-lang.zulipchat.com/#narrow/channel/131828-t-compiler/topic/volunteers.20to.20take.20my.20~4-weekly.20rustc-perf.20slot.3F/near/486629784))
- The review policy for contributors has been published: https://forge.rust-lang.org/compiler/reviews.html
  - Comments and amendments are welcome. Discuss on Zulip (contrib-private) or on [rust-forge#790](https://github.com/rust-lang/rust-forge/pull/790)
- Design meeting: LLVM optional target-cpu features enabled by default ([compiler-team#752](https://github.com/rust-lang/compiler-team/issues/752))
  - Continue discussion of [rust-lang/rust#125033](https://github.com/rust-lang/rust/issues/125033)
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- @_**davidtwco** office hours <time:2024-12-05T17:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "setup typos check in CI (for rust repo)" [compiler-team#817](https://github.com/rust-lang/compiler-team/issues/817) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/setup.20typos.20check.20in.20CI.20.28for.20rust.20repo.29.20compiler-team.23817))
    - concern: [contributor friction](https://github.com/rust-lang/compiler-team/issues/817#issuecomment-2525266792)
  - "Use debuginfo for short backtrace printing" [compiler-team#818](https://github.com/rust-lang/compiler-team/issues/818) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Use.20debuginfo.20for.20short.20backtrace.20printing.20compiler-team.23818))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 2 months ago)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: 2 months ago)
  - "Make the test cfg a userspace check-cfg" [compiler-team#785](https://github.com/rust-lang/compiler-team/issues/785) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Make.20the.20test.20cfg.20a.20userspace.20check-cfg.20compiler-team.23785)) (last review activity: about 6 days ago)
  - "Policy change around adding new unstable flags" [compiler-team#787](https://github.com/rust-lang/compiler-team/issues/787) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.20change.20around.20adding.20new.20unstable.20.E2.80.A6.20compiler-team.23787)) (last review activity: about 55 days ago)
  - "Normalize FileCheck directives" [compiler-team#789](https://github.com/rust-lang/compiler-team/issues/789) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Normalize.20FileCheck.20directives.20compiler-team.23789)) (last review activity: about 55 days ago)
  - "Relink, don't rebuild" [compiler-team#790](https://github.com/rust-lang/compiler-team/issues/790) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relink.2C.20don.27t.20rebuild.20compiler-team.23790)) (last review activity: about 55 days ago)
  - "Create an avr-unknown-none target" [compiler-team#800](https://github.com/rust-lang/compiler-team/issues/800) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20an.20avr-unknown-unknown.20target.20compiler-team.23800)) (last review activity: about 33 days ago)
- Pending FCP requests (check your boxes!)
  - "sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets" [rust#123617](https://github.com/rust-lang/rust/pull/123617)
  - "const-eval: detect more pointers as definitely not-null" [rust#133700](https://github.com/rust-lang/rust/pull/133700)
- Things in FCP (make sure you're good with it)
  - "Set the baseline Solaris version to 11.4" [compiler-team#812](https://github.com/rust-lang/compiler-team/issues/812) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Set.20the.20baseline.20Solaris.20version.20to.2011.2E4.20compiler-team.23812))
  - "Remove -Zinline-in-all-cgus" [compiler-team#814](https://github.com/rust-lang/compiler-team/issues/814) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Remove.20-Zinline-in-all-cgus.20compiler-team.23814))
- Accepted MCPs
  - "Promote OpenHarmony targets to Tier 2 with Host Tools" [compiler-team#811](https://github.com/rust-lang/compiler-team/issues/811) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20OpenHarmony.20targets.20to.20Tier.202.20wit.E2.80.A6.20compiler-team.23811))
- MCPs blocked on unresolved concerns
  - "Add `evex512` target feature for AVX10" [compiler-team#778](https://github.com/rust-lang/compiler-team/issues/778) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60evex512.60.20target.20feature.20for.20AVX10.20compiler-team.23778)) (last review activity: about 7 days ago)
    - concern: [design-around-naming-scheme](https://github.com/rust-lang/compiler-team/issues/778#issuecomment-2514307904)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
- Finalized FCPs (disposition merge)
  - "Add `--print host-tuple` to print host target tuple" [rust#125579](https://github.com/rust-lang/rust/pull/125579)
  - "make unsupported_calling_conventions a hard error" [rust#129935](https://github.com/rust-lang/rust/pull/129935)
  - "Fix ICE when passing DefId-creating args to legacy_const_generics." [rust#130443](https://github.com/rust-lang/rust/pull/130443)
  - "Stabilize WebAssembly `multivalue`, `reference-types`, and `tail-call` target features" [rust#131080](https://github.com/rust-lang/rust/pull/131080)
  - "Lint on combining `#[no_mangle]` and `#[export_name]`" [rust#131558](https://github.com/rust-lang/rust/pull/131558)
- Other teams finalized FCPs
  - "Add lint against function pointer comparisons" [rust#118833](https://github.com/rust-lang/rust/pull/118833)
  - "Fixup Windows verbatim paths when used with the `include!` macro" [rust#125205](https://github.com/rust-lang/rust/pull/125205)
  - "Allow dropping `dyn Trait` principal" [rust#126660](https://github.com/rust-lang/rust/pull/126660)
  - "atomics: allow atomic and non-atomic reads to race" [rust#128778](https://github.com/rust-lang/rust/pull/128778)
  - "Lint against getting pointers from immediately dropped temporaries" [rust#128985](https://github.com/rust-lang/rust/pull/128985)
  - "Do not consider match/let/ref of place that evaluates to `!` to diverge, disallow coercions from them too" [rust#129392](https://github.com/rust-lang/rust/pull/129392)
  - "Make deprecated_cfg_attr_crate_type_name a hard error" [rust#129670](https://github.com/rust-lang/rust/pull/129670)
  - "Stabilize expr_2021 fragment specifier in all editions" [rust#129972](https://github.com/rust-lang/rust/pull/129972)
  - "Check elaborated projections from dyn don't mention unconstrained late bound lifetimes" [rust#130367](https://github.com/rust-lang/rust/pull/130367)
  - "Finish stabilization of `result_ffi_guarantees`" [rust#130628](https://github.com/rust-lang/rust/pull/130628)
  - "Stabilize const `ptr::write*` and `mem::replace`" [rust#130954](https://github.com/rust-lang/rust/pull/130954)
  - "Stabilize s390x inline assembly" [rust#131258](https://github.com/rust-lang/rust/pull/131258)
  - "Stabilize Arm64EC inline assembly" [rust#131781](https://github.com/rust-lang/rust/pull/131781)
  - "Always display first line of impl blocks even when collapsed" [rust#132155](https://github.com/rust-lang/rust/pull/132155)
  - "mark is_val_statically_known intrinsic as stably const-callable" [rust#132449](https://github.com/rust-lang/rust/pull/132449)

### WG checkins

None

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

### One issue not prioritized
- [Implementation of trait "not general enough" in nightly, works fine on stable · Issue #131488 · rust-lang/rust](https://github.com/rust-lang/rust/issues/131488)
  - cc @**Michael Goulet (compiler-errors)**
  - This is now a regression on stable, relevant changes in #124336
  - As per [comment](https://github.com/rust-lang/rust/issues/131488#issuecomment-2413497748) from @**lqd**: it is slightly unclear how much is intended (because it fixes a soundness issue) or unintended behaviour.
  - prioritization [Zulip thread](https://rust-lang.zulipchat.com/#narrow/channel/245100-t-compiler.2Fwg-prioritization.2Falerts/topic/.23131488.20Implementation.20of.20trait.20.22not.20general.20enough.22.20in.20nig.E2.80.A6/near/483459975)

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [59 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [37 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 0 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 33 P-high, 100 P-medium, 19 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

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

> [triage logs for 2024-12-09](https://github.com/Mark-Simulacrum/rustc-perf/blob/triage/triage/2024-12-09.md)

A pretty quiet week, with both few PRs landed and no significant changes in performance.

Triage done by **@simulacrum**.
Revision range: [490b2cc0..1b3fb316](https://perf.rust-lang.org/?start=490b2cc09860dd62a7595bb07364d71c12ce4e60&end=1b3fb316751227d30b1523ed0e3f00d83956d4d0&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.1%, 1.4%]   | 84    |
| Regressions (secondary)  | 0.3%  | [0.1%, 0.7%]   | 45    |
| Improvements (primary)   | -0.4% | [-1.2%, -0.1%] | 42    |
| Improvements (secondary) | -0.8% | [-1.2%, -0.4%] | 19    |
| All  (primary)           | 0.1%  | [-1.2%, 1.4%]  | 126   |


0 Regressions, 0 Improvements, 7 Mixed; 4 of them in rollups
25 artifact comparisons made in total

#### Regressions

None this week.

#### Improvements

Remove polymorphization [#133883](https://github.com/rust-lang/rust/pull/133883) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=75716b45105e443199ce9800c7009ddfd6d2be53&end=ca13e9169fbbbb126190631b5a1e3e20053a52c1&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.5%  | [0.3%, 0.7%]   | 6     |
| Improvements (primary)   | -0.5% | [-1.3%, -0.1%] | 91    |
| Improvements (secondary) | -0.7% | [-1.7%, -0.3%] | 21    |
| All  (primary)                 | -0.5% | [-1.3%, -0.1%] | 91    |

This is essentially a solid improvement. We still did the evaluation of
polymorphization even if it wasn't actually enabled, so this just saves that
time by dropping all of that computation.

#### Mixed

Rollup of 6 pull requests [#133841](https://github.com/rust-lang/rust/pull/133841) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2633e019298f8d9f671c8f3d0d3348ce6fa1b8aa&end=733616f7236b4be140ce851a30b3bb06532b9364&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.2%, 1.4%]   | 10    |
| Regressions (secondary)  | 0.6%  | [0.6%, 0.6%]   | 1     |
| Improvements (primary)   | -0.3% | [-0.5%, -0.1%] | 2     |
| Improvements (secondary) | -0.2% | [-0.4%, -0.1%] | 5     |
| All  (primary)                 | 0.5%  | [-0.5%, 1.4%]  | 12    |

Mixed results, but seems like a real regression on a few larger benchmarks in
opt, non-incremental scenarios. Possibly due to
https://github.com/rust-lang/rust/pull/133798, trying an unrolled build to
verify.

Rollup of 8 pull requests [#133940](https://github.com/rust-lang/rust/pull/133940) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c94848c046d29f9a80c09aae758e27e418a289f2&end=706141b8d9090228343340378b1d4a2b095fa1fb&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.1%, 0.9%]   | 87    |
| Regressions (secondary)  | 0.4%  | [0.1%, 1.4%]   | 31    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.7% | [-1.9%, -1.6%] | 6     |
| All  (primary)                 | 0.4%  | [0.1%, 0.9%]   | 87    |

Root-caused and discussed here:
https://github.com/rust-lang/rust/pull/133607#issuecomment-2524194699, some
optimizations expected to reduce the impact.

Implementation of `fmt::FormattingOptions` [#118159](https://github.com/rust-lang/rust/pull/118159) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8dc83770f748c6cd16b342889ca2240397c19534&end=75716b45105e443199ce9800c7009ddfd6d2be53&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.4%]   | 2     |
| Regressions (secondary)  | 0.3%  | [0.3%, 0.3%]   | 1     |
| Improvements (primary)   | -0.4% | [-0.4%, -0.4%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | 0.1%  | [-0.4%, 0.4%]  | 3     |

A few regressions in primary benchmarks, but not worth follow-up given the
small magnitude, small number of affected builds, lack of clear `cycles`
impact, etc.

Rollup of 7 pull requests [#133978](https://github.com/rust-lang/rust/pull/133978) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=cdb89d6b15056a5cfa8932231360ae358b08983f&end=9c707a8b769523bb6768bf58e74fa2c39cc24844&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.3%, 0.3%]   | 1     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.3%]   | 9     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.2% | [-0.3%, -0.1%] | 2     |
| All  (primary)                 | 0.3%  | [0.3%, 0.3%]   | 1     |

Expected regression in doc builds due to additional trait implementations in the standard library.

Rollup of 7 pull requests [#134033](https://github.com/rust-lang/rust/pull/134033) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f415c07494b98e4559e4b13a9c5f867b0e6b2444&end=f33a8c6426074b7ce8d08740e9805fdca96ee150&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.3%]   | 6     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.5%]   | 6     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.3% | [-2.2%, -0.3%] | 2     |
| All  (primary)                 | 0.3%  | [0.2%, 0.3%]   | 6     |

Single benchmark regression, limited to incremental scenarios. Seems plausible
this is due to #133992, which obviously does more (necessary for correctness)
work.

Introduce `MixedBitSet` [#133891](https://github.com/rust-lang/rust/pull/133891) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1b3fb316751227d30b1523ed0e3f00d83956d4d0&end=f6cb952dc115fd1311b02b694933e31d8dc8b002&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.6%  | [0.2%, 1.0%]   | 8     |
| Improvements (primary)   | -0.6% | [-1.3%, -0.2%] | 67    |
| Improvements (secondary) | -0.7% | [-2.0%, -0.2%] | 28    |
| All  (primary)                 | -0.6% | [-1.3%, -0.2%] | 67    |

Expected changes, primarily an improvement rather than a regression. Overall a positive change.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Make the wasm_c_abi future compat warning a hard error" [rust#133951](https://github.com/rust-lang/rust/pull/133951)
  - nominated by @**Jubilee** ([comment](https://github.com/rust-lang/rust/pull/133951#issuecomment-2524467228))
  - formally deprecate the old (and broken) C abi for target `wasm32-unknown-unknown`
  - This will break ~85 versions of a foundation ecosystem crate (`wasm-bindgen`) but also just fix a bug. Projects downstream will need to upgrade to `wasm-bindgen >= v0.2.88`
  - @_**Alex Crichton** (active in the WASM group) approved this change
  - Tracking issue #122532
- "Make target-spec json file extensions case-insensitive" [rust#127389](https://github.com/rust-lang/rust/pull/127389)
  - nominated by @**davidtwco**
  - Ref. issue #127387 about case insensitive `.json`. The usecase stated seems to support "Old OS and old file-systems such as FAT" and other not so old, such as Cortex A ([comment](https://github.com/rust-lang/rust/issues/127387#issuecomment-2213645373)).
  - Perf. cost of `eq_ignore_ascii_case` for just the extension seems to be negligible
  - Cargo does not support it ([comment](https://github.com/rust-lang/rust/pull/127389#issuecomment-2214414963)) but cargo wouldn't run anyway on such old systems. They do have some concerns about keeping consistency on this with rustc ([comment](https://github.com/rust-lang/rust/pull/127389#issuecomment-2524171145)) and other tools like rustup, clippy, rustfmt
  - @**davidtwco** is ok with rustc and cargo diverging behaviour about this ([comment](https://github.com/rust-lang/rust/pull/127389#issuecomment-2538737662))

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "add error message for c# style named arguments" [rust#118733](https://github.com/rust-lang/rust/pull/118733) (last review activity: 11 months ago)
  - cc @**Esteban Küber**
- "Silence errors in expressions caused by bare traits in paths in 2021 edition" [rust#125784](https://github.com/rust-lang/rust/pull/125784) (last review activity: 6 months ago)
  - cc: @**Esteban Küber** for a rebase then cc: @_**León Orell Liehr (fmease)**
- "[Coverage][MCDC] Do not initialize mcdc parameters for instances containing no mcdc statements" [rust#129989](https://github.com/rust-lang/rust/pull/129989)
  - cc: @**Zalathar**
- "JumpThreading: fix bitwise not on non-booleans" [rust#131203](https://github.com/rust-lang/rust/pull/131203) (last review activity: about 44 days ago)
  - cc @**cjgillot**
- "[macro_metavar_expr_concat] Fix #128346" [rust#131522](https://github.com/rust-lang/rust/pull/131522) (last review activity: about 45 days ago)
  - cc: @**yukang**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/x1y_Il7xQueg05-PaGbAbg)
