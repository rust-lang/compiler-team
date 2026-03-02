---
tags: weekly, rustc
type: docs
note_id: _AiRwAdRThmmnCTHov07tw
---

# T-compiler Meeting Agenda 2025-11-06

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- WG-async design meeting <time:2025-11-0625T19:00:00+02:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Doc comments and attributes on macro arms" [compiler-team#935](https://github.com/rust-lang/compiler-team/issues/935) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Doc.20comments.20and.20attributes.20on.20macro.20arms.20compiler-team.23935))
    - concern: [lang](https://github.com/rust-lang/compiler-team/issues/935#issuecomment-3444181159)
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Compile UI tests as libraries by default" [compiler-team#842](https://github.com/rust-lang/compiler-team/issues/842) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Compile.20UI.20tests.20as.20libraries.20by.20default.20compiler-team.23842)) (last review activity: 8 months ago)
  - "Unify ui test inline error annotation style" [compiler-team#859](https://github.com/rust-lang/compiler-team/issues/859) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Unify.20ui.20test.20inline.20error.20annotation.20sty.E2.80.A6.20compiler-team.23859)) (last review activity: 2 months ago)
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864)) (last review activity: 4 months ago)
  - "Add support for specifying split-debuginfo=unpacked output directory" [compiler-team#871](https://github.com/rust-lang/compiler-team/issues/871) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20support.20for.20specifying.20split-debuginf.E2.80.A6.20compiler-team.23871)) (last review activity: 6 months ago)
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: 3 months ago)
  - "Experiment with replacing specialization in libcore with downcasting" [compiler-team#904](https://github.com/rust-lang/compiler-team/issues/904) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Experiment.20with.20replacing.20specialization.20.E2.80.A6.20compiler-team.23904)) (last review activity: 3 months ago)
  - "Promote tvOS/watchOS/visionOS to Tier 2" [compiler-team#918](https://github.com/rust-lang/compiler-team/issues/918) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tvOS.2FwatchOS.2FvisionOS.20to.20Tier.202.20compiler-team.23918)) (last review activity: about 28 days ago)
  - "Rename `hexagon-unknown-{none-elf,linux-musl}` targets" [compiler-team#921](https://github.com/rust-lang/compiler-team/issues/921) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.60hexagon-unknown-.7Bnone-elf.2Clinux-m.E2.80.A6.20compiler-team.23921)) (last review activity: about 20 days ago)
  - "Optimize `repr(Rust)` enums by omitting tags in more cases involving uninhabited variants." [compiler-team#922](https://github.com/rust-lang/compiler-team/issues/922) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Optimize.20.60repr.28Rust.29.60.20enums.20by.20omitting.20t.E2.80.A6.20compiler-team.23922)) (last review activity: about 20 days ago)
  - "Stop bumping the bootstrap version on every rustc release" [compiler-team#925](https://github.com/rust-lang/compiler-team/issues/925) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stop.20bumping.20the.20bootstrap.20version.20on.20eve.E2.80.A6.20compiler-team.23925)) (last review activity: about 20 days ago)
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
  - merge: [Not linting irrefutable_let_patterns on let chains (rust#146832)](https://github.com/rust-lang/rust/pull/146832#issuecomment-3476974269)
    - @_**|116009** @_**|116883** @_**|125270**
    - no pending concerns
  - merge: [Stabilize `-Zremap-path-scope` (rust#147611)](https://github.com/rust-lang/rust/pull/147611#issuecomment-3396899850)
    - @_**|119031** @_**|248906** @_**|116122** @_**|444933**
    - no pending concerns
  - "Fix ICE when applying test macro to crate root" [rust#147841](https://github.com/rust-lang/rust/pull/147841)
- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Proposal for a dedicated test suite for the parallel frontend" [compiler-team#906](https://github.com/rust-lang/compiler-team/issues/906) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Proposal.20for.20a.20dedicated.20test.20suite.20for.20t.E2.80.A6.20compiler-team.23906))
    - concern: [name-a-specific-reason](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137732970)
    - concern: [can-we-just-enhance-ui-suite](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137762379)
  - "target tier 3 support for hexagon-unknown-qurt" [compiler-team#919](https://github.com/rust-lang/compiler-team/issues/919) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/target.20tier.203.20support.20for.20hexagon-unknown.E2.80.A6.20compiler-team.23919))
  - "Omit suggestions when spans overlap" [compiler-team#929](https://github.com/rust-lang/compiler-team/issues/929) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Omit.20suggestions.20when.20spans.20overlap.20compiler-team.23929))
  - "Use `annotate-snippets` as the default emitter on nightly" [compiler-team#937](https://github.com/rust-lang/compiler-team/issues/937) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Use.20.60annotate-snippets.60.20as.20the.20default.20em.E2.80.A6.20compiler-team.23937))
  - "Use v0 mangling by default on nightly" [compiler-team#938](https://github.com/rust-lang/compiler-team/issues/938) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Use.20v0.20mangling.20by.20default.20on.20nightly.20compiler-team.23938))
  - "remove support for `typeof`" [compiler-team#940](https://github.com/rust-lang/compiler-team/issues/940) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/remove.20support.20for.20.60typeof.60.20compiler-team.23940))
  - "error out when `repr(align)` exceeds COFF limit" [rust#142638](https://github.com/rust-lang/rust/pull/142638)
  - "Emit error when using path-segment keyword as cfg pred" [rust#146978](https://github.com/rust-lang/rust/pull/146978)
  - "const-eval: fix and re-enable pointer fragment support" [rust#148259](https://github.com/rust-lang/rust/pull/148259)
- Accepted MCPs
  - "Turn emscripten-wasm-eh unwinding ABI on by default" [compiler-team#920](https://github.com/rust-lang/compiler-team/issues/920) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Turn.20emscripten-wasm-eh.20unwinding.20ABI.20on.20.E2.80.A6.20compiler-team.23920))
  - "Run main rust-analyzer tests in rust-lang/rust CI" [compiler-team#923](https://github.com/rust-lang/compiler-team/issues/923) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Run.20main.20rust-analyzer.20tests.20in.20rust-lang.E2.80.A6.20compiler-team.23923))
  - "Replace `rustc_target::specTarget::arch` string with enum" [compiler-team#926](https://github.com/rust-lang/compiler-team/issues/926) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Replace.20rustc_target.3A.3AspecTarget.3A.3Aarch.20st.E2.80.A6.20compiler-team.23926))
  - "Use `llvm-bitcode-linker` as the default linker for `nvptx64-nvidia-cuda`" [compiler-team#927](https://github.com/rust-lang/compiler-team/issues/927) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Use.20.60llvm-bitcode-linker.60.20as.20the.20default.20.E2.80.A6.20compiler-team.23927))
  - "Move annotation for profiling compiler-generated moves and copies." [compiler-team#928](https://github.com/rust-lang/compiler-team/issues/928) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Move.20annotation.20for.20profiling.20compiler-ge.E2.80.A6.20compiler-team.23928))
  - "Rename `//@ add-core-stubs` to `//@ add-minicore`" [compiler-team#930](https://github.com/rust-lang/compiler-team/issues/930) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.60.2F.2F.40.20add-core-stubs.60.20to.20.60.2F.2F.40.20add-m.E2.80.A6.20compiler-team.23930))
  - "Move unreachable code lint from HIR type check to a proper lint" [compiler-team#931](https://github.com/rust-lang/compiler-team/issues/931) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Move.20unreachable.20code.20lint.20from.20HIR.20type.20.E2.80.A6.20compiler-team.23931))
  - "Promote `riscv64a23-unknown-linux-gnu` to Tier 2 without host tools" [compiler-team#932](https://github.com/rust-lang/compiler-team/issues/932) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20.60riscv64a23-unknown-linux-gnu.60.20to.E2.80.A6.20compiler-team.23932))
  - "Switch to v0 mangling for symbols exceeding 64KB characters on targets generated PDB debug info" [compiler-team#934](https://github.com/rust-lang/compiler-team/issues/934) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Switch.20to.20v0.20mangling.20for.20symbols.20exceedi.E2.80.A6.20compiler-team.23934))
  - "Creating a new maintainable debuginfo test suite" [compiler-team#936](https://github.com/rust-lang/compiler-team/issues/936) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Creating.20a.20new.20maintainable.20debuginfo.20tes.E2.80.A6.20compiler-team.23936))
- MCPs blocked on unresolved concerns
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 4 months ago)
    - concern: [path-to-stabilization](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-2980212568)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: 4 months ago)
    - concern: [needs-a-blog-post](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024360549)
    - concern: [broad-change-needs-tlang-buy-in-possibly-fcp](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024361199)
    - concern: [needs-a-sufficiently-long-deprecation-timeline](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024361071)
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: about 30 days ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: 3 months ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
  - "Promote `armv7-unknown-linux-musleabihf` to tier 2 with host tools" [compiler-team#888](https://github.com/rust-lang/compiler-team/issues/888) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20.60armv7-unknown-linux-musleabihf.60.20.E2.80.A6.20compiler-team.23888)) (last review activity: 3 months ago)
    - concern: [lack-of-maintainers](https://github.com/rust-lang/compiler-team/issues/888#issuecomment-3035366625)
  - "Split the `-openbsd*` targets by version" [compiler-team#916](https://github.com/rust-lang/compiler-team/issues/916) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Split.20the.20.60-openbsd.2A.60.20targets.20by.20version.20compiler-team.23916)) (last review activity: about 28 days ago)
    - concern: [why-not-ports-rustc](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315251054)
    - concern: [version-churn](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315239793)
    - concern: [nonsystematic-breakage](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315243666)
  - "Add Wild linker as a preview component for x86_64 and AArch64 Linux GNU" [compiler-team#917](https://github.com/rust-lang/compiler-team/issues/917) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Wild.20linker.20as.20a.20preview.20component.20fo.E2.80.A6.20compiler-team.23917)) (last review activity: about 28 days ago)
    - concern: [unofficial project](https://github.com/rust-lang/compiler-team/issues/917#issuecomment-3330378645)
  - "Remove diagnostic translation infrastructure" [compiler-team#924](https://github.com/rust-lang/compiler-team/issues/924) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Remove.20diagnostic.20translation.20infrastruct.E2.80.A6.20compiler-team.23924)) (last review activity: about 20 days ago)
    - concern: [people-like-structs](https://github.com/rust-lang/compiler-team/issues/924#issuecomment-3377416128)
- Finalized FCPs (disposition merge)
  - "Update bundled musl to 1.2.5" [rust#142682](https://github.com/rust-lang/rust/pull/142682)
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
  - "FCW for repr(C) enums whose discriminant values do not fit into a c_int or c_uint" [rust#147017](https://github.com/rust-lang/rust/pull/147017)
  - "[beta-1.91] Warn on future errors from temporary lifetimes shortening in Rust 1.92" [rust#147056](https://github.com/rust-lang/rust/pull/147056)
  - "Add warn-by-default lint for visibility on `const _` declarations" [rust#147136](https://github.com/rust-lang/rust/pull/147136)
  - "unused_must_use: Don't warn on `Result<(), Uninhabited>` or `ControlFlow<Uninhabited, ()>`" [rust#147382](https://github.com/rust-lang/rust/pull/147382)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Fix `wasm_import_module` attribute cross-crate" [rust#148363](https://github.com/rust-lang/rust/pull/148363)
  - Authored by alexcrichton
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23148363.3A.20beta-nominated/near/553197341), in favor
  - Fixes #148347 a P-high regression. As Alex points out, a very small fix
<!--
This is an Easter Egg! :-)
Triagebot commands to accept/decline the backport on GitHub
@triagebot backport beta accept 148363
@triagebot backport beta decline 148363
-->
- :stable: "Fix `wasm_import_module` attribute cross-crate" [rust#148363](https://github.com/rust-lang/rust/pull/148363)
  - Authored by alexcrichton
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23148363.3A.20stable-nominated/near/553410401), mostly in favor though not justifying a dot release on its own
    - For the record: I (@_**apiraino**) also find Jubilee's argument compelling ([comment](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23148363.3A.20stable-nominated/near/553706112))
      > honestly "a tier 2 target has runtime errors with common compiler options" does sound pretty close to worth a patch release on its own. even if it is technically within our support tier promises it is Very pushing it. but I am also sympathetic to not bothering if we don't have other reasons.
  - FWIW: A Fastly employee chimed in ([comment](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23148363.3A.20stable-nominated/near/553428603)) pointing out the impact of this issue
  - We have so far 2 stable-backport: #148322 (illumos cargo breakage, approved) and #148363 (wasm linker breakage, trending towards being stable-approved). T-release is waiting on us down at https://rust-lang.zulipchat.com/#narrow/channel/241545-t-release/topic/1.2E91.2E1/near/553918718 to then take a decision about a 1.91.1
<!--
@triagebot backport stable accept 148363
@triagebot backport stable decline 148363
-->

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
- [58 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [39 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 1 P-high, 7 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 2 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 31 P-high, 100 P-medium, 25 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

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

> [2025-11-03 Triage Log](https://github.com/rust-lang/rustc-perf/tree/master/triage/2025/2025-11-03.md)

Mostly positive week. We saw a great performance win implemented by [#148040](https://github.com/rust-lang/rust/pull/148040) and [#148182](https://github.com/rust-lang/rust/pull/148182), which optimizes crates with a lot of trivial constants.

Triage done by **@kobzol**.
Revision range: [23fced0f..35ebdf9b](https://perf.rust-lang.org/?start=23fced0fcc5e0ec260d25f04a8b78b269e5e90f0&end=35ebdf9ba1414456dfe1cb6a6b13ebae80e99734&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.8%  | [0.1%, 2.9%]    | 22    |
| Regressions (secondary)  | 0.5%  | [0.1%, 1.7%]    | 48    |
| Improvements (primary)   | -2.8% | [-16.4%, -0.1%] | 102   |
| Improvements (secondary) | -1.9% | [-8.0%, -0.1%]  | 51    |
| All  (primary)           | -2.1% | [-16.4%, 2.9%]  | 124   |


4 Regressions, 6 Improvements, 7 Mixed; 7 of them in rollups
36 artifact comparisons made in total

#### Regressions

Rollup of 14 pull requests [#148202](https://github.com/rust-lang/rust/pull/148202) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=df984edf44203c862e01b5a20c8092d5614d872e&end=c9537a94a6300a8292804829801f7724fb8a33f6&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.7% | [0.3%, 2.9%] | 9     |
| Regressions (secondary)  | 0.7% | [0.2%, 1.6%] | 10    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 1.7% | [0.3%, 2.9%] | 9     |

- The new solver regressions come from [#147840](https://github.com/rust-lang/rust/pull/).
- The bulk of the regression comes from [#147185](https://github.com/rust-lang/rust/pull/147185). The changes trigger a lint in `syn`, which causes many more errors to be emitted, which caused the regressions.
- Marked as triaged.

Update cc-rs to 1.2.39 [#146186](https://github.com/rust-lang/rust/pull/146186) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c9537a94a6300a8292804829801f7724fb8a33f6&end=bc1d7273dfbc6f8a11c0086fa35f6748a13e8d3c&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.7% | [0.3%, 3.7%] | 259   |
| Regressions (secondary)  | 0.9% | [0.0%, 3.0%] | 287   |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.7% | [0.3%, 3.7%] | 259   |

- Unexpected regression from updating cc-rs, perhaps because it stopped passing `-flto` to `jemalloc`.
- Reverted in https://github.com/rust-lang/rust/pull/148298.

Rollup of 5 pull requests [#148241](https://github.com/rust-lang/rust/pull/148241) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4146079cee94242771864147e32fb5d9adbd34f8&end=c6d42d774d1edfb270b8faaefacc67c213b0260b&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 3.1% | [3.1%, 3.1%] | 1     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 3.1% | [3.1%, 3.1%] | 1     |

- Noise.
- Already marked as triaged.

compiletest: rename `add-core-stubs`/`core-stubs-compile-flags` to `add-minicore`/`minicore-compile-flags` [#148305](https://github.com/rust-lang/rust/pull/148305) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8483293b3b4eb209e8e8bd0d069e61de790018a8&end=b15a874aafe7eab9ea3ac2c1d59c7b03e1425027&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 3.1% | [3.1%, 3.1%] | 1     |
| Regressions (secondary)  | 0.2% | [0.2%, 0.2%] | 1     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 3.1% | [3.1%, 3.1%] | 1     |

- Noise.
- Marked as triaged.

#### Improvements

Rollup of 4 pull requests [#148245](https://github.com/rust-lang/rust/pull/148245) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c6d42d774d1edfb270b8faaefacc67c213b0260b&end=292db4a13ce3f329579a581b424c6cec3b1cbd2b&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -2.9% | [-2.9%, -2.9%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -2.9% | [-2.9%, -2.9%] | 1     |


Move wasm `throw` intrinsic back to `unwind` [#148291](https://github.com/rust-lang/rust/pull/148291) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6906167e01fba6f702f123264653f8e401546731&end=8205e6b75ec656305ac235d4726d2c7a1ddcef14&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -3.0% | [-3.0%, -3.0%] | 1     |
| Improvements (secondary) | -0.8% | [-0.8%, -0.8%] | 1     |
| All  (primary)                 | -3.0% | [-3.0%, -3.0%] | 1     |


Revert "Update cc-rs to 1.2.39 #146186" [#148298](https://github.com/rust-lang/rust/pull/148298) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d5419f1e97b90741d51841f800d3c697c662567d&end=ab4960e680b07600ec90a8736f936df371bc7cf3&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-3.6%, -0.3%] | 251   |
| Improvements (secondary) | -0.9% | [-2.9%, -0.0%] | 288   |
| All  (primary)                 | -0.7% | [-3.6%, -0.3%] | 251   |


Adjust successor iterators. [#148157](https://github.com/rust-lang/rust/pull/148157) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=647f1536d2f50b203ca9a67396225c4f7771e1c8&end=23c7bad921fb7163de37ea680bed317deaa03fda&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.4%, -0.1%] | 19    |
| Improvements (secondary) | -0.2% | [-0.4%, -0.0%] | 21    |
| All  (primary)                 | -0.2% | [-0.4%, -0.1%] | 19    |


Rollup of 10 pull requests [#148356](https://github.com/rust-lang/rust/pull/148356) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d85276b256a8ab18e03b6394b4f7a7b246176db7&end=fca2e941f86f51cd3c3254518f45e2145563f6be&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -3.0% | [-3.0%, -3.0%] | 1     |
| Improvements (secondary) | -0.4% | [-1.0%, -0.1%] | 10    |
| All  (primary)                 | -3.0% | [-3.0%, -3.0%] | 1     |


Rollup of 7 pull requests [#148412](https://github.com/rust-lang/rust/pull/148412) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b15a874aafe7eab9ea3ac2c1d59c7b03e1425027&end=c5dabe8cf798123087d094f06417f5a767ca73e8&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -2.8% | [-2.8%, -2.8%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -2.8% | [-2.8%, -2.8%] | 1     |


#### Mixed

Add a fast path for lowering trivial consts [#148040](https://github.com/rust-lang/rust/pull/148040) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=34a8c7368c84fc699fc83a8851a02f93fd655931&end=4b53279854fcc60b063398181f5dc13ddc319cb8&stat=instructions:u)

| (instructions:u)                   | mean  | range           | count |
|:----------------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.4%]    | 14    |
| Regressions (secondary)  | 0.5%  | [0.0%, 2.1%]    | 36    |
| Improvements (primary)   | -3.7% | [-15.5%, -0.1%] | 71    |
| Improvements (secondary) | -4.0% | [-8.2%, -0.0%]  | 22    |
| All  (primary)                 | -3.0% | [-15.5%, 0.4%]  | 85    |

- Improvements greatly outweigh regressions.
- Marked as triaged.

Skip codegen_crate call in check mode [#148035](https://github.com/rust-lang/rust/pull/148035) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9ea8d67cc60e88ad6fffbf299a454c44227e001c&end=adaa838976ff99a4f0661136322f64cb466b58a0&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.2%  | [1.2%, 1.2%]   | 1     |
| Regressions (secondary)  | 1.2%  | [1.2%, 1.2%]   | 1     |
| Improvements (primary)   | -0.8% | [-0.8%, -0.8%] | 3     |
| Improvements (secondary) | -0.3% | [-0.7%, -0.2%] | 11    |
| All  (primary)                 | -0.3% | [-0.8%, 1.2%]  | 4     |

- The `syn` regression is noise.
- Already marked as triaged.

Accept trivial consts based on trivial consts [#148182](https://github.com/rust-lang/rust/pull/148182) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=278a90913daf7707791020a592d722dd7971f196&end=044d68c3cb6a0b893b18293fa7f5719119403215&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.1%  | [0.1%, 0.1%]   | 2     |
| Improvements (primary)   | -0.7% | [-1.1%, -0.2%] | 13    |
| Improvements (secondary) | -1.4% | [-1.4%, -1.4%] | 1     |
| All  (primary)                 | -0.7% | [-1.1%, -0.2%] | 13    |

- Tiny regression on a secondary benchmark, improvements outweigh regressions.
- Marked as triaged.

Remove `QPath::LangItem` [#148193](https://github.com/rust-lang/rust/pull/148193) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=72fe2ffb391f397efdfafb2216028ed9952e8078&end=6906167e01fba6f702f123264653f8e401546731&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.1%  | [0.2%, 2.9%]   | 3     |
| Regressions (secondary)  | 0.4%  | [0.1%, 1.3%]   | 21    |
| Improvements (primary)   | -0.2% | [-0.4%, -0.1%] | 18    |
| Improvements (secondary) | -0.1% | [-0.2%, -0.0%] | 2     |
| All  (primary)                 | -0.0% | [-0.4%, 2.9%]  | 21    |

- The single primary regression is noise, otherwise it's a few small wins on primary benchmarks and a few small losses on secondary ones. Overall a wash. And since this is compiler refactoring/cleanup, there's probably not that much to be done anyway.
- Marked as triaged.

Rollup of 9 pull requests [#148337](https://github.com/rust-lang/rust/pull/148337) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=17e7324d44c7b310b776302880fdd08d9252118a&end=d85276b256a8ab18e03b6394b4f7a7b246176db7&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.2%  | [0.3%, 3.0%]   | 5     |
| Regressions (secondary)  | 0.2%  | [0.1%, 0.3%]   | 5     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.2% | [-0.2%, -0.2%] | 1     |
| All  (primary)                 | 1.2%  | [0.3%, 3.0%]   | 5     |

- Small performance loss caused by [#147622](https://github.com/rust-lang/rust/pull/147622), which was reverted in [#148436](https://github.com/rust-lang/rust/pull/148436).
- Marked as triaged.

Rollup of 3 pull requests [#148425](https://github.com/rust-lang/rust/pull/148425) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7878a919448eb219b630d1866ca06c0d412483f2&end=f2bae990e89bf696e86706b524ac32ab72945438&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.1%  | [0.1%, 0.2%]   | 5     |
| Regressions (secondary)  | 0.2%  | [0.1%, 0.2%]   | 15    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.2% | [-0.3%, -0.2%] | 5     |
| All  (primary)                 | 0.1%  | [0.1%, 0.2%]   | 5     |

- Tiny `doc` losses caused likely either by stdlib doc changes introduced by [#146260](https://github.com/rust-lang/rust/pull/146260) or [#148402](https://github.com/rust-lang/rust/pull/148402) or both.
- Marked as triaged.

Revert "unicode_data refactors RUST-147622" [#148436](https://github.com/rust-lang/rust/pull/148436) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=35ebdf9ba1414456dfe1cb6a6b13ebae80e99734&end=f5711a55f5d5e2f942057d0f6d648dd2d8b2c37b&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.2%  | [0.1%, 0.3%]   | 5     |
| Improvements (primary)   | -0.8% | [-1.0%, -0.4%] | 3     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -0.8% | [-1.0%, -0.4%] | 3     |

- Performance-wish it's a wash, and this is a revert anyway.
- Marked as triaged.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "library: core: document layout guarantee of `TypeId`" [rust#148265](https://github.com/rust-lang/rust/pull/148265)
  - We did a first round of discussion last week (on [Zulip](https://rust-lang.zulipchat.com/#narrow/channel/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202025-10-30/near/547949347))
    - T-compiler opinion, not the final decision, was that ([comment](https://github.com/rust-lang/rust/pull/148265#issuecomment-3477812442)) we are not yet ready to commit to a stability guarantee
    - Further discussion ensued down at https://rust-lang.zulipchat.com/#narrow/channel/131828-t-compiler/topic/TypeId.20minimum.20size.20guarantees/with/553234173, main points (AFAICS):
      - The new form of this proposal (from [comment](https://rust-lang.zulipchat.com/#narrow/channel/131828-t-compiler/topic/TypeId.20minimum.20size.20guarantees/near/553261764), [sample code on github](https://github.com/rust-lang/rust/pull/148265#issuecomment-3478192229)) is a `union` with a pointer to an additional hash (which can cover cases on arch where 16 bytes might not be enough)
    - Topic was also t-libs nominated but they basically defer to us ([comment](https://github.com/rust-lang/rust/pull/148265#issuecomment-3487542743))

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Revert "Change prefetch to avoid deadlock"" [rust#121910](https://github.com/rust-lang/rust/pull/121910) (last review activity: 20 months ago)
  - cc @**cjgillot**
- "Change codegen of LLVM intrinsics to be name-based, and add llvm linkage support for `bf16(xN)` and `i1xN`" [rust#140763](https://github.com/rust-lang/rust/pull/140763) (last review activity: 4 months ago)
  - cc @**Nikita Popov**
- "Remove fewer Storage calls in CopyProp and GVN" [rust#142531](https://github.com/rust-lang/rust/pull/142531) (last review activity: 2 months ago)
  - cc @**cjgillot**
- "Compute jump threading opportunities in a single pass" [rust#142821](https://github.com/rust-lang/rust/pull/142821) (last review activity: 3 months ago)
  - cc: @**Ben Kimock (Saethlin)**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/4kkTSivESDGvF7xAJqNXpw)
