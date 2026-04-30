---
tags: weekly, rustc
type: docs
note_id: Bf6Z0BusSmGwaBr04mP53A
---

# T-compiler Meeting Agenda 2026-03-05

## Announcements

- Today release of Rust 1.94.0, see [blog post draft](https://github.com/cuviper/blog.rust-lang.org/blob/rust-1.94.0/content/Rust-1.94.0.md)
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: 3 months ago)
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: 7 months ago)
  - "Rename `hexagon-unknown-{none-elf,linux-musl}` targets" [compiler-team#921](https://github.com/rust-lang/compiler-team/issues/921) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.60hexagon-unknown-.7Bnone-elf.2Clinux-m.E2.80.A6.20compiler-team.23921)) (last review activity: 4 months ago)
  - "Publish `rustc_public` crate v0.1 to crates.io" [compiler-team#949](https://github.com/rust-lang/compiler-team/issues/949) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Publish.20.60rustc_public.60.20crate.20v0.2E1.20to.20crat.E2.80.A6.20compiler-team.23949)) (last review activity: about 34 days ago)
  - "Add flag to pass MSRV/`package.rust-version` for use by lints" [compiler-team#950](https://github.com/rust-lang/compiler-team/issues/950) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Z.20msrv.3Dxx.2Eyy.2Ezz.60.20flag.20compiler-team.23950)) (last review activity: about 34 days ago)
  - "Create a new Tier 3 target: ` x86_64-nt-windows-msvc`" [compiler-team#952](https://github.com/rust-lang/compiler-team/issues/952) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20new.20Tier.203.20target.3A.20.60.20x86_64-nt-w.E2.80.A6.20compiler-team.23952)) (last review activity: about 34 days ago)
  - "Tier 3 targets proposal: LoongArch UEFI" [compiler-team#953](https://github.com/rust-lang/compiler-team/issues/953) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Tier.203.20targets.20proposal.3A.20LoongArch.20UEFI.20compiler-team.23953)) (last review activity: about 34 days ago)
  - "Emit retags in codegen" [compiler-team#958](https://github.com/rust-lang/compiler-team/issues/958) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Emit.20retags.20in.20codegen.20compiler-team.23958)) (last review activity: about 34 days ago)
  - "Add repro-check tool for build reproducibility" [compiler-team#962](https://github.com/rust-lang/compiler-team/issues/962) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20repro-check.20tool.20for.20build.20reproducib.E2.80.A6.20compiler-team.23962)) (last review activity: about 34 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [Promote aarch64-unknown-freebsd to Tier 2 with host tools (compiler-team#961)](https://github.com/rust-lang/compiler-team/issues/961#issuecomment-3854207173)
    - @**|124288** @**|119031** @**|353056**
    - no pending concerns
  - merge: [Promote loongarch32-unknown-none* to Tier 2 (compiler-team#968)](https://github.com/rust-lang/compiler-team/issues/968#issuecomment-3907992097)
    - @**|124288** @**|123586** @**|125250** @**|119031** @**|116118** @**|343125** @**|353056**
    - no pending concerns
  - merge: [sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets (rust#123617)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2135121317)
    - no pending checkboxes
    - concerns: [stabilization-scope (by wesleywiser)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2192330122)
  - merge: [Make trait refs & assoc ty paths properly induce trait object lifetime defaults (rust#129543)](https://github.com/rust-lang/rust/pull/129543#issuecomment-2862410551)
    - @_**|116009** @_**|326176** @_**|216206** @_**|232957**
    - no pending concerns
  - merge: [Stabilize stack-protector (rust#146369)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3271397169)
    - @_**|116266** @_**|119031** @_**|426609** @_**|444933**
    - concerns: [mitigation-enforcement (by Noratrieb)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3286402251)
  - merge: [Stabilize the `supertrait_item_shadowing` feature (rust#148605)](https://github.com/rust-lang/rust/pull/148605#issuecomment-3582962396)
    - @_**|124288** @_**|326176**
    - concerns: [implementation-confidence (by BoxyUwU)](https://github.com/rust-lang/rust/pull/148605#issuecomment-3853046997) [inconsistent-name-res-semantics (by BoxyUwU)](https://github.com/rust-lang/rust/pull/148605#issuecomment-3853051038)
  - merge: [rustc: Stop passing `--allow-undefined` on wasm targets (rust#149868)](https://github.com/rust-lang/rust/pull/149868#issuecomment-3775796653)
    - @**|124288** @**|119031** @**|353056**
    - no pending concerns
  - "Implement lint for black_boxing ZSTs" [rust#150037](https://github.com/rust-lang/rust/pull/150037)
  - merge: [WF checks on closure arguments. (rust#151510)](https://github.com/rust-lang/rust/pull/151510#issuecomment-3996248181)
    - @_**|124288** @_**|326176** @_**|232957**
    - concerns: [jobsteal crater regression fix (by lcnr)](https://github.com/rust-lang/rust/pull/151510#issuecomment-3996255213)
  - merge: [switch to v0 mangling by default on stable (rust#151994)](https://github.com/rust-lang/rust/pull/151994#issuecomment-3838891427)
    - @**|123586** @**|119031** @**|353056**
    - no pending concerns
- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864))
    - concern: [documentation](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535045453)
    - concern: [continued-maintainer-interest](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535030586)
  - "Proposal for a dedicated test suite for the parallel frontend" [compiler-team#906](https://github.com/rust-lang/compiler-team/issues/906) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Proposal.20for.20a.20dedicated.20test.20suite.20for.20t.E2.80.A6.20compiler-team.23906))
    - concern: [name-a-specific-reason](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137732970)
    - concern: [can-we-just-enhance-ui-suite](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137762379)
  - "Optimize `repr(Rust)` enums by omitting tags in more cases involving uninhabited variants." [compiler-team#922](https://github.com/rust-lang/compiler-team/issues/922) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Optimize.20.60repr.28Rust.29.60.20enums.20by.20omitting.20t.E2.80.A6.20compiler-team.23922))
  - "Parse unstable keywords for experimental syntax" [compiler-team#945](https://github.com/rust-lang/compiler-team/issues/945) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Parse.20unstable.20keywords.20for.20experimental.20.E2.80.A6.20compiler-team.23945))
  - "Remove -Csoft-float" [compiler-team#971](https://github.com/rust-lang/compiler-team/issues/971) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Remove.20-Csoft-float.20compiler-team.23971))
    - concern: [error-or-ignore](https://github.com/rust-lang/compiler-team/issues/971#issuecomment-3950777023)
  - "Remove soft_unstable" [compiler-team#972](https://github.com/rust-lang/compiler-team/issues/972) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Remove.20soft_unstable.20compiler-team.23972))
  - "Gate #![reexport_test_harness_main] properly" [rust#152210](https://github.com/rust-lang/rust/pull/152210)
  - "deny-by-default & report in deps `uninhabited_static`" [rust#152853](https://github.com/rust-lang/rust/pull/152853)
  - "Remove `ATTRIBUTE_ORDER`" [rust#153041](https://github.com/rust-lang/rust/pull/153041)
- Accepted MCPs
  - "Place-less cg_ssa intrinsics" [compiler-team#970](https://github.com/rust-lang/compiler-team/issues/970) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Place-less.20cg_ssa.20intrinsics.20compiler-team.23970))
- MCPs blocked on unresolved concerns
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 8 months ago)
    - concern: [path-to-stabilization](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-2980212568)
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: 4 months ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: 7 months ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
  - "Split the `-openbsd*` targets by version" [compiler-team#916](https://github.com/rust-lang/compiler-team/issues/916) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Split.20the.20.60-openbsd.2A.60.20targets.20by.20version.20compiler-team.23916)) (last review activity: 4 months ago)
    - concern: [why-not-ports-rustc](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315251054)
    - concern: [version-churn](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315239793)
    - concern: [nonsystematic-breakage](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315243666)
  - "Stop bumping the bootstrap version on every rustc release" [compiler-team#925](https://github.com/rust-lang/compiler-team/issues/925) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stop.20bumping.20the.20bootstrap.20version.20on.20eve.E2.80.A6.20compiler-team.23925)) (last review activity: about 19 days ago)
    - concern: [we-like-using-the-features-we-ship](https://github.com/rust-lang/compiler-team/issues/925#issuecomment-3898616402)
    - concern: [infra-and-bootstrap-burden](https://github.com/rust-lang/compiler-team/issues/925#issuecomment-3898603216)
  - "Doc comments and attributes on macro arms" [compiler-team#935](https://github.com/rust-lang/compiler-team/issues/935) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Doc.20comments.20and.20attributes.20on.20macro.20arms.20compiler-team.23935)) (last review activity: 3 months ago)
    - concern: [lang](https://github.com/rust-lang/compiler-team/issues/935#issuecomment-3444181159)
  - "Query `git` state to get information on a currently ongoing rebase when encountering conflict markers" [compiler-team#955](https://github.com/rust-lang/compiler-team/issues/955) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Query.20.60git.60.20state.20to.20get.20information.20on.20a.E2.80.A6.20compiler-team.23955)) (last review activity: about 34 days ago)
    - concern: [not worth the complexity](https://github.com/rust-lang/compiler-team/issues/955#issuecomment-3684138445)
  - "Allow crates downstream of `rustc_middle` to define queries" [compiler-team#966](https://github.com/rust-lang/compiler-team/issues/966) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20crates.20downstream.20of.20.60rustc_middle.60.E2.80.A6.20compiler-team.23966)) (last review activity: about 20 days ago)
    - concern: [fragmentation](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863853297)
    - concern: [complexity](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863771183)
- Finalized FCPs (disposition merge)
  - None
- Other teams finalized FCPs
  - None

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No beta nominations for `T-compiler` this time.
- No stable nominations for `T-compiler` this time.

[T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-t-compiler

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-t-compiler)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [59 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [42 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 34 P-high, 100 P-medium, 30 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-bootstrap)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [2026-03-02 Triage Log](https://github.com/rust-lang/rustc-perf/tree/master/triage/2026)

A positive week with a few nice improvements coming from query system cleanups.

Triage done by **@panstromek**.
Revision range: [eeb94be7..ddd36bd5](https://perf.rust-lang.org/?start=eeb94be79adc9df7a09ad0b2421f16e60e6d932c&end=ddd36bd57051f796850345b76c17e9402e28a9e4&absolute=false&stat=instructions%3Au)

**Summary**:

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.3%  |  [0.3%, 0.3%]  |   1   |
| Regressions (secondary)  | 0.2%  |  [0.0%, 0.3%]  |   3   |
|  Improvements (primary)  | -0.8% | [-2.1%, -0.1%] |  141  |
| Improvements (secondary) | -1.1% | [-6.6%, -0.1%] |  90   |
|      All  (primary)      | -0.8% | [-2.1%, 0.3%]  |  142  |


2 Regressions, 5 Improvements, 5 Mixed; 4 of them in rollups
30 artifact comparisons made in total

#### Regressions

Remove `const FLAGS`. [#152791](https://github.com/rust-lang/rust/pull/152791) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=eeb94be79adc9df7a09ad0b2421f16e60e6d932c&end=b3869b94cd1ed4bfa2eb28f301535d5e9599c713&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.2% | [0.1%, 0.5%] | 17    |
| Regressions (secondary)  | 0.3% | [0.1%, 0.6%] | 37    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.2% | [0.1%, 0.5%] | 17    |

Triaged by @nnethercote: "Perf regressions were minor and deemed worthwhile above for the simplicity improvements."

Rollup of 12 pull requests [#153074](https://github.com/rust-lang/rust/pull/153074) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=11ad63a942c380b83a1fbfe5f0ecb1caaad4c7c1&end=58745ca3b05afa82bd5720dd05f3854e674700e0&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.9%  | [0.2%, 4.9%]   | 44    |
| Regressions (secondary)  | 0.9%  | [0.2%, 3.3%]   | 25    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.4% | [-0.4%, -0.4%] | 1     |
| All  (primary)                 | 1.9%  | [0.2%, 4.9%]   | 44    |

Already triaged by @JonathanBrouwer. Caused by https://github.com/rust-lang/rust/pull/152679, reverted in https://github.com/rust-lang/rust/pull/153095.

#### Improvements

Improve how `QueryCache`/`QueryState`/`QueryEngine` are stored [#152835](https://github.com/rust-lang/rust/pull/152835) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=859951e3c7c9d0322c39bad49221937455bdffcd&end=11ad63a942c380b83a1fbfe5f0ecb1caaad4c7c1&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.3%, -0.1%] | 5     |
| Improvements (secondary) | -0.2% | [-0.3%, -0.1%] | 16    |
| All  (primary)                 | -0.2% | [-0.3%, -0.1%] | 5     |



Rollup of 7 pull requests [#153124](https://github.com/rust-lang/rust/pull/153124) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=69b78537fac74de40f009b076bcbbf54b77683ad&end=bb779a91568ac1ee0b8a9dcb6b69219ef30b18a3&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.4%, -0.1%] | 17    |
| Improvements (secondary) | -0.4% | [-0.9%, -0.1%] | 20    |
| All  (primary)                 | -0.2% | [-0.4%, -0.1%] | 17    |


Rollup of 2 pull requests [#153139](https://github.com/rust-lang/rust/pull/153139) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=bb779a91568ac1ee0b8a9dcb6b69219ef30b18a3&end=25396cf54981afd1fa5a7406658b45033106a0d3&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -2.0% | [-4.8%, -0.2%] | 42    |
| Improvements (secondary) | -0.9% | [-3.2%, -0.2%] | 25    |
| All  (primary)                 | -2.0% | [-4.8%, -0.2%] | 42    |


Revert "Simplify internals of `{Rc,Arc}::default`" [#153108](https://github.com/rust-lang/rust/pull/153108) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=25396cf54981afd1fa5a7406658b45033106a0d3&end=6a979b3e32522049d0acb4a47f7ae44b7c8abfd5&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.7%, -0.3%] | 6     |
| Improvements (secondary) | -0.6% | [-0.6%, -0.6%] | 1     |
| All  (primary)                 | -0.4% | [-0.7%, -0.3%] | 6     |


Improve the forcing/promotion functions in `DepKindVTable` [#153122](https://github.com/rust-lang/rust/pull/153122) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=024757fea5c9ac50d7cc81f5f3a686d0a3a3cf9e&end=28b5c1cc084d3d21168f034b39c23193a9a7f127&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 1.9%  | [1.9%, 1.9%]   | 1     |
| Improvements (primary)   | -0.8% | [-1.7%, -0.3%] | 102   |
| Improvements (secondary) | -1.2% | [-6.5%, -0.2%] | 68    |
| All  (primary)                 | -0.8% | [-1.7%, -0.3%] | 102   |


#### Mixed

Rollup of 13 pull requests [#153116](https://github.com/rust-lang/rust/pull/153116) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1ed488274bec5bf5cfe6bf7a1cc089abcc4ebd68&end=f02672cb8bffef88934d31d9044257a4d11e5d1f&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.3%, 1.0%]   | 4     |
| Regressions (secondary)  | 2.6%  | [0.3%, 5.9%]   | 5     |
| Improvements (primary)   | -0.5% | [-0.5%, -0.5%] | 1     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 1     |
| All  (primary)                 | 0.3%  | [-0.5%, 1.0%]  | 5     |

Already triaged by @JonathanBrouwer, caused by https://github.com/rust-lang/rust/pull/149978, will be addressed by https://github.com/rust-lang/rust/pull/153157.

Prepare NonNull for pattern types [#152702](https://github.com/rust-lang/rust/pull/152702) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6f54d591c3116ee7f8ce9321ddeca286810cc142&end=3a70d0349fa378a10c3748f1a48742e61505020f&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.4%, 0.6%]   | 3     |
| Regressions (secondary)  | 0.5%  | [0.5%, 0.5%]   | 1     |
| Improvements (primary)   | -0.3% | [-0.5%, -0.2%] | 3     |
| Improvements (secondary) | -1.1% | [-1.1%, -1.1%] | 1     |
| All  (primary)                 | 0.1%  | [-0.5%, 0.6%]  | 6     |

Slightly worse than pre-merge results, but looks somewhat expected - some tiny regressions in LLVM, a bit of codegen unit shuffling.

refactor(mgca): Change `DefKind::Const` and `DefKind::AssocConst` to have a `is_type_const` flag [#153050](https://github.com/rust-lang/rust/pull/153050) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ba1567989ee7774a1fb53aa680a8e4e8daa0f519&end=38c0de8dcb14d42290042521be9958d37f3fa390&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.0%  | [0.0%, 0.0%]   | 1     |
| Improvements (primary)   | -0.5% | [-0.8%, -0.2%] | 17    |
| Improvements (secondary) | -0.7% | [-1.7%, -0.0%] | 10    |
| All  (primary)                 | -0.5% | [-0.8%, -0.2%] | 17    |

Tiny regression in `include-blob` stress test, overall positive.

Optimize dependency file search [#153131](https://github.com/rust-lang/rust/pull/153131) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=80381278a08582356c13b0f52af92d27c567c230&end=e7d90c695a39426baf5ae705de2f9570a72229de&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.1%  | [0.1%, 0.1%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.4% | [-0.6%, -0.2%] | 7     |
| All  (primary)                 | 0.1%  | [0.1%, 0.1%]   | 1     |

Triaged by @Kobzol (author): "The regression seems like noise. Tiny wins on large-workspace, matching pre-merge run."

Re-add `#[inline]` to `Eq::assert_fields_are_eq` [#153157](https://github.com/rust-lang/rust/pull/153157) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e7d90c695a39426baf5ae705de2f9570a72229de&end=ddd36bd57051f796850345b76c17e9402e28a9e4&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.3%]   | 3     |
| Improvements (primary)   | -0.5% | [-0.8%, -0.3%] | 4     |
| Improvements (secondary) | -3.0% | [-5.6%, -0.4%] | 4     |
| All  (primary)                 | -0.5% | [-0.8%, -0.3%] | 4     |

Net positive, addresses previous regression from https://github.com/rust-lang/rust/pull/153116. Small regression in `derive` stress tests.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Add support for xray in aarch64 unknown none target" [rust#148666](https://github.com/rust-lang/rust/pull/148666) (last review activity: 3 months ago)
  - cc: @**Wesley Wiser**
- "Implement `-Z allow-partial-mitigations` (RFC 3855)" [rust#149357](https://github.com/rust-lang/rust/pull/149357) (last review activity: 2 months ago)
  - cc @**Ramon de C Valle**
- "Support using const pointers in asm `const` operand" [rust#138618](https://github.com/rust-lang/rust/pull/138618) (last review activity: 2 months ago)
  - cc: @**Sparrow Li** was auto-assigned, maybe reroll? Any taker? Needs a rebase btw
- "Stabilize `-Zdebuginfo-compression` as `-Cdebuginfo-compression`" [rust#150625](https://github.com/rust-lang/rust/pull/150625) (last review activity: 2 months ago)
  - cc: @**Sparrow Li** (do you want to pass it on to someone else?)
- "Try mark `no_hash` queries as green after execution" [rust#150156](https://github.com/rust-lang/rust/pull/150156) (last review activity: about 49 days ago)
  - cc @**cjgillot**
- "naked functions: respect `function-sections`" [rust#147811](https://github.com/rust-lang/rust/pull/147811) (last review activity: about 48 days ago)
  -  cc @**Amanieu d'Antras**
- "Fix incorrect trailing comma suggested in no_accessible_fields" [rust#151280](https://github.com/rust-lang/rust/pull/151280) (last review activity: about 46 days ago)
  - rerolled reviewer (but up for grab, I think)
- "mir-opt: Remove the workaround in UnreachableEnumBranching" [rust#146544](https://github.com/rust-lang/rust/pull/146544) (last review activity: about 41 days ago)
  - cc @**Wesley Wiser**
- "Cleanup query macros" [rust#152424](https://github.com/rust-lang/rust/pull/152424) (last review activity: about 23 days ago)
  - cc: @**Zalathar** (probably also related PR #152459)

Next meetings' agenda draft: [hackmd link](https://hackmd.io/9jpzIPVMRlCSiV9ELJWoXw)
