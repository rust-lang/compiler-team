---
tags: weekly, rustc
type: docs
note_id: 1YWKt2dyRfGFC0O_kKv9KA
---

# T-compiler Meeting Agenda 2025-07-24

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- WG-async design meeting <time:2025-07-24T19:00:00+02:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Tier 3 target proposal: riscv64a23-unknown-linux-gnu" [compiler-team#894](https://github.com/rust-lang/compiler-team/issues/894) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Tier.203.20target.20proposal.3A.20riscv64rva23-unkn.E2.80.A6.20compiler-team.23894))
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903))
  - "Experiment with replacing specialization in libcore with downcasting" [compiler-team#904](https://github.com/rust-lang/compiler-team/issues/904) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Experiment.20with.20replacing.20specialization.20.E2.80.A6.20compiler-team.23904))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Policy change around adding new unstable flags" [compiler-team#787](https://github.com/rust-lang/compiler-team/issues/787) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.20change.20around.20adding.20new.20unstable.20.E2.80.A6.20compiler-team.23787)) (last review activity: 9 months ago)
  - "Compile UI tests as libraries by default" [compiler-team#842](https://github.com/rust-lang/compiler-team/issues/842) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Compile.20UI.20tests.20as.20libraries.20by.20default.20compiler-team.23842)) (last review activity: 4 months ago)
  - "Unify ui test inline error annotation style" [compiler-team#859](https://github.com/rust-lang/compiler-team/issues/859) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Unify.20ui.20test.20inline.20error.20annotation.20sty.E2.80.A6.20compiler-team.23859)) (last review activity: 3 months ago)
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864)) (last review activity: about 41 days ago)
  - "Add support for specifying split-debuginfo=unpacked output directory" [compiler-team#871](https://github.com/rust-lang/compiler-team/issues/871) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20support.20for.20specifying.20split-debuginf.E2.80.A6.20compiler-team.23871)) (last review activity: 2 months ago)
- Pending FCP requests (check your boxes!)
  - merge: [Begin enforcing Tier 2 target maintainer requirements (compiler-team#896)](https://github.com/rust-lang/compiler-team/issues/896#issuecomment-3069374004)
    - @_**|116266** @_**|125250** @_**|116107** @_**|119031** @_**|248906** @_**|426609** @_**|444933** @_**|353056**
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
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745))
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Make the UI test suite more amenable to multiple editions" [compiler-team#861](https://github.com/rust-lang/compiler-team/issues/861) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Run.20the.20UI.20test.20suite.20with.20multiple.20editi.E2.80.A6.20compiler-team.23861))
  - "Upgrade `*-linux-musl` targets to musl 1.2.5" [compiler-team#887](https://github.com/rust-lang/compiler-team/issues/887) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Upgrade.20.60.2A-linux-musl.60.20targets.20to.20musl.201.2E.E2.80.A6.20compiler-team.23887))
  - "Policy: Empower reviewers to reject burdensome PRs" [compiler-team#893](https://github.com/rust-lang/compiler-team/issues/893) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.3A.20Reject.20low-effort.20AI-generated.20PRs.20compiler-team.23893))
    - concern: [resolve ai-should-still-be-mentioned-in-motivation](https://github.com/rust-lang/compiler-team/issues/893#issuecomment-3047209196)
    - concern: [wording-nits](https://github.com/rust-lang/compiler-team/issues/893#issuecomment-3047695459)
    - concern: [ai-should-still-be-mentioned-in-motivation](https://github.com/rust-lang/compiler-team/issues/893#issuecomment-3047208685)
  - "Flag `-Zindirect-branch-cs-prefix` (retpoline mitigation)" [compiler-team#899](https://github.com/rust-lang/compiler-team/issues/899) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Flag.20.60-Zindirect-branch-cs-prefix.60.20.28retpo.E2.80.A6.20compiler-team.23899))
  - "Add a tidy check to prevent adding new test files *directly* under `tests/ui/`" [compiler-team#902](https://github.com/rust-lang/compiler-team/issues/902) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20tidy.20check.20to.20prevent.20adding.20new.20te.E2.80.A6.20compiler-team.23902))
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
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: about 36 days ago)
    - concern: [path-to-stabilization](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-2980212568)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: about 19 days ago)
    - concern: [needs-a-sufficiently-long-deprecation-timeline](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024361071)
    - concern: [broad-change-needs-tlang-buy-in-possibly-fcp](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024361199)
    - concern: [needs-a-blog-post](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024360549)
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: about 8 days ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: about 6 days ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
  - "Promote `armv7-unknown-linux-musleabihf` to tier 2 with host tools" [compiler-team#888](https://github.com/rust-lang/compiler-team/issues/888) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20.60armv7-unknown-linux-musleabihf.60.20.E2.80.A6.20compiler-team.23888)) (last review activity: about 7 days ago)
    - concern: [lack-of-maintainers](https://github.com/rust-lang/compiler-team/issues/888#issuecomment-3035366625)
- Finalized FCPs (disposition merge)
  - "Add `target_env = "macabi"` and `target_env = "sim"`" [rust#139451](https://github.com/rust-lang/rust/pull/139451)
  - "Use lld by default on `x86_64-unknown-linux-gnu` stable" [rust#140525](https://github.com/rust-lang/rust/pull/140525)
- Other teams finalized FCPs
  - "Allow `#[must_use]` on associated types to warn on unused values in generic contexts" [rust#142590](https://github.com/rust-lang/rust/pull/142590)
  - "Stabilize `const_float_round_methods`" [rust#143604](https://github.com/rust-lang/rust/pull/143604)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Reword mismatched-lifetime-syntaxes text based on feedback" [rust#143914](https://github.com/rust-lang/rust/pull/143914)
  - Authored by shepmaster
  - Clarifies the message when the lint `mismatched_lifetime_syntaxes` triggers, users reported it was confusing.
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23143914.3A.20beta-nominated/near/529098226), positive
- :beta: "Mitigate `#[align]` name resolution ambiguity regression with a rename" [rust#144080](https://github.com/rust-lang/rust/pull/144080)
  - Authored by jieyouxu
  - Fixes P-critical #143834 a regression renaming an attribute to something unambiguous
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23144080.3A.20beta-nominated/near/529749542), positive
- :beta: "Fix `-Ctarget-feature`s getting ignored after `crt-static`" [rust#144143](https://github.com/rust-lang/rust/pull/144143)
  - Authored by Gelbpunkt
  - Fixes P-high #144203, `-Ctarget-features` were ignored after `crt-static`
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23144143.3A.20beta-nominated/near/529509534), positive
- No stable nominations for `T-compiler` this time.

[T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [53 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [34 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 3 P-high, 0 P-medium, 3 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 1 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 26 P-high, 100 P-medium, 23 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Regression: `align` is ambiguous" [rust#143834](https://github.com/rust-lang/rust/issues/143834)
  - This is fixed by #144080

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "regression: ICE compiler/rustc_ty_utils/src/abi.rs:485:62, unwrapping None" [rust#143836](https://github.com/rust-lang/rust/issues/143836)
  - Should be closed by #142983 (IIUC, as per [comment](https://github.com/rust-lang/rust/issues/143836#issuecomment-3065997831))
- "where bounds regression in beta+nightly" [rust#143992](https://github.com/rust-lang/rust/issues/143992)
  - Fixed by #144016 (beta-backport accepted)
- "`-Ctarget-feature`s get ignored after `crt-static`" [rust#144203](https://github.com/rust-lang/rust/issues/144203)
  - Fixed by #144143

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2025-07-22](https://github.com/rust-lang/rustc-perf/blob/master/triage/2025/2025-07-22.md)

Fairly busy week with improvements outweighing regressions. Most of the regressions were considered acceptable given the circumstances (such as landing a long awaited feature). By far the biggest win comes from being a bit smarter about hashing certain information inside of `DefPathHash`. Since hashing happens quite a lot in the compiler's query system, optimizing when hashing happens can have large performance impacts.

Triage done by **@rylev**.
Revision range: [a9fb6103..3f9f20f7](https://perf.rust-lang.org/?start=a9fb6103b05c6ad6eee6bed4c0bb5a2e8e1024c6&end=3f9f20f71dd945fe7d044e274094a53c90788269&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.1%, 0.9%]   | 47    |
| Regressions (secondary)  | 0.8%  | [0.1%, 2.7%]   | 69    |
| Improvements (primary)   | -0.8% | [-4.1%, -0.2%] | 122   |
| Improvements (secondary) | -0.7% | [-2.5%, -0.0%] | 143   |
| All  (primary)           | -0.5% | [-4.1%, 0.9%]  | 169   |


3 Regressions, 8 Improvements, 8 Mixed; 8 of them in rollups
35 artifact comparisons made in total

#### Regressions

Miri subtree update [#144019](https://github.com/rust-lang/rust/pull/144019) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5795086bdfe7ed988aa53a110bd0692c33d8755b&end=fd2eb391d032181459773f3498c17b198513e0d0&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | -    | -            | 0     |
| Regressions (secondary)  | 0.3% | [0.2%, 0.5%] | 12    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | -    | -            | 0     |
- Noise


Implement unstable trait impl [#140399](https://github.com/rust-lang/rust/pull/140399) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=fd2eb391d032181459773f3498c17b198513e0d0&end=014bd8290f084c714995205a9116e6c035419ae6&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 0.8%]   | 65    |
| Regressions (secondary)  | 0.4%  | [0.1%, 1.3%]   | 60    |
| Improvements (primary)   | -0.2% | [-0.3%, -0.2%] | 2     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | 0.3%  | [-0.3%, 0.8%]  | 67    |
- "The perf regressions were deemed to be acceptable for the time being, to avoid delaying this feature."


tests: Require `run-fail` ui tests to have an exit code (`SIGABRT` not ok) [#143002](https://github.com/rust-lang/rust/pull/143002) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ee3a0783df39cb11c5706e38805eb9258b4fad79&end=6707bf0f59485cf054ac1095725df43220e4be20&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.3%, 0.3%] | 1     |
| Regressions (secondary)  | 0.5% | [0.4%, 0.8%] | 6     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.3% | [0.3%, 0.3%] | 1     |
- Noise


#### Improvements

Rollup of 12 pull requests [#144028](https://github.com/rust-lang/rust/pull/144028) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1c6de215099bbe33668de762f9591187f6c25eef&end=5795086bdfe7ed988aa53a110bd0692c33d8755b&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.3%  | [0.3%, 0.3%]   | 1     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.2%] | 13    |
| All  (primary)                 | -     | -              | 0     |


Rollup of 15 pull requests [#144044](https://github.com/rust-lang/rust/pull/144044) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=014bd8290f084c714995205a9116e6c035419ae6&end=f8f6997469237299c1d60814c7b9828602a1f8e4&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.5%]   | 3     |
| Improvements (primary)   | -0.7% | [-1.6%, -0.2%] | 21    |
| Improvements (secondary) | -0.4% | [-1.5%, -0.2%] | 27    |
| All  (primary)                 | -0.7% | [-1.6%, -0.2%] | 21    |


Only inherit local hash for paths [#142903](https://github.com/rust-lang/rust/pull/142903) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f8f6997469237299c1d60814c7b9828602a1f8e4&end=8c12d76304fcceaeaad0d67209e5727e94f5f2b8&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-1.0%, -0.2%] | 140   |
| Improvements (secondary) | -0.5% | [-1.2%, -0.1%] | 105   |
| All  (primary)                 | -0.4% | [-1.0%, -0.2%] | 140   |


Rollup of 11 pull requests [#144130](https://github.com/rust-lang/rust/pull/144130) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6caa224a242d4c7b06c317969c51862815a4454b&end=82310651b93a594a3fd69015e1562186a080d94c&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.3%] | 3     |
| Improvements (secondary) | -0.3% | [-0.4%, -0.2%] | 6     |
| All  (primary)                 | -0.3% | [-0.4%, -0.3%] | 3     |


Rollup of 5 pull requests [#144181](https://github.com/rust-lang/rust/pull/144181) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0d9592026226f5a667a0da60c13b955e0b486a07&end=ee3a0783df39cb11c5706e38805eb9258b4fad79&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.3%, -0.1%] | 3     |
| Improvements (secondary) | -0.5% | [-0.9%, -0.2%] | 7     |
| All  (primary)                 | -0.2% | [-0.3%, -0.1%] | 3     |


Weekly `cargo update` [#143861](https://github.com/rust-lang/rust/pull/143861) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0864097cd31ee30f5081ba588a5c9820c2c6fc71&end=9982d6462bedf1e793f7b2dbd655a4e57cdf67d4&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 3     |
| Improvements (secondary) | -0.1% | [-0.1%, -0.1%] | 1     |
| All  (primary)                 | -0.2% | [-0.2%, -0.2%] | 3     |


Consider param-env for sizedness fast path [#143309](https://github.com/rust-lang/rust/pull/143309) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9982d6462bedf1e793f7b2dbd655a4e57cdf67d4&end=460259d14de0274b97b8801e08cb2fe5f16fdac5&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.3%, 0.3%]   | 2     |
| Regressions (secondary)  | 0.1%  | [0.1%, 0.1%]   | 1     |
| Improvements (primary)   | -1.3% | [-2.9%, -0.3%] | 16    |
| Improvements (secondary) | -1.1% | [-2.9%, -0.1%] | 19    |
| All  (primary)                 | -1.1% | [-2.9%, 0.3%]  | 18    |


Rollup of 8 pull requests [#144238](https://github.com/rust-lang/rust/pull/144238) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e05ab47e6c418fb2b9faa2eae9a7e70c65c98eaa&end=67819923ac8ea353aaa775303f4c3aacbf41d010&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.3%] | 6     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -0.3% | [-0.4%, -0.3%] | 6     |


#### Mixed

`std::vec`: Add UB check for `set_len`, `from_raw_parts_in`, and etc. [#143877](https://github.com/rust-lang/rust/pull/143877) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e27f16a499074ba9a87f7f7641d9f64c572863bc&end=3014e79f9c8d5510ea7b3a3b70d171d0948b1e96&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.3%, 0.9%]   | 4     |
| Regressions (secondary)  | 0.4%  | [0.3%, 0.6%]   | 2     |
| Improvements (primary)   | -1.1% | [-2.1%, -0.4%] | 3     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -0.1% | [-2.1%, 0.9%]  | 7     |
- Perf is acceptable for being able to catch UB


resolve: Merge `NameBindingKind::Module` into `NameBindingKind::Res` [#143458](https://github.com/rust-lang/rust/pull/143458) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f21fbac535ab2c3bc50db20547f4d48477357103&end=1c6de215099bbe33668de762f9591187f6c25eef&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 1     |
| Regressions (secondary)  | 0.7%  | [0.7%, 0.8%]   | 3     |
| Improvements (primary)   | -0.5% | [-2.1%, -0.1%] | 30    |
| Improvements (secondary) | -0.4% | [-1.4%, -0.0%] | 65    |
| All  (primary)                 | -0.5% | [-2.1%, 0.2%]  | 31    |
- Improvements vastly outweigh regressions (which might just be noise)


Rollup of 11 pull requests [#144058](https://github.com/rust-lang/rust/pull/144058) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8c12d76304fcceaeaad0d67209e5727e94f5f2b8&end=bf5e6cc7a7a7eb03e3ed9b875d76530eddd47d5f&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.4% | [-0.6%, -0.2%] | 15    |
| All  (primary)                 | 0.2%  | [0.2%, 0.2%]   | 1     |
- The only regression seems like it might just be returning to a previous baseline so it's not worth investigating.


`-Zhigher-ranked-assumptions`: Consider WF of coroutine witness when proving outlives assumptions [#143545](https://github.com/rust-lang/rust/pull/143545) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e4662966273ed58b51f9ff8d682accc202aa1210&end=1aa5b2246560ce85b42fa8b33e5927c5de3fa389&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.1%, 0.5%]   | 29    |
| Regressions (secondary)  | 0.4%  | [0.0%, 0.6%]   | 50    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.1% | [-0.1%, -0.1%] | 1     |
| All  (primary)                 | 0.3%  | [0.1%, 0.5%]   | 29    |
- Asked the author and reviewer for thoughts on performance since the regressions were certainly not unexpected, but the PR was merged anyway.


Rollup of 11 pull requests [#144109](https://github.com/rust-lang/rust/pull/144109) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1aa5b2246560ce85b42fa8b33e5927c5de3fa389&end=6c0a912e5a45904cf537f34876b16ae71d899f86&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.4%, 0.4%]   | 3     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.5%]   | 8     |
| Improvements (primary)   | -1.5% | [-1.5%, -1.5%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -0.1% | [-1.5%, 0.4%]  | 4     |
-  The relative size of the regressions are fairly small, I don't think it's worth the investigation.


Split-up stability_index query [#143845](https://github.com/rust-lang/rust/pull/143845) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=82310651b93a594a3fd69015e1562186a080d94c&end=8f08b3a32478b8d0507732800ecb548a76e0fd0c&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.4%]   | 29    |
| Regressions (secondary)  | 2.0%  | [0.1%, 3.3%]   | 15    |
| Improvements (primary)   | -0.4% | [-0.6%, -0.2%] | 23    |
| Improvements (secondary) | -0.4% | [-0.5%, -0.2%] | 14    |
| All  (primary)                 | 0.0%  | [-0.6%, 0.4%]  | 52    |
- As [stated here](https://github.com/rust-lang/rust/pull/143845#pullrequestreview-3024720852), the perf regressions were considered acceptable.


Rollup of 9 pull requests [#144145](https://github.com/rust-lang/rust/pull/144145) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ebd8557637b33cc09b6ee8273f3154d5d3af6a15&end=1079c5edb2bd837e5c4cf8c7db2892db359a3862&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 1.4%  | [0.5%, 2.8%]   | 9     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.1% | [-0.3%, -0.0%] | 2     |
| All  (primary)                 | -     | -              | 0     |


Simplify discriminant codegen for niche-encoded variants which don't wrap across an integer boundary [#143784](https://github.com/rust-lang/rust/pull/143784) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1079c5edb2bd837e5c4cf8c7db2892db359a3862&end=83825dd277503edf5d7eda6be8b5fb9896f343f5&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.4%, 0.8%]   | 4     |
| Regressions (secondary)  | 1.6%  | [1.6%, 1.6%]   | 1     |
| Improvements (primary)   | -0.4% | [-1.3%, -0.2%] | 16    |
| Improvements (secondary) | -0.5% | [-1.5%, -0.2%] | 20    |
| All  (primary)                 | -0.2% | [-1.3%, 0.8%]  | 20    |
- [Perf was considered acceptable](https://github.com/rust-lang/rust/pull/143784#issuecomment-3092568339).


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "feat: add `succinct-zkvm` os and target" [rust#138463](https://github.com/rust-lang/rust/pull/138463) (last review activity: 4 months ago)
  - cc @**Wesley Wiser**
- "[Coverage][MCDC] Do not initialize mcdc parameters for instances containing no mcdc statements" [rust#129989](https://github.com/rust-lang/rust/pull/129989) (last review activity: 3 months ago)
  - cc @**Zalathar** (but the comments may indicate this pull request needs a discussion
- "Do not run per-module late lints if they can be all skipped" [rust#139597](https://github.com/rust-lang/rust/pull/139597) (last review activity: 3 months ago)
  - cc @**Boxy**
- "Add FileCheck annotations to mir-opt/copy-prop" [rust#135099](https://github.com/rust-lang/rust/pull/135099) (last review activity: 3 months ago)
  - cc: @**Wesley Wiser** (pending [question](https://github.com/rust-lang/rust/pull/135099#discussion_r2051456474)?)
- "Allow `&raw [mut | const]` for union field in safe" [rust#141469](https://github.com/rust-lang/rust/pull/141469) (last review activity: about 58 days ago)
  - cc @**Michael (compiler-errors) Goulet**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/gl0u-X2ZSVa2AWK5hZ3p0A)
