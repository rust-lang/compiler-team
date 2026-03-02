---
tags: weekly, rustc
type: docs
note_id: NP_YTGSkRmazVwr6oLLl5g
---

# T-compiler Meeting Agenda 2025-07-17

## Add notes asynchronously here

Please feel free to add notes for the next meeting

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Tier 3 target proposal: riscv64a23-unknown-linux-gnu" [compiler-team#894](https://github.com/rust-lang/compiler-team/issues/894) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Tier.203.20target.20proposal.3A.20riscv64rva23-unkn.E2.80.A6.20compiler-team.23894))
  - "Flag `-Zindirect-branch-cs-prefix` (retpoline mitigation)" [compiler-team#899](https://github.com/rust-lang/compiler-team/issues/899) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Flag.20.60-Zindirect-branch-cs-prefix.60.20.28retpo.E2.80.A6.20compiler-team.23899))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: about 30 days ago)
    - concern: [path-to-stabilization](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-2980212568)
  - "Policy change around adding new unstable flags" [compiler-team#787](https://github.com/rust-lang/compiler-team/issues/787) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.20change.20around.20adding.20new.20unstable.20.E2.80.A6.20compiler-team.23787)) (last review activity: 9 months ago)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: about 13 days ago)
    - concern: [needs-a-sufficiently-long-deprecation-timeline](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024361071)
    - concern: [broad-change-needs-tlang-buy-in-possibly-fcp](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024361199)
    - concern: [needs-a-blog-post](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024360549)
  - "Compile UI tests as libraries by default" [compiler-team#842](https://github.com/rust-lang/compiler-team/issues/842) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Compile.20UI.20tests.20as.20libraries.20by.20default.20compiler-team.23842)) (last review activity: 4 months ago)
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: about 1 days ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
  - "Unify ui test inline error annotation style" [compiler-team#859](https://github.com/rust-lang/compiler-team/issues/859) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Unify.20ui.20test.20inline.20error.20annotation.20sty.E2.80.A6.20compiler-team.23859)) (last review activity: 3 months ago)
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864)) (last review activity: about 34 days ago)
  - "Add support for specifying split-debuginfo=unpacked output directory" [compiler-team#871](https://github.com/rust-lang/compiler-team/issues/871) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20support.20for.20specifying.20split-debuginf.E2.80.A6.20compiler-team.23871)) (last review activity: 2 months ago)
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: about 0 days ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
  - "Promote `armv7-unknown-linux-musleabihf` to tier 2 with host tools" [compiler-team#888](https://github.com/rust-lang/compiler-team/issues/888) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20.60armv7-unknown-linux-musleabihf.60.20.E2.80.A6.20compiler-team.23888)) (last review activity: about 1 days ago)
    - concern: [lack-of-maintainers](https://github.com/rust-lang/compiler-team/issues/888#issuecomment-3035366625)
- Pending FCP requests (check your boxes!)
  - merge: [Begin enforcing Tier 2 target maintainer requirements (compiler-team#896)](https://github.com/rust-lang/compiler-team/issues/896#issuecomment-3069374004)
    - @_**|116266** @_**|125250** @_**|116107** @_**|119031** @_**|248906** @_**|426609** @_**|116118** @_**|444933** @_**|353056**
    - no pending concerns
  - merge: [sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets (rust#123617)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2135121317)
    - no pending checkboxes
    - concerns: [stabilization-scope (by wesleywiser)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2192330122)
  - merge: [Fix backtraces with `-C panic=abort` on linux; emit unwind tables by default (rust#143613)](https://github.com/rust-lang/rust/pull/143613#issuecomment-3070266003)
    - @_**|116266** @_**|125250** @_**|116107** @_**|248906** @_**|426609** @_**|116122** @_**|116118** @_**|444933** @_**|353056**
    - no pending concerns
- Things in FCP (make sure you're good with it)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745))
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Make the UI test suite more amenable to multiple editions" [compiler-team#861](https://github.com/rust-lang/compiler-team/issues/861) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Run.20the.20UI.20test.20suite.20with.20multiple.20editi.E2.80.A6.20compiler-team.23861))
  - "Upgrade `*-linux-musl` targets to musl 1.2.5" [compiler-team#887](https://github.com/rust-lang/compiler-team/issues/887) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Upgrade.20.60.2A-linux-musl.60.20targets.20to.20musl.201.2E.E2.80.A6.20compiler-team.23887))
  - "Policy: Empower reviewers to reject burdensome PRs" [compiler-team#893](https://github.com/rust-lang/compiler-team/issues/893) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.3A.20Reject.20low-effort.20AI-generated.20PRs.20compiler-team.23893))
    - concern: [ai-should-still-be-mentioned-in-motivation](https://github.com/rust-lang/compiler-team/issues/893#issuecomment-3047208685)
    - concern: [resolve ai-should-still-be-mentioned-in-motivation](https://github.com/rust-lang/compiler-team/issues/893#issuecomment-3047209196)
    - concern: [wording-nits](https://github.com/rust-lang/compiler-team/issues/893#issuecomment-3047695459)
  - "Add `target_env = "macabi"` and `target_env = "sim"`" [rust#139451](https://github.com/rust-lang/rust/pull/139451)
- Accepted MCPs
  - "setup typos check in CI (for rust repo)" [compiler-team#817](https://github.com/rust-lang/compiler-team/issues/817) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/setup.20typos.20check.20in.20CI.20.28for.20rust.20repo.29.20compiler-team.23817))
  - "Add one more "late metadata"/"digest" file to rlib archives" [compiler-team#853](https://github.com/rust-lang/compiler-team/issues/853) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20one.20more.20.22late.20metadata.22.2F.22digest.22.20fil.E2.80.A6.20compiler-team.23853))
  - "Constrain process required for some user-facing changes to lower support tier targets" [compiler-team#884](https://github.com/rust-lang/compiler-team/issues/884) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Constrain.20process.20required.20for.20some.20user-.E2.80.A6.20compiler-team.23884))
  - "Expose `target_abi = "elfv{1,2}"` on `powerpc64-any-unixy-elfy` targets" [compiler-team#885](https://github.com/rust-lang/compiler-team/issues/885) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Expose.20.60target_abi.20.3D.20.22elfv.7B1.2C2.7D.22.60.20on.20.60pow.E2.80.A6.20compiler-team.23885))
  - "use separate build directory for rust-analyzer to use" [compiler-team#889](https://github.com/rust-lang/compiler-team/issues/889) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/use.20separate.20build.20directory.20for.20rust-ana.E2.80.A6.20compiler-team.23889))
  - "Create `rustc_target::spec::Target` from a Builder" [compiler-team#890](https://github.com/rust-lang/compiler-team/issues/890) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20.60rustc_target.3A.3Aspec.3A.3ATarget.60.20from.20.E2.80.A6.20compiler-team.23890))
  - "Run more tests for rustc_codegen_gcc in the CI" [compiler-team#891](https://github.com/rust-lang/compiler-team/issues/891) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Run.20more.20tests.20for.20rustc_codegen_gcc.20in.20t.E2.80.A6.20compiler-team.23891))
  - "Auto-create tracking issues for accepted MCPs" [compiler-team#892](https://github.com/rust-lang/compiler-team/issues/892) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Auto-create.20tracking.20issues.20for.20accepted.20.E2.80.A6.20compiler-team.23892))
- MCPs blocked on unresolved concerns
  - <Here group MCPs blocked on unresolved concerns>
- Finalized FCPs (disposition merge)
  - "Use lld by default on `x86_64-unknown-linux-gnu` stable" [rust#140525](https://github.com/rust-lang/rust/pull/140525)
- Other teams finalized FCPs
  - "Allow `#[must_use]` on associated types to warn on unused values in generic contexts" [rust#142590](https://github.com/rust-lang/rust/pull/142590)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Taint body on invalid call ABI" [rust#142983](https://github.com/rust-lang/rust/pull/142983)
  - Authored by compiler-errors
  - Voting [Zulip topic](#)
- :beta: "Reword mismatched-lifetime-syntaxes text based on feedback" [rust#143914](https://github.com/rust-lang/rust/pull/143914)
  - Authored by shepmaster
  - Voting [Zulip topic](#)
- :beta: "trait_sel: `MetaSized` always holds temporarily" [rust#144016](https://github.com/rust-lang/rust/pull/144016)
  - Authored by davidtwco
  - Voting [Zulip topic](#)
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

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [58 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [39 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 2 P-high, 0 P-medium, 4 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 1 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 31 P-high, 100 P-medium, 23 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Regression: `align` is ambiguous" [rust#143834](https://github.com/rust-lang/rust/issues/143834)

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "regression: ICE compiler/rustc_ty_utils/src/abi.rs:485:62, unwrapping None" [rust#143836](https://github.com/rust-lang/rust/issues/143836)
- "where bounds regression in beta+nightly" [rust#143992](https://github.com/rust-lang/rust/issues/143992)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs](https://github.com/rust-lang/rustc-perf/tree/master/triage/2025)

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Regression: `align` is ambiguous" [rust#143834](https://github.com/rust-lang/rust/issues/143834)

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

Next meetings' agenda draft: [hackmd link](#)
