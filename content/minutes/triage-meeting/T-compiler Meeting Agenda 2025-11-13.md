---
tags: weekly, rustc
type: docs
note_id: 4kkTSivESDGvF7xAJqNXpw
---

# T-compiler Meeting Agenda 2025-11-13

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- WG-async design meeting <time:2025-11-1325T19:00:00+02:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Allow using prebuilt sanitizer libraries" [compiler-team#943](https://github.com/rust-lang/compiler-team/issues/943) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20using.20prebuilt.20sanitizer.20libraries.20compiler-team.23943))
    - concern: [what-about-combinatorics](https://github.com/rust-lang/compiler-team/issues/943#issuecomment-3518380326)
    - concern: [why-not-third-party-tool](https://github.com/rust-lang/compiler-team/issues/943#issuecomment-3518370372)
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add support for specifying split-debuginfo=unpacked output directory" [compiler-team#871](https://github.com/rust-lang/compiler-team/issues/871) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20support.20for.20specifying.20split-debuginf.E2.80.A6.20compiler-team.23871)) (last review activity: 6 months ago)
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: 3 months ago)
  - "Experiment with replacing specialization in libcore with downcasting" [compiler-team#904](https://github.com/rust-lang/compiler-team/issues/904) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Experiment.20with.20replacing.20specialization.20.E2.80.A6.20compiler-team.23904)) (last review activity: 3 months ago)
  - "Promote tvOS/watchOS/visionOS to Tier 2" [compiler-team#918](https://github.com/rust-lang/compiler-team/issues/918) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tvOS.2FwatchOS.2FvisionOS.20to.20Tier.202.20compiler-team.23918)) (last review activity: about 34 days ago)
  - "Rename `hexagon-unknown-{none-elf,linux-musl}` targets" [compiler-team#921](https://github.com/rust-lang/compiler-team/issues/921) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.60hexagon-unknown-.7Bnone-elf.2Clinux-m.E2.80.A6.20compiler-team.23921)) (last review activity: about 27 days ago)
  - "Optimize `repr(Rust)` enums by omitting tags in more cases involving uninhabited variants." [compiler-team#922](https://github.com/rust-lang/compiler-team/issues/922) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Optimize.20.60repr.28Rust.29.60.20enums.20by.20omitting.20t.E2.80.A6.20compiler-team.23922)) (last review activity: about 27 days ago)
  - "Remove diagnostic translation infrastructure" [compiler-team#924](https://github.com/rust-lang/compiler-team/issues/924) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Remove.20diagnostic.20translation.20infrastruct.E2.80.A6.20compiler-team.23924)) (last review activity: about 27 days ago)
    - concern: [people-like-structs](https://github.com/rust-lang/compiler-team/issues/924#issuecomment-3377416128)
  - "Stop bumping the bootstrap version on every rustc release" [compiler-team#925](https://github.com/rust-lang/compiler-team/issues/925) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stop.20bumping.20the.20bootstrap.20version.20on.20eve.E2.80.A6.20compiler-team.23925)) (last review activity: about 27 days ago)
  - "Doc comments and attributes on macro arms" [compiler-team#935](https://github.com/rust-lang/compiler-team/issues/935) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Doc.20comments.20and.20attributes.20on.20macro.20arms.20compiler-team.23935)) (last review activity: about 6 days ago)
    - concern: [lang](https://github.com/rust-lang/compiler-team/issues/935#issuecomment-3444181159)
- Pending FCP requests (check your boxes!)
  - merge: [Promote `riscv64a23-unknown-linux-gnu` to Tier 2 with host tools (compiler-team#910)](https://github.com/rust-lang/compiler-team/issues/910#issuecomment-3302421999)
    - @_**|125250** @_**|119031** @_**|426609** @_**|116122** @_**|116118** @_**|259697** @_**|444933**
    - concerns: [no-hardware-available (by davidtwco)](https://github.com/rust-lang/compiler-team/issues/910#issuecomment-3302832854) [unclear-justification (by jieyouxu)](https://github.com/rust-lang/compiler-team/issues/910#issuecomment-3305030219)
  - merge: [Destabilise target-spec-json (compiler-team#944)](https://github.com/rust-lang/compiler-team/issues/944#issuecomment-3519268694)
    - @_**|116266** @_**|123586** @_**|125250** @_**|116107** @_**|119031** @_**|116118** @_**|353056**
    - no pending concerns
  - merge: [sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets (rust#123617)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2135121317)
    - no pending checkboxes
    - concerns: [stabilization-scope (by wesleywiser)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2192330122)
  - merge: [Stabilize stack-protector (rust#146369)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3271397169)
    - @_**|116266** @_**|119031** @_**|426609** @_**|444933**
    - concerns: [mitigation-enforcement (by Noratrieb)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3286402251)
  - merge: [Not linting irrefutable_let_patterns on let chains (rust#146832)](https://github.com/rust-lang/rust/pull/146832#issuecomment-3476974269)
    - @_**|116009** @_**|116883** @_**|125270**
    - no pending concerns
  - "Fix ICE when applying test macro to crate root" [rust#147841](https://github.com/rust-lang/rust/pull/147841)
  - merge: [Warn on codegen attributes on required trait methods (rust#148756)](https://github.com/rust-lang/rust/pull/148756#issuecomment-3523712714)
    - @_**|116009** @_**|116883** @_**|125270**
    - no pending concerns
- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Proposal for a dedicated test suite for the parallel frontend" [compiler-team#906](https://github.com/rust-lang/compiler-team/issues/906) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Proposal.20for.20a.20dedicated.20test.20suite.20for.20t.E2.80.A6.20compiler-team.23906))
    - concern: [can-we-just-enhance-ui-suite](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137762379)
    - concern: [name-a-specific-reason](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137732970)
  - "target tier 3 support for hexagon-unknown-qurt" [compiler-team#919](https://github.com/rust-lang/compiler-team/issues/919) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/target.20tier.203.20support.20for.20hexagon-unknown.E2.80.A6.20compiler-team.23919))
  - "Contracts: primitive ownership assertions: `owned` and `block`" [compiler-team#942](https://github.com/rust-lang/compiler-team/issues/942) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Contracts.3A.20primitive.20ownership.20assertions.E2.80.A6.20compiler-team.23942))
  - "error out when `repr(align)` exceeds COFF limit" [rust#142638](https://github.com/rust-lang/rust/pull/142638)
  - "Stabilize `-Zremap-path-scope`" [rust#147611](https://github.com/rust-lang/rust/pull/147611)
  - "const-eval: fix and re-enable pointer fragment support" [rust#148259](https://github.com/rust-lang/rust/pull/148259)
- Accepted MCPs
  - "Omit suggestions when spans overlap" [compiler-team#929](https://github.com/rust-lang/compiler-team/issues/929) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Omit.20suggestions.20when.20spans.20overlap.20compiler-team.23929))
  - "Use v0 mangling by default on nightly" [compiler-team#938](https://github.com/rust-lang/compiler-team/issues/938) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Use.20v0.20mangling.20by.20default.20on.20nightly.20compiler-team.23938))
  - "remove support for `typeof`" [compiler-team#940](https://github.com/rust-lang/compiler-team/issues/940) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/remove.20support.20for.20.60typeof.60.20compiler-team.23940))
- MCPs blocked on unresolved concerns
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 4 months ago)
    - concern: [path-to-stabilization](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-2980212568)
    - cc: @**Wesley Wiser** can you check MCP author's reply?
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: 4 months ago)
    - concern: [needs-a-blog-post](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024360549)
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: about 37 days ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: 3 months ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
  - "Split the `-openbsd*` targets by version" [compiler-team#916](https://github.com/rust-lang/compiler-team/issues/916) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Split.20the.20.60-openbsd.2A.60.20targets.20by.20version.20compiler-team.23916)) (last review activity: about 34 days ago)
    - concern: [version-churn](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315239793)
    - concern: [nonsystematic-breakage](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315243666)
    - concern: [why-not-ports-rustc](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315251054)
  - "Add Wild linker as a preview component for x86_64 and AArch64 Linux GNU" [compiler-team#917](https://github.com/rust-lang/compiler-team/issues/917) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Wild.20linker.20as.20a.20preview.20component.20fo.E2.80.A6.20compiler-team.23917)) (last review activity: about 34 days ago)
    - concern: [unofficial project](https://github.com/rust-lang/compiler-team/issues/917#issuecomment-3330378645)
- Finalized FCPs (disposition merge)
  - "Update bundled musl to 1.2.5" [rust#142682](https://github.com/rust-lang/rust/pull/142682)
  - "Fix backtraces with `-C panic=abort` on linux; emit unwind tables by default" [rust#143613](https://github.com/rust-lang/rust/pull/143613)
  - "Stabilize -Zno-jump-tables into -Cjump-tables=bool" [rust#145974](https://github.com/rust-lang/rust/pull/145974)
  - "Remove current code for embedding command-line args in PDB" [rust#147022](https://github.com/rust-lang/rust/pull/147022)
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

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No beta nominations for `T-compiler` this time.
- No stable nominations for `T-compiler` this time.

[T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-t-compiler

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-t-compiler)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [59 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [40 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 1 P-high, 8 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 2 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 30 P-high, 100 P-medium, 25 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

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

> [triage logs 2025-11-11](https://github.com/rust-lang/rustc-perf/blob/master/triage/2025/2025-11-10.md)

Mostly quiet week, with the majority of changes coming from the standard
library work towards removal of Copy specialization
([#135634](https://github.com/rust-lang/rust/pull/135634)).

Triage done by **@simulacrum**.
Revision range: [35ebdf9b..055d0d6a](https://perf.rust-lang.org/?start=35ebdf9ba1414456dfe1cb6a6b13ebae80e99734&end=055d0d6aaf937cc11b3d2a5b5725972723b7f3c6&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.8%  | [0.1%, 3.4%]   | 144   |
| Regressions (secondary)  | 0.8%  | [0.1%, 2.1%]   | 76    |
| Improvements (primary)   | -0.7% | [-1.4%, -0.4%] | 12    |
| Improvements (secondary) | -0.3% | [-0.5%, -0.2%] | 9     |
| All  (primary)           | 0.7%  | [-1.4%, 3.4%]  | 156   |

3 Regressions, 1 Improvement, 7 Mixed; 3 of them in rollups
37 artifact comparisons made in total

#### Regressions

feat: Use annotate-snippets by default on nightly [#148188](https://github.com/rust-lang/rust/pull/148188) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=642c19bfc3a5c1de985bf5d0cc8207ac9d22708a&end=c5e283b0d209ee6f7cd1a8cbc1974927c547f3e6&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.8%  | [0.3%, 2.9%]   | 21    |
| Regressions (secondary)  | 0.4%  | [0.2%, 0.6%]   | 6     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.0% | [-0.0%, -0.0%] | 1     |
| All  (primary)           | 0.8%  | [0.3%, 2.9%]   | 21    |

Likely some opportunity for improvements in annotate-snippets, but not
particularly large or widespresad regressions in our suite.

mgca: Add ConstArg representation for const items [#139558](https://github.com/rust-lang/rust/pull/139558) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=fb23dd3c6b120f0d2e55e5f2c69a464df7b35fdf&end=72b21e1a64dbbbb3b59ac7ce21363c366a894b79&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.2% | [0.1%, 0.5%] | 24    |
| Regressions (secondary)  | 0.1% | [0.1%, 0.1%] | 6     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.2% | [0.1%, 0.5%] | 24    |

Required next step for `min_generic_const_args`, regressions are within range
to be acceptable.

Encode cfg trace, not its early counterpart to fix cross-crate `doc(auto_cfg)` [#148660](https://github.com/rust-lang/rust/pull/148660) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=20f1c045c46aecba6a6aeda55fe6659b26871c87&end=ab67c37c6dbea849aa3425146bfe99fb1f1d117a&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.2% | [0.1%, 0.3%] | 10    |
| Regressions (secondary)  | 0.1% | [0.1%, 0.3%] | 8     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.2% | [0.1%, 0.3%] | 10    |

Bug fix. See <https://github.com/rust-lang/rust/pull/148660#issuecomment-3505481311> for details.

#### Improvements

Liveness: Cache the set of string constants for suggestions. [#147641](https://github.com/rust-lang/rust/pull/147641) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0bbef557bb02e6fda8fde2c2cf9c59ee55ca40e9&end=96064126a086a8428d66e07fb3b91421bb86a512&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.9% | [-1.4%, -0.5%] | 4     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.9% | [-1.4%, -0.5%] | 4     |


#### Mixed

Revert "unicode_data refactors RUST-147622" [#148436](https://github.com/rust-lang/rust/pull/148436) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=35ebdf9ba1414456dfe1cb6a6b13ebae80e99734&end=f5711a55f5d5e2f942057d0f6d648dd2d8b2c37b&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.2%  | [0.1%, 0.3%]   | 5     |
| Improvements (primary)   | -0.8% | [-1.0%, -0.4%] | 3     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.8% | [-1.0%, -0.4%] | 3     |

Nothing particularly interesting: "Performance-wish it's a wash, and this is a revert anyway."

Add LLVM range attributes to slice length parameters [#148350](https://github.com/rust-lang/rust/pull/148350) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1f880d9a1f4a331f1873829401e9d35fcfab2e36&end=20383c9f1d84eb9b9c6668a1668ef68a81eae274&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 1     |
| Regressions (secondary)  | 0.7%  | [0.1%, 2.0%]   | 29    |
| Improvements (primary)   | -0.3% | [-0.5%, -0.1%] | 6     |
| Improvements (secondary) | -0.3% | [-0.7%, -0.1%] | 27    |
| All  (primary)           | -0.3% | [-0.5%, 0.2%]  | 7     |

Primary benchmarks seeing mostly improvements. See more
[detailed analysis](https://github.com/rust-lang/rust/pull/148350#pullrequestreview-3411957024).

Rollup of 4 pull requests [#148472](https://github.com/rust-lang/rust/pull/148472) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=90b65889799733f21ebdf59d96411aa531c5900a&end=e5efc336720901420a8891dcdb67ca0a475dc03c&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.5%  | [0.1%, 0.9%]   | 8     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.6% | [-0.6%, -0.5%] | 3     |
| All  (primary)           | -     | -              | 0     |

My sense is that the large workspace crate is probably weakly (sparsely?)
bimodal given those results. Could be an interesting thing to dig into but not
particularly worthwhile here.

Rollup of 6 pull requests [#148507](https://github.com/rust-lang/rust/pull/148507) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c0ff72ffc4e88a2bbb69add95a4946d213996895&end=8e0b68e63cd2b7b6d18474fe6f49df6fb1570c25&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 1     |
| Regressions (secondary)  | 0.1%  | [0.1%, 0.1%]   | 2     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.5% | [-0.9%, -0.1%] | 8     |
| All  (primary)           | 0.2%  | [0.2%, 0.2%]   | 1     |

Regressions look likely to be bimodality to me.

Add LLVM realtime sanitizer [#147935](https://github.com/rust-lang/rust/pull/147935) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=bbb6f68e2888eea989337d558b47372ecf110e08&end=87f9dcd5e28a301fce81515bd4bea792444dcf29&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.1%  | [0.1%, 0.1%]   | 1     |
| Regressions (secondary)  | 0.1%  | [0.1%, 0.1%]   | 5     |
| Improvements (primary)   | -1.2% | [-1.2%, -1.2%] | 1     |
| Improvements (secondary) | -1.2% | [-1.2%, -1.2%] | 1     |
| All  (primary)           | -0.5% | [-1.2%, 0.1%]  | 2     |

Regressions seem plausibly real, but the change doesn't seem likely to be
further tweakable to reduce them. Marking as triaged.

Rollup of 22 pull requests [#148721](https://github.com/rust-lang/rust/pull/148721) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=acda5e9f9aadac705b851935b14aa3d34a67d428&end=20f1c045c46aecba6a6aeda55fe6659b26871c87&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.8%  | [0.8%, 0.8%]   | 2     |
| Regressions (secondary)  | 0.2%  | [0.0%, 0.3%]   | 5     |
| Improvements (primary)   | -0.2% | [-0.3%, -0.1%] | 2     |
| Improvements (secondary) | -0.5% | [-0.8%, -0.2%] | 2     |
| All  (primary)           | 0.3%  | [-0.3%, 0.8%]  | 4     |

Still searching for the cause of the regression.

stop specializing on `Copy` [#135634](https://github.com/rust-lang/rust/pull/135634) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a7b3715826827677ca8769eb88dc8052f43e734b&end=055d0d6aaf937cc11b3d2a5b5725972723b7f3c6&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.1%, 3.2%]   | 110   |
| Regressions (secondary)  | 0.8%  | [0.1%, 1.8%]   | 50    |
| Improvements (primary)   | -0.9% | [-1.4%, -0.5%] | 2     |
| Improvements (secondary) | -0.4% | [-0.5%, -0.1%] | 7     |
| All  (primary)           | 0.7%  | [-1.4%, 3.2%]  | 112   |

Expected widespread changes, this is largely a soundness fix.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- None

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "[Debug Info] Generate typedef nodes for ptr/ref types (and msvc arrays)" [rust#144394](https://github.com/rust-lang/rust/pull/144394) (last review activity: 2 months ago)
  - cc @**Wesley Wiser** lost a bit track on this one. Anything new after this [comment](https://rust-lang.zulipchat.com/#narrow/channel/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202025-09-25/near/541473238)?
- "minimally implement `is` (RFC 3573), sans parsing" [rust#144174](https://github.com/rust-lang/rust/pull/144174) (last review activity: 3 months ago)
  - Waiting on a review (from who?) maybe waiting on author?
- "Suggest only Span without source changes when source code is unavailable" [rust#144585](https://github.com/rust-lang/rust/pull/144585) (last review activity: 3 months ago)
  - cc @**Esteban Küber**
- "More `iter().last()` -> `last()`, `iter().next()` -> `first()`" [rust#145402](https://github.com/rust-lang/rust/pull/145402) (last review activity: 3 months ago)
  - This was r'ed by Esteban, unsure if Michael can look at it right now

Next meetings' agenda draft: [hackmd link](https://hackmd.io/8Tx0hAADSjuryb_p0z0-7g)
