---
tags: weekly, rustc
type: docs
note_id: 8Tx0hAADSjuryb_p0z0-7g
---

# T-compiler Meeting Agenda 2025-11-20


## Announcements

- We would like to schedule a design meeting for "Document layout guarantee of TypeId" [compiler-team#941](https://github.com/rust-lang/compiler-team/issues/941)
  - Probably two suggestions (will ping all stakeholders: T-compiler, RfL, Alice from the Bevy project)
    - <time:2025-12-05T16:00:00+01:00>
    - <time:2025-12-12T16:00:00+01:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- WG-async design meeting <time:2025-12-11T19:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Allow using prebuilt sanitizer libraries" [compiler-team#943](https://github.com/rust-lang/compiler-team/issues/943) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20using.20prebuilt.20sanitizer.20libraries.20compiler-team.23943))
    - concern: [why-not-third-party-tool](https://github.com/rust-lang/compiler-team/issues/943#issuecomment-3518370372)
    - concern: [what-about-combinatorics](https://github.com/rust-lang/compiler-team/issues/943#issuecomment-3518380326)
  - "Parse unstable keywords for experimental syntax" [compiler-team#945](https://github.com/rust-lang/compiler-team/issues/945) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Parse.20unstable.20keywords.20for.20experimental.20.E2.80.A6.20compiler-team.23945))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: about 7 days ago)
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: 3 months ago)
  - "Promote tvOS/watchOS/visionOS to Tier 2" [compiler-team#918](https://github.com/rust-lang/compiler-team/issues/918) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tvOS.2FwatchOS.2FvisionOS.20to.20Tier.202.20compiler-team.23918)) (last review activity: about 42 days ago)
  - "Rename `hexagon-unknown-{none-elf,linux-musl}` targets" [compiler-team#921](https://github.com/rust-lang/compiler-team/issues/921) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.60hexagon-unknown-.7Bnone-elf.2Clinux-m.E2.80.A6.20compiler-team.23921)) (last review activity: about 35 days ago)
  - "Optimize `repr(Rust)` enums by omitting tags in more cases involving uninhabited variants." [compiler-team#922](https://github.com/rust-lang/compiler-team/issues/922) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Optimize.20.60repr.28Rust.29.60.20enums.20by.20omitting.20t.E2.80.A6.20compiler-team.23922)) (last review activity: about 35 days ago)
  - "Stop bumping the bootstrap version on every rustc release" [compiler-team#925](https://github.com/rust-lang/compiler-team/issues/925) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stop.20bumping.20the.20bootstrap.20version.20on.20eve.E2.80.A6.20compiler-team.23925)) (last review activity: about 34 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [Promote `riscv64a23-unknown-linux-gnu` to Tier 2 with host tools (compiler-team#910)](https://github.com/rust-lang/compiler-team/issues/910#issuecomment-3302421999)
    - @_**|125250** @_**|119031** @_**|426609** @_**|116122** @_**|116118** @_**|259697** @_**|444933**
    - concerns: [no-hardware-available (by davidtwco)](https://github.com/rust-lang/compiler-team/issues/910#issuecomment-3302832854) [unclear-justification (by jieyouxu)](https://github.com/rust-lang/compiler-team/issues/910#issuecomment-3305030219)
  - merge: [Destabilise target-spec-json (compiler-team#944)](https://github.com/rust-lang/compiler-team/issues/944#issuecomment-3519268694)
    - @_**|125250** @_**|116107** @_**|119031** @_**|116118** @_**|353056**
    - no pending concerns
  - merge: [sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets (rust#123617)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2135121317)
    - no pending checkboxes
    - concerns: [stabilization-scope (by wesleywiser)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2192330122)
  - merge: [Stabilize stack-protector (rust#146369)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3271397169)
    - @_**|116266** @_**|119031** @_**|426609** @_**|444933**
    - concerns: [mitigation-enforcement (by Noratrieb)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3286402251)
  - merge: [Revert "Do not check privacy for RPITIT." (rust#146470)](https://github.com/rust-lang/rust/pull/146470#issuecomment-3553748437)
    - @_**|116009** @_**|239881** @_**|116883** @_**|125270**
    - no pending concerns
  - merge: [Not linting irrefutable_let_patterns on let chains (rust#146832)](https://github.com/rust-lang/rust/pull/146832#issuecomment-3476974269)
    - @_**|116009** @_**|116883** @_**|125270**
    - no pending concerns
  - "Fix ICE when applying test macro to crate root" [rust#147841](https://github.com/rust-lang/rust/pull/147841)
  - merge: [Warn on codegen attributes on required trait methods (rust#148756)](https://github.com/rust-lang/rust/pull/148756#issuecomment-3523712714)
    - @_**|116009** @_**|125270**
    - concerns: [jackh726-concern (by nikomatsakis)](https://github.com/rust-lang/rust/pull/148756#issuecomment-3554318576)
- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864))
    - concern: [documentation](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535045453)
    - concern: [continued-maintainer-interest](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535030586)
  - "Add support for specifying split-debuginfo=unpacked output directory" [compiler-team#871](https://github.com/rust-lang/compiler-team/issues/871) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20support.20for.20specifying.20split-debuginf.E2.80.A6.20compiler-team.23871))
  - "Experiment with replacing specialization in libcore with downcasting" [compiler-team#904](https://github.com/rust-lang/compiler-team/issues/904) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Experiment.20with.20replacing.20specialization.20.E2.80.A6.20compiler-team.23904))
  - "Proposal for a dedicated test suite for the parallel frontend" [compiler-team#906](https://github.com/rust-lang/compiler-team/issues/906) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Proposal.20for.20a.20dedicated.20test.20suite.20for.20t.E2.80.A6.20compiler-team.23906))
    - concern: [name-a-specific-reason](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137732970)
    - concern: [can-we-just-enhance-ui-suite](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137762379)
  - "Contracts: primitive ownership assertions: `owned` and `block`" [compiler-team#942](https://github.com/rust-lang/compiler-team/issues/942) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Contracts.3A.20primitive.20ownership.20assertions.E2.80.A6.20compiler-team.23942))
- Accepted MCPs
  - "Begin enforcing Tier 2 target maintainer requirements" [compiler-team#896](https://github.com/rust-lang/compiler-team/issues/896) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Begin.20enforcing.20Tier.202.20target.20maintainer.20.E2.80.A6.20compiler-team.23896))
  - "target tier 3 support for hexagon-unknown-qurt" [compiler-team#919](https://github.com/rust-lang/compiler-team/issues/919) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/target.20tier.203.20support.20for.20hexagon-unknown.E2.80.A6.20compiler-team.23919))
  - "Omit suggestions when spans overlap" [compiler-team#929](https://github.com/rust-lang/compiler-team/issues/929) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Omit.20suggestions.20when.20spans.20overlap.20compiler-team.23929))
  - "Use v0 mangling by default on nightly" [compiler-team#938](https://github.com/rust-lang/compiler-team/issues/938) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Use.20v0.20mangling.20by.20default.20on.20nightly.20compiler-team.23938))
  - "remove support for `typeof`" [compiler-team#940](https://github.com/rust-lang/compiler-team/issues/940) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/remove.20support.20for.20.60typeof.60.20compiler-team.23940))
- MCPs blocked on unresolved concerns
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 5 months ago)
    - concern: [path-to-stabilization](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-2980212568)
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: about 44 days ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: 4 months ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
  - "Split the `-openbsd*` targets by version" [compiler-team#916](https://github.com/rust-lang/compiler-team/issues/916) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Split.20the.20.60-openbsd.2A.60.20targets.20by.20version.20compiler-team.23916)) (last review activity: about 42 days ago)
    - concern: [nonsystematic-breakage](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315243666)
    - concern: [version-churn](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315239793)
    - concern: [why-not-ports-rustc](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315251054)
  - "Add Wild linker as a preview component for x86_64 and AArch64 Linux GNU" [compiler-team#917](https://github.com/rust-lang/compiler-team/issues/917) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Wild.20linker.20as.20a.20preview.20component.20fo.E2.80.A6.20compiler-team.23917)) (last review activity: about 42 days ago)
    - concern: [unofficial project](https://github.com/rust-lang/compiler-team/issues/917#issuecomment-3330378645)
  - "Remove diagnostic translation infrastructure" [compiler-team#924](https://github.com/rust-lang/compiler-team/issues/924) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Remove.20diagnostic.20translation.20infrastruct.E2.80.A6.20compiler-team.23924)) (last review activity: about 34 days ago)
    - concern: [people-like-structs](https://github.com/rust-lang/compiler-team/issues/924#issuecomment-3377416128)
  - "Doc comments and attributes on macro arms" [compiler-team#935](https://github.com/rust-lang/compiler-team/issues/935) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Doc.20comments.20and.20attributes.20on.20macro.20arms.20compiler-team.23935)) (last review activity: about 13 days ago)
    - concern: [lang](https://github.com/rust-lang/compiler-team/issues/935#issuecomment-3444181159)
- Finalized FCPs (disposition merge)
  - "Update bundled musl to 1.2.5" [rust#142682](https://github.com/rust-lang/rust/pull/142682)
  - "Fix backtraces with `-C panic=abort` on linux; emit unwind tables by default" [rust#143613](https://github.com/rust-lang/rust/pull/143613)
  - "Stabilize -Zno-jump-tables into -Cjump-tables=bool" [rust#145974](https://github.com/rust-lang/rust/pull/145974)
  - "Remove current code for embedding command-line args in PDB" [rust#147022](https://github.com/rust-lang/rust/pull/147022)
  - "Stabilize `-Zremap-path-scope`" [rust#147611](https://github.com/rust-lang/rust/pull/147611)
- Other teams finalized FCPs
  - "Forbid freely casting lifetime bounds of dyn-types" [rust#136776](https://github.com/rust-lang/rust/pull/136776)
  - "Implement pin-project in pattern matching for `&pin mut|const T`" [rust#139751](https://github.com/rust-lang/rust/pull/139751)
  - "Fix accidental type inference in array coercion" [rust#140283](https://github.com/rust-lang/rust/pull/140283)
  - "Document MaybeUninit bit validity" [rust#140463](https://github.com/rust-lang/rust/pull/140463)
  - "Allow `&raw [mut | const]` for union field in safe code" [rust#141469](https://github.com/rust-lang/rust/pull/141469)
  - "Add new `function_casts_as_integer` lint" [rust#141470](https://github.com/rust-lang/rust/pull/141470)
  - "prefer alias candidates for sizedness + auto trait goals " [rust#144064](https://github.com/rust-lang/rust/pull/144064)
  - "Do not materialise X in [X; 0] when X is unsizing a const" [rust#145277](https://github.com/rust-lang/rust/pull/145277)
  - "Allow borrowing array elements from packed structs with ABI align <= packed align" [rust#145419](https://github.com/rust-lang/rust/pull/145419)
  - "Reject invalid literal suffixes in tuple indexing, tuple struct indexing, and struct field name position" [rust#145463](https://github.com/rust-lang/rust/pull/145463)
  - "Opportunistically split `!=` to successfully parse never type" [rust#145536](https://github.com/rust-lang/rust/pull/145536)
  - "docs(style): Specify the frontmatter style" [rust#145617](https://github.com/rust-lang/rust/pull/145617)
  - "Stabilize `std::panic::Location::file_as_c_str`" [rust#145664](https://github.com/rust-lang/rust/pull/145664)
  - "the `#[track_caller]` shim should not inherit `#[no_mangle]`" [rust#145724](https://github.com/rust-lang/rust/pull/145724)
  - "stabilize extern_system_varargs" [rust#145954](https://github.com/rust-lang/rust/pull/145954)
  - "Temporary lifetime extension for blocks" [rust#146098](https://github.com/rust-lang/rust/pull/146098)
  - "Deny-by-default never type lints" [rust#146167](https://github.com/rust-lang/rust/pull/146167)
  - "Allow specifying multiple bounds for same associated item, except in trait objects" [rust#146593](https://github.com/rust-lang/rust/pull/146593)
  - "`-Znext-solver` instantiate predicate binder without recanonicalizing goal" [rust#146725](https://github.com/rust-lang/rust/pull/146725)
  - "Allow passing `expr` metavariable to `cfg`" [rust#146961](https://github.com/rust-lang/rust/pull/146961)
  - "FCW for repr(C) enums whose discriminant values do not fit into a c_int or c_uint" [rust#147017](https://github.com/rust-lang/rust/pull/147017)
  - "[beta-1.91] Warn on future errors from temporary lifetimes shortening in Rust 1.92" [rust#147056](https://github.com/rust-lang/rust/pull/147056)
  - "Add warn-by-default lint for visibility on `const _` declarations" [rust#147136](https://github.com/rust-lang/rust/pull/147136)
  - "unused_must_use: Don't warn on `Result<(), Uninhabited>` or `ControlFlow<Uninhabited, ()>`" [rust#147382](https://github.com/rust-lang/rust/pull/147382)
  - "resolve: Preserve ambiguous glob reexports in crate metadata" [rust#147984](https://github.com/rust-lang/rust/pull/147984)
  - "Make deref_nullptr deny by default instead of warn" [rust#148122](https://github.com/rust-lang/rust/pull/148122)
  - "parser/lexer: bump to Unicode 17, use faster unicode-ident" [rust#148321](https://github.com/rust-lang/rust/pull/148321)
  - "Warn against calls which mutate an interior mutable `const`-item" [rust#148407](https://github.com/rust-lang/rust/pull/148407)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No beta nominations for `T-compiler` this time.
- No stable nominations for `T-compiler` this time.

[T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-t-compiler

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-t-compiler)
- "library: core: document layout guarantee of `TypeId`" [rust#148265](https://github.com/rust-lang/rust/pull/148265)
  - (nominated as a reminder to find a date for the meeting)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [60 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [41 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [2 P-critical, 1 P-high, 8 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 0 P-high, 2 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 31 P-high, 100 P-medium, 25 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "1.92 regression in PyO3: unable to determine layout for ... because ... cannot be normalized" [rust#149081](https://github.com/rust-lang/rust/issues/149081)
  - affects the PyO3 project (maintainer is in the loop).
  - closely investigated, has been bisected ([comment](https://github.com/rust-lang/rust/issues/149081#issuecomment-3556413067)) and Oli [commented](https://github.com/rust-lang/rust/pull/147793#pullrequestreview-3481474481) on how it can be fixed.
  - Also [comment](https://github.com/rust-lang/rust/issues/149081#issuecomment-3556293945):
    > This issue seems to only affect building in debug mode but with optimizations, which is a rare configuration.
  - This bug also led to finding an ICE (different story, filed in #149120)

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- "1.92 regression in PyO3: unable to determine layout for ... because ... cannot be normalized" [rust#149081](https://github.com/rust-lang/rust/issues/149081)
  - (see above)

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [2025-11-19 Triage Log](https://github.com/rust-lang/rustc-perf/blob/634b10a2fdf2e44bcb7cc89c841e105131a019bd/triage/2025/2025-11-19.md)

Positive week, most notably because of the new format_args!() and fmt::Arguments implementation from [#148789](https://github.com/rust-lang/rust/pull/148789). Another notable improvement came from moving some computations from one compiler stage to another to save memory and unnecessary tree traversals in [#148706](https://github.com/rust-lang/rust/pull/148706)

Triage done by **@panstromek**.
Revision range: [055d0d6a..6159a440](https://perf.rust-lang.org/?start=055d0d6aaf937cc11b3d2a5b5725972723b7f3c6&end=6159a44067ebce42b38f062cc7df267a1348e092&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)                   | mean  | range           | count |
|:----------------------------------:|:-----:|:---------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 1.6%  | [0.2%, 5.6%]    | 11    |
| Regressions ❌ <br /> (secondary)  | 0.3%  | [0.1%, 1.1%]    | 26    |
| Improvements ✅ <br /> (primary)   | -0.8% | [-4.5%, -0.1%]  | 161   |
| Improvements ✅ <br /> (secondary) | -1.4% | [-38.1%, -0.1%] | 168   |
| All ❌✅ (primary)                 | -0.6% | [-4.5%, 5.6%]   | 172   |


2 Regressions, 4 Improvements, 10 Mixed; 4 of them in rollups
48 artifact comparisons made in total

#### Regressions

Rollup of 7 pull requests [#148885](https://github.com/rust-lang/rust/pull/148885) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=503dce33e2e2a5d2fe978b2723ab2a994cc27472&end=5dbf4069dc98bbbca98dd600a65f50c258fbfd56&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 3.0% | [3.0%, 3.0%] | 1     |
| Regressions ❌ <br /> (secondary)  | -    | -            | 0     |
| Improvements ✅ <br /> (primary)   | -    | -            | 0     |
| Improvements ✅ <br /> (secondary) | -    | -            | 0     |
| All ❌✅ (primary)                 | 3.0% | [3.0%, 3.0%] | 1     |

`clap_derive` bimodal noise

Rollup of 11 pull requests [#148988](https://github.com/rust-lang/rust/pull/148988) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=54f417673c9733bf8f8ce126e4a0e299536cb3d6&end=67c4cf395f243afcb973dacdd39b16895c9ad295&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 3.0% | [3.0%, 3.0%] | 1     |
| Regressions ❌ <br /> (secondary)  | 0.1% | [0.1%, 0.2%] | 2     |
| Improvements ✅ <br /> (primary)   | -    | -            | 0     |
| Improvements ✅ <br /> (secondary) | -    | -            | 0     |
| All ❌✅ (primary)                 | 3.0% | [3.0%, 3.0%] | 1     |

Triaged by @Zalathar: The clap_derive result looks pretty clearly bimodal. The secondary regressions are plausibly real, but don’t seem big enough to be worth investigating.

#### Improvements

Upgrade `stringdex` to 0.0.3 [#147918](https://github.com/rust-lang/rust/pull/147918) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5dbf4069dc98bbbca98dd600a65f50c258fbfd56&end=d682af88a57b0045f8348507682c16c6160b522d&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -     | -              | 0     |
| Regressions ❌ <br /> (secondary)  | -     | -              | 0     |
| Improvements ✅ <br /> (primary)   | -0.6% | [-2.9%, -0.1%] | 14    |
| Improvements ✅ <br /> (secondary) | -0.7% | [-1.4%, -0.3%] | 3     |
| All ❌✅ (primary)                 | -0.6% | [-2.9%, -0.1%] | 14    |


rustdoc: microoptimize render_item, move stuff out of common path [#148877](https://github.com/rust-lang/rust/pull/148877) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f35a2bee641e88742b6de10b25c748ef57475f24&end=e65b983161d52688ff8e05245ed5dc70ef01a904&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -     | -              | 0     |
| Regressions ❌ <br /> (secondary)  | -     | -              | 0     |
| Improvements ✅ <br /> (primary)   | -1.5% | [-3.0%, -0.3%] | 3     |
| Improvements ✅ <br /> (secondary) | -1.1% | [-2.9%, -0.1%] | 4     |
| All ❌✅ (primary)                 | -1.5% | [-3.0%, -0.3%] | 3     |


const-eval: fix and re-enable pointer fragment support [#148259](https://github.com/rust-lang/rust/pull/148259) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=67c4cf395f243afcb973dacdd39b16895c9ad295&end=e1a2ec605124d9f9b0095435faef70bd4bd3f128&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -     | -              | 0     |
| Regressions ❌ <br /> (secondary)  | -     | -              | 0     |
| Improvements ✅ <br /> (primary)   | -3.0% | [-3.0%, -3.0%] | 1     |
| Improvements ✅ <br /> (secondary) | -0.3% | [-0.4%, -0.2%] | 8     |
| All ❌✅ (primary)                 | -3.0% | [-3.0%, -3.0%] | 1     |


Rollup of 4 pull requests [#149059](https://github.com/rust-lang/rust/pull/149059) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f9e7961506a97b318ad4815b8ce94bb045562f89&end=3d461af2a23456a2676aadb13b4253c87bdfe28d&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -     | -              | 0     |
| Regressions ❌ <br /> (secondary)  | -     | -              | 0     |
| Improvements ✅ <br /> (primary)   | -2.9% | [-2.9%, -2.9%] | 1     |
| Improvements ✅ <br /> (secondary) | -0.4% | [-0.6%, -0.1%] | 4     |
| All ❌✅ (primary)                 | -2.9% | [-2.9%, -2.9%] | 1     |


#### Mixed

cleanup: merge `RvalueScopes` into `ScopeTree` [#148658](https://github.com/rust-lang/rust/pull/148658) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2636cb4c1328f5a3ab05b8d13a666ac5f3a48a08&end=25d319a0f656ee8faa7a534da299e76e96068a40&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 3.1%  | [3.1%, 3.1%]   | 1     |
| Regressions ❌ <br /> (secondary)  | 0.5%  | [0.0%, 0.6%]   | 5     |
| Improvements ✅ <br /> (primary)   | -0.1% | [-0.1%, -0.1%] | 1     |
| Improvements ✅ <br /> (secondary) | -0.1% | [-0.1%, -0.0%] | 7     |
| All ❌✅ (primary)                 | 1.5%  | [-0.1%, 3.1%]  | 2     |

`clap_derive` regression is noise. Other secondary regressions were identified in pre-merge perf run, investigated by in https://github.com/rust-lang/rust/pull/148658#issuecomment-3506150724 and accepted by reviewer in https://github.com/rust-lang/rust/pull/148658#issuecomment-3517842065

Rollup of 16 pull requests [#148851](https://github.com/rust-lang/rust/pull/148851) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=11339a0ef5ed586bb7ea4f85a9b7287880caac3a&end=0b329f801a09004dacb19aaf09d5cb8b4c51d3f8&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 2.1%  | [1.1%, 3.5%]   | 20    |
| Regressions ❌ <br /> (secondary)  | 1.4%  | [0.2%, 2.8%]   | 25    |
| Improvements ✅ <br /> (primary)   | -3.0% | [-3.0%, -3.0%] | 1     |
| Improvements ✅ <br /> (secondary) | -0.4% | [-0.5%, -0.2%] | 2     |
| All ❌✅ (primary)                 | 1.9%  | [-3.0%, 3.5%]  | 21    |

Regression was identified as https://github.com/rust-lang/rust/pull/146627, which was reverted.

New format_args!() and fmt::Arguments implementation [#148789](https://github.com/rust-lang/rust/pull/148789) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=01867557cd7dbe256a031a7b8e28d05daecd75ab&end=503dce33e2e2a5d2fe978b2723ab2a994cc27472&stat=instructions:u)

| (instructions:u)                   | mean  | range           | count |
|:----------------------------------:|:-----:|:---------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 0.7%  | [0.1%, 5.7%]    | 17    |
| Regressions ❌ <br /> (secondary)  | 0.6%  | [0.1%, 1.1%]    | 40    |
| Improvements ✅ <br /> (primary)   | -0.7% | [-4.4%, -0.1%]  | 120   |
| Improvements ✅ <br /> (secondary) | -1.6% | [-38.5%, -0.0%] | 106   |
| All ❌✅ (primary)                 | -0.5% | [-4.4%, 5.7%]   | 137   |

Improvements outweigh regressions.

Revert "Rollup merge of #146627 - madsmtm:jemalloc-simplify, r=jdonszelmann" [#148896](https://github.com/rust-lang/rust/pull/148896) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2286e5d224b3413484cf4f398a9f078487e7b49d&end=7a72c5459dd58f81b0e1a0e5436d145485889375&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -     | -              | 0     |
| Regressions ❌ <br /> (secondary)  | 0.9%  | [0.2%, 1.1%]   | 7     |
| Improvements ✅ <br /> (primary)   | -2.1% | [-3.4%, -1.1%] | 20    |
| Improvements ✅ <br /> (secondary) | -1.4% | [-2.7%, -0.2%] | 25    |
| All ❌✅ (primary)                 | -2.1% | [-3.4%, -1.1%] | 20    |

Reverts a previous regression.

compute temporary scopes when building MIR, not THIR [#148706](https://github.com/rust-lang/rust/pull/148706) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=77761f314d7243da0fa3b6ca214eeecd51e956e0&end=733108b6d4acaa93fe26ae281ea305aacd6aac4e&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 2.9%  | [2.9%, 2.9%]   | 1     |
| Regressions ❌ <br /> (secondary)  | 1.7%  | [1.7%, 1.7%]   | 1     |
| Improvements ✅ <br /> (primary)   | -0.4% | [-1.8%, -0.1%] | 55    |
| Improvements ✅ <br /> (secondary) | -0.9% | [-3.1%, -0.0%] | 80    |
| All ❌✅ (primary)                 | -0.3% | [-1.8%, 2.9%]  | 56    |

`clap_derive` regression is noise, otherwise this is an improvement.

Update wasm-component-ld to 0.5.19 [#148954](https://github.com/rust-lang/rust/pull/148954) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=733108b6d4acaa93fe26ae281ea305aacd6aac4e&end=f35a2bee641e88742b6de10b25c748ef57475f24&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -     | -              | 0     |
| Regressions ❌ <br /> (secondary)  | 0.0%  | [0.0%, 0.0%]   | 1     |
| Improvements ✅ <br /> (primary)   | -2.9% | [-2.9%, -2.9%] | 1     |
| Improvements ✅ <br /> (secondary) | -     | -              | 0     |
| All ❌✅ (primary)                 | -2.9% | [-2.9%, -2.9%] | 1     |

`wg-grammar` looks like noise (it returned back in next PR). `clap_derive` improvement is also noise.

use funnel shift as fallback impl for rotating shifts [#148478](https://github.com/rust-lang/rust/pull/148478) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=69d4d5fc0e4db60272aac85ef27ecccef5764f3a&end=89fe96197d232f86d733566df31c6dcebd1750da&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 3.8%  | [3.8%, 3.8%]   | 1     |
| Regressions ❌ <br /> (secondary)  | 0.2%  | [0.1%, 0.3%]   | 10    |
| Improvements ✅ <br /> (primary)   | -0.4% | [-0.4%, -0.4%] | 1     |
| Improvements ✅ <br /> (secondary) | -0.1% | [-0.1%, -0.1%] | 1     |
| All ❌✅ (primary)                 | 1.7%  | [-0.4%, 3.8%]  | 2     |

Investigated by author. Eza regression seems a bit mysterious. Pre-merge run from two weeks ago didn't indicate it.

Replace OffsetOf by an actual sum of calls to intrinsic. [#148151](https://github.com/rust-lang/rust/pull/148151) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c1995621a44398ac33ab368adbfb69753218b49e&end=f9e7961506a97b318ad4815b8ce94bb045562f89&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 3.1%  | [3.1%, 3.1%]   | 1     |
| Regressions ❌ <br /> (secondary)  | 0.3%  | [0.1%, 0.6%]   | 6     |
| Improvements ✅ <br /> (primary)   | -     | -              | 0     |
| Improvements ✅ <br /> (secondary) | -0.4% | [-0.9%, -0.0%] | 7     |
| All ❌✅ (primary)                 | 3.1%  | [3.1%, 3.1%]   | 1     |

`clap_derive` is noise, `include-blob` is also noise (at least the `opt` variants, other ones didn't return to previous state, but they are tiny in absolute numbers).

Inherent const impl [#148434](https://github.com/rust-lang/rust/pull/148434) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7c2c3c0ded2de378bfab2f5b55c387c66fbaf353&end=6159a44067ebce42b38f062cc7df267a1348e092&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 2.9%  | [2.9%, 2.9%]   | 1     |
| Regressions ❌ <br /> (secondary)  | -     | -              | 0     |
| Improvements ✅ <br /> (primary)   | -0.3% | [-0.3%, -0.3%] | 1     |
| Improvements ✅ <br /> (secondary) | -0.5% | [-0.9%, -0.2%] | 9     |
| All ❌✅ (primary)                 | 1.3%  | [-0.3%, 2.9%]  | 2     |

`clap_derive` noise.

Update wasm-related dependencies in CI [#149037](https://github.com/rust-lang/rust/pull/149037) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6159a44067ebce42b38f062cc7df267a1348e092&end=a591113c0a2b7755514c47bde211fdb92d1d7002&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 0.4%  | [0.4%, 0.4%]   | 1     |
| Regressions ❌ <br /> (secondary)  | 0.5%  | [0.2%, 0.9%]   | 9     |
| Improvements ✅ <br /> (primary)   | -2.8% | [-2.8%, -2.8%] | 1     |
| Improvements ✅ <br /> (secondary) | -0.1% | [-0.1%, -0.1%] | 1     |
| All ❌✅ (primary)                 | -1.2% | [-2.8%, 0.4%]  | 2     |


Triaged by @lqd: Gotta be noise. A bunch of the changes are benchmarks returning to their previous state, fixing a spurious win.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Perform unused assignment and unused variables lints on MIR" [rust#142390](https://github.com/rust-lang/rust/pull/142390)
  - @**Jubilee** has opened a [Zulip discussion](https://rust-lang.zulipchat.com/#narrow/channel/131828-t-compiler/topic/collateral.20of.20.23142390.20on.20.60unused.60.20lints/near/557004328) about a series of beta regressions caused by this
  - @_**yukang** is working a number of patches to fix them all! <3
  - Summary:
    - `unreachable_code`:
      - #149042, fixed by #149044
    - `unused_assignments`:
      - #147648, pending
      - #148418, fixed by #149072
      - #148960, fixed by #149072
    - `unused_variables`:
      - #148373, fixed by #149096

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- None this week

Next meetings' agenda draft: [hackmd link](https://hackmd.io/J5IoTXI6STWyyqPxArgxPg)
