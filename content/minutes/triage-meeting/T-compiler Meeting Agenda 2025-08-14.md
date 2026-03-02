---
tags: weekly, rustc
type: docs
note_id: DiqZeSh_Tsu0PqVIVMdJfg
---

# T-compiler Meeting Agenda 2025-08-14

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- Stable MIR weekly meeting <time:2025-08-15T17:00:00+02:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Policy change around adding new unstable flags" [compiler-team#787](https://github.com/rust-lang/compiler-team/issues/787) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.20change.20around.20adding.20new.20unstable.20.E2.80.A6.20compiler-team.23787)) (last review activity: 10 months ago)
  - "Compile UI tests as libraries by default" [compiler-team#842](https://github.com/rust-lang/compiler-team/issues/842) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Compile.20UI.20tests.20as.20libraries.20by.20default.20compiler-team.23842)) (last review activity: 5 months ago)
  - "Unify ui test inline error annotation style" [compiler-team#859](https://github.com/rust-lang/compiler-team/issues/859) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Unify.20ui.20test.20inline.20error.20annotation.20sty.E2.80.A6.20compiler-team.23859)) (last review activity: about 5 days ago)
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864)) (last review activity: 2 months ago)
  - "Add support for specifying split-debuginfo=unpacked output directory" [compiler-team#871](https://github.com/rust-lang/compiler-team/issues/871) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20support.20for.20specifying.20split-debuginf.E2.80.A6.20compiler-team.23871)) (last review activity: 3 months ago)
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: about 20 days ago)
  - "Experiment with replacing specialization in libcore with downcasting" [compiler-team#904](https://github.com/rust-lang/compiler-team/issues/904) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Experiment.20with.20replacing.20specialization.20.E2.80.A6.20compiler-team.23904)) (last review activity: about 20 days ago)
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
  - merge: [fix drop scope for `super let` bindings within `if let` (rust#145342)](https://github.com/rust-lang/rust/pull/145342#issuecomment-3187288487)
    - @_**|116009** @_**|239881** @_**|116883** @_**|125270**
    - no pending concerns
- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Policy: Empower reviewers to reject burdensome PRs" [compiler-team#893](https://github.com/rust-lang/compiler-team/issues/893) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.3A.20Reject.20low-effort.20AI-generated.20PRs.20compiler-team.23893))
  - "Proposal for a dedicated test suite for the parallel frontend" [compiler-team#906](https://github.com/rust-lang/compiler-team/issues/906) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Proposal.20for.20a.20dedicated.20test.20suite.20for.20t.E2.80.A6.20compiler-team.23906))
    - concern: [name-a-specific-reason](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137732970)
    - concern: [can-we-just-enhance-ui-suite](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137762379)
  - "const-eval: full support for pointer fragments" [rust#144081](https://github.com/rust-lang/rust/pull/144081)
- Accepted MCPs
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745))
  - "Make the UI test suite more amenable to multiple editions" [compiler-team#861](https://github.com/rust-lang/compiler-team/issues/861) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Run.20the.20UI.20test.20suite.20with.20multiple.20editi.E2.80.A6.20compiler-team.23861))
  - "Upgrade `*-linux-musl` targets to musl 1.2.5" [compiler-team#887](https://github.com/rust-lang/compiler-team/issues/887) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Upgrade.20.60.2A-linux-musl.60.20targets.20to.20musl.201.2E.E2.80.A6.20compiler-team.23887))
  - "Tier 3 target proposal: riscv64a23-unknown-linux-gnu" [compiler-team#894](https://github.com/rust-lang/compiler-team/issues/894) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Tier.203.20target.20proposal.3A.20riscv64rva23-unkn.E2.80.A6.20compiler-team.23894))
  - "Flag `-Zindirect-branch-cs-prefix` (retpoline mitigation)" [compiler-team#899](https://github.com/rust-lang/compiler-team/issues/899) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Flag.20.60-Zindirect-branch-cs-prefix.60.20.28retpo.E2.80.A6.20compiler-team.23899))
  - "Add a tidy check to prevent adding new test files *directly* under `tests/ui/`" [compiler-team#902](https://github.com/rust-lang/compiler-team/issues/902) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20tidy.20check.20to.20prevent.20adding.20new.20te.E2.80.A6.20compiler-team.23902))
  - "Add JSON schema for target spec JSON" [compiler-team#905](https://github.com/rust-lang/compiler-team/issues/905) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20JSON.20schema.20for.20target.20spec.20JSON.20compiler-team.23905))
- MCPs blocked on unresolved concerns
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: about 28 days ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
  - "Promote `armv7-unknown-linux-musleabihf` to tier 2 with host tools" [compiler-team#888](https://github.com/rust-lang/compiler-team/issues/888) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20.60armv7-unknown-linux-musleabihf.60.20.E2.80.A6.20compiler-team.23888)) (last review activity: about 29 days ago)
    - concern: [lack-of-maintainers](https://github.com/rust-lang/compiler-team/issues/888#issuecomment-3035366625)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: about 57 days ago)
    - concern: [path-to-stabilization](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-2980212568)
    - cc @**Wesley Wiser** can you check the MCP author reply?
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: about 40 days ago)
    - concern: [broad-change-needs-tlang-buy-in-possibly-fcp](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024361199)
    - concern: [needs-a-sufficiently-long-deprecation-timeline](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024361071)
    - concern: [needs-a-blog-post](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024360549)
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: about 29 days ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
- Finalized FCPs (disposition merge)
  - None
- Other teams finalized FCPs
  - "Reject relaxed bounds inside associated type bounds (ATB)" [rust#135331](https://github.com/rust-lang/rust/pull/135331)
  - "`apply_member_constraints`: fix placeholder check" [rust#142071](https://github.com/rust-lang/rust/pull/142071)
  - "Remove the `#[no_sanitize]` attribute in favor of `#[sanitize(xyz = "on|off")]`" [rust#142681](https://github.com/rust-lang/rust/pull/142681)
  - "Check coroutine upvars in dtorck constraint" [rust#144156](https://github.com/rust-lang/rust/pull/144156)
  - "Upgrade semicolon_in_expressions_from_macros from warn to deny" [rust#144369](https://github.com/rust-lang/rust/pull/144369)
  - "Extract TraitImplHeader in AST/HIR" [rust#144386](https://github.com/rust-lang/rust/pull/144386)
  - "Stabilize loongarch32 inline asm" [rust#144402](https://github.com/rust-lang/rust/pull/144402)
  - "Add lint against integer to pointer transmutes" [rust#144531](https://github.com/rust-lang/rust/pull/144531)
  - "Stabilize `sse4a` and `tbm` target features" [rust#144542](https://github.com/rust-lang/rust/pull/144542)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Ignore coroutine witness type region args in auto trait confirmation" [rust#145194](https://github.com/rust-lang/rust/pull/145194)
  - Authored by compiler-errors
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23145194.3A.20beta-nominated/): as suggested in [comment](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23145194.3A.20beta-nominated/near/534449468) by Boxy, we could decline this backport and instead let #145338 fix the regression
  - So probably backport both #145194 and #145338 (see [comment](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23145194.3A.20beta-nominated/near/534462842))
- :beta: "fix drop scope for `super let` bindings within `if let`" [rust#145342](https://github.com/rust-lang/rust/pull/145342)
  - Authored by dianne
  - Fixes two related p-critical regressions (#145328 and #145374)
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23145342.3A.20beta-nominated/near/534330643) in favor
- :stable: "fix drop scope for `super let` bindings within `if let`" [rust#145342](https://github.com/rust-lang/rust/pull/145342)
  - Authored by dianne
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23145342.3A.20stable-nominated/near/534448494)
  - Ongoing discussion about a dot release

[T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- :beta:"Make sure to treat only param where clauses as inherent" [rust#145262](https://github.com/rust-lang/rust/pull/145262)
  - Authored by compiler-errors
  - (No voting Zulip topic)
  - Fixes #145185 (P-medium but [maybe wrong assessment](https://rust-lang.zulipchat.com/#narrow/channel/245100-t-compiler.2Fprioritization.2Falerts/topic/.23145185.20Latest.20rustc.20tags.20.60unused_imports.60.20on.20trait.20imports.E2.80.A6/near/533785477) on my side)
- :stable:"Make sure to treat only param where clauses as inherent" [rust#145262](https://github.com/rust-lang/rust/pull/145262)
  - Authored by compiler-errors
  - @_**scottmcm** makes a good argument ([comment](https://github.com/rust-lang/rust/pull/145262#issuecomment-3184403223)) for backporting

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Fix backtraces with `-C panic=abort` on linux; emit unwind tables by default" [rust#143613](https://github.com/rust-lang/rust/pull/143613)
  - this is RFC-approved so should it go back to the author? ([comment](https://github.com/rust-lang/rust/pull/143613#issuecomment-3141053030))
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [54 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [38 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 1 P-high, 1 P-medium, 4 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 0 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 24 P-high, 100 P-medium, 23 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "`pin!()` has incorrect/unexpected drop order inside if-let." [rust#145328](https://github.com/rust-lang/rust/issues/145328)
  - resolved by #145342

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "E0275 is occuring in beta 1.90.0-beta.1 but not in stable 1.89.0" [rust#145151](https://github.com/rust-lang/rust/issues/145151)
  - maybe resolved by #145194 and probably a follow up patch (see [comment](https://github.com/rust-lang/rust/issues/145288#issuecomment-3179377472) and previous one)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs 2025-08-11](https://github.com/rust-lang/rustc-perf/blob/master/triage/2025/2025-08-12.md)

This week saw almost no regressions, while we got some nice wins. One of them was [#143684](https://github.com/rust-lang/rust/pull/143684), which updated the LLVM version used by the Rust compiler to 21.

Triage done by **@kobzol**.
Revision range: [07b7dc90..6355cd39](https://perf.rust-lang.org/?start=07b7dc90ee4df5815dbb91ef8e98cb93571230f5&end=6355cd39c81e9699b1925c58d2ed3165bcab1715&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.2%, 0.8%]    | 3     |
| Regressions (secondary)  | 0.7%  | [0.1%, 1.5%]    | 8     |
| Improvements (primary)   | -1.5% | [-22.8%, -0.2%] | 219   |
| Improvements (secondary) | -2.9% | [-18.8%, -0.1%] | 256   |
| All  (primary)           | -1.5% | [-22.8%, 0.8%]  | 222   |


2 Regressions, 2 Improvements, 9 Mixed; 5 of them in rollups
37 artifact comparisons made in total

#### Regressions

Revert #143906 [#145116](https://github.com/rust-lang/rust/pull/145116) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2886b36df4a646dd8d82fb65bf0c9d8d96c1f71a&end=de3efa79f95852c7427587f1d535bfea7c0d6779&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | -    | -            | 0     |
| Regressions (secondary)  | 0.4% | [0.2%, 0.6%] | 10    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | -    | -            | 0     |

- The tiny regressions were noise.
- Marked as triaged.

Rollup of 7 pull requests [#145236](https://github.com/rust-lang/rust/pull/145236) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=21a19c297d4f5a03501d92ca251bd7a17073c08a&end=53af067bb0b4edf9b5394e5f9b60942974b9fbc2&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.2%, 0.5%] | 6     |
| Regressions (secondary)  | 0.4% | [0.1%, 0.5%] | 17    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.3% | [0.2%, 0.5%] | 6     |

- Tiny doc-only regressions caused by adding more const to the standard library.
- Marked as triaged.

#### Improvements

Simplify dead code lint [#144863](https://github.com/rust-lang/rust/pull/144863) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=213d946a384b46989f6fd9c8ae9c547b4e354455&end=ec7c02612527d185c379900b613311bc1dcbf7dc&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.0%  | [0.0%, 0.0%]   | 1     |
| Improvements (primary)   | -0.5% | [-1.5%, -0.1%] | 82    |
| Improvements (secondary) | -0.3% | [-0.6%, -0.1%] | 12    |
| All  (primary)                 | -0.5% | [-1.5%, -0.1%] | 82    |


Implement `stability_implications` without a visitor. [#144873](https://github.com/rust-lang/rust/pull/144873) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=915a766b2f9fd53a8cd7b1fad003d3f8e488ff4b&end=8712e4567551a2714efa66dac204ec7137bc5605&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.1%] | 41    |
| Improvements (secondary) | -0.9% | [-3.0%, -0.2%] | 26    |
| All  (primary)                 | -0.3% | [-0.3%, -0.1%] | 41    |


#### Mixed

Update to LLVM 21 [#143684](https://github.com/rust-lang/rust/pull/143684) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ec7c02612527d185c379900b613311bc1dcbf7dc&end=dc0bae1db725fbba8524f195f74f680995fd549e&stat=instructions:u)

| (instructions:u)                   | mean  | range           | count |
|:----------------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.2%, 0.9%]    | 5     |
| Regressions (secondary)  | 1.3%  | [0.4%, 1.8%]    | 19    |
| Improvements (primary)   | -1.3% | [-23.1%, -0.2%] | 216   |
| Improvements (secondary) | -2.7% | [-19.0%, -0.1%] | 266   |
| All  (primary)                 | -1.3% | [-23.1%, 0.9%]  | 221   |

- Improvements outweigh the regressions.
- Marked as triaged.

Preserve the .debug_gdb_scripts section [#143679](https://github.com/rust-lang/rust/pull/143679) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=dc0bae1db725fbba8524f195f74f680995fd549e&end=8fb40f798a23adf608182ce5f4eb151fdc8e0da5&stat=instructions:u)

| (instructions:u)                   | mean   | range           | count |
|:----------------------------------:|:------:|:---------------:|:-----:|
| Regressions (primary)    | 103.7% | [55.2%, 152.2%] | 2     |
| Regressions (secondary)  | 0.5%   | [0.5%, 0.6%]    | 3     |
| Improvements (primary)   | -      | -               | 0     |
| Improvements (secondary) | -1.8%  | [-4.6%, -0.0%]  | 6     |
| All  (primary)                 | 103.7% | [55.2%, 152.2%] | 2     |

- This change probably caused some incremental query invalidations.
- It was reverted in [#145014](https://github.com/rust-lang/rust/pull/145014).
- Marked as triaged.

Rollup of 15 pull requests [#145020](https://github.com/rust-lang/rust/pull/145020) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7d82b83ed57d188ab3f2441a765a6419685a88a3&end=6bcdcc73bd11568fd85f5a38b58e1eda054ad1cd&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.1%, 0.2%]   | 2     |
| Regressions (secondary)  | 0.3%  | [0.1%, 0.7%]   | 4     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.0% | [-0.0%, -0.0%] | 1     |
| All  (primary)                 | 0.2%  | [0.1%, 0.2%]   | 2     |

- The regression is genuine, but so small that it doesn't seem worth it to investigate it further.
- Marked as triaged.

Revert "Preserve the .debug_gdb_scripts section" [#145014](https://github.com/rust-lang/rust/pull/145014) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=61cb1e97fcf954c37d0a457a8084ed9ad8b3cb82&end=9b1a30e5e69e1537ef6eb6eb829eb47075206dea&stat=instructions:u)

| (instructions:u)                   | mean   | range            | count |
|:----------------------------------:|:------:|:----------------:|:-----:|
| Regressions (primary)    | -      | -                | 0     |
| Regressions (secondary)  | 2.8%   | [0.6%, 4.8%]     | 4     |
| Improvements (primary)   | -48.0% | [-60.4%, -35.6%] | 2     |
| Improvements (secondary) | -0.5%  | [-0.5%, -0.5%]   | 3     |
| All  (primary)                 | -48.0% | [-60.4%, -35.6%] | 2     |

- Revert of [#143679](https://github.com/rust-lang/rust/pull/143679).
- Marked as triaged.

Rollup of 19 pull requests [#145043](https://github.com/rust-lang/rust/pull/145043) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=cd434309efcf5dc68b253e5ef6ba40c1c43711c9&end=321a89bec57b8ca723d1af8f784490b950458c6a&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 0.5%]   | 4     |
| Regressions (secondary)  | 0.3%  | [0.1%, 0.5%]   | 8     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 2     |
| All  (primary)                 | 0.4%  | [0.2%, 0.5%]   | 4     |

- The regressions look genuine, but also are tiny.
- Marked as triaged.

Rollup of 9 pull requests [#145074](https://github.com/rust-lang/rust/pull/145074) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a980cd4311ae4b5bf9099d418e32643d068f1344&end=67d45f49e09cb8f355df2ffae22cfc3d7ee6c278&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.8%  | [0.1%, 4.3%]   | 126   |
| Regressions (secondary)  | 0.6%  | [0.1%, 1.5%]   | 39    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.8% | [-2.9%, -0.1%] | 9     |
| All  (primary)                 | 0.8%  | [0.1%, 4.3%]   | 126   |

- The regression was caused by [#144857](https://github.com/rust-lang/rust/pull/144857).
- The mentioned PR was reverted in [#145086](https://github.com/rust-lang/rust/pull/145086).
- Marked as triaged.

Rollup of 19 pull requests [#145077](https://github.com/rust-lang/rust/pull/145077) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=67d45f49e09cb8f355df2ffae22cfc3d7ee6c278&end=2886b36df4a646dd8d82fb65bf0c9d8d96c1f71a&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.1%  | [0.1%, 0.1%]   | 3     |
| Improvements (primary)   | -1.0% | [-1.0%, -1.0%] | 1     |
| Improvements (secondary) | -0.4% | [-0.6%, -0.2%] | 12    |
| All  (primary)                 | -1.0% | [-1.0%, -1.0%] | 1     |

- Some of the improvements were likely noise, but overall it was a wash.
- Marked as triaged.

Revert "Port `#[allow_internal_unsafe]` to the new attribute system" [#145086](https://github.com/rust-lang/rust/pull/145086) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ffb9d94dcf4ade0d534842be3672d5e9f47e1333&end=4c7749e8c8e50ad146da599eea3a250160c1bc2b&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 2.8%  | [2.6%, 2.9%]   | 6     |
| Improvements (primary)   | -0.8% | [-4.1%, -0.1%] | 121   |
| Improvements (secondary) | -0.7% | [-1.4%, -0.1%] | 39    |
| All  (primary)                 | -0.8% | [-4.1%, -0.1%] | 121   |

- Revert of [#144857](https://github.com/rust-lang/rust/pull/144857).
- Marked as triaged.

Stop using uadd.with.overflow [#145144](https://github.com/rust-lang/rust/pull/145144) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8712e4567551a2714efa66dac204ec7137bc5605&end=7f7b8ef27d86c865a7ab20c7c42f50811c6a914d&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.2%] | 7     |
| Improvements (secondary) | -0.5% | [-0.8%, -0.2%] | 14    |
| All  (primary)                 | -0.2% | [-0.3%, 0.2%]  | 8     |

- More improvements than regressions.
- Already marked as triaged.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Allow `&raw [mut | const]` for union field in safe" [rust#141469](https://github.com/rust-lang/rust/pull/141469) (last review activity: 2 months ago)
  - cc @**Michael (compiler-errors) Goulet**
- "diagnostics: hide expansion of builtin-like macros" [rust#141314](https://github.com/rust-lang/rust/pull/141314) (last review activity: 2 months ago)
  - cc @**Vadim Petrochenkov**
- "error out when `repr(align)` exceeds COFF limit" [rust#142638](https://github.com/rust-lang/rust/pull/142638) (last review activity: about 57 days ago)
  - cc: @**Jubilee**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/Oc7RUTE9RfikwPuo1PkYeA)
