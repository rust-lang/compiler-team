---
tags: weekly, rustc
type: docs
note_id: r-z6gqyATJurK7N3q8VvpQ
---

# T-compiler Meeting Agenda 2025-05-01


## Announcements

- Question(jieyouxu): what's the process for promoting a Tier 2 w/out host tools target to Tier 2 w/ host tools? Also the forge docs on target promotion between tiers might be inaccurate (Tier 3 -> Tier 2 vs Tier 2 -> Tier 1).
  - See [Promote Solaris to Tier 2 w/ host tools MCP](https://rust-lang.zulipchat.com/#narrow/channel/233931-t-compiler.2Fmajor-changes/topic/Promote.20Solaris.20Targets.20to.20Tier.202.20with.20Ho.E2.80.A6.20compiler-team.23870/with/515080686)
  - Discussion: https://rust-lang.zulipchat.com/#narrow/channel/131828-t-compiler/topic/Forge.20docs.20for.20target.20promotion/with/515047176
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- WG-async design meeting <time:2025-05-01T19:00:00+02:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Introduce debug information to statements in MIR" [compiler-team#867](https://github.com/rust-lang/compiler-team/issues/867) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Introduce.20debug.20information.20to.20statements.E2.80.A6.20compiler-team.23867))
  - "Flags for retpoline mitigation" [compiler-team#868](https://github.com/rust-lang/compiler-team/issues/868) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Flags.20for.20retpoline.20mitigation.20compiler-team.23868))
  - "Flags for mitigating straight line speculation" [compiler-team#869](https://github.com/rust-lang/compiler-team/issues/869) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Flags.20for.20mitigating.20straight.20line.20specul.E2.80.A6.20compiler-team.23869))
  - "Promote Solaris Targets to Tier 2 with Host Tools" [compiler-team#870](https://github.com/rust-lang/compiler-team/issues/870) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20Solaris.20Targets.20to.20Tier.202.20with.20Ho.E2.80.A6.20compiler-team.23870))
  - "Add support for specifying split-debuginfo=unpacked output directory" [compiler-team#871](https://github.com/rust-lang/compiler-team/issues/871) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20support.20for.20specifying.20split-debuginf.E2.80.A6.20compiler-team.23871))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 7 months ago)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: 6 months ago)
  - "Policy change around adding new unstable flags" [compiler-team#787](https://github.com/rust-lang/compiler-team/issues/787) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.20change.20around.20adding.20new.20unstable.20.E2.80.A6.20compiler-team.23787)) (last review activity: 6 months ago)
  - "setup typos check in CI (for rust repo)" [compiler-team#817](https://github.com/rust-lang/compiler-team/issues/817) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/setup.20typos.20check.20in.20CI.20.28for.20rust.20repo.29.20compiler-team.23817)) (last review activity: about 47 days ago)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: 3 months ago)
  - "Compile UI tests as libraries by default" [compiler-team#842](https://github.com/rust-lang/compiler-team/issues/842) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Compile.20UI.20tests.20as.20libraries.20by.20default.20compiler-team.23842)) (last review activity: about 54 days ago)
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: about 40 days ago)
  - "Add one more "late metadata"/"digest" file to rlib archives" [compiler-team#853](https://github.com/rust-lang/compiler-team/issues/853) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20one.20more.20.22late.20metadata.22.2F.22digest.22.20fil.E2.80.A6.20compiler-team.23853)) (last review activity: about 40 days ago)
  - "Unify ui test inline error annotation style" [compiler-team#859](https://github.com/rust-lang/compiler-team/issues/859) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Unify.20ui.20test.20inline.20error.20annotation.20sty.E2.80.A6.20compiler-team.23859)) (last review activity: about 13 days ago)
- Pending FCP requests (check your boxes!)
  - "sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets" [rust#123617](https://github.com/rust-lang/rust/pull/123617)
  - "Warn about C-style octal literals" [rust#131309](https://github.com/rust-lang/rust/pull/131309)
  - "Add `target_env = "macabi"` and `target_env = "sim"`" [rust#139451](https://github.com/rust-lang/rust/pull/139451)
- Things in FCP (make sure you're good with it)
  - "Extend `--print` requests with output format suffixes" [compiler-team#860](https://github.com/rust-lang/compiler-team/issues/860) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60--print-json.3D.2E.2E.2E.60.20flag.20compiler-team.23860))
  - "Tier 3 target proposal: bare-metal loongarch32" [compiler-team#865](https://github.com/rust-lang/compiler-team/issues/865) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Tier.203.20target.20proposal.3A.20bare-metal.20loonga.E2.80.A6.20compiler-team.23865))
- Accepted MCPs
  - "compiletest: Make diagnostic kind mandatory on line annotations" [compiler-team#862](https://github.com/rust-lang/compiler-team/issues/862) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/compiletest.3A.20Make.20diagnostic.20kind.20mandato.E2.80.A6.20compiler-team.23862))
- MCPs blocked on unresolved concerns
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Add `-C hint-mostly-unused` option" [compiler-team#829](https://github.com/rust-lang/compiler-team/issues/829) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-C.20defer-codegen.60.20option.20compiler-team.23829)) (last review activity: 3 months ago)
    - concern: [prior-art-does-not-motivate-fast-stabilization](https://github.com/rust-lang/compiler-team/issues/829#issuecomment-2617441734)
  - "Run the UI test suite with multiple editions" [compiler-team#861](https://github.com/rust-lang/compiler-team/issues/861) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Run.20the.20UI.20test.20suite.20with.20multiple.20editi.E2.80.A6.20compiler-team.23861)) (last review activity: about 13 days ago)
    - concern: [edition-directive-meaning](https://github.com/rust-lang/compiler-team/issues/861#issuecomment-2796811016)
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864)) (last review activity: about 10 days ago)
    - concern: [ask-libs-consensus-on-limited-std-support](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-2816731097)
- Finalized FCPs (disposition merge)
  - "Add `--print host-tuple` to print host target tuple" [rust#125579](https://github.com/rust-lang/rust/pull/125579)
  - "make unsupported_calling_conventions a hard error" [rust#129935](https://github.com/rust-lang/rust/pull/129935)
  - "Fix ICE when passing DefId-creating args to legacy_const_generics." [rust#130443](https://github.com/rust-lang/rust/pull/130443)
  - "Stabilize WebAssembly `multivalue`, `reference-types`, and `tail-call` target features" [rust#131080](https://github.com/rust-lang/rust/pull/131080)
  - "Lint on combining `#[no_mangle]` and `#[export_name]`" [rust#131558](https://github.com/rust-lang/rust/pull/131558)
  - "Stabilize `-Zdwarf-version` as `-Cdwarf-version`" [rust#136926](https://github.com/rust-lang/rust/pull/136926)
- Other teams finalized FCPs
  - "Split elided_lifetime_in_paths into tied and untied" [rust#120808](https://github.com/rust-lang/rust/pull/120808)
  - "Implement a lint for implicit autoref of raw pointer dereference - take 2" [rust#123239](https://github.com/rust-lang/rust/pull/123239)
  - "lexer: Treat more floats with empty exponent as valid tokens" [rust#131656](https://github.com/rust-lang/rust/pull/131656)
  - "Stabilize let chains in the 2024 edition" [rust#132833](https://github.com/rust-lang/rust/pull/132833)
  - "Remove backticks from `ShouldPanic::YesWithMessage`'s `TrFailedMsg`" [rust#136160](https://github.com/rust-lang/rust/pull/136160)
  - "Make closure capturing have consistent and correct behaviour around patterns" [rust#138961](https://github.com/rust-lang/rust/pull/138961)
  - "make abi_unsupported_vector_types a hard error" [rust#139309](https://github.com/rust-lang/rust/pull/139309)
  - "check types of const param defaults" [rust#139646](https://github.com/rust-lang/rust/pull/139646)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "set subsections_via_symbols for ld64 helper sections" [rust#139752](https://github.com/rust-lang/rust/pull/139752)
  - Authored by usamoi
  - (fixes a linking error on macOS), addresses #139744
  - prev. [discussion](https://rust-lang.zulipchat.com/#narrow/channel/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202025-04-24/near/514139925)
<!--
/poll Approve beta:  backport of #139752?
approve
decline
don't know
-->
- :beta: "Fix linking statics on Arm64EC" [rust#140176](https://github.com/rust-lang/rust/pull/140176)
  - Authored by dpaoliello
  - Reviewed and nominated by @**Wesley Wiser** (thanks)
  - Fixes a serious linking regression #138541 on `aarch64-pc-windows-msvc` (tier 2) ([comment](https://github.com/rust-lang/rust/pull/140176#issuecomment-2840104391))
<!--
/poll Approve beta:  backport of #140176?
approve
decline
don't know
-->
- No stable nominations for `T-compiler` this time.

[T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [60 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [39 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 3 P-high, 1 P-medium, 2 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 31 P-high, 100 P-medium, 21 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "ICE: ` expr in place where literal is expected (builtin attr parsing)`" [rust#137687](https://github.com/rust-lang/rust/issues/137687)
  - Work in progress by @_**Jana Dönszelmann** ([comment](https://github.com/rust-lang/rust/pull/137729#issuecomment-2828209818))
- "regression: `error[E0284]: type annotations needed`; `cannot infer type` in trait declaration" [rust#140019](https://github.com/rust-lang/rust/issues/140019)
  - Fixed by #138941 (thanks @_***Michael (compiler-errors) Goulet** ) and beta backport accepted
- "regression: error: attempted to repeat an expression containing no syntax variables matched as repeating at this depth" [rust#140221](https://github.com/rust-lang/rust/issues/140221)
  - Caused by #138083 which was evaluated as accepted change ([comment](https://github.com/rust-lang/rust/pull/138083#issuecomment-2840431877))
  - Left a [comment](https://github.com/rust-lang/rust/pull/138083#issuecomment-2841948038) if this should be mentioned in release notes

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- None new

## Performance logs

> [triage logs for 2024-04-29](https://github.com/rust-lang/rustc-perf/blob/master/triage/2025-04-29.md)

Strange week with lots of noise peeking through the performance runs. The only really significant change was a performance improvement that comes from allowing out of order encoding of the dep graph.

Triage done by **@rylev**.
Revision range: [8f2819b0..25cdf1f6](https://perf.rust-lang.org/?start=8f2819b0e3428d0aee05fa60e91e0211c2aea053&end=25cdf1f67463c9365d8d83778c933ec7480e940b&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.1%, 3.0%]   | 77    |
| Regressions (secondary)  | 0.6%  | [0.1%, 2.4%]   | 77    |
| Improvements (primary)   | -0.7% | [-1.3%, -0.2%] | 106   |
| Improvements (secondary) | -0.7% | [-1.2%, -0.2%] | 29    |
| All  (primary)           | -0.2% | [-1.3%, 3.0%]  | 183   |


4 Regressions, 2 Improvements, 4 Mixed; 2 of them in rollups
38 artifact comparisons made in total

#### Regressions

Refactor git change detection in bootstrap [#138591](https://github.com/rust-lang/rust/pull/138591) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1a5bf12f6586d724ed5ff40e58e06c0233560c0e&end=645d0ad2a4f145ae576e442ec5c73c0f8eed829b&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.1%, 0.3%]   | 13    |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.6%]   | 42    |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | 0.2%  | [-0.2%, 0.3%]  | 14    |
- Looks like noise.


Properly stall coroutine witnesses in new solver [#138845](https://github.com/rust-lang/rust/pull/138845) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=df35ff6c354f1f1fbf430b84e7dea37dfe997f34&end=fa58ce343ad498196d799a7381869e79938e952a&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.1%, 0.4%]   | 25    |
| Regressions (secondary)  | 0.4%  | [0.1%, 0.6%]   | 48    |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | 0.2%  | [-0.2%, 0.4%]  | 26    |
- The regressions are small enough that this isn't a huge concern, and the regressions themselves might be due to some underlying perf instability.


Implement a lint for implicit autoref of raw pointer dereference - take 2 [#123239](https://github.com/rust-lang/rust/pull/123239) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0134651fb81314870903e21b1bcbdd993d75b61a&end=a932eb36f8adf6c8cdfc450f063943da3112d621&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.8% | [0.3%, 3.6%] | 6     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 1.8% | [0.3%, 3.6%] | 6     |
- Perf regression reversed in https://github.com/rust-lang/rust/pull/140406


Async drop codegen [#123948](https://github.com/rust-lang/rust/pull/123948) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a932eb36f8adf6c8cdfc450f063943da3112d621&end=7d65abfe80f9eee93296d1ce08f845c9bf7039f8&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.4% | [0.2%, 0.6%] | 12    |
| Regressions (secondary)  | 1.0% | [0.2%, 2.4%] | 28    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.4% | [0.2%, 0.6%] | 12    |
- Ask the author and reviewer whether this is worth pursuing more after their initial perf investigation.


#### Improvements

Remove `token::{Open,Close}Delim` [#139897](https://github.com/rust-lang/rust/pull/139897) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d6c1e454aa8af5e7e59fbf5c4e7d3128d2f99582&end=fae7785b60ea7fe1ad293352c057a5b7be73d245&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.6%, -0.2%] | 14    |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -0.4% | [-0.6%, -0.2%] | 14    |


Rollup of 8 pull requests [#140165](https://github.com/rust-lang/rust/pull/140165) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6bc57c6bf7d0024ad9ea5a2c112f3fc9c383c8a4&end=1a5bf12f6586d724ed5ff40e58e06c0233560c0e&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.3%, -0.1%] | 17    |
| Improvements (secondary) | -0.3% | [-0.6%, -0.2%] | 48    |
| All  (primary)                 | -0.2% | [-0.3%, 0.2%]  | 18    |


#### Mixed

Clippy subtree update [#139983](https://github.com/rust-lang/rust/pull/139983) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=553600e0f5f5a7d492de6d95ccb2f057005f5651&end=df35ff6c354f1f1fbf430b84e7dea37dfe997f34&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.3%, -0.1%] | 7     |
| Improvements (secondary) | -0.3% | [-0.6%, -0.2%] | 36    |
| All  (primary)                 | -0.1% | [-0.3%, 0.2%]  | 8     |
- The small regression is fine in light of the larger and more numerous improvements.


Rollup of 8 pull requests [#140256](https://github.com/rust-lang/rust/pull/140256) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3c877f6a477380ed61155d3bf816df09c9e05b9e&end=d7ea436a02d5de4033fcf7fd4eb8ed965d0f574c&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.6%, -0.2%] | 23    |
| All  (primary)                 | 0.2%  | [0.2%, 0.2%]   | 1     |
- The single regression looks to be noise.


set subsections_via_symbols for ld64 helper sections [#139752](https://github.com/rust-lang/rust/pull/139752) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d7ea436a02d5de4033fcf7fd4eb8ed965d0f574c&end=847e3ee6b0e614937eee4e6d8f61094411eadcc0&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.3%]   | 2     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.6%]   | 30    |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | 0.1%  | [-0.2%, 0.3%]  | 3     |
- Not sure where the regressions are coming from since this should only impact macOS.


Allow out of order dep graph node encoding [#139756](https://github.com/rust-lang/rust/pull/139756) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8f43b85954d2f3d8fc00a7504c603e5ca9eb0695&end=e3e432d4d65a55e6db167598e96db2bcb163e316&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.3%, 0.3%]   | 7     |
| Regressions (secondary)  | 0.4%  | [0.2%, 0.6%]   | 15    |
| Improvements (primary)   | -0.7% | [-1.3%, -0.3%] | 115   |
| Improvements (secondary) | -0.8% | [-1.4%, -0.2%] | 27    |
| All  (primary)                 | -0.7% | [-1.3%, 0.3%]  | 122   |
- Perf improvements massively outweigh the regressions.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "rustc_target: RISC-V `Zfinx` is incompatible with `{ILP32,LP64}[FD]` ABIs" [rust#138872](https://github.com/rust-lang/rust/pull/138872) (last review activity: about 34 days ago)
  - cc @**Jubilee**
- "Fix `PostBorrowckAnalysis` for old solver" [rust#135899](https://github.com/rust-lang/rust/pull/135899) (last review activity: about 35 days ago)
  - cc: @**lcnr** (unless it's waiting on something)
- "Emit warning while outputs is not exe and prints linkage info" [rust#138139](https://github.com/rust-lang/rust/pull/138139) (last review activity: about 52 days ago)
  - cc: @**Chris Denton**
- "Fix split index calculation in `check_type_alias_where_clause_location`" [rust#138037](https://github.com/rust-lang/rust/pull/138037) (last review activity: about 53 days ago)
  - cc: @**Boxy**
- "Add ignore value suggestion in closure body" [rust#135562](https://github.com/rust-lang/rust/pull/135562) (last review activity: 3 months ago)
  - cc: @**Esteban Küber**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/9L6_SLIqSJePJ4QDErJ0qw)
