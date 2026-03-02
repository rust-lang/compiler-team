---
tags: weekly, rustc
type: docs
note_id: TnEuB9wZSG2TS5ehfYczGA
---

# T-compiler Meeting Agenda 2025-08-07

## Announcements

- Today release of Rust 1.89!
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- WG-async design meeting <time:2025-08-07T19:00:00+02:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Policy change around adding new unstable flags" [compiler-team#787](https://github.com/rust-lang/compiler-team/issues/787) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.20change.20around.20adding.20new.20unstable.20.E2.80.A6.20compiler-team.23787)) (last review activity: 9 months ago)
  - "Compile UI tests as libraries by default" [compiler-team#842](https://github.com/rust-lang/compiler-team/issues/842) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Compile.20UI.20tests.20as.20libraries.20by.20default.20compiler-team.23842)) (last review activity: 5 months ago)
  - "Unify ui test inline error annotation style" [compiler-team#859](https://github.com/rust-lang/compiler-team/issues/859) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Unify.20ui.20test.20inline.20error.20annotation.20sty.E2.80.A6.20compiler-team.23859)) (last review activity: 3 months ago)
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864)) (last review activity: about 54 days ago)
  - "Add support for specifying split-debuginfo=unpacked output directory" [compiler-team#871](https://github.com/rust-lang/compiler-team/issues/871) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20support.20for.20specifying.20split-debuginf.E2.80.A6.20compiler-team.23871)) (last review activity: 3 months ago)
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: about 12 days ago)
  - "Experiment with replacing specialization in libcore with downcasting" [compiler-team#904](https://github.com/rust-lang/compiler-team/issues/904) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Experiment.20with.20replacing.20specialization.20.E2.80.A6.20compiler-team.23904)) (last review activity: about 12 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [Begin enforcing Tier 2 target maintainer requirements (compiler-team#896)](https://github.com/rust-lang/compiler-team/issues/896#issuecomment-3069374004)
    - @_**|116266** @_**|119031** @_**|248906** @_**|426609** @_**|353056**
    - no pending concerns
  - merge: [sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets (rust#123617)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2135121317)
    - no pending checkboxes
    - concerns: [stabilization-scope (by wesleywiser)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2192330122)
  - merge: [Fix backtraces with `-C panic=abort` on linux; emit unwind tables by default (rust#143613)](https://github.com/rust-lang/rust/pull/143613#issuecomment-3070266003)
    - @_**|116266** @_**|426609** @_**|353056**
    - no pending concerns
  - merge: [const-eval: full support for pointer fragments (rust#144081)](https://github.com/rust-lang/rust/pull/144081#issuecomment-3105250867)
    - @_**|116883**
    - concerns: [spec-complexity-implication (by scottmcm)](https://github.com/rust-lang/rust/pull/144081#issuecomment-3109209911)
- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Policy: Empower reviewers to reject burdensome PRs" [compiler-team#893](https://github.com/rust-lang/compiler-team/issues/893) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.3A.20Reject.20low-effort.20AI-generated.20PRs.20compiler-team.23893))
    - concern: [resolve ai-should-still-be-mentioned-in-motivation](https://github.com/rust-lang/compiler-team/issues/893#issuecomment-3047209196)
    - concern: [ai-should-still-be-mentioned-in-motivation](https://github.com/rust-lang/compiler-team/issues/893#issuecomment-3047208685)
    - concern: [wording-nits](https://github.com/rust-lang/compiler-team/issues/893#issuecomment-3047695459)
  - "Tier 3 target proposal: riscv64a23-unknown-linux-gnu" [compiler-team#894](https://github.com/rust-lang/compiler-team/issues/894) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Tier.203.20target.20proposal.3A.20riscv64rva23-unkn.E2.80.A6.20compiler-team.23894))
  - "Proposal for a dedicated test suite for the parallel frontend" [compiler-team#906](https://github.com/rust-lang/compiler-team/issues/906) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Proposal.20for.20a.20dedicated.20test.20suite.20for.20t.E2.80.A6.20compiler-team.23906))
    - concern: [can-we-just-enhance-ui-suite](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137762379)
    - concern: [name-a-specific-reason](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137732970)
  - "stabilize c-style varargs for system, sysv64, win64, efiapi, aapcs" [rust#144066](https://github.com/rust-lang/rust/pull/144066)
- Accepted MCPs
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745))
  - "Make the UI test suite more amenable to multiple editions" [compiler-team#861](https://github.com/rust-lang/compiler-team/issues/861) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Run.20the.20UI.20test.20suite.20with.20multiple.20editi.E2.80.A6.20compiler-team.23861))
  - "Upgrade `*-linux-musl` targets to musl 1.2.5" [compiler-team#887](https://github.com/rust-lang/compiler-team/issues/887) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Upgrade.20.60.2A-linux-musl.60.20targets.20to.20musl.201.2E.E2.80.A6.20compiler-team.23887))
  - "Flag `-Zindirect-branch-cs-prefix` (retpoline mitigation)" [compiler-team#899](https://github.com/rust-lang/compiler-team/issues/899) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Flag.20.60-Zindirect-branch-cs-prefix.60.20.28retpo.E2.80.A6.20compiler-team.23899))
  - "Add a tidy check to prevent adding new test files *directly* under `tests/ui/`" [compiler-team#902](https://github.com/rust-lang/compiler-team/issues/902) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20tidy.20check.20to.20prevent.20adding.20new.20te.E2.80.A6.20compiler-team.23902))
  - "Add JSON schema for target spec JSON" [compiler-team#905](https://github.com/rust-lang/compiler-team/issues/905) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20JSON.20schema.20for.20target.20spec.20JSON.20compiler-team.23905))
- MCPs blocked on unresolved concerns
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: about 49 days ago)
    - concern: [path-to-stabilization](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-2980212568)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: about 33 days ago)
    - concern: [needs-a-sufficiently-long-deprecation-timeline](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024361071)
    - concern: [broad-change-needs-tlang-buy-in-possibly-fcp](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024361199)
    - concern: [needs-a-blog-post](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024360549)
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: about 21 days ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: about 20 days ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
  - "Promote `armv7-unknown-linux-musleabihf` to tier 2 with host tools" [compiler-team#888](https://github.com/rust-lang/compiler-team/issues/888) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20.60armv7-unknown-linux-musleabihf.60.20.E2.80.A6.20compiler-team.23888)) (last review activity: about 21 days ago)
    - concern: [lack-of-maintainers](https://github.com/rust-lang/compiler-team/issues/888#issuecomment-3035366625)
- Finalized FCPs (disposition merge)
  - None
- Other teams finalized FCPs
  - "rustdoc: add ways of collapsing all impl blocks" [rust#141663](https://github.com/rust-lang/rust/pull/141663)
  - "Remove the `#[no_sanitize]` attribute in favor of `#[sanitize(xyz = "on|off")]`" [rust#142681](https://github.com/rust-lang/rust/pull/142681)
  - "Port the proc macro attributes to the new attribute parsing infrastructure" [rust#143607](https://github.com/rust-lang/rust/pull/143607)
  - "lower pattern bindings in the order they're written and base drop order on primary bindings' order" [rust#143764](https://github.com/rust-lang/rust/pull/143764)
  - "Port #[macro_export] to the new attribute parsing infrastructure" [rust#143857](https://github.com/rust-lang/rust/pull/143857)
  - "Mark all deprecation lints in name resolution as deny-by-default and report-in-deps" [rust#143929](https://github.com/rust-lang/rust/pull/143929)
  - "Stabilize const TypeId::of" [rust#144133](https://github.com/rust-lang/rust/pull/144133)
  - "Add lint against dangling pointers from local variables" [rust#144322](https://github.com/rust-lang/rust/pull/144322)
  - "Upgrade semicolon_in_expressions_from_macros from warn to deny" [rust#144369](https://github.com/rust-lang/rust/pull/144369)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Gate const trait syntax" [rust#144956](https://github.com/rust-lang/rust/pull/144956)
  - Authored by fmease (1.90 beta.1)
  - Fixes #144958, P-high regression (but affecting 1.90 so not P-critical)
  - Voting [Zulip topic](https://github.com/rust-lang/rustc-dev-guide/pull/2536#issuecomment-3159647261) in favor
- No stable nominations for `T-compiler` this time.

[T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Tracking Issue for `bare_link_kind`" [rust#132061](https://github.com/rust-lang/rust/issues/132061)
- "Stabilize `fn_align`: `#[align(N)]` on functions" [rust#140261](https://github.com/rust-lang/rust/pull/140261)
- "Add new `function_casts_as_integer` lint" [rust#141470](https://github.com/rust-lang/rust/pull/141470)
- "Stabilize `-Cmin-function-alignment`" [rust#142824](https://github.com/rust-lang/rust/pull/142824)
- "Fix backtraces with `-C panic=abort` on linux; emit unwind tables by default" [rust#143613](https://github.com/rust-lang/rust/pull/143613)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [50 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [35 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 1 P-medium, 3 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 1 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 24 P-high, 100 P-medium, 23 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

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

> [triage logs for 2025-08-04](https://github.com/rust-lang/rustc-perf/blob/master/triage/2025/2025-08-04.md)

Overall positive week, but most of the changes are in very small incremental scenarios.

Triage done by **@panstromek**.
Revision range: [e3514bde..07b7dc90](https://perf.rust-lang.org/?start=e3514bde96d2d13586337a48db77fa64b850d249&end=07b7dc90ee4df5815dbb91ef8e98cb93571230f5&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 1.0%]   | 28    |
| Regressions (secondary)  | 0.7%  | [0.0%, 2.8%]   | 29    |
| Improvements (primary)   | -0.5% | [-2.7%, -0.1%] | 95    |
| Improvements (secondary) | -0.9% | [-9.2%, -0.0%] | 62    |
| All  (primary)           | -0.3% | [-2.7%, 1.0%]  | 123   |

2 Regressions, 4 Improvements, 10 Mixed; 6 of them in rollups
35 artifact comparisons made in total

#### Regressions

LoongArch64 LSX fast-path for `str.contains(&str)` [#144393](https://github.com/rust-lang/rust/pull/144393) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=686bc1c5f9c06762b18082434c04d514acf6707e&end=ba7e63b63871a429533c189adbfb1d9a6337e000&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | -    | -            | 0     |
| Regressions (secondary)  | 0.9% | [0.9%, 1.0%] | 6     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | -    | -            | 0     |

match-stress noise, triaged by @lqd in [PR comment](https://github.com/rust-lang/rust/pull/144393#issuecomment-3134946709)

uniquify root goals during HIR typeck [#144405](https://github.com/rust-lang/rust/pull/144405) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=606dcc0d2e54d260f67d8a91f8adaf797a4ed38a&end=32e7a4b92b109c24e9822c862a7c74436b50e564&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | -    | -            | 0     |
| Regressions (secondary)  | 1.2% | [0.1%, 4.1%] | 14    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | -    | -            | 0     |

Regression is mostly in new solver, which is not yet enabled by default. The other one is small regression in secondary stress test, that should be fine. See also [comment by author](https://github.com/rust-lang/rust/pull/144405#issuecomment-3138919139).

#### Improvements

Complete span AST lowering. [#144557](https://github.com/rust-lang/rust/pull/144557) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ac0cb05326706ef430a975aa85177e8642f2f457&end=686bc1c5f9c06762b18082434c04d514acf6707e&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-1.8%, -0.2%] | 9     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -0.7% | [-1.8%, -0.2%] | 9     |


Rollup of 6 pull requests [#144718](https://github.com/rust-lang/rust/pull/144718) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=32e7a4b92b109c24e9822c862a7c74436b50e564&end=cc0a5b73053c62a3df5f84b3ee85079c9b65fa87&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.5% | [-0.6%, -0.5%] | 2     |
| Improvements (secondary) | -0.3% | [-1.0%, -0.1%] | 8     |
| All  (primary)                 | -0.5% | [-0.6%, -0.5%] | 2     |


Optimize region constraints [#144446](https://github.com/rust-lang/rust/pull/144446) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=adcb3d3b4cd3b7c4cde642f3ed537037f293738e&end=6c02dd4eae83befde07dc4782395e2005055e9fa&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.1% | [-0.1%, -0.1%] | 2     |
| Improvements (secondary) | -0.5% | [-1.0%, -0.3%] | 12    |
| All  (primary)                 | -0.1% | [-0.1%, -0.1%] | 2     |


dont assemble shadowed impl candidates [#144732](https://github.com/rust-lang/rust/pull/144732) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7cd950546b4ce68843b4cbdb1ab3a43776202d3a&end=f34ba774c78ea32b7c40598b8ad23e75cdac42a6&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.3% | [-2.9%, -0.1%] | 7     |
| All  (primary)                 | -     | -              | 0     |


#### Mixed

Rollup of 6 pull requests [#144637](https://github.com/rust-lang/rust/pull/144637) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7278554d82fa474a4e8b5c67afb009e11e41a841&end=ac0cb05326706ef430a975aa85177e8642f2f457&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.1%  | [1.1%, 1.1%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.1% | [-0.1%, -0.1%] | 1     |
| All  (primary)                 | 1.1%  | [1.1%, 1.1%]   | 1     |


Looks like a spurious change in `image` to me. Erases gain from https://github.com/rust-lang/rust/pull/144543, which was indentified as codegen unit perturbation in https://github.com/rust-lang/rust/pull/144543#issuecomment-3124957313, but this PR goes even furhter, only to return back to previous state in https://github.com/rust-lang/rust/pull/144718

All these changes are in the backend part of the breakdown graph, so this truly seems like spurious codegen unit shuffling.

Rollup of 4 pull requests [#144692](https://github.com/rust-lang/rust/pull/144692) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e5e79f8bd428d0b8d26e8240d718b134ef297459&end=3048886e59c94470e726ecaaf2add7242510ac11&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.9%  | [0.9%, 1.0%]   | 6     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.2% | [-0.2%, -0.1%] | 4     |
| All  (primary)                 | -     | -              | 0     |

Regression in `match-stress` is a bimodal noise.

Remove eval_always from check_private_in_public. [#116316](https://github.com/rust-lang/rust/pull/116316) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3048886e59c94470e726ecaaf2add7242510ac11&end=606dcc0d2e54d260f67d8a91f8adaf797a4ed38a&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.1%, 2.1%]   | 40    |
| Regressions (secondary)  | 0.3%  | [0.1%, 0.5%]   | 20    |
| Improvements (primary)   | -0.7% | [-2.8%, -0.2%] | 41    |
| Improvements (secondary) | -0.6% | [-1.3%, -0.2%] | 26    |
| All  (primary)                 | -0.1% | [-2.8%, 2.1%]  | 81    |

Regressions outweigh improvements. Also, as per the reviewer comment, incr-patched regressions are eliminated in https://github.com/rust-lang/rust/pull/144479.

Rollup of 7 pull requests [#144768](https://github.com/rust-lang/rust/pull/144768) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6c02dd4eae83befde07dc4782395e2005055e9fa&end=e3ee7f7aea5b45af3b42b5e4713da43876a65ac9&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 0.7%]   | 12    |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 1     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.1% | [-0.1%, -0.1%] | 1     |
| All  (primary)                 | 0.4%  | [0.2%, 0.7%]   | 12    |

doc regression on various benchmarks.  Based on detailed results, it's in the def_kind query, so it's likely [#143849](https://github.com/rust-lang/rust/pull/143849), because it adds a callsite. Other PRs look mostly unrelated (few triagebot and config changes, confusables improvement, minor rustdoc-json change).

Remove the witness type from coroutine *args* (without actually removing the type) [#144458](https://github.com/rust-lang/rust/pull/144458) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4b55fe199cfe9c710555a5af7f2a49491ad38254&end=63f6845e570305a92eaf855897768617366164d6&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.0%  | [0.0%, 0.0%]   | 1     |
| Improvements (primary)   | -1.5% | [-1.5%, -1.5%] | 1     |
| Improvements (secondary) | -0.5% | [-1.5%, -0.0%] | 5     |
| All  (primary)                 | -1.5% | [-1.5%, -1.5%] | 1     |

`include-blobs` regression looks like noise, just returned to previous state.

Perform check_private_in_public by module. [#144479](https://github.com/rust-lang/rust/pull/144479) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=63f6845e570305a92eaf855897768617366164d6&end=c23f07d8c56c51b5e634bda55daca2b073306340&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.4%  | [0.0%, 0.5%]   | 3     |
| Improvements (primary)   | -0.7% | [-1.1%, -0.2%] | 27    |
| Improvements (secondary) | -0.5% | [-0.6%, -0.1%] | 4     |
| All  (primary)                 | -0.7% | [-1.1%, -0.2%] | 27    |

Improvements outweigh regressions. Addresses some regressions from https://github.com/rust-lang/rust/pull/116316 (triaged above). `include-blob` regression is noise, `externs` is probably real, but the benchmark is very artificial.

Use less HIR to compute effective visibility. [#144554](https://github.com/rust-lang/rust/pull/144554) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=889701db1ff614160314734fe4138c2f820a95bb&end=6d091b2baa33698682453c7bb72809554204e434&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.3%]   | 6     |
| Regressions (secondary)  | 0.3%  | [0.1%, 0.5%]   | 7     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.1% | [-0.2%, -0.1%] | 5     |
| All  (primary)                 | 0.2%  | [0.2%, 0.3%]   | 6     |

Some small regressions on `incr-unchanged` scenarios. Looks like the post-merge results are worse then the pre-merge ones. Pinged the author to confirm if it's ok.

expand WF obligations when checking method calls [#144704](https://github.com/rust-lang/rust/pull/144704) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=da19b9d24c4ed900b91b45ec7f7795ec43613b1e&end=7cd950546b4ce68843b4cbdb1ab3a43776202d3a&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.3%, 0.4%]   | 3     |
| Regressions (secondary)  | 0.6%  | [0.2%, 1.1%]   | 12    |
| Improvements (primary)   | -0.2% | [-0.4%, -0.2%] | 19    |
| Improvements (secondary) | -1.2% | [-8.1%, -0.2%] | 32    |
| All  (primary)                 | -0.2% | [-0.4%, 0.4%]  | 22    |

Perf improvements greatly outweigh regressions. Already triaged by @nnethercote.

Rollup of 12 pull requests [#144869](https://github.com/rust-lang/rust/pull/144869) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f34ba774c78ea32b7c40598b8ad23e75cdac42a6&end=383b9c447b61641e1f1a3850253944a897a60827&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.1%  | [0.1%, 0.1%]   | 2     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.8% | [-1.0%, -0.0%] | 7     |
| All  (primary)                 | -     | -              | 0     |

`include-blob` regression looks like noise (returning to some baseline state).

Rollup of 12 pull requests [#144876](https://github.com/rust-lang/rust/pull/144876) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=383b9c447b61641e1f1a3850253944a897a60827&end=07b7dc90ee4df5815dbb91ef8e98cb93571230f5&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.5%, 0.5%]   | 1     |
| Regressions (secondary)  | 0.9%  | [0.9%, 1.0%]   | 6     |
| Improvements (primary)   | -0.7% | [-0.9%, -0.5%] | 2     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -0.3% | [-0.9%, 0.5%]  | 3     |


`match-stress` is bimodal noise. `image` looks like a similar kind of perturbation like happened in https://github.com/rust-lang/rust/pull/144543, https://github.com/rust-lang/rust/pull/144637 and https://github.com/rust-lang/rust/pull/144718, probably caused by codegen unit scheduling change, but this time it doesn't have as large backend wall time change. The changes are still in LLVM though, based on detailed results. We'll see whether it comes back. I don't think this is worth more investigation.


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Make `Rc<T>::deref` and `Arc<T>::deref` zero-cost" [rust#132553](https://github.com/rust-lang/rust/pull/132553) (last review activity: 2 months ago)
  - cc: @**scottmcm**
- "lint ImproperCTypes: overhaul (take 2 of "better handling of indirections")" [rust#134697](https://github.com/rust-lang/rust/pull/134697) (last review activity: about 54 days ago)
  - cc: @**Jubilee**
- "Add NonNull pattern types" [rust#142339](https://github.com/rust-lang/rust/pull/142339) (last review activity: about 52 days ago)
  - this seems having a quitewide change surface, many people are tagged. Where to start?
- "-Zharden-sls flag (target modifier) added to enable mitigation against straight line speculation (SLS)" [rust#136597](https://github.com/rust-lang/rust/pull/136597) (last review activity: about 51 days ago)
  - cc: @**Jubilee**
- "compiler: Fix "power alignment" problems on AIX" [rust#142310](https://github.com/rust-lang/rust/pull/142310) (last review activity: about 48 days ago)
  - review from https://github.com/beetrees (not a member), auto-assigned to Wesley, left [a comment](https://github.com/rust-lang/rust/pull/142310#issuecomment-3150829621) asking if this waiting on llvm#144673
- "Update bundled musl to 1.2.5" [rust#142682](https://github.com/rust-lang/rust/pull/142682) (last review activity: about 49 days ago)
  - cc @**Wesley Wiser**
  - For context [mcp#887](https://github.com/rust-lang/compiler-team/issues/887) and [blog post](https://github.com/rust-lang/blog.rust-lang.org/pull/1641) when this lands

Next meetings' agenda draft: [hackmd link](https://hackmd.io/DiqZeSh_Tsu0PqVIVMdJfg)
