---
tags: weekly, rustc
type: docs
note_id: Oc7RUTE9RfikwPuo1PkYeA
---

# T-compiler Meeting Agenda 2025-08-21

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- WG-async design meeting <time:2025-08-21T19:00:00+02:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Compile UI tests as libraries by default" [compiler-team#842](https://github.com/rust-lang/compiler-team/issues/842) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Compile.20UI.20tests.20as.20libraries.20by.20default.20compiler-team.23842)) (last review activity: 5 months ago)
  - "Unify ui test inline error annotation style" [compiler-team#859](https://github.com/rust-lang/compiler-team/issues/859) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Unify.20ui.20test.20inline.20error.20annotation.20sty.E2.80.A6.20compiler-team.23859)) (last review activity: about 12 days ago)
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864)) (last review activity: 2 months ago)
  - "Add support for specifying split-debuginfo=unpacked output directory" [compiler-team#871](https://github.com/rust-lang/compiler-team/issues/871) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20support.20for.20specifying.20split-debuginf.E2.80.A6.20compiler-team.23871)) (last review activity: 3 months ago)
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: about 27 days ago)
  - "Experiment with replacing specialization in libcore with downcasting" [compiler-team#904](https://github.com/rust-lang/compiler-team/issues/904) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Experiment.20with.20replacing.20specialization.20.E2.80.A6.20compiler-team.23904)) (last review activity: about 27 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets (rust#123617)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2135121317)
    - no pending checkboxes
    - concerns: [stabilization-scope (by wesleywiser)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2192330122)
  - merge: [Fix backtraces with `-C panic=abort` on linux; emit unwind tables by default (rust#143613)](https://github.com/rust-lang/rust/pull/143613#issuecomment-3070266003)
    - @_**|116266** @_**|426609** @_**|353056**
    - no pending concerns
- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Policy: Empower reviewers to reject burdensome PRs" [compiler-team#893](https://github.com/rust-lang/compiler-team/issues/893) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.3A.20Reject.20low-effort.20AI-generated.20PRs.20compiler-team.23893))
    - concern: [ai-should-still-be-mentioned-in-motivation](https://github.com/rust-lang/compiler-team/issues/893#issuecomment-3047208685)
    - concern: [resolve ai-should-still-be-mentioned-in-motivation](https://github.com/rust-lang/compiler-team/issues/893#issuecomment-3047209196)
  - "Begin enforcing Tier 2 target maintainer requirements" [compiler-team#896](https://github.com/rust-lang/compiler-team/issues/896) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Begin.20enforcing.20Tier.202.20target.20maintainer.20.E2.80.A6.20compiler-team.23896))
  - "Proposal for a dedicated test suite for the parallel frontend" [compiler-team#906](https://github.com/rust-lang/compiler-team/issues/906) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Proposal.20for.20a.20dedicated.20test.20suite.20for.20t.E2.80.A6.20compiler-team.23906))
    - concern: [name-a-specific-reason](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137732970)
    - concern: [can-we-just-enhance-ui-suite](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137762379)
  - "fix drop scope for `super let` bindings within `if let`" [rust#145342](https://github.com/rust-lang/rust/pull/145342)
- Accepted MCPs
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745))
  - "Make the UI test suite more amenable to multiple editions" [compiler-team#861](https://github.com/rust-lang/compiler-team/issues/861) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Run.20the.20UI.20test.20suite.20with.20multiple.20editi.E2.80.A6.20compiler-team.23861))
  - "Upgrade `*-linux-musl` targets to musl 1.2.5" [compiler-team#887](https://github.com/rust-lang/compiler-team/issues/887) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Upgrade.20.60.2A-linux-musl.60.20targets.20to.20musl.201.2E.E2.80.A6.20compiler-team.23887))
  - "Tier 3 target proposal: riscv64a23-unknown-linux-gnu" [compiler-team#894](https://github.com/rust-lang/compiler-team/issues/894) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Tier.203.20target.20proposal.3A.20riscv64rva23-unkn.E2.80.A6.20compiler-team.23894))
  - "Flag `-Zindirect-branch-cs-prefix` (retpoline mitigation)" [compiler-team#899](https://github.com/rust-lang/compiler-team/issues/899) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Flag.20.60-Zindirect-branch-cs-prefix.60.20.28retpo.E2.80.A6.20compiler-team.23899))
  - "Add a tidy check to prevent adding new test files *directly* under `tests/ui/`" [compiler-team#902](https://github.com/rust-lang/compiler-team/issues/902) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20tidy.20check.20to.20prevent.20adding.20new.20te.E2.80.A6.20compiler-team.23902))
  - "Add JSON schema for target spec JSON" [compiler-team#905](https://github.com/rust-lang/compiler-team/issues/905) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20JSON.20schema.20for.20target.20spec.20JSON.20compiler-team.23905))
- MCPs blocked on unresolved concerns
  - "Promote `armv7-unknown-linux-musleabihf` to tier 2 with host tools" [compiler-team#888](https://github.com/rust-lang/compiler-team/issues/888) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20.60armv7-unknown-linux-musleabihf.60.20.E2.80.A6.20compiler-team.23888)) (last review activity: about 36 days ago)
    - concern: [lack-of-maintainers](https://github.com/rust-lang/compiler-team/issues/888#issuecomment-3035366625)
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: about 35 days ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: about 36 days ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 2 months ago)
    - concern: [path-to-stabilization](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-2980212568)
  - "Policy change around adding new unstable flags" [compiler-team#787](https://github.com/rust-lang/compiler-team/issues/787) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.20change.20around.20adding.20new.20unstable.20.E2.80.A6.20compiler-team.23787)) (last review activity: 10 months ago)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: about 47 days ago)
    - concern: [needs-a-sufficiently-long-deprecation-timeline](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024361071)
    - concern: [needs-a-blog-post](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024360549)
    - concern: [broad-change-needs-tlang-buy-in-possibly-fcp](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024361199)
- Finalized FCPs (disposition merge)
  - "`apply_member_constraints`: fix placeholder check" [rust#142071](https://github.com/rust-lang/rust/pull/142071)
  - "Check coroutine upvars in dtorck constraint" [rust#144156](https://github.com/rust-lang/rust/pull/144156)
  - "Require approval from t-infra instead of t-release on tier bumps" [rust#144906](https://github.com/rust-lang/rust/pull/144906)
- Other teams finalized FCPs
  - "Reject relaxed bounds inside associated type bounds (ATB)" [rust#135331](https://github.com/rust-lang/rust/pull/135331)
  - "`apply_member_constraints`: fix placeholder check" [rust#142071](https://github.com/rust-lang/rust/pull/142071)
  - "Remove the `#[no_sanitize]` attribute in favor of `#[sanitize(xyz = "on|off")]`" [rust#142681](https://github.com/rust-lang/rust/pull/142681)
  - "Port `#[link]` to the new attribute parsing infrastructure " [rust#143193](https://github.com/rust-lang/rust/pull/143193)
  - "`c_variadic`: Add future-incompatibility warning for `...` arguments without a pattern outside of `extern` blocks" [rust#143619](https://github.com/rust-lang/rust/pull/143619)
  - "Stabilize const TypeId::of" [rust#144133](https://github.com/rust-lang/rust/pull/144133)
  - "Check coroutine upvars in dtorck constraint" [rust#144156](https://github.com/rust-lang/rust/pull/144156)
  - "Add lint against dangling pointers from local variables" [rust#144322](https://github.com/rust-lang/rust/pull/144322)
  - "Upgrade semicolon_in_expressions_from_macros from warn to deny" [rust#144369](https://github.com/rust-lang/rust/pull/144369)
  - "Extract TraitImplHeader in AST/HIR" [rust#144386](https://github.com/rust-lang/rust/pull/144386)
  - "Stabilize loongarch32 inline asm" [rust#144402](https://github.com/rust-lang/rust/pull/144402)
  - "Stabilize `sse4a` and `tbm` target features" [rust#144542](https://github.com/rust-lang/rust/pull/144542)
  - "Rewrite the new attribute argument parser" [rust#144689](https://github.com/rust-lang/rust/pull/144689)
  - "Don't warn on never to any `as` casts as unreachable" [rust#144804](https://github.com/rust-lang/rust/pull/144804)
  - "Require approval from t-infra instead of t-release on tier bumps" [rust#144906](https://github.com/rust-lang/rust/pull/144906)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "fix(debuginfo): handle false positives in overflow check" [rust#145297](https://github.com/rust-lang/rust/pull/145297)
  - Authored by adwinwhite
  - Nominated by @_**apiraino** Fixes #144636, looks like a P-medium regression (unsure, see [Zulip thread](https://rust-lang.zulipchat.com/#narrow/channel/245100-t-compiler.2Fprioritization.2Falerts/topic/.23144636.20Infinite.20recursion.20when.20generating.20debuginfo/near/532021966))
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23145297.3A.20beta-nominated/near/535474117) (just opened)
- :beta: "fix drop scope for `super let` bindings within `if let`" [rust#145342](https://github.com/rust-lang/rust/pull/145342)
  - Authored by dianne
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23145342.3A.20beta-nominated/near/534330643)
  - Discussed last week, decided to postpone (see [https://rust-lang.zulipchat.com/#narrow/channel/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202025-08-14/near/534495133](https://rust-lang.zulipchat.com/#narrow/channel/245100-t-compiler.2Fprioritization.2Falerts/topic/.23144636.20Infinite.20recursion.20when.20generating.20debuginfo/near/532021966) and [comment](https://github.com/rust-lang/rust/pull/145342#issuecomment-3188712254)), other teams seem undecided as well (see [comment](https://github.com/rust-lang/rust/pull/145342#issuecomment-3189927812) and [comment](https://github.com/rust-lang/rust/pull/145342#issuecomment-3201167236))
  - T-lang seems to lean in favor (see [comment](https://github.com/rust-lang/rust/pull/145342#issuecomment-3187288362))
- :beta: "Do not use effective_visibilities query for Adt types of a local trait while proving a where-clause" [rust#145642](https://github.com/rust-lang/rust/pull/145642)
  - Authored by xizheyin
  - Fixes #145611, [discussed on Zulip](https://rust-lang.zulipchat.com/#narrow/channel/131828-t-compiler/topic/query.20cycles.3A.20ICE.20if.20unexpected.20queries.20are.20involved/near/535168139)
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23145642.3A.20beta-nominated/near/535281175), in favor. Low risk, great reward backport
- :stable: "fix drop scope for `super let` bindings within `if let`" [rust#145342](https://github.com/rust-lang/rust/pull/145342)
  - Authored by dianne
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23145342.3A.20stable-nominated/near/534330275)
  - We weren't so keen on stable backporting this ([comment](https://rust-lang.zulipchat.com/#narrow/channel/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202025-08-14/near/534493799))
  - [Here](https://github.com/rust-lang/rust/pull/145342#issuecomment-3193477003) a useful summary
    - #145328 deemed "unlikely to affect real code"

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

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [56 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [38 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 1 P-high, 1 P-medium, 4 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 1 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 25 P-high, 100 P-medium, 23 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "`pin!()` has incorrect/unexpected drop order inside if-let." [rust#145328](https://github.com/rust-lang/rust/issues/145328)
  - See backports
- "ICE (nightly): panicked at compiler/rustc_const_eval/src/util/type_name.rs:145:18: entered unreachable code" [rust#145696](https://github.com/rust-lang/rust/issues/145696)
  - just opened, a fix in being authored by @**nnethercote** in #145700 (thanks!)

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "E0275 is occuring in beta 1.90.0-beta.1 but not in stable 1.89.0" [rust#145151](https://github.com/rust-lang/rust/issues/145151)
  - being taken care in #145395 by @**lcnr** (thanks!)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2025-08-19](https://github.com/rust-lang/rustc-perf/blob/master/triage/2025/2025-08-18.md)

Lots of noise/bimodality this week. Overall though no major performance impacting changes landed.

Triage done by **@simulacrum**.
Revision range: [6355cd39..239e8b1b](https://perf.rust-lang.org/?start=6355cd39c81e9699b1925c58d2ed3165bcab1715&end=239e8b1b47b34120287ec36b33228c1e177f0c38&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 1.2%]   | 94    |
| Regressions (secondary)  | 0.4%  | [0.1%, 1.1%]   | 48    |
| Improvements (primary)   | -1.2% | [-3.2%, -0.2%] | 16    |
| Improvements (secondary) | -0.3% | [-0.5%, -0.2%] | 5     |
| All  (primary)           | 0.1%  | [-3.2%, 1.2%]  | 110   |

1 Regressions, 3 Improvements, 7 Mixed; 4 of them in rollups
27 artifact comparisons made in total

#### Regressions

Make no_mangle on foreign items explicit instead of implicit [#144678](https://github.com/rust-lang/rust/pull/144678) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d9dba3a55476ae2da5d4e5bce8a81b341c675750&end=8e62bfd311791bfd9dca886abdfbab07ec54d8b4&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.2%, 0.6%] | 8     |
| Regressions (secondary)  | 0.2% | [0.1%, 0.5%] | 8     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.3% | [0.2%, 0.6%] | 8     |

One extra query introduced, possibly to be removed at a future date with
additional validation on attributes in an earlier stage of the compiler.

#### Improvements

Rollup of 13 pull requests [#145388](https://github.com/rust-lang/rust/pull/145388) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2c1ac85679678dfe5cce7ea8037735b0349ceaf3&end=30017c36d6b5e3382ee7cf018d330a6a4a937d39&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.7%, 0.7%]   | 1     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.4%]   | 3     |
| Improvements (primary)   | -0.2% | [-0.4%, -0.2%] | 68    |
| Improvements (secondary) | -0.4% | [-1.8%, -0.2%] | 24    |
| All  (primary)                 | -0.2% | [-0.4%, 0.7%]  | 69    |


Rework target checking for built-in attributes [#145085](https://github.com/rust-lang/rust/pull/145085) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=be00ea1968d8d5afb5d93d2dedeb97a8bba300cb&end=898aff704d6f0d00343f21d31b8b9bfac8e43007&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.4% | [-0.9%, -0.1%] | 13    |
| All  (primary)                 | -     | -              | 0     |


Rollup of 10 pull requests [#145551](https://github.com/rust-lang/rust/pull/145551) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=425a9c0a0e365c0b8c6cfd00c2ded83a73bed9a0&end=239e8b1b47b34120287ec36b33228c1e177f0c38&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.2% | [-1.5%, -0.8%] | 2     |
| Improvements (secondary) | -0.6% | [-1.5%, -0.1%] | 3     |
| All  (primary)                 | -1.2% | [-1.5%, -0.8%] | 2     |


#### Mixed

Fix parallel rustc not being reproducible due to unstable sorts of items [#144722](https://github.com/rust-lang/rust/pull/144722) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1c9952f4dd6e0947ee91f07130c03813a088a894&end=350d0ef0ec0493e6d21cfb265cb8211a0e74d766&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.5%]   | 5     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.3%]   | 7     |
| Improvements (primary)   | -0.2% | [-0.6%, -0.1%] | 12    |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -0.1% | [-0.6%, 0.5%]  | 17    |

[#145358](https://github.com/rust-lang/rust/pull/145358) claws back some of the performance impact from this PR.

Update to LLVM 21.1.0 rc3 [#145298](https://github.com/rust-lang/rust/pull/145298) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=350d0ef0ec0493e6d21cfb265cb8211a0e74d766&end=f5b8a11fecf23cb669f6d1feae81aafc2930aeb9&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.1%, 0.2%]   | 8     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 1     |
| Improvements (secondary) | -0.7% | [-1.8%, -0.2%] | 3     |
| All  (primary)                 | 0.1%  | [-0.2%, 0.2%]  | 9     |

I'm not convinced the changes are real here, but they're certainly not
significant enough to investigate deeply for an LLVM upgrade.

Rollup of 9 pull requests [#145366](https://github.com/rust-lang/rust/pull/145366) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f5b8a11fecf23cb669f6d1feae81aafc2930aeb9&end=3672a55b7cfd0a12e7097197b6242872473ffaa7&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.1%, 0.7%]   | 43    |
| Regressions (secondary)  | 0.3%  | [0.1%, 0.6%]   | 20    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.5% | [-0.5%, -0.5%] | 1     |
| All  (primary)                 | 0.2%  | [0.1%, 0.7%]   | 43    |

Caused by
[#145153](https://github.com/rust-lang/rust/pull/145153#issuecomment-3189567116).
In general regressions across the board aren't great, but this is headed
towards introduction of new functionality, so perhaps required. Some profiling
of the PR may yield interesting results given how wide spread the regression is
for some micro-opt work.

resolve: Split extern prelude into two scopes [#144793](https://github.com/rust-lang/rust/pull/144793) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3672a55b7cfd0a12e7097197b6242872473ffaa7&end=8e7795415acaa9471b5eeb2301915d6996d289ec&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 2     |
| Regressions (secondary)  | 0.7%  | [0.3%, 1.9%]   | 4     |
| Improvements (primary)   | -0.4% | [-0.7%, -0.2%] | 5     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -0.2% | [-0.7%, 0.2%]  | 7     |

Looks like it's only a real regression for the secondary externs scenario, and
even there only significant in incr-unchanged. I'm not worried enough to merit
further poking, especially as it seems plausible this is a natural (if slight)
regression from tracking at finer granularity.

Rollup of 11 pull requests [#145407](https://github.com/rust-lang/rust/pull/145407) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=898aff704d6f0d00343f21d31b8b9bfac8e43007&end=3507a749b365aae4eefa96ab700a9315d3280ee7&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.4%]   | 39    |
| Regressions (secondary)  | 0.4%  | [0.2%, 0.9%]   | 18    |
| Improvements (primary)   | -1.4% | [-3.7%, -0.2%] | 3     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | 0.1%  | [-3.7%, 0.4%]  | 42    |

Regression caused by
[#145233](https://github.com/rust-lang/rust/pull/145233#issuecomment-3191062342),
based on granular perf run, but there's some suspicion that it might still be
just noise. Further investigation seems unwarranted at this time.

Patterns: represent constants as valtrees [#144591](https://github.com/rust-lang/rust/pull/144591) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3507a749b365aae4eefa96ab700a9315d3280ee7&end=8800ec16657b24ad8a2f443c133bf0b56ae76033&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 5.3%  | [5.3%, 5.3%]   | 1     |
| Regressions (secondary)  | 0.7%  | [0.2%, 1.0%]   | 9     |
| Improvements (primary)   | -2.7% | [-3.2%, -2.2%] | 6     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -1.5% | [-3.2%, 5.3%]  | 7     |

The match-stress regression seems real, but probably not important to look into
given the context of this PR. Other regressions look like noise.

Rollup of 21 pull requests [#145423](https://github.com/rust-lang/rust/pull/145423) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8800ec16657b24ad8a2f443c133bf0b56ae76033&end=ba412a6e70ac84641be7764d088acabd0eb3fa39&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.2%  | [0.2%, 3.2%]   | 4     |
| Regressions (secondary)  | 0.4%  | [0.0%, 0.5%]   | 3     |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 1     |
| Improvements (secondary) | -1.5% | [-2.0%, -0.9%] | 2     |
| All  (primary)                 | 0.9%  | [-0.2%, 3.2%]  | 5     |

Most regressions are noise but ripgrep regression looks real, seems to be
caused by [#122661](https://github.com/rust-lang/rust/pull/122661). See
[writeup](https://github.com/rust-lang/rust/pull/122661#issuecomment-3199007696)
for some brief investigation.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "-Zharden-sls flag (target modifier) added to enable mitigation against straight line speculation (SLS)" [rust#136597](https://github.com/rust-lang/rust/pull/136597) (last review activity: 2 months ago)
  - cc: @**Jubilee**
- "Improve type parameter suggestion heuristic for missing types" [rust#140073](https://github.com/rust-lang/rust/pull/140073) (last review activity: 3 months ago)
  - cc @**León Orell Liehr (fmease)**
- "Tweak output of missing lifetime on associated type" [rust#135602](https://github.com/rust-lang/rust/pull/135602) (last review activity: 5 months ago)
  - cc: @**Nadrieril**
- "Provide more context on `Fn` closure modifying binding" [rust#133149](https://github.com/rust-lang/rust/pull/133149) (last review activity: 9 months ago)
  - 2025-08-21 cc @**Sparrow Li** (autoassigned after review reroll)
- "aarch64-nintendo-switch-freestanding - Enable CPU features that are always available in a live system (crypto instructions, plus explicit NEON)." [rust#144613](https://github.com/rust-lang/rust/pull/144613)
  - maybe not a top prio but this seems an easy one, it's approved but (for some reason?) not merged

Next meetings' agenda draft: [hackmd link](https://hackmd.io/_K2r3fHbSQiM6bMZvvp7qQ)
