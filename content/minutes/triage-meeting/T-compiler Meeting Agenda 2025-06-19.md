---
tags: weekly, rustc
type: docs
note_id: WQ5zU7puSZyJbeJ6RJ5QeA
---

# T-compiler Meeting Agenda 2025-06-19

## Announcements

- Next week release of rustc stable 1.88 [draft release notes](https://github.com/rust-lang/rust/issues/141598)
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- WG-async design meeting <time:2025-06-19T19:00:00+02:00>
- Stable MIR weekly meeting <time:2025-06-19T17:00:00+02:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Upgrade `*-linux-musl` targets to musl 1.2.5" [compiler-team#887](https://github.com/rust-lang/compiler-team/issues/887) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Upgrade.20.60.2A-linux-musl.60.20targets.20to.20musl.201.2E.E2.80.A6.20compiler-team.23887))
    - PR: https://github.com/rust-lang/rust/pull/142682
    - Question: do we want to re-crater the PR?
      - A crater run in July 2024 found only about 2% of rust projects were still affected
      - Expected minimal breakage, most should be resolved by a cargo update
    - [Crates breakage report from last year](https://github.com/rust-lang/rust/pull/125692#issuecomment-2798211034)
    - Draft blog post at https://github.com/rust-lang/blog.rust-lang.org/pull/1641
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: about 1 days ago)
    - concern: [path-to-stabilization](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-2980212568)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: 8 months ago)
  - "Policy change around adding new unstable flags" [compiler-team#787](https://github.com/rust-lang/compiler-team/issues/787) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.20change.20around.20adding.20new.20unstable.20.E2.80.A6.20compiler-team.23787)) (last review activity: 8 months ago)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: 5 months ago)
  - "Compile UI tests as libraries by default" [compiler-team#842](https://github.com/rust-lang/compiler-team/issues/842) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Compile.20UI.20tests.20as.20libraries.20by.20default.20compiler-team.23842)) (last review activity: 3 months ago)
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: 2 months ago)
  - "Unify ui test inline error annotation style" [compiler-team#859](https://github.com/rust-lang/compiler-team/issues/859) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Unify.20ui.20test.20inline.20error.20annotation.20sty.E2.80.A6.20compiler-team.23859)) (last review activity: 2 months ago)
    - Opened a poll [on Zulip](https://rust-lang.zulipchat.com/#narrow/channel/233931-t-compiler.2Fmajor-changes/topic/Unify.20ui.20test.20inline.20error.20annotation.20sty.E2.80.A6.20compiler-team.23859/near/524600848) about the preferred syntax, @*T-compiler/meeting* feel free to leave your comments
  - "Run the UI test suite with multiple editions" [compiler-team#861](https://github.com/rust-lang/compiler-team/issues/861) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Run.20the.20UI.20test.20suite.20with.20multiple.20editi.E2.80.A6.20compiler-team.23861)) (last review activity: about 15 days ago)
    - concern: [edition-directive-meaning](https://github.com/rust-lang/compiler-team/issues/861#issuecomment-2796811016)
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864)) (last review activity: about 6 days ago)
  - "Add support for specifying split-debuginfo=unpacked output directory" [compiler-team#871](https://github.com/rust-lang/compiler-team/issues/871) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20support.20for.20specifying.20split-debuginf.E2.80.A6.20compiler-team.23871)) (last review activity: about 47 days ago)
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: about 20 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets (rust#123617)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2135121317)
    - no pending checkboxes
    - concerns: [stabilization-scope (by wesleywiser)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2192330122)
  - merge: [Add `target_env = "macabi"` and `target_env = "sim"` (rust#139451)](https://github.com/rust-lang/rust/pull/139451#issuecomment-2793613930)
    - @_**|116266** @_**|119031** @_**|353056**
    - no pending concerns
- Things in FCP (make sure you're good with it)
  - "setup typos check in CI (for rust repo)" [compiler-team#817](https://github.com/rust-lang/compiler-team/issues/817) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/setup.20typos.20check.20in.20CI.20.28for.20rust.20repo.29.20compiler-team.23817))
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Add one more "late metadata"/"digest" file to rlib archives" [compiler-team#853](https://github.com/rust-lang/compiler-team/issues/853) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20one.20more.20.22late.20metadata.22.2F.22digest.22.20fil.E2.80.A6.20compiler-team.23853))
  - "Constrain process required for some user-facing changes to lower support tier targets" [compiler-team#884](https://github.com/rust-lang/compiler-team/issues/884) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Constrain.20process.20required.20for.20some.20user-.E2.80.A6.20compiler-team.23884))
  - "Expose `target_abi = "elfv{1,2}"` on `powerpc64-any-unixy-elfy` targets" [compiler-team#885](https://github.com/rust-lang/compiler-team/issues/885) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Expose.20.60target_abi.20.3D.20.22elfv.7B1.2C2.7D.22.60.20on.20.60pow.E2.80.A6.20compiler-team.23885))
  - "Use lld by default on `x86_64-unknown-linux-gnu` stable" [rust#140525](https://github.com/rust-lang/rust/pull/140525)
- Accepted MCPs
  - "Introduce debug information to statements in MIR" [compiler-team#867](https://github.com/rust-lang/compiler-team/issues/867) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Introduce.20debug.20information.20to.20statements.E2.80.A6.20compiler-team.23867))
  - "Retroactive MCP for the Rust for Linux Ecosystem Test Job" [compiler-team#874](https://github.com/rust-lang/compiler-team/issues/874) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23874))
  - "Promote 64-bit windows-gnullvm Targets to Tier 2 with Host Tools" [compiler-team#877](https://github.com/rust-lang/compiler-team/issues/877) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.2064-bit.20windows-gnullvm.20Targets.20to.E2.80.A6.20compiler-team.23877))
  - "Eliminate `ast::ptr::P`" [compiler-team#878](https://github.com/rust-lang/compiler-team/issues/878) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Eliminate.20.60ast.3A.3Aptr.3A.3AP.60.20compiler-team.23878))
  - "Add `-Z hint-mostly-unused` option to hint that most of a crate's API surface will be unused" [compiler-team#883](https://github.com/rust-lang/compiler-team/issues/883) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Z.20hint-mostly-unused.60.20option.20to.20hin.E2.80.A6.20compiler-team.23883))
- MCPs blocked on unresolved concerns
  - <Here group MCPs blocked on unresolved concerns>
- Finalized FCPs (disposition merge)
  - "Add `--print host-tuple` to print host target tuple" [rust#125579](https://github.com/rust-lang/rust/pull/125579)
  - "make unsupported_calling_conventions a hard error" [rust#129935](https://github.com/rust-lang/rust/pull/129935)
  - "Fix ICE when passing DefId-creating args to legacy_const_generics." [rust#130443](https://github.com/rust-lang/rust/pull/130443)
  - "Stabilize WebAssembly `multivalue`, `reference-types`, and `tail-call` target features" [rust#131080](https://github.com/rust-lang/rust/pull/131080)
  - "Lint on combining `#[no_mangle]` and `#[export_name]`" [rust#131558](https://github.com/rust-lang/rust/pull/131558)
  - "Stabilize `-Zdwarf-version` as `-Cdwarf-version`" [rust#136926](https://github.com/rust-lang/rust/pull/136926)
  - "Split up the `unknown_or_malformed_diagnostic_attributes` lint" [rust#140717](https://github.com/rust-lang/rust/pull/140717)
- Other teams finalized FCPs
  - "Allow dropping `dyn Trait` principal" [rust#126660](https://github.com/rust-lang/rust/pull/126660)
  - "Stabilize `derive(CoercePointee)`" [rust#133820](https://github.com/rust-lang/rust/pull/133820)
  - "Specify the behavior of `file!`" [rust#134442](https://github.com/rust-lang/rust/pull/134442)
  - "Lint on fn pointers comparisons in external macros" [rust#134536](https://github.com/rust-lang/rust/pull/134536)
  - "Remove backticks from `ShouldPanic::YesWithMessage`'s `TrFailedMsg`" [rust#136160](https://github.com/rust-lang/rust/pull/136160)
  - "Sized Hierarchy: Part I" [rust#137944](https://github.com/rust-lang/rust/pull/137944)
  - "const-eval: allow constants to refer to mutable/external memory, but reject such constants as patterns" [rust#140942](https://github.com/rust-lang/rust/pull/140942)
  - "Allow volatile access to non-Rust memory, including address 0" [rust#141260](https://github.com/rust-lang/rust/pull/141260)
  - "builtin dyn impl no guide inference" [rust#141352](https://github.com/rust-lang/rust/pull/141352)
  - "Add (back) `unsupported_calling_conventions` lint to reject more invalid calling conventions" [rust#141435](https://github.com/rust-lang/rust/pull/141435)
  - "Document representation of `Option<unsafe fn()>`" [rust#141447](https://github.com/rust-lang/rust/pull/141447)
  - "Stabilize `feature(generic_arg_infer)`" [rust#141610](https://github.com/rust-lang/rust/pull/141610)
  - "Make the `dangerous_implicit_autorefs` lint deny-by-default" [rust#141661](https://github.com/rust-lang/rust/pull/141661)
  - "Report never type lints in dependencies" [rust#141937](https://github.com/rust-lang/rust/pull/141937)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Make the assertion in `Ident::new` debug-only." [rust#140880](https://github.com/rust-lang/rust/pull/140880)
  - Authored by nnethercote
  - Fixes #140252, a perf regression ([perf win](https://github.com/rust-lang/rust/pull/140880#issuecomment-2868438537) report), merged 3 days ago
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23140880.3A.20beta-nominated/near/524338906) (in favor)
- :beta: "Avoid creating an empty identifer in `Symbol::to_ident_string`." [rust#141318](https://github.com/rust-lang/rust/pull/141318)
  - Authored by nnethercote
  - Fixes the root cause for an ICE in #140884 (and helps also with #140880, which fixes the symptoms), merged 3 days ago
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23141318.3A.20beta-nominated/near/524338916) (in favor)
- :beta: "Update to LLVM 20.1.7" [rust#142447](https://github.com/rust-lang/rust/pull/142447)
  - Authored by dianqk, (vibe check) nomination from @_**apiraino**
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23142447.3A.20beta-nominated/near/524216373), (would decline because too close to the release and uncertain advantages)
- No stable nominations for `T-compiler` this time.

[T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Use lld by default on `x86_64-unknown-linux-gnu` stable" [rust#140525](https://github.com/rust-lang/rust/pull/140525)
  - Entered in FCP 2 days ago
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [58 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [39 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 0 P-medium, 3 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 32 P-high, 100 P-medium, 21 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

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

> [triage logs 2025-06-17](https://github.com/rust-lang/rustc-perf/blob/master/triage/2025/2025-06-17.md)

Relatively quiet week, with a few improvements to benchmarks leveraging the new
trait solver.

Triage done by **@kobzol**.
Revision range: [c31cccb7..45acf54e](https://perf.rust-lang.org/?start=c31cccb7b5cc098b1a8c1794ed38d7fdbec0ccb0&end=45acf54eea118ed27927282b5e0bfdcd80b7987c&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.1%, 0.5%]    | 14    |
| Regressions (secondary)  | 0.3%  | [0.1%, 0.5%]    | 52    |
| Improvements (primary)   | -0.5% | [-4.8%, -0.1%]  | 68    |
| Improvements (secondary) | -4.3% | [-56.5%, -0.1%] | 85    |
| All  (primary)           | -0.4% | [-4.8%, 0.5%]   | 82    |


3 Regressions, 7 Improvements, 4 Mixed; 4 of them in rollups
51 artifact comparisons made in total

#### Regressions

Rollup of 16 pull requests [#142299](https://github.com/rust-lang/rust/pull/142299) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c6a955468b025dbe3d1de3e8f3e30496d1fb7f40&end=8ce228758651aa58c4d34e3bd65bf70a251da27e&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.1%, 0.7%]   | 8     |
| Regressions (secondary)  | 0.4%  | [0.2%, 1.1%]   | 37    |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | 0.4%  | [-0.2%, 0.7%]  | 9     |

- Regression caused by [#142240](https://github.com/rust-lang/rust/pull/142240).
- Regression fixed in [#142398](https://github.com/rust-lang/rust/pull/142398).
- Marked as triaged.

Infrastructure for lints during attribute parsing, specifically duplicate usages of attributes [#138164](https://github.com/rust-lang/rust/pull/138164) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6c8138de8f1c96b2f66adbbc0e37c73525444750&end=573a01569000d395498a5f98f916d6e5305ac81a&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.5% | [0.1%, 1.0%] | 107   |
| Regressions (secondary)  | 1.0% | [0.1%, 3.1%] | 56    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.5% | [0.1%, 1.0%] | 107   |

- Regression was fixed in [#142455](https://github.com/rust-lang/rust/pull/142455).
- Marked as triaged.

Rollup of 9 pull requests [#142443](https://github.com/rust-lang/rust/pull/142443) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0d6ab209c525e276cbe7544cbd39a3c3619b6b18&end=8da623945f83933dd38644d5745532ee032e855b&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.2% | [0.1%, 0.3%] | 7     |
| Regressions (secondary)  | 0.3% | [0.2%, 0.5%] | 22    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.2% | [0.1%, 0.3%] | 7     |

- Most of the (small) regressions seem to be caused by [#142308](https://github.com/rust-lang/rust/pull/142308),
  which only updates dependencies.
- Marked as triaged.

#### Improvements

Rollup of 10 pull requests [#142392](https://github.com/rust-lang/rust/pull/142392) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=14346303d760027e53214e705109a62c0f00b214&end=fe5c95d4ae33ec9d7831921e448e2daf8264ea42&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.8% | [-4.9%, -0.1%] | 37    |
| Improvements (secondary) | -1.4% | [-7.7%, -0.2%] | 72    |
| All  (primary)                 | -0.8% | [-4.9%, -0.1%] | 37    |


[perf] `GenericArgs`-related: Change asserts to debug asserts & use more slice interning over iterable interning [#142289](https://github.com/rust-lang/rust/pull/142289) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=cc87afd8c0f9992d29581a0c26075be0962be8c4&end=49a8ba06848fa8f282fe9055b4178350970bb0ce&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.3%, -0.1%] | 15    |
| Improvements (secondary) | -1.2% | [-4.7%, -0.1%] | 13    |
| All  (primary)                 | -0.2% | [-0.3%, -0.1%] | 15    |


move fast reject into inner [#142355](https://github.com/rust-lang/rust/pull/142355) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=38c41d0f926d77985fc17087c21eeb7896dfe61e&end=32b51523f81a5f916c4bb3fee5a749721f19e01d&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.5%, -0.1%] | 15    |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -0.4% | [-0.5%, -0.1%] | 15    |


early linting: avoid redundant calls to `check_id` [#142398](https://github.com/rust-lang/rust/pull/142398) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0cbc0764380630780a275c437260e4d4d5f28c92&end=75e7cf5f85aad82331a38deff24845b63eaf30f3&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 1     |
| Improvements (primary)   | -0.3% | [-0.6%, -0.1%] | 29    |
| Improvements (secondary) | -0.4% | [-1.0%, -0.2%] | 31    |
| All  (primary)                 | -0.3% | [-0.6%, -0.1%] | 29    |


Don't fold `ExternalConstraintsData` when it's empty [#142430](https://github.com/rust-lang/rust/pull/142430) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=75e7cf5f85aad82331a38deff24845b63eaf30f3&end=7827d55852783e8d85932a938d70fff64e9b9f07&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.5% | [-0.7%, -0.2%] | 11    |
| All  (primary)                 | -     | -              | 0     |


collect delayed lints in hir_crate_items [#142455](https://github.com/rust-lang/rust/pull/142455) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7827d55852783e8d85932a938d70fff64e9b9f07&end=586ad391f5ee4519acc7cae340e34673bae762b1&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 1     |
| Improvements (primary)   | -0.4% | [-0.8%, -0.2%] | 87    |
| Improvements (secondary) | -1.0% | [-2.5%, -0.1%] | 42    |
| All  (primary)                 | -0.4% | [-0.8%, -0.2%] | 87    |


use `MixedBitSet` for borrows-in-scope dataflow analysis [#142471](https://github.com/rust-lang/rust/pull/142471) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=586ad391f5ee4519acc7cae340e34673bae762b1&end=f768dc01da9a681716724418ccf64ce55bd396c5&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-0.7%, -0.6%] | 2     |
| Improvements (secondary) | -0.6% | [-0.7%, -0.4%] | 5     |
| All  (primary)                 | -0.7% | [-0.7%, -0.6%] | 2     |


#### Mixed

cache `param_env` canonicalization [#141451](https://github.com/rust-lang/rust/pull/141451) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=40daf23eeb711dadf140b2536e67e3ff4c999196&end=100199c9aa50b0c47b37c9c86335d68b2a77b535&stat=instructions:u)

| (instructions:u)                   | mean   | range           | count |
|:----------------------------------:|:------:|:---------------:|:-----:|
| Regressions (primary)    | 0.5%   | [0.5%, 0.5%]    | 1     |
| Regressions (secondary)  | -      | -               | 0     |
| Improvements (primary)   | -      | -               | 0     |
| Improvements (secondary) | -18.3% | [-56.0%, -0.2%] | 13    |
| All  (primary)                 | 0.5%   | [0.5%, 0.5%]    | 1     |

- The single regression was noise.
- Marked as triaged.

Remove check_mod_loops query and run the checks per-body instead [#141883](https://github.com/rust-lang/rust/pull/141883) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1677d46cb128cc8f285dbd32b0dc4d7a46437050&end=1c047506f94cd2d05228eb992b0a6bbed1942349&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.3%]   | 3     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.4%, -0.2%] | 8     |
| All  (primary)                 | -     | -              | 0     |

- Tiny regressions and improvements in secondary benchmarks, it's a wash.
- Marked as triaged.

Make root vars more stable [#142090](https://github.com/rust-lang/rust/pull/142090) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1c047506f94cd2d05228eb992b0a6bbed1942349&end=2b0274c71dba0e24370ebf65593da450e2e91868&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.1%  | [0.1%, 0.1%]   | 1     |
| Regressions (secondary)  | 0.3%  | [0.3%, 0.3%]   | 2     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.9% | [-1.2%, -0.4%] | 9     |
| All  (primary)                 | 0.1%  | [0.1%, 0.1%]   | 1     |

- The single regression on a primary benchmark is a doc build and it's super tiny, the rest are tiny improvements.
- Marked as triaged.

Rollup of 10 pull requests [#142442](https://github.com/rust-lang/rust/pull/142442) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=015c7770ec0ffdba9ff03f1861144a827497f8ca&end=c35911781925bcbfdeb5e6e1adb305097af46801&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.1%, 0.3%]   | 9     |
| Regressions (secondary)  | 0.2%  | [0.1%, 0.3%]   | 21    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.2% | [-0.2%, -0.1%] | 5     |
| All  (primary)                 | 0.2%  | [0.1%, 0.3%]   | 9     |

- Several PRs were tried, but so far we haven't been able to figure out what caused the regression.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Add regression test for nested replacement ranges in cfg_eval" [rust#139286](https://github.com/rust-lang/rust/pull/139286) (last review activity: 2 months ago)
  - cc: @**fmease*
- "make `tidy-alphabetical` use a natural sort" [rust#141311](https://github.com/rust-lang/rust/pull/141311) (last review activity: about 28 days ago)
  - @**nora (Noratrieb)**
- "Distinguish delim kind to decide whether to emit unexpected closing delimiter" [rust#138554](https://github.com/rust-lang/rust/pull/138554) (last review activity: about 57 days ago)
  - cc: @**yukang**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/uKNDrJs_QhiMcRAZW6N6Gg)
