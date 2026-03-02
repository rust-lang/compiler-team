---
tags: weekly, rustc
type: docs
note_id: gl0u-X2ZSVa2AWK5hZ3p0A
---

# T-compiler Meeting Agenda 2025-07-31

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- WG-async design meeting <time:2025-07-31T19:00:00+02:00>
- Stable MIR weekly meeting <time:2025-08-01T17:00:00+02:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Policy change around adding new unstable flags" [compiler-team#787](https://github.com/rust-lang/compiler-team/issues/787) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.20change.20around.20adding.20new.20unstable.20.E2.80.A6.20compiler-team.23787)) (last review activity: 9 months ago)
  - "Compile UI tests as libraries by default" [compiler-team#842](https://github.com/rust-lang/compiler-team/issues/842) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Compile.20UI.20tests.20as.20libraries.20by.20default.20compiler-team.23842)) (last review activity: 4 months ago)
  - "Unify ui test inline error annotation style" [compiler-team#859](https://github.com/rust-lang/compiler-team/issues/859) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Unify.20ui.20test.20inline.20error.20annotation.20sty.E2.80.A6.20compiler-team.23859)) (last review activity: 3 months ago)
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864)) (last review activity: about 48 days ago)
  - "Add support for specifying split-debuginfo=unpacked output directory" [compiler-team#871](https://github.com/rust-lang/compiler-team/issues/871) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20support.20for.20specifying.20split-debuginf.E2.80.A6.20compiler-team.23871)) (last review activity: 3 months ago)
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: about 6 days ago)
  - "Experiment with replacing specialization in libcore with downcasting" [compiler-team#904](https://github.com/rust-lang/compiler-team/issues/904) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Experiment.20with.20replacing.20specialization.20.E2.80.A6.20compiler-team.23904)) (last review activity: about 6 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [Begin enforcing Tier 2 target maintainer requirements (compiler-team#896)](https://github.com/rust-lang/compiler-team/issues/896#issuecomment-3069374004)
    - @_**|116266** @_**|119031** @_**|248906** @_**|426609** @_**|353056**
    - no pending concerns
  - merge: [sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets (rust#123617)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2135121317)
    - no pending checkboxes
    - concerns: [stabilization-scope (by wesleywiser)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2192330122)
  - merge: [Fix backtraces with `-C panic=abort` on linux; emit unwind tables by default (rust#143613)](https://github.com/rust-lang/rust/pull/143613#issuecomment-3070266003)
    - @_**|116266** @_**|248906** @_**|426609** @_**|116122** @_**|444933** @_**|353056**
    - no pending concerns
  - merge: [const-eval: full support for pointer fragments (rust#144081)](https://github.com/rust-lang/rust/pull/144081#issuecomment-3105250867)
    - @_**|116883**
    - concerns: [spec-complexity-implication (by scottmcm)](https://github.com/rust-lang/rust/pull/144081#issuecomment-3109209911)
- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Policy: Empower reviewers to reject burdensome PRs" [compiler-team#893](https://github.com/rust-lang/compiler-team/issues/893) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.3A.20Reject.20low-effort.20AI-generated.20PRs.20compiler-team.23893))
    - concern: [resolve ai-should-still-be-mentioned-in-motivation](https://github.com/rust-lang/compiler-team/issues/893#issuecomment-3047209196)
    - concern: [wording-nits](https://github.com/rust-lang/compiler-team/issues/893#issuecomment-3047695459)
    - concern: [ai-should-still-be-mentioned-in-motivation](https://github.com/rust-lang/compiler-team/issues/893#issuecomment-3047208685)
  - "Tier 3 target proposal: riscv64a23-unknown-linux-gnu" [compiler-team#894](https://github.com/rust-lang/compiler-team/issues/894) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Tier.203.20target.20proposal.3A.20riscv64rva23-unkn.E2.80.A6.20compiler-team.23894))
  - "Flag `-Zindirect-branch-cs-prefix` (retpoline mitigation)" [compiler-team#899](https://github.com/rust-lang/compiler-team/issues/899) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Flag.20.60-Zindirect-branch-cs-prefix.60.20.28retpo.E2.80.A6.20compiler-team.23899))
  - "Add JSON schema for target spec JSON" [compiler-team#905](https://github.com/rust-lang/compiler-team/issues/905) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20JSON.20schema.20for.20target.20spec.20JSON.20compiler-team.23905))
  - "Proposal for a dedicated test suite for the parallel frontend" [compiler-team#906](https://github.com/rust-lang/compiler-team/issues/906) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Proposal.20for.20a.20dedicated.20test.20suite.20for.20t.E2.80.A6.20compiler-team.23906))
    - concern: [name-a-specific-reason](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137732970)
    - concern: [can-we-just-enhance-ui-suite](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137762379)
  - "stabilize c-style varargs for system, sysv64, win64, efiapi, aapcs" [rust#144066](https://github.com/rust-lang/rust/pull/144066)
- Accepted MCPs
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745))
  - "Make the UI test suite more amenable to multiple editions" [compiler-team#861](https://github.com/rust-lang/compiler-team/issues/861) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Run.20the.20UI.20test.20suite.20with.20multiple.20editi.E2.80.A6.20compiler-team.23861))
  - "Upgrade `*-linux-musl` targets to musl 1.2.5" [compiler-team#887](https://github.com/rust-lang/compiler-team/issues/887) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Upgrade.20.60.2A-linux-musl.60.20targets.20to.20musl.201.2E.E2.80.A6.20compiler-team.23887))
  - "Add a tidy check to prevent adding new test files *directly* under `tests/ui/`" [compiler-team#902](https://github.com/rust-lang/compiler-team/issues/902) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20tidy.20check.20to.20prevent.20adding.20new.20te.E2.80.A6.20compiler-team.23902))
- MCPs blocked on unresolved concerns
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: about 15 days ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: about 14 days ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
  - "Promote `armv7-unknown-linux-musleabihf` to tier 2 with host tools" [compiler-team#888](https://github.com/rust-lang/compiler-team/issues/888) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20.60armv7-unknown-linux-musleabihf.60.20.E2.80.A6.20compiler-team.23888)) (last review activity: about 14 days ago)
    - concern: [lack-of-maintainers](https://github.com/rust-lang/compiler-team/issues/888#issuecomment-3035366625)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: about 43 days ago)
    - concern: [path-to-stabilization](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-2980212568)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: about 26 days ago)
    - concern: [needs-a-blog-post](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024360549)
    - concern: [broad-change-needs-tlang-buy-in-possibly-fcp](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024361199)
    - concern: [needs-a-sufficiently-long-deprecation-timeline](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024361071)
- Finalized FCPs (disposition merge)
  - "rustdoc: add ways of collapsing all impl blocks" [rust#141663](https://github.com/rust-lang/rust/pull/141663)
- Other teams finalized FCPs
  - "rustdoc: add ways of collapsing all impl blocks" [rust#141663](https://github.com/rust-lang/rust/pull/141663)
  - "Port the proc macro attributes to the new attribute parsing infrastructure" [rust#143607](https://github.com/rust-lang/rust/pull/143607)
  - "Port #[macro_export] to the new attribute parsing infrastructure" [rust#143857](https://github.com/rust-lang/rust/pull/143857)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No beta nominations for `T-compiler` this time.
- No stable nominations for `T-compiler` this time.

[T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Fix backtraces with `-C panic=abort` on linux; emit unwind tables by default" [rust#143613](https://github.com/rust-lang/rust/pull/143613)
  - A few missing checkboxes. From T-compiler any feedback? See [comment](https://github.com/rust-lang/rust/pull/143613#issuecomment-3070266003)) cc @**Michael (compiler-errors) Goulet** @**nora (Noratrieb)**
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [49 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [31 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 0 P-medium, 3 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 1 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 25 P-high, 100 P-medium, 23 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

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

> [triage logs for 2025-07-28](https://github.com/rust-lang/rustc-perf/blob/master/triage/2025/2025-07-28.md)

A week with lots of mixed results, including a few benchmarks that appear to be
newly bimodal, which made some of the results look closer to noise than signal.
Overall, however, the week ended as a slight improvement.

Triage done by **@simulacrum**.
Revision range: [3f9f20f7..e3514bde](https://perf.rust-lang.org/?start=3f9f20f71dd945fe7d044e274094a53c90788269&end=e3514bde96d2d13586337a48db77fa64b850d249&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.2%, 0.9%]    | 7     |
| Regressions (secondary)  | 0.4%  | [0.0%, 0.7%]    | 26    |
| Improvements (primary)   | -0.4% | [-1.1%, -0.2%]  | 69    |
| Improvements (secondary) | -1.8% | [-10.3%, -0.0%] | 96    |
| All  (primary)           | -0.3% | [-1.1%, 0.9%]   | 76    |

1 Regressions, 2 Improvements, 9 Mixed; 2 of them in rollups
38 artifact comparisons made in total

#### Regressions

resolve: Make disambiguators for underscore bindings module-local (take 2) [#144272](https://github.com/rust-lang/rust/pull/144272) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3c30dbbe31bfbf6029f4534170165ba573ff0fd1&end=fc5af1813307d25a84d633f21e2e53c9376eb547&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.4% | [0.1%, 0.7%] | 17    |
| Regressions (secondary)  | 0.3% | [0.0%, 0.6%] | 21    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.4% | [0.1%, 0.7%] | 17    |

Unclear root cause; cachegrind diffs point at the regression ocurring in an
unrelated function. It may also be bimodality as the regression temporarily
self-resolves in a subsequent commmit.

#### Improvements

Various refactors to the LTO handling code (part 2) [#144062](https://github.com/rust-lang/rust/pull/144062) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=fc5af1813307d25a84d633f21e2e53c9376eb547&end=5d22242a3a84a55be2f648a94eecff58887547f4&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -3.4% | [-6.7%, -1.1%] | 6     |
| All  (primary)           | -     | -              | 0     |

Avoids doing some work unless LTO is actually requested, which seems to lead to a nice improvement in the large workspace benchmark.

Do not run per-module late lints if they can be all skipped [#139597](https://github.com/rust-lang/rust/pull/139597) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0dd07bd2165db70ffbe0b903635de26ca630bf20&end=f32b23204a0efe2fe8383ed4be1a30b56c1bbf94&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.1%  | [0.1%, 0.1%]   | 4     |
| Improvements (primary)   | -0.4% | [-0.5%, -0.2%] | 17    |
| Improvements (secondary) | -0.5% | [-1.5%, -0.1%] | 24    |
| All  (primary)           | -0.4% | [-0.5%, -0.2%] | 17    |


#### Mixed

Ports `#[macro_use]` and `#[macro_escape]` to the new attribute parsing infrastructure [#143843](https://github.com/rust-lang/rust/pull/143843) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5a30e4307f0506bed87eeecd171f8366fdbda1dc&end=4ff3fa01cbdd468851b1b859541ee1c648cde7de&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 7     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.6% | [-0.9%, -0.0%] | 4     |
| All  (primary)           | -     | -              | 0     |

Not particularly worried about the regressions here, they affect
unused-warnings and deep-vector only (and not too high in magnitude) and this
is part of larger changes throughout the compiler.

Create an `AllocId` for `ConstValue::Slice`. [#116707](https://github.com/rust-lang/rust/pull/116707) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=efd420c770bb179537c01063e98cb6990c439654&end=3c30dbbe31bfbf6029f4534170165ba573ff0fd1&stat=instructions:u)

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.2%, 1.0%]    | 6     |
| Regressions (secondary)  | 0.3%  | [0.0%, 0.9%]    | 38    |
| Improvements (primary)   | -0.3% | [-0.6%, -0.1%]  | 17    |
| Improvements (secondary) | -1.9% | [-10.2%, -0.0%] | 56    |
| All  (primary)           | -0.1% | [-0.6%, 1.0%]   | 23    |

Overall an improvement and potentially will allow for further simplifications
(https://github.com/rust-lang/rust/pull/116707#issuecomment-3069572150).

Rollup of 15 pull requests [#144398](https://github.com/rust-lang/rust/pull/144398) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5d22242a3a84a55be2f648a94eecff58887547f4&end=246733a3d978de41c5b77b8120ba8f41592df9f1&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.4%]   | 3     |
| Regressions (secondary)  | 0.2%  | [0.0%, 0.2%]   | 3     |
| Improvements (primary)   | -0.4% | [-0.8%, -0.1%] | 14    |
| Improvements (secondary) | -0.3% | [-0.6%, -0.1%] | 21    |
| All  (primary)           | -0.3% | [-0.8%, 0.4%]  | 17    |

Regressions appear limited to incr-println-like scenarios most likely from
https://github.com/rust-lang/rust/pull/143374#issuecomment-3037244091. Not
worth further investigation given limited impact and the change looks fairly
benign.

MIR-build: No longer emit assumes in enum-as casting [#144389](https://github.com/rust-lang/rust/pull/144389) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=246733a3d978de41c5b77b8120ba8f41592df9f1&end=b56aaec52bc0fa35591a872fb4aac81f606e265c&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.2%, 0.7%]   | 13    |
| Regressions (secondary)  | 0.3%  | [0.1%, 0.6%]   | 17    |
| Improvements (primary)   | -0.4% | [-0.9%, -0.1%] | 8     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 1     |
| All  (primary)           | 0.1%  | [-0.9%, 0.7%]  | 21    |

> looks like html5ever has gone bimodal

(https://github.com/rust-lang/rust/pull/144389#issuecomment-3116885962)

Resolve: refactor `define` into `define_local` and `define_extern` [#143884](https://github.com/rust-lang/rust/pull/143884) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=eed187cfce988dd669b7d9161f324433e64358ee&end=edc3841c5d28e0f54c6d3c7e906ad083129f3903&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.1%  | [0.1%, 0.1%]   | 3     |
| Regressions (secondary)  | 0.5%  | [0.3%, 0.7%]   | 5     |
| Improvements (primary)   | -0.5% | [-0.8%, -0.2%] | 15    |
| Improvements (secondary) | -0.3% | [-0.5%, -0.2%] | 27    |
| All  (primary)           | -0.4% | [-0.8%, 0.1%]  | 18    |

Overall positive, few regressions look like they might be within bimodality
thresholds.

Avoid unnecessary `new_adt`/`new_fn_def` calls. [#144425](https://github.com/rust-lang/rust/pull/144425) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=edc3841c5d28e0f54c6d3c7e906ad083129f3903&end=4b596bbd847672da87763b76171687d3544863c2&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.4%, 0.5%]   | 6     |
| Regressions (secondary)  | 0.5%  | [0.3%, 0.7%]   | 9     |
| Improvements (primary)   | -0.3% | [-0.5%, -0.1%] | 46    |
| Improvements (secondary) | -0.7% | [-1.6%, -0.1%] | 44    |
| All  (primary)           | -0.2% | [-0.5%, 0.5%]  | 52    |

Overall positive, few regressions look like they might be within bimodality
thresholds.

Preintern some `TyKind::Bound` values [#144434](https://github.com/rust-lang/rust/pull/144434) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4b596bbd847672da87763b76171687d3544863c2&end=f8e355c230c6eb7b78ffce6a92fd81f78c890524&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.1%  | [0.1%, 0.1%]   | 1     |
| Regressions (secondary)  | 0.8%  | [0.3%, 1.0%]   | 8     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.1%] | 4     |
| Improvements (secondary) | -0.9% | [-1.7%, -0.2%] | 23    |
| All  (primary)           | -0.2% | [-0.4%, 0.1%]  | 5     |

match-stress regression looks plausibly like bimodality to me. ucd and
unicode-normalization look more real but are small in magnitude and limited in
which scenarios are affected; overall the change remains positive, so marking
as triaged.

Rollup of 6 pull requests [#144556](https://github.com/rust-lang/rust/pull/144556) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2b5e239c6b86cde974b0ef0f8e23754fb08ff3c5&end=733dab558992d902d6d17576de1da768094e2cf3&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.6%  | [0.2%, 1.2%]   | 6     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.7% | [-1.0%, -0.0%] | 8     |
| All  (primary)           | -     | -              | 0     |

> So that's probably #143607. One secondary proc-macro benchmark with
> regressions, another one with gains. I guess the magnitude evens out...
>
> I haven't dived into the regression yet but it's probably caused by #143940 (attributes are parsed twice).

Marked as triaged.

Allow more MIR SROA [#144543](https://github.com/rust-lang/rust/pull/144543) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=65b6cdb6a6d33987b9d642a4882283c71fbe3957&end=9ba00e0f9e00990fb88c1beac7172afe93b15609&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.2%, 0.8%]   | 3     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.3%]   | 6     |
| Improvements (primary)   | -0.4% | [-0.6%, -0.2%] | 3     |
| Improvements (secondary) | -0.9% | [-1.0%, -0.9%] | 6     |
| All  (primary)           | 0.0%  | [-0.6%, 0.8%]  | 6     |

Changes look possibly like longer-term bimodality? But this is also a MIR
optimization, so mixed results are somewhat expected.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Extend `QueryStability` to handle `IntoIterator` implementations" [rust#139345](https://github.com/rust-lang/rust/pull/139345) (last review activity: 2 months ago)
  - cc @**fmease**
- "diagnostics: hide expansion of builtin-like macros" [rust#141314](https://github.com/rust-lang/rust/pull/141314) (last review activity: about 57 days ago)
  - unsure how to proceed on this one, pinged Vadim (which was against this change)
- "add first HelenOS compilation targets" [rust#139310](https://github.com/rust-lang/rust/pull/139310) (last review activity: about 54 days ago)
  - can this be merged? was approved by Wesley. Does T-bootstrap need to chime in?


Next meetings' agenda draft: [hackmd link](https://hackmd.io/TnEuB9wZSG2TS5ehfYczGA)
