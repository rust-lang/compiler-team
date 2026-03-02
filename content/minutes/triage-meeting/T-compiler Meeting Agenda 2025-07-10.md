---
tags: weekly, rustc
type: docs
note_id: XCRrBw9CTCyurvEHtb7WnQ
---

# T-compiler Meeting Agenda 2025-07-10

## Announcements

- Hey @*T-compiler/meeting*! Do we want to schedule a P-high issue review meeting?
  - List of [past reviews](https://github.com/rust-lang/compiler-team/issues/900)
  - Last one was Q3/2024: [P-high review for 2024 Q3 · #795](https://github.com/rust-lang/compiler-team/issues/795)
  - Possible slot? <time:2025-07-18T14:00:00+02:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- WG-async design meeting <time:2025-07-10T19:00:00+02:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Tier 3 target proposal: riscv64a23-unknown-linux-gnu" [compiler-team#894](https://github.com/rust-lang/compiler-team/issues/894) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Tier.203.20target.20proposal.3A.20riscv64rva23-unkn.E2.80.A6.20compiler-team.23894))
  - "Flag `-Zindirect-branch-cs-prefix` (retpoline mitigation)" [compiler-team#899](https://github.com/rust-lang/compiler-team/issues/899) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Flag.20.60-Zindirect-branch-cs-prefix.60.20.28retpo.E2.80.A6.20compiler-team.23899))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: 9 months ago)
  - "Policy change around adding new unstable flags" [compiler-team#787](https://github.com/rust-lang/compiler-team/issues/787) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.20change.20around.20adding.20new.20unstable.20.E2.80.A6.20compiler-team.23787)) (last review activity: 8 months ago)
  - "Compile UI tests as libraries by default" [compiler-team#842](https://github.com/rust-lang/compiler-team/issues/842) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Compile.20UI.20tests.20as.20libraries.20by.20default.20compiler-team.23842)) (last review activity: 4 months ago)
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: 3 months ago)
  - "Unify ui test inline error annotation style" [compiler-team#859](https://github.com/rust-lang/compiler-team/issues/859) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Unify.20ui.20test.20inline.20error.20annotation.20sty.E2.80.A6.20compiler-team.23859)) (last review activity: 2 months ago)
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864)) (last review activity: about 27 days ago)
  - "Add support for specifying split-debuginfo=unpacked output directory" [compiler-team#871](https://github.com/rust-lang/compiler-team/issues/871) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20support.20for.20specifying.20split-debuginf.E2.80.A6.20compiler-team.23871)) (last review activity: 2 months ago)
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: about 41 days ago)
  - "Upgrade `*-linux-musl` targets to musl 1.2.5" [compiler-team#887](https://github.com/rust-lang/compiler-team/issues/887) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Upgrade.20.60.2A-linux-musl.60.20targets.20to.20musl.201.2E.E2.80.A6.20compiler-team.23887)) (last review activity: about 13 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets (rust#123617)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2135121317)
    - no pending checkboxes
    - concerns: [stabilization-scope (by wesleywiser)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2192330122)
- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Make the UI test suite more amenable to multiple editions" [compiler-team#861](https://github.com/rust-lang/compiler-team/issues/861) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Run.20the.20UI.20test.20suite.20with.20multiple.20editi.E2.80.A6.20compiler-team.23861))
    - concern: [edition-directive-meaning](https://github.com/rust-lang/compiler-team/issues/861#issuecomment-2796811016)
  - "Policy: Empower reviewers to reject burdensome PRs" [compiler-team#893](https://github.com/rust-lang/compiler-team/issues/893) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.3A.20Reject.20low-effort.20AI-generated.20PRs.20compiler-team.23893))
    - concern: [ai-should-still-be-mentioned-in-motivation](https://github.com/rust-lang/compiler-team/issues/893#issuecomment-3047208685)
    - concern: [wording-nits](https://github.com/rust-lang/compiler-team/issues/893#issuecomment-3047695459)
    - concern: [resolve ai-should-still-be-mentioned-in-motivation](https://github.com/rust-lang/compiler-team/issues/893#issuecomment-3047209196)
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
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: about 22 days ago)
    - concern: [path-to-stabilization](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-2980212568)
  - "Begin enforcing Tier 2 target maintainer requirements" [compiler-team#896](https://github.com/rust-lang/compiler-team/issues/896) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Begin.20enforcing.20Tier.202.20target.20maintainer.20.E2.80.A6.20compiler-team.23896))
    - concern: [determine-grace-period](https://github.com/rust-lang/compiler-team/issues/896#issuecomment-3044500109)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: about 5 days ago)
    - concern: [needs-a-sufficiently-long-deprecation-timeline](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024361071)
    - concern: [needs-a-blog-post](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024360549)
    - concern: [broad-change-needs-tlang-buy-in-possibly-fcp](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024361199)
  - "Promote `armv7-unknown-linux-musleabihf` to tier 2 with host tools" [compiler-team#888](https://github.com/rust-lang/compiler-team/issues/888) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20.60armv7-unknown-linux-musleabihf.60.20.E2.80.A6.20compiler-team.23888)) (last review activity: about 5 days ago)
    - concern: [lack-of-maintainers](https://github.com/rust-lang/compiler-team/issues/888#issuecomment-3035366625)
- Finalized FCPs (disposition merge)
  - "Use lld by default on `x86_64-unknown-linux-gnu` stable" [rust#140525](https://github.com/rust-lang/rust/pull/140525)
- Other teams finalized FCPs
  - "Allow `#[must_use]` on associated types to warn on unused values in generic contexts" [rust#142590](https://github.com/rust-lang/rust/pull/142590)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Update LLVM submodule" [rust#143126](https://github.com/rust-lang/rust/pull/143126)
  - Authored by @**dianqk** (amazing work!)
  - Fixes a slew of micompilation issues: #140686, #141913, #142752, #143399
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23143126.3A.20beta-nominated/near/527329924), positive unanimously
- :beta: "Do not unify borrowed locals in CopyProp." [rust#143509](https://github.com/rust-lang/rust/pull/143509)
  - Authored by cjgillot
  - Fixes #143491 (a probably p-high unsoundness)
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23143509.3A.20beta-nominated/near/527320296), positive unanimously
- No stable nominations for `T-compiler` this time.

[T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Emit warning when there is no space between `-o` and arg" [rust#143719](https://github.com/rust-lang/rust/pull/143719)
  - Discussion at this [Zulip thread]([#t-compiler > Warn on &#96;-ofilename&#96; without space](#narrow/channel/131828-t-compiler/topic/Warn.20on.20.60-ofilename.60.20without.20space) )
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [56 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [38 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 0 P-medium, 3 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 32 P-high, 100 P-medium, 23 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

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

> [triage logs for 2025-07-07](https://github.com/rust-lang/rustc-perf/blob/master/triage/2025/2025-07-07.md)

Busy week. Results are dominated by changes that trade some wins for some losses in small incremental scenarios. We also had a lot of noise and spurious small changes on various PRs. Some regressions come from perf related work where we expect to get some wins back later.

Triage done by **@panstromek**.
Revision range: [ad3b7257..0d11be5a](https://perf.rust-lang.org/?start=ad3b7257615c28aaf8212a189ec032b8af75de51&end=0d11be5aabe0cd49609fff5fce57c4691a22fe55&absolute=false&stat=instructions%3Au)

**Summary**:

Note: We switched to a new benchmark machine at the begining of the period. We show summary based on slightly adjusted range [6988a8fe..8df4a58a](https://perf.rust-lang.org/?start=6988a8fea774a2a20ebebddb7dbf15dd6ef594f9&end=8df4a58ac47b778b093652d6190a6f9d54638774&absolute=false&stat=instructions%3Au) to avoid misleading comparisons from different machines.

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 1.1%  | [0.2%, 4.3%]    | 128   |
| Regressions (secondary)  | 1.0%  | [0.2%, 3.9%]    | 84    |
| Improvements (primary)   | -3.5% | [-7.2%, -0.2%]  | 48    |
| Improvements (secondary) | -5.1% | [-42.6%, -0.2%] | 68    |
| All  (primary)           | -0.2% | [-7.2%, 4.3%]   | 176   |

3 Regressions, 3 Improvements, 11 Mixed; 6 of them in rollups
44 artifact comparisons made in total

#### Regressions

Rollup of 8 pull requests [#143267](https://github.com/rust-lang/rust/pull/143267) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6988a8fea774a2a20ebebddb7dbf15dd6ef594f9&end=f46ce66fcc3d6058f90ac5bf0930f940f1e7b0ca&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.2% | [0.2%, 0.2%] | 1     |
| Regressions (secondary)  | 0.3% | [0.1%, 1.1%] | 18    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.2% | [0.2%, 0.2%] | 1     |

The regressed benchmarks are small and fairly aritifical. Some of the results look like noise and returned to previous state. I don't think this is worth investigating more.

Add new self-profiling event to cheaply aggregate query cache hit counts [#142978](https://github.com/rust-lang/rust/pull/142978) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f51c9870bab634afb9e7a262b6ca7816bb9e940d&end=b94bd12401d26ccf1c3b04ceb4e950b0ff7c8d29&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.1%, 0.4%] | 17    |
| Regressions (secondary)  | 0.4% | [0.3%, 0.5%] | 7     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.3% | [0.1%, 0.4%] | 17    |

Seems like overhead of the measurement. Pinged the author, but seems like we can't do much about that.

Do not unify borrowed locals in CopyProp. [#143509](https://github.com/rust-lang/rust/pull/143509) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=de031bbcb161b0b7fc0eb16f77b02ce9fbdf4c9e&end=a84ab0ce6c4557a2f01a3a6c3fdb0f92098db78d&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.1%, 0.3%]   | 21    |
| Regressions (secondary)  | 0.4%  | [0.1%, 1.1%]   | 38    |
| Improvements (primary)   | -0.4% | [-0.4%, -0.4%] | 2     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | 0.1%  | [-0.4%, 0.3%]  | 23    |

Soundness fix in an mir-opt pass. Posted a comment to make sure these are expected.

#### Improvements

Weekly `cargo update` [#142857](https://github.com/rust-lang/rust/pull/142857) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a413f77285c0ab551cf58db729e054f43150dd50&end=48aee7e383503c234cce4206dee9f19f57edb617&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -2.9% | [-2.9%, -2.9%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -2.9% | [-2.9%, -2.9%] | 1     |


Allow `enum` and `union` literals to also create SSA values [#138759](https://github.com/rust-lang/rust/pull/138759) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d98a5da813da67eb189387b8ccfb73cf481275d8&end=733b47ea4b1b86216f14ef56e49440c33933f230&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.2%] | 6     |
| Improvements (secondary) | -0.3% | [-0.5%, -0.3%] | 3     |
| All  (primary)                 | -0.3% | [-0.4%, -0.2%] | 6     |


Canonicalize input ty/ct infer/placeholder in the root universe [#142732](https://github.com/rust-lang/rust/pull/142732) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=175e04331be56c5b4bdf77478434b1a5e0556770&end=5adb489a8034f7b56b29f3b28af0813c866f679c&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.3%  | [0.3%, 0.3%]   | 1     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.0% | [-1.8%, -0.3%] | 13    |
| All  (primary)                 | -     | -              | 0     |


#### Mixed

Introduce `ByteSymbol` [#141875](https://github.com/rust-lang/rust/pull/141875) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=fdad98d7463eebcdca94716ec3036c38a8d66f50&end=6988a8fea774a2a20ebebddb7dbf15dd6ef594f9&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 1.7%  | [1.4%, 2.1%]   | 5     |
| Improvements (primary)   | -1.5% | [-6.4%, -0.2%] | 264   |
| Improvements (secondary) | -1.9% | [-6.1%, -0.3%] | 298   |
| All  (primary)                 | -1.5% | [-6.4%, -0.2%] | 264   |

First PR benchmarked on new machine, these changes are not real as they compare results from different machines. Pre-merge results are much less significant.

Start moving wf checking away from HIR [#142030](https://github.com/rust-lang/rust/pull/142030) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=076a0a26fd6f4c445647a33d6daaac56f732ac05&end=4e973370053a5fe87ee96d43c506623e9bd1eb9d&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.4%  | [0.3%, 0.6%]   | 3     |
| Improvements (primary)   | -0.4% | [-0.4%, -0.4%] | 2     |
| Improvements (secondary) | -0.5% | [-1.1%, -0.3%] | 8     |
| All  (primary)                 | -0.4% | [-0.4%, -0.4%] | 2     |

Marked as triaged by author with comment: Improvements outweigh the regressions. And measured time is improved on the only benchmark that regressed instructions.

Rollup of 11 pull requests [#143338](https://github.com/rust-lang/rust/pull/143338) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6677875279b560442a07a08d5119b4cd6b3c5593&end=25face9808491588e59b6d7844f2185b09eef479&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.3%, 0.4%]   | 2     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.4%]   | 5     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.1% | [-0.1%, -0.1%] | 1     |
| All  (primary)                 | 0.4%  | [0.3%, 0.4%]   | 2     |

Most of the regressions are probably safe to ignore (small, secondary or noise). The biggest one is in cargo, where the regression is in LLVM, which indicates something probably changed in relation to optmizations or codegen scheduling. Most of the code changes here seem unrelated, though. I suspect it could be one of the standard library changes in first three PRs.

This seems to have returned back to previous state with a little improvement on top in https://github.com/rust-lang/rust/pull/143509, detailed results show inverse numbers on the same LLVM-related queries, but since that PR changed mir optimizations, it probably has some effect on that, too.

Rollup of 6 pull requests [#143363](https://github.com/rust-lang/rust/pull/143363) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9e64506923cb0f18c2bb2b934edecff525774acc&end=a413f77285c0ab551cf58db729e054f43150dd50&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 3.0%  | [3.0%, 3.0%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.5%, -0.2%] | 11    |
| Improvements (secondary) | -0.4% | [-1.1%, -0.2%] | 14    |
| All  (primary)                 | -0.0% | [-0.5%, 3.0%]  | 12    |

Already triaged by **@lqd**: The usual clap-derive noise, and it returned to normal on the next merge.

Rollup of 5 pull requests [#143390](https://github.com/rust-lang/rust/pull/143390) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=48aee7e383503c234cce4206dee9f19f57edb617&end=da58c051315268a197ce280f6ba07bbd03c66535&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 3.0%  | [3.0%, 3.0%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.7% | [-1.2%, -0.2%] | 8     |
| All  (primary)                 | 3.0%  | [3.0%, 3.0%]   | 1     |

Triaged by **@Kobzol**: `clap_derive` bimodal noise.

MIR inliner maintains unused var_debug_info [#142890](https://github.com/rust-lang/rust/pull/142890) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=da58c051315268a197ce280f6ba07bbd03c66535&end=837c5dd7de03aa97190593aef4e70d53e1bb574b&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.8%  | [1.8%, 1.8%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -2.9% | [-2.9%, -2.9%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -0.6% | [-2.9%, 1.8%]  | 2     |

`clap_derive` improvement is bimodal noise. `ripgrep` regression doesn't make sense to me. We either do less work or the same amount of work here (not sure which debuginfo option we use for this benchmark). Wall time has no relevant changes, though, so I assume it's spurious.

Avoid depending on forever-red DepNode when encoding metadata. [#143247](https://github.com/rust-lang/rust/pull/143247) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1b61d43bdbf875183b1f436302d62ff93f9a6bba&end=556d20a834126d2d0ac20743b9792b8474d6d03c&stat=instructions:u)

| (instructions:u)                   | mean   | range            | count |
|:----------------------------------:|:------:|:----------------:|:-----:|
| Regressions (primary)    | 0.6%   | [0.2%, 2.0%]     | 61    |
| Regressions (secondary)  | 1.1%   | [0.2%, 2.1%]     | 21    |
| Improvements (primary)   | -      | -                | 0     |
| Improvements (secondary) | -25.5% | [-42.6%, -16.4%] | 6     |
| All  (primary)                 | 0.6%   | [0.2%, 2.0%]     | 61    |

Part of recent metadata related perf work. Regressions are expected and will be investigated in a followup.

Make metadata a workproduct and reuse it [#114669](https://github.com/rust-lang/rust/pull/114669) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0c4fa2690de945f062668acfc36b3f8cfbd013e2&end=e3843659e9f65f589d184d1221ac6149d5fa07b5&stat=instructions:u)

| (instructions:u)                   | mean  | range           | count |
|:----------------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 1.0%  | [0.2%, 2.2%]    | 76    |
| Regressions (secondary)  | 0.8%  | [0.3%, 1.7%]    | 23    |
| Improvements (primary)   | -4.3% | [-7.5%, -1.1%]  | 45    |
| Improvements (secondary) | -4.9% | [-11.6%, -0.5%] | 36    |
| All  (primary)                 | -1.0% | [-7.5%, 2.2%]   | 121   |

Regressions outweigh improvements. Note that lot of the regressions are on very small benchmarks, so the negative effects are somewhat exaggerated. Based on PR description, this change also targets worspace use case that is not represented well in our benchmarks.

Remove `Symbol` from `Named` variant of `BoundRegionKind`/`LateParamRegionKind` [#139598](https://github.com/rust-lang/rust/pull/139598) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=733b47ea4b1b86216f14ef56e49440c33933f230&end=f0b67dd97d74610ee4185cf01c775a563c2017a2&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.1%, 3.2%]   | 13    |
| Regressions (secondary)  | 0.4%  | [0.1%, 0.6%]   | 23    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.4% | [-0.5%, -0.1%] | 7     |
| All  (primary)                 | 0.5%  | [0.1%, 3.2%]   | 13    |

Pre merge results don't match post merge results. Most regressions are in doc benchmarks, impact seems quite low. I left a comment asking for next steps.

Rollup of 6 pull requests [#143507](https://github.com/rust-lang/rust/pull/143507) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=75d5834a6c571cb0455acb5128ad51118fcbf2be&end=febb10d0a2d29278135676783f6a22eb83295981&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.3%]   | 2     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.7% | [-1.4%, -0.2%] | 8     |
| All  (primary)                 | -     | -              | 0     |

Improvements outweigh regressions, changes are tiny. `coercions` regressions seems to be noise. I don't think this is worth digging into.

Rollup of 6 pull requests [#143521](https://github.com/rust-lang/rust/pull/143521) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e804cd4a5f1a5b658ddca245c80bef96a576c018&end=c83e217d268d25960a0c79c6941bcb3917a6a0af&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 1     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.3%]   | 2     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.2% | [-1.9%, -0.0%] | 9     |
| All  (primary)                 | 0.2%  | [0.2%, 0.2%]   | 1     |

`coercions` regressions seems to be noise, looks like a new bimodailty. Other changes are tiny, I don't think this is worth investigating.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- TODO

Next meeting's agenda draft: [hackmd link](https://hackmd.io/NP_YTGSkRmazVwr6oLLl5g)
