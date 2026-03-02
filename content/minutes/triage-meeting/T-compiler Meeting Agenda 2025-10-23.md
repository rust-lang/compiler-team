---
tags: weekly, rustc
type: docs
note_id: c20QdPAoSO-0oS4NgRAUSg
---

# T-compiler Meeting Agenda 2025-10-23

## Announcements

- One week to theRust 1.91 release
  - Note: yesterday we got an unusual number of regressions from the beta crater run, see [rust#146902](https://github.com/rust-lang/rust/issues/146902). Mostly already triaged or prioritized but another look probably won't be bad.
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- WG-async design meeting <time:2025-10-2325T19:00:00+02:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Omit suggestions when spans overlap" [compiler-team#929](https://github.com/rust-lang/compiler-team/issues/929) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Omit.20suggestions.20when.20spans.20overlap.20compiler-team.23929))
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 4 months ago)
    - concern: [path-to-stabilization](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-2980212568)
    - cc @**Wesley Wiser** if you can check again if the concern still stands
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: 3 months ago)
    - concern: [needs-a-sufficiently-long-deprecation-timeline](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024361071)
    - concern: [broad-change-needs-tlang-buy-in-possibly-fcp](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024361199)
    - concern: [needs-a-blog-post](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024360549)
  - "Compile UI tests as libraries by default" [compiler-team#842](https://github.com/rust-lang/compiler-team/issues/842) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Compile.20UI.20tests.20as.20libraries.20by.20default.20compiler-team.23842)) (last review activity: 7 months ago)
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: about 16 days ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
  - "Unify ui test inline error annotation style" [compiler-team#859](https://github.com/rust-lang/compiler-team/issues/859) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Unify.20ui.20test.20inline.20error.20annotation.20sty.E2.80.A6.20compiler-team.23859)) (last review activity: 2 months ago)
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864)) (last review activity: 4 months ago)
  - "Add support for specifying split-debuginfo=unpacked output directory" [compiler-team#871](https://github.com/rust-lang/compiler-team/issues/871) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20support.20for.20specifying.20split-debuginf.E2.80.A6.20compiler-team.23871)) (last review activity: 5 months ago)
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: 3 months ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
  - "Promote `armv7-unknown-linux-musleabihf` to tier 2 with host tools" [compiler-team#888](https://github.com/rust-lang/compiler-team/issues/888) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20.60armv7-unknown-linux-musleabihf.60.20.E2.80.A6.20compiler-team.23888)) (last review activity: 3 months ago)
    - concern: [lack-of-maintainers](https://github.com/rust-lang/compiler-team/issues/888#issuecomment-3035366625)
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: 3 months ago)
  - "Experiment with replacing specialization in libcore with downcasting" [compiler-team#904](https://github.com/rust-lang/compiler-team/issues/904) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Experiment.20with.20replacing.20specialization.20.E2.80.A6.20compiler-team.23904)) (last review activity: 3 months ago)
  - "Split the `-openbsd*` targets by version" [compiler-team#916](https://github.com/rust-lang/compiler-team/issues/916) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Split.20the.20.60-openbsd.2A.60.20targets.20by.20version.20compiler-team.23916)) (last review activity: about 14 days ago)
    - concern: [version-churn](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315239793)
    - concern: [nonsystematic-breakage](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315243666)
    - concern: [why-not-ports-rustc](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315251054)
  - "Add Wild linker as a preview component for x86_64 and AArch64 Linux GNU" [compiler-team#917](https://github.com/rust-lang/compiler-team/issues/917) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Wild.20linker.20as.20a.20preview.20component.20fo.E2.80.A6.20compiler-team.23917)) (last review activity: about 14 days ago)
    - concern: [unofficial project](https://github.com/rust-lang/compiler-team/issues/917#issuecomment-3330378645)
  - "Promote tvOS/watchOS/visionOS to Tier 2" [compiler-team#918](https://github.com/rust-lang/compiler-team/issues/918) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tvOS.2FwatchOS.2FvisionOS.20to.20Tier.202.20compiler-team.23918)) (last review activity: about 14 days ago)
  - "Rename `hexagon-unknown-{none-elf,linux-musl}` targets" [compiler-team#921](https://github.com/rust-lang/compiler-team/issues/921) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.60hexagon-unknown-.7Bnone-elf.2Clinux-m.E2.80.A6.20compiler-team.23921)) (last review activity: about 7 days ago)
  - "Optimize `repr(Rust)` enums by omitting tags in more cases involving uninhabited variants." [compiler-team#922](https://github.com/rust-lang/compiler-team/issues/922) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Optimize.20.60repr.28Rust.29.60.20enums.20by.20omitting.20t.E2.80.A6.20compiler-team.23922)) (last review activity: about 7 days ago)
  - "Remove diagnostic translation infrastructure" [compiler-team#924](https://github.com/rust-lang/compiler-team/issues/924) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Remove.20diagnostic.20translation.20infrastruct.E2.80.A6.20compiler-team.23924)) (last review activity: about 6 days ago)
    - concern: [people-like-structs](https://github.com/rust-lang/compiler-team/issues/924#issuecomment-3377416128)
  - "Stop bumping the bootstrap version on every rustc release" [compiler-team#925](https://github.com/rust-lang/compiler-team/issues/925) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stop.20bumping.20the.20bootstrap.20version.20on.20eve.E2.80.A6.20compiler-team.23925)) (last review activity: about 6 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [Promote `riscv64a23-unknown-linux-gnu` to Tier 2 with host tools (compiler-team#910)](https://github.com/rust-lang/compiler-team/issues/910#issuecomment-3302421999)
    - @_**|125250** @_**|119031** @_**|426609** @_**|116122** @_**|116118** @_**|259697** @_**|444933**
    - concerns: [no-hardware-available (by davidtwco)](https://github.com/rust-lang/compiler-team/issues/910#issuecomment-3302832854) [unclear-justification (by jieyouxu)](https://github.com/rust-lang/compiler-team/issues/910#issuecomment-3305030219)
  - merge: [sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets (rust#123617)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2135121317)
    - no pending checkboxes
    - concerns: [stabilization-scope (by wesleywiser)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2192330122)
  - merge: [Stabilize stack-protector (rust#146369)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3271397169)
    - @_**|116266** @_**|119031** @_**|426609** @_**|116122** @_**|444933**
    - concerns: [mitigation-enforcement (by Noratrieb)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3286402251)
  - merge: [Stabilize `-Zremap-path-scope` (rust#147611)](https://github.com/rust-lang/rust/pull/147611#issuecomment-3396899850)
    - @_**|123586** @_**|119031** @_**|248906** @_**|116122** @_**|444933**
    - no pending concerns
- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Proposal for a dedicated test suite for the parallel frontend" [compiler-team#906](https://github.com/rust-lang/compiler-team/issues/906) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Proposal.20for.20a.20dedicated.20test.20suite.20for.20t.E2.80.A6.20compiler-team.23906))
    - concern: [can-we-just-enhance-ui-suite](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137762379)
    - concern: [name-a-specific-reason](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137732970)
  - "target tier 3 support for hexagon-unknown-qurt" [compiler-team#919](https://github.com/rust-lang/compiler-team/issues/919) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/target.20tier.203.20support.20for.20hexagon-unknown.E2.80.A6.20compiler-team.23919))
    - concern: [legal-review](https://github.com/rust-lang/compiler-team/issues/919#issuecomment-3386039553)
  - "Turn emscripten-wasm-eh unwinding ABI on by default" [compiler-team#920](https://github.com/rust-lang/compiler-team/issues/920) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Turn.20emscripten-wasm-eh.20unwinding.20ABI.20on.20.E2.80.A6.20compiler-team.23920))
  - "Run main rust-analyzer tests in rust-lang/rust CI" [compiler-team#923](https://github.com/rust-lang/compiler-team/issues/923) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Run.20main.20rust-analyzer.20tests.20in.20rust-lang.E2.80.A6.20compiler-team.23923))
  - "Replace `rustc_target::specTarget::arch` string with enum" [compiler-team#926](https://github.com/rust-lang/compiler-team/issues/926) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Replace.20rustc_target.3A.3AspecTarget.3A.3Aarch.20st.E2.80.A6.20compiler-team.23926))
  - "Use `llvm-bitcode-linker` as the default linker for `nvptx64-nvidia-cuda`" [compiler-team#927](https://github.com/rust-lang/compiler-team/issues/927) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Use.20.60llvm-bitcode-linker.60.20as.20the.20default.20.E2.80.A6.20compiler-team.23927))
  - "Move annotation for profiling compiler-generated moves and copies." [compiler-team#928](https://github.com/rust-lang/compiler-team/issues/928) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Move.20annotation.20for.20profiling.20compiler-ge.E2.80.A6.20compiler-team.23928))
  - "Rename `//@ add-core-stubs` to `//@ add-minicore`" [compiler-team#930](https://github.com/rust-lang/compiler-team/issues/930) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.60.2F.2F.40.20add-core-stubs.60.20to.20.60.2F.2F.40.20add-m.E2.80.A6.20compiler-team.23930))
  - "Move unreachable code lint from HIR type check to a proper lint" [compiler-team#931](https://github.com/rust-lang/compiler-team/issues/931) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Move.20unreachable.20code.20lint.20from.20HIR.20type.20.E2.80.A6.20compiler-team.23931))
  - "Promote `riscv64a23-unknown-linux-gnu` to Tier 2 without host tools" [compiler-team#932](https://github.com/rust-lang/compiler-team/issues/932) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20.60riscv64a23-unknown-linux-gnu.60.20to.E2.80.A6.20compiler-team.23932))
  - "Update bundled musl to 1.2.5" [rust#142682](https://github.com/rust-lang/rust/pull/142682)
  - "Impls and impl items inherit `dead_code` lint level of the corresponding traits and trait items" [rust#144113](https://github.com/rust-lang/rust/pull/144113)
  - "Stabilize -Zno-jump-tables into -Cjump-tables=bool" [rust#145974](https://github.com/rust-lang/rust/pull/145974)
  - "repr(transparent): do not consider repr(C) types to be 1-ZST" [rust#147185](https://github.com/rust-lang/rust/pull/147185)
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - "Fix backtraces with `-C panic=abort` on linux; emit unwind tables by default" [rust#143613](https://github.com/rust-lang/rust/pull/143613)
  - "Remove current code for embedding command-line args in PDB" [rust#147022](https://github.com/rust-lang/rust/pull/147022)
- Other teams finalized FCPs
  - "Forbid freely casting lifetime bounds of dyn-types" [rust#136776](https://github.com/rust-lang/rust/pull/136776)
  - "Fix accidental type inference in array coercion" [rust#140283](https://github.com/rust-lang/rust/pull/140283)
  - "Document MaybeUninit bit validity" [rust#140463](https://github.com/rust-lang/rust/pull/140463)
  - "Allow `&raw [mut | const]` for union field in safe code" [rust#141469](https://github.com/rust-lang/rust/pull/141469)
  - "prefer alias candidates for sizedness + auto trait goals " [rust#144064](https://github.com/rust-lang/rust/pull/144064)
  - "Do not materialise X in [X; 0] when X is unsizing a const" [rust#145277](https://github.com/rust-lang/rust/pull/145277)
  - "Allow borrowing array elements from packed structs with ABI align <= packed align" [rust#145419](https://github.com/rust-lang/rust/pull/145419)
  - "Reject invalid literal suffixes in tuple indexing, tuple struct indexing, and struct field name position" [rust#145463](https://github.com/rust-lang/rust/pull/145463)
  - "Opportunistically split `!=` to successfully parse never type" [rust#145536](https://github.com/rust-lang/rust/pull/145536)
  - "docs(style): Specify the frontmatter style" [rust#145617](https://github.com/rust-lang/rust/pull/145617)
  - "Stabilize `std::panic::Location::file_as_c_str`" [rust#145664](https://github.com/rust-lang/rust/pull/145664)
  - "the `#[track_caller]` shim should not inherit `#[no_mangle]`" [rust#145724](https://github.com/rust-lang/rust/pull/145724)
  - "Temporary lifetime extension for blocks" [rust#146098](https://github.com/rust-lang/rust/pull/146098)
  - "Deny-by-default never type lints" [rust#146167](https://github.com/rust-lang/rust/pull/146167)
  - "Allow specifying multiple bounds for same associated item, except in trait objects" [rust#146593](https://github.com/rust-lang/rust/pull/146593)
  - "`-Znext-solver` instantiate predicate binder without recanonicalizing goal" [rust#146725](https://github.com/rust-lang/rust/pull/146725)
  - "Allow passing `expr` metavariable to `cfg`" [rust#146961](https://github.com/rust-lang/rust/pull/146961)
  - "[beta-1.91] Warn on future errors from temporary lifetimes shortening in Rust 1.92" [rust#147056](https://github.com/rust-lang/rust/pull/147056)
  - "unused_must_use: Don't warn on `Result<(), Uninhabited>` or `ControlFlow<Uninhabited, ()>`" [rust#147382](https://github.com/rust-lang/rust/pull/147382)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "fix panic when rustc tries to reduce intermediate filenames len with utf8" [rust#148018](https://github.com/rust-lang/rust/pull/148018)
  - Authored by tardyp (thanks!)
  - Fixes #147975 (maybe P-critical) from yesterdays' beta crater run
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23148018.3A.20beta-backport.20nomination/near/546649787), in favor
- :beta: "Revert monomorphization for `func::{closure#0}`" [rust#148023](https://github.com/rust-lang/rust/pull/148023)
  - Authored by Kivooeo (thanks!)
  - Fixes #147976 (reverting #143290)
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23148023.3A.20beta-backport.20nomination/near/546659112) (probably the safest choice)
- No stable nominations for `T-compiler` this time.

[T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-t-compiler

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-t-compiler)
- No PRs waiting on `T-compiler` this time.
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [61 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [42 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [3 P-critical, 5 P-high, 4 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 2 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 30 P-high, 100 P-medium, 25 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "hidden type for `impl ...` captures lifetime that does not appear in bounds" [rust#147529](https://github.com/rust-lang/rust/issues/147529)
  - Fixed by #147566 (beta backport accepted, will be backported)
- "regression: ICE byte index is not a char boundary" [rust#147975](https://github.com/rust-lang/rust/issues/147975)
  - fixed by #148018 (beta backport nominaed)

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "regression: ICE all spans must be disjoint" [rust#147973](https://github.com/rust-lang/rust/issues/147973)
  - (Maybe P-high) Needs scrutiny/bisection
  - Could be fixed by #147849 (waiting on [mcp#929](https://github.com/rust-lang/compiler-team/issues/929))
- "regression: queries overflowed the depth limit" [rust#147976](https://github.com/rust-lang/rust/issues/147976)
  - Fixed by #148023 (beta backport nominaed)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2025-10-21](https://github.com/rust-lang/rustc-perf/blob/master/triage/2025/2025-10-20.md)

Fairly busy week, with lots of mixed results. However, overall we ended with a
slight improvement on average.

Triage done by **@simulacrum**.
Revision range: [956f47c3..4068bafe](https://perf.rust-lang.org/?start=956f47c32f1bd97b22cd702d7ccf78f0f0d42c34&end=4068bafedd8ba724e332a5221c06a6fa531a30d2&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.2%, 0.8%]   | 21    |
| Regressions (secondary)  | 0.6%  | [0.1%, 2.5%]   | 78    |
| Improvements (primary)   | -0.8% | [-7.3%, -0.1%] | 88    |
| Improvements (secondary) | -0.6% | [-5.4%, -0.1%] | 87    |
| All  (primary)           | -0.6% | [-7.3%, 0.8%]  | 109   |

2 Regressions, 5 Improvements, 10 Mixed; 5 of them in rollups
39 artifact comparisons made in total

#### Regressions

Rollup of 11 pull requests [#147745](https://github.com/rust-lang/rust/pull/147745) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=57ef8d642d21965304bde849bab4f389b4353e27&end=402ce0ef07d5db9ba26ae5c37ce6aff0c9002052&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 1.0%  | [0.8%, 2.0%]   | 7     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 1     |
| All  (primary)                 | -     | -              | 0     |

Suspecting https://github.com/rust-lang/rust/pull/147718, but since regressions
are only to match-stress it's unlikely to be particularly interesting. Possibly
a missing #[inline] to regain instruction counts.

deduced_param_attrs: check Freeze on monomorphic types. [#147695](https://github.com/rust-lang/rust/pull/147695) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c8a31b780d5415358566a20b94912620a3f27067&end=0c0f27afd42c977d5ea5f6df2c8f5bc192bdc67a&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.3%, 0.4%] | 3     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.3% | [0.3%, 0.4%] | 3     |

Appears to be a regression limited to the bitmaps benchmark. Most other
benchmarks, though below noise threshold, are slightly improved or neutral. The
initial perf run in PR was also a strict improvement. It doesn't seem like a
spurious regression, but also doesn't seem like it merits further followup.

#### Improvements

Restrict sysroot crate imports to those defined in this repo. [#143548](https://github.com/rust-lang/rust/pull/143548) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4f08307f6efdbca86d27beecd257fad9913192e9&end=28d0a4a205f9e511ad2f51ee79a4aa19a704a455&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -2.8% | [-2.8%, -2.8%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -2.8% | [-2.8%, -2.8%] | 1     |


rustdoc-search: stringdex 0.0.2 [#147660](https://github.com/rust-lang/rust/pull/147660) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a41214f9bd7ce869d21898f31107f92c90a9112f&end=f46475914de626785090a05ae037578aaa119fc8&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.8% | [-2.5%, -0.2%] | 5     |
| Improvements (secondary) | -1.1% | [-5.7%, -0.3%] | 9     |
| All  (primary)                 | -0.8% | [-2.5%, -0.2%] | 5     |


Rollup of 6 pull requests [#147842](https://github.com/rust-lang/rust/pull/147842) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0c0f27afd42c977d5ea5f6df2c8f5bc192bdc67a&end=6380899f32599ea25615d4ccd708d0e8da652b0c&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 1     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.4% | [-1.1%, -0.1%] | 8     |
| All  (primary)                 | -     | -              | 0     |


Rollup of 4 pull requests [#147884](https://github.com/rust-lang/rust/pull/147884) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c6efb9019b3169fc672248339dbbf13e6a134de3&end=4ddbb6051271237f4192333e06b8129148995eef&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.2%] | 2     |
| Improvements (secondary) | -0.2% | [-0.3%, -0.1%] | 5     |
| All  (primary)                 | -0.3% | [-0.3%, -0.2%] | 2     |

Add a `!=` check to `ChunkedBitSet::union`. [#147619](https://github.com/rust-lang/rust/pull/147619) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5413f7d39cae07b7b3809973fe201d21960a18aa&end=4f08307f6efdbca86d27beecd257fad9913192e9&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 2.9%  | [2.9%, 2.9%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -3.5% | [-9.3%, -0.1%] | 8     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -2.8% | [-9.3%, 2.9%]  | 9     |

One regression looks spurious so manually moved to improvements.

#### Mixed

Change int-to-ptr transmute lowering back to inttoptr [#147541](https://github.com/rust-lang/rust/pull/147541) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9b8264604ef800b5539d04bf78ebdef5c5fa4968&end=ed1d94311e7ed53eabb5667ef577802d88d1aaee&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 1     |
| Regressions (secondary)  | 2.2%  | [0.1%, 2.9%]   | 8     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.6%, -0.1%] | 12    |
| All  (primary)                 | 0.2%  | [0.2%, 0.2%]   | 1     |

Mitigation for soundness problems, costs are worth it.

only call polymorphic array iter drop machinery when the type requires it [#147353](https://github.com/rust-lang/rust/pull/147353) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4b94758d2ba7d0ef71ccf5fde29ce4bc5d6fe2a4&end=fb24b04b096a980bffd80154f6aba22fd07cb3d9&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.7%, 0.7%]   | 2     |
| Regressions (secondary)  | 0.3%  | [0.1%, 1.1%]   | 4     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.1% | [-0.1%, -0.0%] | 2     |
| All  (primary)                 | 0.7%  | [0.7%, 0.7%]   | 2     |

Primary regressions to cargo and cranelift-codegen look real. However, previous
runs on the same PR saw oscillating results, and since this likely affects CGU
partitioning it doesn't seem unexpected that would be the case. Marking as
triaged.

Rollup of 12 pull requests [#147662](https://github.com/rust-lang/rust/pull/147662) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2f7620a5ccfea7d59d1f500e2a2e59cf1c867a1b&end=e100792918c8bd9e0cb830f96fc9b171e8892fa1&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.3%, 0.5%]   | 2     |
| Regressions (secondary)  | 0.2%  | [0.0%, 0.5%]   | 3     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.2%] | 2     |
| Improvements (secondary) | -0.1% | [-0.1%, -0.1%] | 3     |
| All  (primary)                 | 0.1%  | [-0.4%, 0.5%]  | 4     |

Per PR comment, perf change is from avoiding redundant UB checks:
https://github.com/rust-lang/rust/pull/147620#issuecomment-3404145907.

Regressions don't look spurious but seem unlikely to be practically
investigated to any real effect due to the nature of this change affecting lots
of generated code, and seeming like a good change on a surface level.

Rollup of 12 pull requests [#147692](https://github.com/rust-lang/rust/pull/147692) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=844264adda6f41ca6d0d61c4bcac0f263fc5072f&end=235a4c083eb2a2bfe8779d211c3232f39396de00&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.1%, 0.9%]   | 20    |
| Regressions (secondary)  | 0.6%  | [0.0%, 2.7%]   | 48    |
| Improvements (primary)   | -0.4% | [-0.4%, -0.2%] | 3     |
| Improvements (secondary) | -0.1% | [-0.1%, -0.0%] | 5     |
| All  (primary)                 | 0.2%  | [-0.4%, 0.9%]  | 23    |

Change identification appears to be ongoing on the PR, with no clear cause as yet identified.

prefer alias candidates for sizedness + auto trait goals  [#144064](https://github.com/rust-lang/rust/pull/144064) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3f2a5921a451378f219edec28810f5f2f45cf1be&end=57ef8d642d21965304bde849bab4f389b4353e27&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.1%, 0.8%]   | 16    |
| Regressions (secondary)  | 0.5%  | [0.2%, 1.8%]   | 19    |
| Improvements (primary)   | -0.2% | [-0.6%, -0.1%] | 6     |
| Improvements (secondary) | -0.5% | [-0.7%, -0.3%] | 8     |
| All  (primary)                 | 0.2%  | [-0.6%, 0.8%]  | 22    |

Fix for a regression. Generally fairly neutral so further investigation doesn't seem warranted.

Use regular Vec in BitSet. [#147644](https://github.com/rust-lang/rust/pull/147644) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f5242367f4acf0130c9b68e6956531b2cb73bd38&end=779e19d8baa3e3625bd4fc5c85cbb2ad47b43155&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 0.7%]   | 16    |
| Regressions (secondary)  | 0.3%  | [0.0%, 0.8%]   | 26    |
| Improvements (primary)   | -0.4% | [-0.7%, -0.1%] | 26    |
| Improvements (secondary) | -0.8% | [-3.0%, -0.1%] | 69    |
| All  (primary)                 | -0.1% | [-0.7%, 0.7%]  | 42    |

Marking as triaged as it's overall a slight improvement.

`TaskDeps` improvements [#147508](https://github.com/rust-lang/rust/pull/147508) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=53a741fc4b8cf2d8e7b1b2336ed8edf889db84f4&end=28c4c7d7abced7b35c49f38149b9cb6ea27dd2a6&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.5%, 0.5%]   | 1     |
| Regressions (secondary)  | 0.5%  | [0.2%, 0.8%]   | 17    |
| Improvements (primary)   | -0.4% | [-1.0%, -0.1%] | 25    |
| Improvements (secondary) | -0.7% | [-1.2%, -0.2%] | 22    |
| All  (primary)                 | -0.4% | [-1.0%, 0.5%]  | 26    |

Improvements definitely outweigh regressions.

Pre-compute MIR CFG caches for borrowck and other analyses [#142540](https://github.com/rust-lang/rust/pull/142540) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f46475914de626785090a05ae037578aaa119fc8&end=28fad9598975af7734be05116b3c5fc74b720d87&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.7%  | [1.0%, 2.6%]   | 4     |
| Regressions (secondary)  | 0.9%  | [0.1%, 1.6%]   | 6     |
| Improvements (primary)   | -0.2% | [-0.3%, -0.1%] | 15    |
| Improvements (secondary) | -0.3% | [-0.4%, -0.2%] | 13    |
| All  (primary)                 | 0.2%  | [-0.3%, 2.6%]  | 19    |

> I think this is fine. We're seeing enough wins for more common Rust code
> (serde, image, syn, etc) that I think it is fine to take the hit for the two
> outliers (tt-muncher and cranelift-codegen for some reason), I do think it
> could be because of cloning taking more instructions than what gets saved,
> but I don't think that is preventable.

https://github.com/rust-lang/rust/pull/142540#issuecomment-3416857137

I think I'm broadly in agreement with this summary of the results.

Limit impl_trait_header query to only trait impls [#144607](https://github.com/rust-lang/rust/pull/144607) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=28fad9598975af7734be05116b3c5fc74b720d87&end=2170b4da847c9d75d400b13ba53bd47f749233bd&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 1     |
| Regressions (secondary)  | 0.2%  | [0.1%, 0.2%]   | 11    |
| Improvements (primary)   | -0.6% | [-0.8%, -0.4%] | 7     |
| Improvements (secondary) | -1.8% | [-2.6%, -0.1%] | 4     |
| All  (primary)                 | -0.5% | [-0.8%, 0.2%]  | 8     |

Some regressions on smaller benchmarks. My guess is that this hurts the case
where there's lots of opt function lookups for that are now two query cache hit
lookups rather than just one? But that seems to generally be less likely in our
benchmarks than showing an improvement, so willing to just accept the
regressions.

Simplify trivial constants in SimplifyConstCondition [#147654](https://github.com/rust-lang/rust/pull/147654) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ab1d2444533d829e2d5cff6634cd3c70de6d7103&end=c8a31b780d5415358566a20b94912620a3f27067&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.5%, 0.5%]   | 1     |
| Regressions (secondary)  | 0.6%  | [0.2%, 1.1%]   | 4     |
| Improvements (primary)   | -0.5% | [-0.9%, -0.2%] | 13    |
| Improvements (secondary) | -0.2% | [-0.3%, -0.1%] | 8     |
| All  (primary)                 | -0.4% | [-0.9%, 0.5%]  | 14    |

Improvements outweigh regressions.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Change codegen of LLVM intrinsics to be name-based, and add llvm linkage support for `bf16(xN)` and `i1xN`" [rust#140763](https://github.com/rust-lang/rust/pull/140763) (last review activity: 3 months ago)
  - cc @**Nikita Popov**
- "sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets" [rust#123617](https://github.com/rust-lang/rust/pull/123617) (last review activity: 2 months ago)
  - Seems it's waiting on both T-lang and T-compiler ([comment](https://github.com/rust-lang/rust/pull/123617#issuecomment-3024833312)) cc @**Wesley Wiser** do you remember the status here?
- "Provide additional context to errors involving const traits" [rust#144194](https://github.com/rust-lang/rust/pull/144194) (last review activity: 2 months ago)
  - guess we can probably reassign

Next meetings' agenda draft: [hackmd link](https://hackmd.io/B2RgB1VnTW-Uq6woIEaRcw)
