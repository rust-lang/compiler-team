---
tags: weekly, rustc
type: docs
note_id: uKNDrJs_QhiMcRAZW6N6Gg
---

# T-compiler Meeting Agenda 2025-06-26

## Announcements

- Today rust 1.88 is out (the "[if-let-chains edition](https://rust-lang.zulipchat.com/#narrow/channel/241545-t-release/topic/1.2E88/near/525623475)", [blog post](https://github.com/cuviper/blog.rust-lang.org/blob/rust-1.88.0/content/Rust-1.88.0.md))
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- WG-async design meeting <time:2025-06-26T19:00:00+02:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Upgrade `*-linux-musl` targets to musl 1.2.5" [compiler-team#887](https://github.com/rust-lang/compiler-team/issues/887) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Upgrade.20.60.2A-linux-musl.60.20targets.20to.20musl.201.2E.E2.80.A6.20compiler-team.23887))
  - "Promote `armv7-unknown-linux-musleabihf` to tier 2 with host tools" [compiler-team#888](https://github.com/rust-lang/compiler-team/issues/888) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20.60armv7-unknown-linux-musleabihf.60.20.E2.80.A6.20compiler-team.23888))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: 8 months ago)
  - "Policy change around adding new unstable flags" [compiler-team#787](https://github.com/rust-lang/compiler-team/issues/787) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.20change.20around.20adding.20new.20unstable.20.E2.80.A6.20compiler-team.23787)) (last review activity: 8 months ago)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: 5 months ago)
  - "Compile UI tests as libraries by default" [compiler-team#842](https://github.com/rust-lang/compiler-team/issues/842) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Compile.20UI.20tests.20as.20libraries.20by.20default.20compiler-team.23842)) (last review activity: 3 months ago)
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: 3 months ago)
  - "Unify ui test inline error annotation style" [compiler-team#859](https://github.com/rust-lang/compiler-team/issues/859) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Unify.20ui.20test.20inline.20error.20annotation.20sty.E2.80.A6.20compiler-team.23859)) (last review activity: 2 months ago)
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864)) (last review activity: about 13 days ago)
  - "Add support for specifying split-debuginfo=unpacked output directory" [compiler-team#871](https://github.com/rust-lang/compiler-team/issues/871) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20support.20for.20specifying.20split-debuginf.E2.80.A6.20compiler-team.23871)) (last review activity: about 55 days ago)
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: about 27 days ago)
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
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Add one more "late metadata"/"digest" file to rlib archives" [compiler-team#853](https://github.com/rust-lang/compiler-team/issues/853) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20one.20more.20.22late.20metadata.22.2F.22digest.22.20fil.E2.80.A6.20compiler-team.23853))
  - "Constrain process required for some user-facing changes to lower support tier targets" [compiler-team#884](https://github.com/rust-lang/compiler-team/issues/884) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Constrain.20process.20required.20for.20some.20user-.E2.80.A6.20compiler-team.23884))
  - "Expose `target_abi = "elfv{1,2}"` on `powerpc64-any-unixy-elfy` targets" [compiler-team#885](https://github.com/rust-lang/compiler-team/issues/885) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Expose.20.60target_abi.20.3D.20.22elfv.7B1.2C2.7D.22.60.20on.20.60pow.E2.80.A6.20compiler-team.23885))
  - "use separate build directory for rust-analyzer to use" [compiler-team#889](https://github.com/rust-lang/compiler-team/issues/889) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/use.20separate.20build.20directory.20for.20rust-ana.E2.80.A6.20compiler-team.23889))
  - "Create `rustc_target::spec::Target` from a Builder" [compiler-team#890](https://github.com/rust-lang/compiler-team/issues/890) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20.60rustc_target.3A.3Aspec.3A.3ATarget.60.20from.20.E2.80.A6.20compiler-team.23890))
  - "Run more tests for rustc_codegen_gcc in the CI" [compiler-team#891](https://github.com/rust-lang/compiler-team/issues/891) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Run.20more.20tests.20for.20rustc_codegen_gcc.20in.20t.E2.80.A6.20compiler-team.23891))
    - concern: [docs-and-contributor-experience](https://github.com/rust-lang/compiler-team/issues/891#issuecomment-3005531616)
  - "Use lld by default on `x86_64-unknown-linux-gnu` stable" [rust#140525](https://github.com/rust-lang/rust/pull/140525)
- Accepted MCPs
  - "Introduce debug information to statements in MIR" [compiler-team#867](https://github.com/rust-lang/compiler-team/issues/867) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Introduce.20debug.20information.20to.20statements.E2.80.A6.20compiler-team.23867))
  - "Retroactive MCP for the Rust for Linux Ecosystem Test Job" [compiler-team#874](https://github.com/rust-lang/compiler-team/issues/874) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23874))
  - "Promote 64-bit windows-gnullvm Targets to Tier 2 with Host Tools" [compiler-team#877](https://github.com/rust-lang/compiler-team/issues/877) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.2064-bit.20windows-gnullvm.20Targets.20to.E2.80.A6.20compiler-team.23877))
  - "Eliminate `ast::ptr::P`" [compiler-team#878](https://github.com/rust-lang/compiler-team/issues/878) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Eliminate.20.60ast.3A.3Aptr.3A.3AP.60.20compiler-team.23878))
  - "Add `-Z hint-mostly-unused` option to hint that most of a crate's API surface will be unused" [compiler-team#883](https://github.com/rust-lang/compiler-team/issues/883) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Z.20hint-mostly-unused.60.20option.20to.20hin.E2.80.A6.20compiler-team.23883))
- MCPs blocked on unresolved concerns
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: about 8 days ago)
    - concern: [path-to-stabilization](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-2980212568)
  - "Run the UI test suite with multiple editions" [compiler-team#861](https://github.com/rust-lang/compiler-team/issues/861) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Run.20the.20UI.20test.20suite.20with.20multiple.20editi.E2.80.A6.20compiler-team.23861)) (last review activity: about 23 days ago)
    - concern: [edition-directive-meaning](https://github.com/rust-lang/compiler-team/issues/861#issuecomment-2796811016)
- Finalized FCPs (disposition merge)
  - "Fix ICE when passing DefId-creating args to legacy_const_generics." [rust#130443](https://github.com/rust-lang/rust/pull/130443)
  - "Stabilize WebAssembly `multivalue`, `reference-types`, and `tail-call` target features" [rust#131080](https://github.com/rust-lang/rust/pull/131080)
  - "Stabilize `-Zdwarf-version` as `-Cdwarf-version`" [rust#136926](https://github.com/rust-lang/rust/pull/136926)
  - "Split up the `unknown_or_malformed_diagnostic_attributes` lint" [rust#140717](https://github.com/rust-lang/rust/pull/140717)
- Other teams finalized FCPs
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
  - "Reject unsupported `extern "{abi}"`s consistently in all positions" [rust#142134](https://github.com/rust-lang/rust/pull/142134)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No beta nominations for `T-compiler` this time.
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
- [58 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [39 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 0 P-medium, 3 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 33 P-high, 100 P-medium, 21 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

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

> [triage logs for 2025-06-24](https://github.com/rust-lang/rustc-perf/blob/master/triage/2025/2025-06-24.md)

A week dominated by the landing of a large patch implementing [RFC#3729](https://github.com/rust-lang/rfcs/pull/3729) which unfortunately introduced rather sizeable performance regressions (avg of ~1% instruction count on 111 primary benchmarks). This was deemed worth it so that the patch could land and performance could be won back in follow up PRs.

Triage done by **@rylev**.
Revision range: [45acf54e..42245d34](https://perf.rust-lang.org/?start=45acf54eea118ed27927282b5e0bfdcd80b7987c&end=42245d34d22ade32b3f276dcf74deb826841594c&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 1.1%  | [0.2%, 9.1%]    | 123   |
| Regressions (secondary)  | 1.0%  | [0.1%, 4.6%]    | 86    |
| Improvements (primary)   | -3.8% | [-7.3%, -0.3%]  | 2     |
| Improvements (secondary) | -2.3% | [-18.5%, -0.2%] | 44    |
| All  (primary)           | 1.0%  | [-7.3%, 9.1%]   | 125   |


2 Regressions, 4 Improvements, 10 Mixed; 7 of them in rollups
40 artifact comparisons made in total

#### Regressions

Sized Hierarchy: Part I [#137944](https://github.com/rust-lang/rust/pull/137944) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=55d436467c351b56253deeba209ae2553d1c243f&end=86d0aef80403f095d8bbabf44d9fdecfcd45f076&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.3%  | [0.1%, 9.9%]   | 111   |
| Regressions (secondary)  | 0.9%  | [0.2%, 2.9%]   | 101   |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.7% | [-0.7%, -0.7%] | 1     |
| All  (primary)                 | 1.3%  | [0.1%, 9.9%]   | 111   |
- As noted in [this summary comment](https://github.com/rust-lang/rust/pull/137944#issuecomment-2912207485), the performance regression is expected and will be addressed in follow ups.


Rewrite `inline` attribute parser to use new infrastructure and improve diagnostics for all parsed attributes [#138165](https://github.com/rust-lang/rust/pull/138165) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=27733d46d79f4eb92e240fbba502c43022665735&end=1bb335244c311a07cee165c28c553c869e6f64a9&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.8%]   | 12    |
| Regressions (secondary)  | 0.5%  | [0.2%, 0.8%]   | 21    |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 2     |
| Improvements (secondary) | -0.2% | [-0.2%, -0.2%] | 1     |
| All  (primary)                 | 0.3%  | [-0.2%, 0.8%]  | 14    |
- Perf addressed in a follow up: https://github.com/rust-lang/rust/pull/142777


#### Improvements

[perf] Cache the canonical *instantiation* of param-envs [#142316](https://github.com/rust-lang/rust/pull/142316) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3b97f1308ff72016a4aaa93fbe6d09d4d6427815&end=9c4ff566babe632af5e30281a822d1ae9972873b&stat=instructions:u)

| (instructions:u)                   | mean  | range           | count |
|:----------------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | -     | -               | 0     |
| Regressions (secondary)  | 0.7%  | [0.7%, 0.7%]    | 1     |
| Improvements (primary)   | -0.7% | [-0.9%, -0.6%]  | 12    |
| Improvements (secondary) | -5.0% | [-20.3%, -0.6%] | 15    |
| All  (primary)                 | -0.7% | [-0.9%, -0.6%]  | 12    |


forward the bootstrap `runner` to `run-make` [#141856](https://github.com/rust-lang/rust/pull/141856) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=fa2f3552dae918294c8572b2a07fed2746722dd3&end=8051f012658fde822bfc661b52e90950b411e5c9&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -2.8% | [-2.8%, -2.8%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -2.8% | [-2.8%, -2.8%] | 1     |


Rollup of 10 pull requests [#142878](https://github.com/rust-lang/rust/pull/142878) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c2ec7532eed172e79800d28f087727c4b048badd&end=111e9bc64bbdce14122e3676978f2ceefa5bff1a&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.1%  | [1.1%, 1.1%]   | 1     |
| Regressions (secondary)  | 1.1%  | [1.1%, 1.1%]   | 1     |
| Improvements (primary)   | -0.3% | [-0.5%, -0.2%] | 11    |
| Improvements (secondary) | -0.5% | [-0.7%, -0.3%] | 13    |
| All  (primary)                 | -0.1% | [-0.5%, 1.1%]  | 12    |


Let String pass #[track_caller] to its Vec calls [#142728](https://github.com/rust-lang/rust/pull/142728) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=be19eda0dc4c22c5cf5f1b48fd163acf9bd4b0a6&end=8387d61a6ec05faee58f7cfb9c10799285067934&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -2.9% | [-2.9%, -2.9%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -2.9% | [-2.9%, -2.9%] | 1     |


#### Mixed

Change __rust_no_alloc_shim_is_unstable to be a function [#141061](https://github.com/rust-lang/rust/pull/141061) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1bb335244c311a07cee165c28c553c869e6f64a9&end=6f935a044d1ddeb6160494a6320d008d7c311aef&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.3%, 0.5%]   | 3     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.5% | [-0.5%, -0.5%] | 1     |
| Improvements (secondary) | -1.8% | [-3.1%, -0.3%] | 7     |
| All  (primary)                 | 0.1%  | [-0.5%, 0.5%]  | 4     |
- The performance changes are more or less a wash so I don't think it necessitates any investigation.


Rollup of 6 pull requests [#142689](https://github.com/rust-lang/rust/pull/142689) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c68340350c78eea402c4a85f8d9c1b7d3d607635&end=044514eb26511d2d8aa999fdf27e85df6beb6576&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.4%]   | 4     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 11    |
| Improvements (primary)   | -0.4% | [-0.4%, -0.4%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | 0.2%  | [-0.4%, 0.4%]  | 5     |
- Primary regressions seem to be blips returning back to their previous state on the next perf run.


Rollup of 7 pull requests [#142697](https://github.com/rust-lang/rust/pull/142697) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d1d8e386c5e84c4ba857f56c3291f73c27e2d62a&end=8a65ee08296b36342bf7c3cdc15312ccbc357227&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.3%  | [0.3%, 0.3%]   | 1     |
| Improvements (primary)   | -0.4% | [-0.4%, -0.2%] | 3     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -0.4% | [-0.4%, -0.2%] | 3     |
- Too small of a perf regression (in only secondary benchmarks) to warrant an investigation


 Allow storing `format_args!()` in variable [#140748](https://github.com/rust-lang/rust/pull/140748) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8de4c7234dd9b97c9d76b58671343fdbbc9a433e&end=255aa220821c05c3eac7605fce4ea1c9ab2cbdb4&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 1.0%]   | 24    |
| Regressions (secondary)  | 1.6%  | [0.3%, 4.7%]   | 12    |
| Improvements (primary)   | -3.7% | [-7.1%, -0.3%] | 2     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | 0.1%  | [-7.1%, 1.0%]  | 26    |
- Asked the author for ideas on causes after failing to find them in my own investigation.


Rollup of 9 pull requests [#142794](https://github.com/rust-lang/rust/pull/142794) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5526a2f47cd676ceeedc08cf71ae75ce2e9284ae&end=15c701fbc995eb6c5b3a86021c18185f8eee020d&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 2.9%  | [2.9%, 2.9%]   | 1     |
| Regressions (secondary)  | 0.8%  | [0.2%, 1.2%]   | 10    |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 4     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | 0.4%  | [-0.2%, 2.9%]  | 5     |
- Caused by https://github.com/rust-lang/rust/pull/142713
- Author is looking into possible fixes.


Rollup of 8 pull requests [#142814](https://github.com/rust-lang/rust/pull/142814) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=15c701fbc995eb6c5b3a86021c18185f8eee020d&end=df4ad9e28b9fb973e244ebc65a8167a261b8f45e&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.5%  | [0.4%, 1.0%]   | 7     |
| Improvements (primary)   | -1.4% | [-2.8%, -0.1%] | 2     |
| Improvements (secondary) | -0.8% | [-1.4%, -0.3%] | 24    |
| All  (primary)                 | -1.4% | [-2.8%, -0.1%] | 2     |
- The regressions all seem to be noise.


Rollup of 3 pull requests [#142826](https://github.com/rust-lang/rust/pull/142826) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6d0c9e2a1c80e350c50f5fb9338ea9e585ec603b&end=ea34650916887b5075812d0f11c1d3209e7f94ab&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.3%, 0.3%]   | 2     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 1     |
| Improvements (primary)   | -0.4% | [-0.4%, -0.4%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | 0.1%  | [-0.4%, 0.3%]  | 3     |
- Change overall is near a wash, and the regressions are small enough that I don't think it's worth investigating the performance change here deeply.


Only traverse reachable blocks in JumpThreading. [#142546](https://github.com/rust-lang/rust/pull/142546) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ea34650916887b5075812d0f11c1d3209e7f94ab&end=d4e1159b8c97478778b09a4cc1c7adce5653b8bf&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.6%  | [0.3%, 2.9%]   | 2     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 2     |
| All  (primary)                 | 1.6%  | [0.3%, 2.9%]   | 2     |
- The regression in Clap is just noise and the other regression was seen before in a perf run and deemed acceptable by @compiler-errors.


Skip no-op drop glue [#142508](https://github.com/rust-lang/rust/pull/142508) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=111e9bc64bbdce14122e3676978f2ceefa5bff1a&end=be19eda0dc4c22c5cf5f1b48fd163acf9bd4b0a6&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.7%  | [0.4%, 3.0%]   | 2     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.3%] | 4     |
| Improvements (secondary) | -1.8% | [-3.1%, -0.4%] | 6     |
| All  (primary)                 | 0.3%  | [-0.4%, 3.0%]  | 6     |
- Regression in clap is noise and the rest of the changes balance out.


Rollup of 5 pull requests [#142906](https://github.com/rust-lang/rust/pull/142906) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ae2fc9722f08ef131407c1dc8057768868f65e8e&end=42245d34d22ade32b3f276dcf74deb826841594c&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 1     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.3%]   | 3     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.1% | [-0.1%, -0.1%] | 4     |
| All  (primary)                 | 0.2%  | [0.2%, 0.2%]   | 1     |
- Regression is small enough that it's not worth investigating IMO


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Extend `QueryStability` to handle `IntoIterator` implementations" [rust#139345](https://github.com/rust-lang/rust/pull/139345) (last review activity: about 29 days ago)
  - cc @**fmease**
- "Add FileCheck annotations to mir-opt/copy-prop" [rust#135099](https://github.com/rust-lang/rust/pull/135099)
  - cc: @**Wesley Wiser** (pending [question](https://github.com/rust-lang/rust/pull/135099#discussion_r2051456474)?) Otherwise mostly reviewed by @_**cjgillot**
- "Allow `&raw [mut | const]` for union field in safe" [rust#141469](https://github.com/rust-lang/rust/pull/141469) (last review activity: about 30 days ago)
  - cc @**Michael (compiler-errors) Goulet** can the FCP be triggered here or are there other pending questions? See [comment](https://github.com/rust-lang/rust/pull/141469#issuecomment-2924903125)

Next meetings' agenda draft: [hackmd link](https://hackmd.io/mPODDOR8T2S4ol9Pje65og)
