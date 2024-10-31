---
tags: weekly, rustc
type: docs
note_id: mIm_VIaQRRK6IXrcDcz7-w
---

# T-compiler Meeting Agenda 2024-10-24

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

 - (TIP) get them from https://github.com/rust-lang/calendar

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Create an avr-unknown-unknown target" [compiler-team#800](https://github.com/rust-lang/compiler-team/issues/800) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20an.20avr-unknown-unknown.20target.20compiler-team.23800))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: about 34 days ago)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: about 12 days ago)
  - "Add `evex512` target feature for AVX10" [compiler-team#778](https://github.com/rust-lang/compiler-team/issues/778) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60evex512.60.20target.20feature.20for.20AVX10.20compiler-team.23778)) (last review activity: about 47 days ago)
  - "Make the test cfg a userspace check-cfg" [compiler-team#785](https://github.com/rust-lang/compiler-team/issues/785) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Make.20the.20test.20cfg.20a.20userspace.20check-cfg.20compiler-team.23785)) (last review activity: about 0 days ago)
  - "Policy change around adding new unstable flags" [compiler-team#787](https://github.com/rust-lang/compiler-team/issues/787) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.20change.20around.20adding.20new.20unstable.20.E2.80.A6.20compiler-team.23787)) (last review activity: about 5 days ago)
  - "Normalize FileCheck directives" [compiler-team#789](https://github.com/rust-lang/compiler-team/issues/789) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Normalize.20FileCheck.20directives.20compiler-team.23789)) (last review activity: about 5 days ago)
  - "Relink, don't rebuild" [compiler-team#790](https://github.com/rust-lang/compiler-team/issues/790) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relink.2C.20don.27t.20rebuild.20compiler-team.23790)) (last review activity: about 5 days ago)
  - "Support for a new `wasm32-linux-musl` Tier-3 target" [compiler-team#797](https://github.com/rust-lang/compiler-team/issues/797) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Support.20for.20a.20new.20.60wasm32-linux-musl.60.20Tie.E2.80.A6.20compiler-team.23797)) (last review activity: about 5 days ago)
- Pending FCP requests (check your boxes!)
  - "sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets" [rust#123617](https://github.com/rust-lang/rust/pull/123617)
  - "Stabilize WebAssembly `multivalue`, `reference-types`, and `tail-call` target features" [rust#131080](https://github.com/rust-lang/rust/pull/131080)
  - "Lint on combining `#[no_mangle]` and `#[export_name]`" [rust#131558](https://github.com/rust-lang/rust/pull/131558)
- Things in FCP (make sure you're good with it)
  - "Attribute handling reworks" [compiler-team#796](https://github.com/rust-lang/compiler-team/issues/796) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Attribute.20handling.20reworks.20compiler-team.23796))
  - "Remove unstable `-Zprofile` (gcov-style coverage)" [compiler-team#798](https://github.com/rust-lang/compiler-team/issues/798) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Remove.20unstable.20.60-Zprofile.60.20.28gcov-style.20c.E2.80.A6.20compiler-team.23798))
  - "Add `--print host-triple` to print host target triple" [rust#125579](https://github.com/rust-lang/rust/pull/125579)
- Accepted MCPs
  - "Wasm minimal features target" [compiler-team#791](https://github.com/rust-lang/compiler-team/issues/791) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Wasm.20minimal.20features.20target.20compiler-team.23791))
- MCPs blocked on unresolved concerns
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
- Finalized FCPs (disposition merge)
  - "make unsupported_calling_conventions a hard error" [rust#129935](https://github.com/rust-lang/rust/pull/129935)
- Other teams finalized FCPs
  - "Fixup Windows verbatim paths when used with the `include!` macro" [rust#125205](https://github.com/rust-lang/rust/pull/125205)
  - "Allow dropping `dyn Trait` principal" [rust#126660](https://github.com/rust-lang/rust/pull/126660)
  - "atomics: allow atomic and non-atomic reads to race" [rust#128778](https://github.com/rust-lang/rust/pull/128778)
  - "Decide on name for `derive(SmartPtr)`" [rust#129104](https://github.com/rust-lang/rust/issues/129104)
  - "Do not consider match/let/ref of place that evaluates to `!` to diverge, disallow coercions from them too" [rust#129392](https://github.com/rust-lang/rust/pull/129392)
  - "Make deprecated_cfg_attr_crate_type_name a hard error" [rust#129670](https://github.com/rust-lang/rust/pull/129670)
  - "Stabilize expr_2021 fragment specifier in all editions" [rust#129972](https://github.com/rust-lang/rust/pull/129972)
  - "Check elaborated projections from dyn don't mention unconstrained late bound lifetimes" [rust#130367](https://github.com/rust-lang/rust/pull/130367)
  - "Finish stabilization of `result_ffi_guarantees`" [rust#130628](https://github.com/rust-lang/rust/pull/130628)
  - "Stabilize const `ptr::write*` and `mem::replace`" [rust#130954](https://github.com/rust-lang/rust/pull/130954)
  - "Stabilize `shorter_tail_lifetime`" [rust#131445](https://github.com/rust-lang/rust/issues/131445)

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
- "Stabilize WebAssembly `multivalue`, `reference-types`, and `tail-call` target features" [rust#131080](https://github.com/rust-lang/rust/pull/131080)
  - A bit more context at [comment](https://github.com/rust-lang/rust/pull/131080#pullrequestreview-2339557005)
  - Under RFC ([comment](https://github.com/rust-lang/rust/pull/131080#issuecomment-2403261016)), needs a few ticks
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [69 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [42 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 5 P-medium, 3 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 38 P-high, 100 P-medium, 17 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "[Regression] LLVM asserts "conflicting locations for variable" since 1.82" [rust#131944](https://github.com/rust-lang/rust/issues/131944)
  - Seems the regression happened in #128861 ([comment](https://github.com/rust-lang/rust/issues/131944#issuecomment-2428361518)), a tentative patch is being worked on
  - Assigned P-critical in case we want to evaluate a dot release for this (so far, @_**apiraino** not aware of other manifestations of this issue)

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2024-10-21](https://github.com/rust-lang/rustc-perf/blob/81de3d5e2cc599cc49bc11c64f9a5b911f3a83dd/triage/2024-10-21.md)

Some tidy improvements from switching to next generation trait solver
(solely for coherence checking) and from simplifying our dataflow
analysis framework. There were some binary size regressions associated
with PR 126557 (adding `#[track_caller]` to allocating methods of
`Vec` and `VecDeque`), which I have handed off to T-libs to choose
whether to investigate further.

Triage done by **@pnkfelix**.
Revision range: [5ceb623a..3e33bda0](https://perf.rust-lang.org/?start=5ceb623a4abd66e91e7959d25caaf0523f1a7f7c&end=3e33bda0326586a6e1e34d0f5c060ca6d116e6a4&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 0.9%]   | 43    |
| Regressions (secondary)  | 0.4%  | [0.2%, 0.7%]   | 36    |
| Improvements (primary)   | -0.8% | [-5.1%, -0.2%] | 92    |
| Improvements (secondary) | -0.8% | [-2.0%, -0.1%] | 65    |
| All  (primary)           | -0.4% | [-5.1%, 0.9%]  | 135   |

0 Regressions, 3 Improvements, 6 Mixed; 3 of them in rollups
47 artifact comparisons made in total

#### Regressions

This space intentionally left blank (0 regressions)

#### Improvements

stabilize `-Znext-solver=coherence` again [#130654](https://github.com/rust-lang/rust/pull/130654) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f79fae3069c449993eda6b16934da3b144cb8a66&end=a0c2aba29aa9ea50a7c45c3391dd446f856bef7b&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.9% | [-4.5%, -0.2%] | 17    |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 3     |
| All  (primary)           | -1.9% | [-4.5%, -0.2%] | 17    |

* improvements are to bitmaps and nalgebra
* (presumably due to their heavy use of trait machinery; though, skimming bitmaps, I'm not sure if I see heavy use of trait machinery there)
* what else can I say, except, amazing!

Remove `GenKillAnalysis` [#131481](https://github.com/rust-lang/rust/pull/131481) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1f67a7aa8d5b30c43c28ed9b2621cf4b7b8bb963&end=d829780c4e4ef11f5e09c1c5ed9684c12aad7236&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 1.6%  | [1.6%, 1.6%]   | 1     |
| Improvements (primary)   | -0.4% | [-0.7%, -0.2%] | 24    |
| Improvements (secondary) | -0.9% | [-1.9%, -0.1%] | 19    |
| All  (primary)           | -0.4% | [-0.7%, -0.2%] | 24    |

* improvements are spread across html5ever, serde, cargo, libc, diesel, and bitmaps.
* wow. I'm surprised `GenKillAnalysis` is a pessimization
* (maybe this is a sign that our basic blocks tend to hold a small number of instructions...?)
* anyway, overall amazing work.

Rollup of 8 pull requests [#131792](https://github.com/rust-lang/rust/pull/131792) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=bed75e7c21e8d18bd536a0f7c9e479d2f6707db3&end=7342830c05ec0996e9e4b7df550b1043dca7829c&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 5     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.2% | [-0.2%, -0.2%] | 5     |

* improvements are to incremental scenarios for stm32f4 (and one also for libc).

#### Mixed

Add `#[track_caller]` to allocating methods of `Vec` & `VecDeque` [#126557](https://github.com/rust-lang/rust/pull/126557) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5ceb623a4abd66e91e7959d25caaf0523f1a7f7c&end=f6648f252a05a0a46c865d7ec836b46290613bf9&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.0%, 0.5%]   | 26    |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.2% | [-0.2%, -0.1%] | 4     |
| All  (primary)           | 0.3%  | [0.0%, 0.5%]   | 26    |

* based on a prior perf run (which predicted 16 primary regressions of roughly the same magnitude as observed here), the T-libs team had [already approved this PR](https://github.com/rust-lang/rust/pull/126557#issuecomment-2329482185) under the assumption that there wouldn't be a *runtime impact* from this.
* there was a note from nnethercote that it isn't totally clear if the binary size increases were anticipated.
* marking as triaged

Rollup of 8 pull requests [#131690](https://github.com/rust-lang/rust/pull/131690) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=17a19e684cdf3ca088af8b4da6a6209d128913f4&end=9322d183f45e0fd5a509820874cc5ff27744a479&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.4%, 0.4%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.6% | [-0.8%, -0.3%] | 2     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.2% | [-0.8%, 0.4%]  | 3     |

* regression to cargo opt-full; improvements to image and html5ever opt-full
* briefly skimmed detailed results. nothing stood out.
* not worth digging into further; marking as triaged

Use `ThinVec` for PredicateObligation storage [#131422](https://github.com/rust-lang/rust/pull/131422) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9ce3675b438aae22ef0c6147cde2003a418ab722&end=9618da7c9995a673af4841149ba2d1f53b69dd92&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.3%  | [0.3%, 0.5%]   | 8     |
| Improvements (primary)   | -0.3% | [-0.7%, -0.2%] | 15    |
| Improvements (secondary) | -0.3% | [-0.7%, -0.2%] | 23    |
| All  (primary)           | -0.3% | [-0.7%, -0.2%] | 15    |

* improvements outweigh regressions. (and reported performance matches what was anticipated via perf runs.)
* marking as triaged

optimize str.replace [#130223](https://github.com/rust-lang/rust/pull/130223) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3a85d3fa785d95a7b7bcf4f160b67bffba7afd4a&end=86bd45979a964678b40b79156744f0057759d840&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.2%, 1.2%]   | 5     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.8% | [-0.8%, -0.8%] | 1     |
| Improvements (secondary) | -0.4% | [-0.4%, -0.3%] | 6     |
| All  (primary)           | 0.3%  | [-0.8%, 1.2%]  | 6     |

* primary regressions to miscellaneous cargo and clap scenarios. (single primary improvement was to cargo incr-patched::println).
* overall seems like minor regressions, potentially "just" instrumentation bias, compared to the expected benefit for microbenchmark reported in PR description.
* marking as triaged.

Rollup of 8 pull requests [#131934](https://github.com/rust-lang/rust/pull/131934) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a2a1206811d864df2bb61b2fc27ddc45a3589424&end=8069f8d17a6c86a8fd881939fcce359a90c57ff2&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.3%, 0.3%]   | 2     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.3%]   | 11    |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 0.1%  | [-0.2%, 0.3%]  | 3     |

* primary regressions to helloworld (doc) and hyper (opt); primary improvement to libc (doc).
* all the secondary regressions are to doc benchmarks, which led lqd to hypothesize that this is due to PR 131908 which changed the hash used for filename generation to sha256 since it should be stable going forward.
* hyper history seems really noisy.
* marking as triaged

Update rustc-hash to version 2 but again [#131949](https://github.com/rust-lang/rust/pull/131949) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=de977a5acf210f7d71ff83f4b8bc42c274ce4ed9&end=662180b34d95f72d05b7c467b0baf4d23d36b1e1&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.1%, 0.2%]   | 8     |
| Regressions (secondary)  | 0.3%  | [0.1%, 0.7%]   | 9     |
| Improvements (primary)   | -0.3% | [-0.5%, -0.2%] | 10    |
| Improvements (secondary) | -0.9% | [-1.4%, -0.6%] | 13    |
| All  (primary)           | -0.1% | [-0.5%, 0.2%]  | 18    |

* primary improvements to unicode-normalization and libc
* primary regressions to typenum and serde
* I don't think there's anything interesting to investigate here. marking as triaged.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

- None this week

Next meetings' agenda draft: [hackmd link](https://hackmd.io/yC6fKy_rQtufsvK_C8QWEQ) - (is Oct, 31st a holiday in the USA?)
