---
tags: weekly, rustc
type: docs
note_id: B2RgB1VnTW-Uq6woIEaRcw
---

# T-compiler Meeting Agenda 2025-10-30

## Announcements

- Today Rust release 1.91, [blog post](https://github.com/Mark-Simulacrum/blog.rust-lang.org/blob/release-blog/content/Rust-1.91.0.md)
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- WG-async design meeting <time:2025-10-2325T19:00:00+02:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Doc comments and attributes on macro arms" [compiler-team#935](https://github.com/rust-lang/compiler-team/issues/935) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Doc.20comments.20and.20attributes.20on.20macro.20arms.20compiler-team.23935))
    - concern: [lang](https://github.com/rust-lang/compiler-team/issues/935#issuecomment-3444181159)
- Old MCPs (not seconded, take a look)
  - "Compile UI tests as libraries by default" [compiler-team#842](https://github.com/rust-lang/compiler-team/issues/842) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Compile.20UI.20tests.20as.20libraries.20by.20default.20compiler-team.23842)) (last review activity: 7 months ago)
  - "Unify ui test inline error annotation style" [compiler-team#859](https://github.com/rust-lang/compiler-team/issues/859) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Unify.20ui.20test.20inline.20error.20annotation.20sty.E2.80.A6.20compiler-team.23859)) (last review activity: 2 months ago)
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864)) (last review activity: 4 months ago)
  - "Add support for specifying split-debuginfo=unpacked output directory" [compiler-team#871](https://github.com/rust-lang/compiler-team/issues/871) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20support.20for.20specifying.20split-debuginf.E2.80.A6.20compiler-team.23871)) (last review activity: 6 months ago)
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: 3 months ago)
  - "Experiment with replacing specialization in libcore with downcasting" [compiler-team#904](https://github.com/rust-lang/compiler-team/issues/904) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Experiment.20with.20replacing.20specialization.20.E2.80.A6.20compiler-team.23904)) (last review activity: 3 months ago)
  - "Promote tvOS/watchOS/visionOS to Tier 2" [compiler-team#918](https://github.com/rust-lang/compiler-team/issues/918) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tvOS.2FwatchOS.2FvisionOS.20to.20Tier.202.20compiler-team.23918)) (last review activity: about 21 days ago)
  - "Rename `hexagon-unknown-{none-elf,linux-musl}` targets" [compiler-team#921](https://github.com/rust-lang/compiler-team/issues/921) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.60hexagon-unknown-.7Bnone-elf.2Clinux-m.E2.80.A6.20compiler-team.23921)) (last review activity: about 13 days ago)
  - "Optimize `repr(Rust)` enums by omitting tags in more cases involving uninhabited variants." [compiler-team#922](https://github.com/rust-lang/compiler-team/issues/922) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Optimize.20.60repr.28Rust.29.60.20enums.20by.20omitting.20t.E2.80.A6.20compiler-team.23922)) (last review activity: about 13 days ago)
  - "Remove diagnostic translation infrastructure" [compiler-team#924](https://github.com/rust-lang/compiler-team/issues/924) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Remove.20diagnostic.20translation.20infrastruct.E2.80.A6.20compiler-team.23924)) (last review activity: about 13 days ago)
    - concern: [people-like-structs](https://github.com/rust-lang/compiler-team/issues/924#issuecomment-3377416128)
  - "Stop bumping the bootstrap version on every rustc release" [compiler-team#925](https://github.com/rust-lang/compiler-team/issues/925) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stop.20bumping.20the.20bootstrap.20version.20on.20eve.E2.80.A6.20compiler-team.23925)) (last review activity: about 13 days ago)
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
    - @_**|119031** @_**|248906** @_**|116122** @_**|444933**
    - no pending concerns
  - "Fix ICE when applying test macro to crate root" [rust#147841](https://github.com/rust-lang/rust/pull/147841)
  - merge: [const-eval: fix and re-enable pointer fragment support (rust#148259)](https://github.com/rust-lang/rust/pull/148259#issuecomment-3463447259)
    - @_**|116009** @_**|239881** @_**|116883** @_**|125270**
    - no pending concerns
- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Proposal for a dedicated test suite for the parallel frontend" [compiler-team#906](https://github.com/rust-lang/compiler-team/issues/906) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Proposal.20for.20a.20dedicated.20test.20suite.20for.20t.E2.80.A6.20compiler-team.23906))
    - concern: [name-a-specific-reason](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137732970)
    - concern: [can-we-just-enhance-ui-suite](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137762379)
  - "target tier 3 support for hexagon-unknown-qurt" [compiler-team#919](https://github.com/rust-lang/compiler-team/issues/919) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/target.20tier.203.20support.20for.20hexagon-unknown.E2.80.A6.20compiler-team.23919))
    - concern: [legal-review](https://github.com/rust-lang/compiler-team/issues/919#issuecomment-3386039553)
  - "Turn emscripten-wasm-eh unwinding ABI on by default" [compiler-team#920](https://github.com/rust-lang/compiler-team/issues/920) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Turn.20emscripten-wasm-eh.20unwinding.20ABI.20on.20.E2.80.A6.20compiler-team.23920))
  - "Run main rust-analyzer tests in rust-lang/rust CI" [compiler-team#923](https://github.com/rust-lang/compiler-team/issues/923) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Run.20main.20rust-analyzer.20tests.20in.20rust-lang.E2.80.A6.20compiler-team.23923))
  - "Replace `rustc_target::specTarget::arch` string with enum" [compiler-team#926](https://github.com/rust-lang/compiler-team/issues/926) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Replace.20rustc_target.3A.3AspecTarget.3A.3Aarch.20st.E2.80.A6.20compiler-team.23926))
  - "Omit suggestions when spans overlap" [compiler-team#929](https://github.com/rust-lang/compiler-team/issues/929) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Omit.20suggestions.20when.20spans.20overlap.20compiler-team.23929))
  - "Move unreachable code lint from HIR type check to a proper lint" [compiler-team#931](https://github.com/rust-lang/compiler-team/issues/931) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Move.20unreachable.20code.20lint.20from.20HIR.20type.20.E2.80.A6.20compiler-team.23931))
  - "Promote `riscv64a23-unknown-linux-gnu` to Tier 2 without host tools" [compiler-team#932](https://github.com/rust-lang/compiler-team/issues/932) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20.60riscv64a23-unknown-linux-gnu.60.20to.E2.80.A6.20compiler-team.23932))
  - "Switch to v0 mangling for symbols exceeding 64KB characters on targets generated PDB debug info" [compiler-team#934](https://github.com/rust-lang/compiler-team/issues/934) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Switch.20to.20v0.20mangling.20for.20symbols.20exceedi.E2.80.A6.20compiler-team.23934))
  - "Creating a new maintainable debuginfo test suite" [compiler-team#936](https://github.com/rust-lang/compiler-team/issues/936) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Creating.20a.20new.20maintainable.20debuginfo.20tes.E2.80.A6.20compiler-team.23936))
  - "Use `annotate-snippets` as the default emitter on nightly" [compiler-team#937](https://github.com/rust-lang/compiler-team/issues/937) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Use.20.60annotate-snippets.60.20as.20the.20default.20em.E2.80.A6.20compiler-team.23937))
  - "Use v0 mangling by default on nightly" [compiler-team#938](https://github.com/rust-lang/compiler-team/issues/938) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Use.20v0.20mangling.20by.20default.20on.20nightly.20compiler-team.23938))
  - "remove support for `typeof`" [compiler-team#940](https://github.com/rust-lang/compiler-team/issues/940) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/remove.20support.20for.20.60typeof.60.20compiler-team.23940))
  - "Update bundled musl to 1.2.5" [rust#142682](https://github.com/rust-lang/rust/pull/142682)
  - "Emit error when using path-segment keyword as cfg pred" [rust#146978](https://github.com/rust-lang/rust/pull/146978)
- Accepted MCPs
  - "Use `llvm-bitcode-linker` as the default linker for `nvptx64-nvidia-cuda`" [compiler-team#927](https://github.com/rust-lang/compiler-team/issues/927) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Use.20.60llvm-bitcode-linker.60.20as.20the.20default.20.E2.80.A6.20compiler-team.23927))
  - "Move annotation for profiling compiler-generated moves and copies." [compiler-team#928](https://github.com/rust-lang/compiler-team/issues/928) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Move.20annotation.20for.20profiling.20compiler-ge.E2.80.A6.20compiler-team.23928))
  - "Rename `//@ add-core-stubs` to `//@ add-minicore`" [compiler-team#930](https://github.com/rust-lang/compiler-team/issues/930) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.60.2F.2F.40.20add-core-stubs.60.20to.20.60.2F.2F.40.20add-m.E2.80.A6.20compiler-team.23930))
- MCPs blocked on unresolved concerns
  - "Split the `-openbsd*` targets by version" [compiler-team#916](https://github.com/rust-lang/compiler-team/issues/916) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Split.20the.20.60-openbsd.2A.60.20targets.20by.20version.20compiler-team.23916)) (last review activity: about 21 days ago)
    - concern: [why-not-ports-rustc](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315251054)
    - concern: [version-churn](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315239793)
    - concern: [nonsystematic-breakage](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315243666)
  - "Add Wild linker as a preview component for x86_64 and AArch64 Linux GNU" [compiler-team#917](https://github.com/rust-lang/compiler-team/issues/917) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Wild.20linker.20as.20a.20preview.20component.20fo.E2.80.A6.20compiler-team.23917)) (last review activity: about 21 days ago)
    - concern: [unofficial project](https://github.com/rust-lang/compiler-team/issues/917#issuecomment-3330378645)
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: 3 months ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
  - "Promote `armv7-unknown-linux-musleabihf` to tier 2 with host tools" [compiler-team#888](https://github.com/rust-lang/compiler-team/issues/888) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20.60armv7-unknown-linux-musleabihf.60.20.E2.80.A6.20compiler-team.23888)) (last review activity: 3 months ago)
    - concern: [lack-of-maintainers](https://github.com/rust-lang/compiler-team/issues/888#issuecomment-3035366625)
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: about 23 days ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 4 months ago)
    - concern: [path-to-stabilization](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-2980212568)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: 3 months ago)
    - concern: [needs-a-sufficiently-long-deprecation-timeline](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024361071)
    - concern: [broad-change-needs-tlang-buy-in-possibly-fcp](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024361199)
    - concern: [needs-a-blog-post](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024360549)
- Finalized FCPs (disposition merge)
  - "Fix backtraces with `-C panic=abort` on linux; emit unwind tables by default" [rust#143613](https://github.com/rust-lang/rust/pull/143613)
  - "Stabilize -Zno-jump-tables into -Cjump-tables=bool" [rust#145974](https://github.com/rust-lang/rust/pull/145974)
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
  - "Add warn-by-default lint for visibility on `const _` declarations" [rust#147136](https://github.com/rust-lang/rust/pull/147136)
  - "unused_must_use: Don't warn on `Result<(), Uninhabited>` or `ControlFlow<Uninhabited, ()>`" [rust#147382](https://github.com/rust-lang/rust/pull/147382)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No beta nominations for `T-compiler` this time.
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

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [59 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [40 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 3 P-high, 6 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 2 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 30 P-high, 100 P-medium, 25 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

Note: all other regressions from the beta crater run are either closed or classified as P-medium/low

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "regression: ICE no resolution found for import" [rust#147966](https://github.com/rust-lang/rust/issues/147966)
  - Seems a case of "previously: didn't compile" -> "now: emits ICE" (see [comment](https://github.com/rust-lang/rust/issues/147966#issuecomment-3450354199)) so maybe downgrade to P-medium?
- "regression: queries overflowed the depth limit" [rust#147976](https://github.com/rust-lang/rust/issues/147976)
  - from [comment](https://github.com/rust-lang/rust/issues/147976#issuecomment-3437382429):
    > all that (#141626) does is shift when certain symbols are computed. Libraries failing now would have just failed when the async fn would have gotten called.
  - Also this one too can probably be downgraded (or even closed?)
- "regression: overflow evaluating the requirement" [rust#147967](https://github.com/rust-lang/rust/issues/147967)
  - unsure about this. From [comment](https://github.com/rust-lang/rust/issues/147967#issuecomment-3445713549):
    > crate "exhaustive-map": The "regression" is due to the crate using `ui_test`, which checks for the exact diagnostics output for compiler errors. This isn't covered within the stability guarantees. The change is probably due to the improved diagnostics from #144039, which causes long type names to be shortened in more places in compiler errors.

    > crate "undermoon": it seems that the code already almost reached the recursion limit on stable, and something in beta caused it to slightly go over that limit. I assume that this is acceptable breakage?

### Beta regressions

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs](https://github.com/rust-lang/rustc-perf/tree/master/triage/2025/2025-10-27.md)

Mostly negative week, coming almost entirely from adding sizedness bounds in [#142712](https://github.com/rust-lang/rust/pull/142712). Other than that, we got a nice win for async code from state transform optimization in [#147493](https://github.com/rust-lang/rust/pull/147493) and quite a few smaller improvements from codegen optimization in [#147890](https://github.com/rust-lang/rust/pull/147890).

Triage done by **@panstromek**.
Revision range: [4068bafe..23fced0f](https://perf.rust-lang.org/?start=4068bafedd8ba724e332a5221c06a6fa531a30d2&end=23fced0fcc5e0ec260d25f04a8b78b269e5e90f0&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.2%, 3.7%]    | 113   |
| Regressions (secondary)  | 0.5%  | [0.1%, 1.7%]    | 75    |
| Improvements (primary)   | -0.4% | [-0.7%, -0.2%]  | 3     |
| Improvements (secondary) | -2.3% | [-20.8%, -0.1%] | 30    |
| All  (primary)           | 0.7%  | [-0.7%, 3.7%]   | 116   |


2 Regressions, 2 Improvements, 7 Mixed; 2 of them in rollups
42 artifact comparisons made in total

#### Regressions

Rollup of 5 pull requests [#148059](https://github.com/rust-lang/rust/pull/148059) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=38bc2468dea062750e767bdd5c25f8279275baa0&end=75948c8bb3bd37f1e8ee20273a04edea4c1f84f8&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.2% | [0.1%, 0.4%] | 35    |
| Regressions (secondary)  | 0.2% | [0.0%, 1.5%] | 34    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.2% | [0.1%, 0.4%] | 35    |

Identified by @Zalathar here: https://github.com/rust-lang/rust/pull/148054#issuecomment-3445258937, will be addressed in a followup.

Mark desugared range expression spans with DesugaringKind::RangeExpr [#146069](https://github.com/rust-lang/rust/pull/146069) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b1b464d6f61ec8c4e609c1328106378c066a9729&end=23fced0fcc5e0ec260d25f04a8b78b269e5e90f0&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.1%, 0.3%]   | 8     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.3%]   | 13    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.1% | [-0.1%, -0.1%] | 1     |
| All  (primary)           | 0.2%  | [0.1%, 0.3%]   | 8     |

Regression was deemed acceptable here: https://github.com/rust-lang/rust/pull/146069#issuecomment-3392694635

Note that the regression mostly affects very short benchmarks (incr-unchanged and such), so this is not as bad as it might seem from the summary.

#### Improvements

refactor: Move to anstream + anstyle for styling [#147207](https://github.com/rust-lang/rust/pull/147207) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4d94478977b5d6c0caa1e66390c6b137520af368&end=dc1feabef242259d61bd930713de3250577c1c71&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.1% | [-0.2%, -0.1%] | 11    |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.1% | [-0.2%, -0.1%] | 11    |


StateTransform: Only load pin field once. [#147493](https://github.com/rust-lang/rust/pull/147493) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=04ff05c9c0cfbca33115c5f1b8bb20a66a54b799&end=79966ae420f38c5861d177356a3446023c090d6d&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.9% | [-1.9%, -0.3%] | 15    |
| All  (primary)           | -     | -              | 0     |


#### Mixed

Remove current code for embedding command-line args in PDB [#147022](https://github.com/rust-lang/rust/pull/147022) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=37ec98f5d33c0876a9ffa5ee17dc0895659efe37&end=96fe3c31c2ec385f3d3263346bcdde3d118cdaf6&stat=instructions:u)

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 1.2%  | [1.2%, 1.2%]    | 1     |
| Regressions (secondary)  | 1.2%  | [1.2%, 1.2%]    | 1     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.2%]  | 6     |
| Improvements (secondary) | -4.2% | [-20.9%, -0.3%] | 14    |
| All  (primary)           | -0.1% | [-0.4%, 1.2%]   | 7     |

`syn` regression is noise.

Rollup of 7 pull requests [#147957](https://github.com/rust-lang/rust/pull/147957) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0d7813d9a227efc1e5fee4716615b4c417dafcbe&end=b2ee1b333aea9951c3eefa4967098cc763de59ca&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.1%  | [0.1%, 0.1%]   | 2     |
| Regressions (secondary)  | 0.2%  | [0.0%, 0.7%]   | 6     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.2% | [-0.2%, -0.2%] | 1     |
| All  (primary)           | 0.1%  | [0.1%, 0.1%]   | 2     |

Small regression in the frontend on a few benchmarks. Regressions seem to come from `incremental_verify_ich` which doesn't run by default and `check_mod_privacy`, so I suspect this is either https://github.com/rust-lang/rust/pull/147932 (more code in std), or maybe https://github.com/rust-lang/rust/pull/147768 (refactor on the frontend), or https://github.com/rust-lang/rust/pull/142339 (more frontend work). Unfortunately, we don't have unrolled perf builds for PRs in this rollup, so it's a bit complicated to investigate further. Changes are small, so I don't think this is worth more investigation.

Replace NullOp::SizeOf and NullOp::AlignOf by lang items. [#147793](https://github.com/rust-lang/rust/pull/147793) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7838ce1a3a0046d02c8a0d30d54465c39cceb8de&end=4b3ba5844e8831c9b3ee5a5643cdff5da0677426&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.1%, 0.5%]   | 3     |
| Regressions (secondary)  | 0.3%  | [0.1%, 0.7%]   | 30    |
| Improvements (primary)   | -0.4% | [-0.7%, -0.1%] | 4     |
| Improvements (secondary) | -0.3% | [-0.7%, -0.1%] | 5     |
| All  (primary)           | -0.1% | [-0.7%, 0.5%]  | 7     |

Justified by https://github.com/rust-lang/rust/pull/147793#issuecomment-3424111320 and https://github.com/rust-lang/rust/pull/147793#issuecomment-3424123985. Post-merge results seem worse, mostly because there's some `deep-vector` spike that came back in https://github.com/rust-lang/rust/pull/142712 (possibly noise?).

privacy: Introduce some caching to type visiting in `DefIdVisitorSkeleton` [#147486](https://github.com/rust-lang/rust/pull/147486) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=11d2046fe9962720558cb15f72541f7fd170dec9&end=6501e64fcb02d22b49d6e59d10a7692ec8095619&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.0%, 0.4%]   | 17    |
| Regressions (secondary)  | 0.7%  | [0.1%, 1.2%]   | 6     |
| Improvements (primary)   | -0.4% | [-0.5%, -0.2%] | 7     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 0.0%  | [-0.5%, 0.4%]  | 24    |

This PR fixes exponential blowup. Small regressions from caching overhead are expected. Asked the author whether we should add the original exponential case to our benchmarks, it looks like it got discussed here: https://github.com/rust-lang/rust/pull/146128#discussion_r2447992775.

hir_analysis: add missing sizedness bounds [#142712](https://github.com/rust-lang/rust/pull/142712) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2aaa62b89d22b570e560731b03e3d2d6f5c3bbce&end=f435972085b697a1ece8ee6a1ac76efff8d1df7b&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.8%  | [0.1%, 3.6%]   | 72    |
| Regressions (secondary)  | 0.5%  | [0.0%, 1.6%]   | 63    |
| Improvements (primary)   | -0.1% | [-0.1%, -0.1%] | 1     |
| Improvements (secondary) | -0.3% | [-0.4%, -0.1%] | 23    |
| All  (primary)           | 0.8%  | [-0.1%, 3.6%]  | 73    |

Pretty large regresion on many benchmarks. There was no perf run or perf concern mentioned before so it looks unexpected. Pinged the author.

Improve source code for `highlight.rs` [#146992](https://github.com/rust-lang/rust/pull/146992) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2888098522be731065efe51f85eaba8b49fee1a5&end=f977dfc388ea39c9886b7f8c49abce26e6918df6&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.1%, 0.2%]   | 6     |
| Regressions (secondary)  | 0.2%  | [0.1%, 0.3%]   | 3     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.1% | [-0.1%, -0.1%] | 1     |
| All  (primary)           | 0.2%  | [0.1%, 0.2%]   | 6     |

Small regressions were expected based on the pre-merge run and following comment: https://github.com/rust-lang/rust/pull/146992#issuecomment-3410213402. Overall the impact is not big and looks partially like noise, since the results got better in next PR (which is unrelated).

Deduce captures(none) for a return place and parameters [#147890](https://github.com/rust-lang/rust/pull/147890) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f977dfc388ea39c9886b7f8c49abce26e6918df6&end=f37aa9955f03bb1bc6fe08670cb1ecae534b5815&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.3%, 0.3%]   | 1     |
| Regressions (secondary)  | 0.5%  | [0.1%, 1.1%]   | 3     |
| Improvements (primary)   | -0.2% | [-0.5%, -0.1%] | 31    |
| Improvements (secondary) | -0.3% | [-0.6%, -0.0%] | 34    |
| All  (primary)           | -0.2% | [-0.5%, 0.3%]  | 32    |

Improvements outweigh regressions.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "library: core: document layout guarantee of `TypeId`" [rust#148265](https://github.com/rust-lang/rust/pull/148265)
  - Nominated by @**scottmcm** (assuming here a vibe-check)
  - Discussion stems from the [question](https://rust-lang.zulipchat.com/#narrow/channel/435869-project-goals/topic/Getting.20Rust.20for.20Linux.20into.20stable.20Rust.3A.20.28goals.23116.29/near/546851323) "is the layout of TypeId, specifically its size, documented and can be relied upon to be stored in a C struct?"
  - Intent of the PR:
    > Document the layout guarantee of TypeId not to exceed 16 bytes
    > Useful for FFI use-cases where a TypeId may be stored within a foreign data structure or buffer
  - This PR is a request for stdlib to make a commitment
  - Project goal [link](https://rust-lang.zulipchat.com/#narrow/channel/435869-project-goals/topic/Getting.20Rust.20for.20Linux.20into.20stable.20Rust.3A.20.28goals.23116.29/near/546851323)
  - RfL discussion [on Zulip](https://rust-lang.zulipchat.com/#narrow/channel/425075-rust-for-linux/topic/TypeId.20layout/near/546856457)

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- TODO

Next meetings' agenda draft: [hackmd link](https://hackmd.io/_AiRwAdRThmmnCTHov07tw)
