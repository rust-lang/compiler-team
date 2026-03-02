---
tags: weekly, rustc
type: docs
note_id: M4ydIJGKTnupYyum5zqhOA
---

# T-compiler Meeting Agenda 2025-10-02

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- WG-async design meeting <time:2025-09-25T19:00:00+02:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Adding cargo::no-new-rust-code to speed up compilation" [compiler-team#915](https://github.com/rust-lang/compiler-team/issues/915) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Adding.20cargo.3A.3Ano-new-rust-code.20to.20speed.20u.E2.80.A6.20compiler-team.23915))
  - "Promote tvOS/watchOS/visionOS to Tier 2" [compiler-team#918](https://github.com/rust-lang/compiler-team/issues/918) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tvOS.2FwatchOS.2FvisionOS.20to.20Tier.202.20compiler-team.23918))
  - "target tier 3 support for hexagon-unknown-qurt" [compiler-team#919](https://github.com/rust-lang/compiler-team/issues/919) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/target.20tier.203.20support.20for.20hexagon-unknown.E2.80.A6.20compiler-team.23919))
  - "Turn emscripten-wasm-eh unwinding ABI on by default" [compiler-team#920](https://github.com/rust-lang/compiler-team/issues/920) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Turn.20emscripten-wasm-eh.20unwinding.20ABI.20on.20.E2.80.A6.20compiler-team.23920))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 3 months ago)
    - concern: [path-to-stabilization](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-2980212568)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: 2 months ago)
    - concern: [needs-a-blog-post](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024360549)
    - concern: [needs-a-sufficiently-long-deprecation-timeline](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024361071)
    - concern: [broad-change-needs-tlang-buy-in-possibly-fcp](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024361199)
  - "Compile UI tests as libraries by default" [compiler-team#842](https://github.com/rust-lang/compiler-team/issues/842) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Compile.20UI.20tests.20as.20libraries.20by.20default.20compiler-team.23842)) (last review activity: 6 months ago)
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: 2 months ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
  - "Unify ui test inline error annotation style" [compiler-team#859](https://github.com/rust-lang/compiler-team/issues/859) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Unify.20ui.20test.20inline.20error.20annotation.20sty.E2.80.A6.20compiler-team.23859)) (last review activity: about 54 days ago)
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864)) (last review activity: 3 months ago)
  - "Add support for specifying split-debuginfo=unpacked output directory" [compiler-team#871](https://github.com/rust-lang/compiler-team/issues/871) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20support.20for.20specifying.20split-debuginf.E2.80.A6.20compiler-team.23871)) (last review activity: 5 months ago)
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: 2 months ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
  - "Promote `armv7-unknown-linux-musleabihf` to tier 2 with host tools" [compiler-team#888](https://github.com/rust-lang/compiler-team/issues/888) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20.60armv7-unknown-linux-musleabihf.60.20.E2.80.A6.20compiler-team.23888)) (last review activity: 2 months ago)
    - concern: [lack-of-maintainers](https://github.com/rust-lang/compiler-team/issues/888#issuecomment-3035366625)
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: 2 months ago)
  - "Experiment with replacing specialization in libcore with downcasting" [compiler-team#904](https://github.com/rust-lang/compiler-team/issues/904) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Experiment.20with.20replacing.20specialization.20.E2.80.A6.20compiler-team.23904)) (last review activity: 2 months ago)
- Pending FCP requests (check your boxes!)
  - merge: [Promote `riscv64a23-unknown-linux-gnu` to Tier 2 with host tools (compiler-team#910)](https://github.com/rust-lang/compiler-team/issues/910#issuecomment-3302421999)
    - @_**|124288** @_**|125250** @_**|119031** @_**|426609** @_**|116122** @_**|116118** @_**|259697** @_**|444933**
    - concerns: [no-hardware-available (by davidtwco)](https://github.com/rust-lang/compiler-team/issues/910#issuecomment-3302832854) [unclear-justification (by jieyouxu)](https://github.com/rust-lang/compiler-team/issues/910#issuecomment-3305030219)
  - merge: [sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets (rust#123617)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2135121317)
    - no pending checkboxes
    - concerns: [stabilization-scope (by wesleywiser)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2192330122)
  - merge: [Stabilize -Zno-jump-tables into -Cjump-tables=bool (rust#145974)](https://github.com/rust-lang/rust/pull/145974#issuecomment-3349582314)
    - @_**|116266** @_**|124288** @_**|125250** @_**|116107** @_**|119031** @_**|426609** @_**|444933**
    - no pending concerns
  - merge: [Stabilize stack-protector (rust#146369)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3271397169)
    - @_**|116266** @_**|119031** @_**|426609** @_**|116122** @_**|444933**
    - concerns: [mitigation-enforcement (by Noratrieb)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3286402251)
  - merge: [Remove current code for embedding command-line args in PDB (rust#147022)](https://github.com/rust-lang/rust/pull/147022#issuecomment-3339344219)
    - @_**|116266** @_**|124288** @_**|125250** @_**|119031**
    - no pending concerns
- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Proposal for a dedicated test suite for the parallel frontend" [compiler-team#906](https://github.com/rust-lang/compiler-team/issues/906) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Proposal.20for.20a.20dedicated.20test.20suite.20for.20t.E2.80.A6.20compiler-team.23906))
    - concern: [name-a-specific-reason](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137732970)
    - concern: [can-we-just-enhance-ui-suite](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137762379)
  - "Promote armv7a-none-eabihf to Tier 2" [compiler-team#913](https://github.com/rust-lang/compiler-team/issues/913) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20armv7a-none-eabihf.20to.20Tier.202.20compiler-team.23913))
  - "Promote armv8r-none-eabihf to Tier 2" [compiler-team#914](https://github.com/rust-lang/compiler-team/issues/914) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20armv8r-none-eabihf.20to.20Tier.202.20compiler-team.23914))
- Accepted MCPs
  - "Demote both armebv7r-none-* targets" [compiler-team#912](https://github.com/rust-lang/compiler-team/issues/912) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Demote.20both.20armebv7r-none-.2A.20targets.20compiler-team.23912))
- MCPs blocked on unresolved concerns
  - "Split the `-openbsd*` targets by version" [compiler-team#916](https://github.com/rust-lang/compiler-team/issues/916) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Split.20the.20.60-openbsd.2A.60.20targets.20by.20version.20compiler-team.23916))
    - concern: [nonsystematic-breakage](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315243666)
    - concern: [why-not-ports-rustc](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315251054)
    - concern: [version-churn](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315239793)
  - "Add Wild linker as a preview component for x86_64 and AArch64 Linux GNU" [compiler-team#917](https://github.com/rust-lang/compiler-team/issues/917) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Wild.20linker.20as.20a.20preview.20component.20fo.E2.80.A6.20compiler-team.23917))
    - concern: [unofficial project](https://github.com/rust-lang/compiler-team/issues/917#issuecomment-3330378645)
- Finalized FCPs (disposition merge)
  - "Fix backtraces with `-C panic=abort` on linux; emit unwind tables by default" [rust#143613](https://github.com/rust-lang/rust/pull/143613)
- Other teams finalized FCPs
  - "Allow `&raw [mut | const]` for union field in safe code" [rust#141469](https://github.com/rust-lang/rust/pull/141469)
  - "Do not materialise X in [X; 0] when X is unsizing a const" [rust#145277](https://github.com/rust-lang/rust/pull/145277)
  - "Allow borrowing array elements from packed structs with ABI align &lt;= packed align" [rust#145419](https://github.com/rust-lang/rust/pull/145419)
  - "Reject invalid literal suffixes in tuple indexing, tuple struct indexing, and struct field name position" [rust#145463](https://github.com/rust-lang/rust/pull/145463)
  - "Opportunistically split `!=` to successfully parse never type" [rust#145536](https://github.com/rust-lang/rust/pull/145536)
  - "Stabilize `std::panic::Location::file_as_c_str`" [rust#145664](https://github.com/rust-lang/rust/pull/145664)
  - "the `#[track_caller]` shim should not inherit `#[no_mangle]`" [rust#145724](https://github.com/rust-lang/rust/pull/145724)
  - "Deny-by-default never type lints" [rust#146167](https://github.com/rust-lang/rust/pull/146167)
  - "Allow specifying multiple bounds for same associated item, except in trait objects" [rust#146593](https://github.com/rust-lang/rust/pull/146593)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- [Make #[link="dl"] an FCW rather than an error by JonathanBrouwer · Pull Request #147262 · rust-lang/rust](https://github.com/rust-lang/rust/pull/147262)
  - Fixes #147254 (hard error which should just be a FCW for now)
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23147262.3A.20beta-nominated/near/542689655), in favor
- :beta: "Warn on future errors from temporary lifetimes shortening in Rust 1.92" [rust#147056](https://github.com/rust-lang/rust/pull/147056)
  - Authored by @**dianne** (cc @**lcnr** , @**Jieyou Xu**, @**theemathas** for discussion)
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23147056.3A.20beta-nominated/near/542400584)
  - Implements a FCW to mitigate #145838 (introduced a breaking change to formatting and lifetimes in macros)
  - beta 1.91 will be stable on october 30th
  - Option 2: Revert the breaking change in #145838 and fix the issue with #146098 which would undo the breaking ([comment](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23147056.3A.20beta-nominated/near/542437248)). #146098 is being discussed by T-lang
- :beta: "remove incorrect fast path" [rust#146919](https://github.com/rust-lang/rust/pull/146919)
  - Authored by lcnr
  - Fixes #146813 (a P-high stable regression)
  - Perf. run shows minor regressions ([comment](https://github.com/rust-lang/rust/pull/146919#issuecomment-3336725304))
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23146919.3A.20beta-nominated/near/541208930), in favor
- :stable: "remove incorrect fast path" [rust#146919](https://github.com/rust-lang/rust/pull/146919)
  - Authored by lcnr
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23146919.3A.20stable-nominated/near/540997501), now in favor as well (after we have perf. run data). Not so pressing for a dot release.

[T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Tracking Issue for `bare_link_kind`" [rust#132061](https://github.com/rust-lang/rust/issues/132061)
- "Add new `function_casts_as_integer` lint" [rust#141470](https://github.com/rust-lang/rust/pull/141470)
- "error out when `repr(align)` exceeds COFF limit" [rust#142638](https://github.com/rust-lang/rust/pull/142638)
- "Stabilize -Zno-jump-tables into -Cjump-tables=bool" [rust#145974](https://github.com/rust-lang/rust/pull/145974)
- "arbitrary_self_types: Split the Autoderef chain" [rust#146095](https://github.com/rust-lang/rust/pull/146095)
- "Add lint about redefining runtime symbols" [rust#146505](https://github.com/rust-lang/rust/pull/146505)
- "Remove current code for embedding command-line args in PDB" [rust#147022](https://github.com/rust-lang/rust/pull/147022)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [57 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [41 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 3 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 0 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 28 P-high, 100 P-medium, 25 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "`#[link="dl"]` should be an FCW, not a hard error. Affects 450+ crates." [rust#147254](https://github.com/rust-lang/rust/issues/147254)

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "`alloc-variant-zeroed` causing issues with LTO" [rust#145995](https://github.com/rust-lang/rust/issues/145995)
  - in beta reverted by #147030 and then fixed by #146766 (waiting for feedback from the issue reporter)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs 2025-09-29](https://github.com/rust-lang/rustc-perf/blob/master/triage/2025/2025-09-28.md)

A relatively quiet week. Most of the improvements are to doc builds, driven by
continued packing of the search index in rustdoc-search: stringdex update with
more packing [#147002](https://github.com/rust-lang/rust/pull/147002) and
simplifications to doc(cfg) in Implement RFC 3631: add rustdoc doc_cfg features
[#138907](https://github.com/rust-lang/rust/pull/138907).

Triage done by **@simulacrum**.
Revision range: [ce4beebe..8d72d3e1](https://perf.rust-lang.org/?start=ce4beebecb77821734079cff47d8af08f9f27f11&end=8d72d3e1e96f58ca10059a6bb6e8aecba4a0e9cd&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.1%, 1.6%]   | 19    |
| Regressions (secondary)  | 0.5%  | [0.1%, 2.7%]   | 39    |
| Improvements (primary)   | -0.9% | [-8.5%, -0.1%] | 66    |
| Improvements (secondary) | -0.4% | [-3.2%, -0.1%] | 80    |
| All  (primary)           | -0.6% | [-8.5%, 1.6%]  | 85    |

1 Regressions, 6 Improvements, 4 Mixed; 2 of them in rollups
29 artifact comparisons made in total

#### Regressions

remove incorrect fast path [#146919](https://github.com/rust-lang/rust/pull/146919) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7ac0330c6d684d86d6f86fabe601a3defdc3b234&end=b733736ea2feb7798c99cbb9a769bce74be108df&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | -    | -            | 0     |
| Regressions (secondary)  | 0.5% | [0.1%, 0.8%] | 15    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | -    | -            | 0     |

Necessary regression for correctness.

#### Improvements

Avoid invalidating CFG caches from MirPatch::apply. [#146697](https://github.com/rust-lang/rust/pull/146697) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6f34f4ee074ce0affc7bbf4e2c835f66cd576f13&end=eabf390b4ceeb34db9f37e97f435134abbcdea92&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.2%, -0.1%] | 3     |
| Improvements (secondary) | -0.3% | [-0.4%, -0.1%] | 10    |
| All  (primary)                 | -0.2% | [-0.2%, -0.1%] | 3     |


support opaque types in method selection [#146885](https://github.com/rust-lang/rust/pull/146885) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a8858111044a9391ac7558f969d3bf62ef43222d&end=54a8a1db604e4caff93e26e167ad4a6fde9f0681&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.2% | [-0.2%, -0.1%] | 10    |
| All  (primary)                 | -     | -              | 0     |


Remove most `#[track_caller]` from allocating Vec methods [#147042](https://github.com/rust-lang/rust/pull/147042) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=848e6746fe03dfd703075c5077312b63877d51d6&end=c7f6aa2869acdbf014d094c6e427e554e160b6db&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.9%  | [0.9%, 0.9%]   | 1     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.4%]   | 4     |
| Improvements (primary)   | -0.3% | [-0.7%, -0.1%] | 37    |
| Improvements (secondary) | -0.3% | [-0.5%, -0.0%] | 26    |
| All  (primary)                 | -0.3% | [-0.7%, 0.9%]  | 38    |


rustdoc-search: use the same ID for entry and path to same item [#147045](https://github.com/rust-lang/rust/pull/147045) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c7f6aa2869acdbf014d094c6e427e554e160b6db&end=4ffeda10e10d4fa0c8edbd0dd9642d8ae7d3e66e&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.1% | [-0.2%, -0.1%] | 3     |
| Improvements (secondary) | -0.2% | [-0.4%, -0.1%] | 2     |
| All  (primary)                 | -0.1% | [-0.2%, -0.1%] | 3     |

JumpThreading: Avoid computing dominators to identify loop headers. [#146829](https://github.com/rust-lang/rust/pull/146829) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=959b450747f81e720be3a829665dd30e553e7fd7&end=ade84871f718ea20a6460d28e82290353b4bf3d2&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.3%  | [0.3%, 0.3%]   | 1     |
| Improvements (primary)   | -0.2% | [-0.3%, -0.2%] | 2     |
| Improvements (secondary) | -0.2% | [-0.3%, -0.2%] | 2     |
| All  (primary)                 | -0.2% | [-0.3%, -0.2%] | 2     |

One regression is bimodality.

rustdoc-search: stringdex update with more packing [#147002](https://github.com/rust-lang/rust/pull/147002) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a00a5159cfac23e9b1551566cf71ff31edc1f11b&end=8d72d3e1e96f58ca10059a6bb6e8aecba4a0e9cd&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.3%  | [0.3%, 0.3%]   | 1     |
| Improvements (primary)   | -1.9% | [-5.8%, -0.2%] | 6     |
| Improvements (secondary) | -1.2% | [-3.1%, -0.1%] | 3     |
| All  (primary)                 | -1.9% | [-5.8%, -0.2%] | 6     |

One regression is bimodality.

#### Mixed

Rollup of 8 pull requests [#147037](https://github.com/rust-lang/rust/pull/147037) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=eabf390b4ceeb34db9f37e97f435134abbcdea92&end=7ac0330c6d684d86d6f86fabe601a3defdc3b234&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.1%  | [0.1%, 0.1%]   | 2     |
| Regressions (secondary)  | 0.1%  | [0.1%, 0.1%]   | 2     |
| Improvements (primary)   | -1.0% | [-1.1%, -0.9%] | 2     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -0.4% | [-1.1%, 0.1%]  | 4     |

Several rustdoc changes, including what looks like net-new feature work. I
don't think it's worth digging deeper into the relatively small, relatively
few-benchmark-affecting doc regressions here.

Extended temporary argument to format_args!() in all cases [#145882](https://github.com/rust-lang/rust/pull/145882) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b733736ea2feb7798c99cbb9a769bce74be108df&end=40ace17fc3891155bad26a50d60a9ab07b83bf8e&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 0.8%]   | 15    |
| Regressions (secondary)  | 0.5%  | [0.0%, 2.9%]   | 19    |
| Improvements (primary)   | -1.0% | [-1.7%, -0.4%] | 5     |
| Improvements (secondary) | -0.2% | [-0.2%, -0.1%] | 3     |
| All  (primary)                 | 0.0%  | [-1.7%, 0.8%]  | 20    |

Correctness fix, likely affects a bunch of code across the compiler and
probably not worth digging deeper.

Rollup of 10 pull requests [#147074](https://github.com/rust-lang/rust/pull/147074) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=54a8a1db604e4caff93e26e167ad4a6fde9f0681&end=e1318422222101423fdbbe0f375109c3b40f75bc&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.3%]   | 4     |
| Regressions (secondary)  | 0.3%  | [0.1%, 0.5%]   | 3     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.3%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | 0.1%  | [-0.3%, 0.3%]  | 5     |

Regression in a few benchmarks that seem to have slowly regressed over several
commits.... Mostly limited to incremental scenarios, but I'm not seeing
anything obvious in this PR related to incremental -- given it's a rollup
doesn't seem worth digging further. Cachegrind results show regressions mostly
in fluent_syntax/bundle loading, which doesn't clearly map to any of the
contained PRs.

Implement RFC 3631: add rustdoc doc_cfg features [#138907](https://github.com/rust-lang/rust/pull/138907) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ade84871f718ea20a6460d28e82290353b4bf3d2&end=c0ee51f07d271f7cf3227c60a2c59aa18c959192&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.1%, 0.6%]   | 6     |
| Regressions (secondary)  | 0.4%  | [0.1%, 0.6%]   | 17    |
| Improvements (primary)   | -1.6% | [-4.2%, -0.3%] | 12    |
| Improvements (secondary) | -0.4% | [-1.0%, -0.1%] | 4     |
| All  (primary)                 | -1.0% | [-4.2%, 0.6%]  | 18    |

Mixed results, but since it's a new feature and an overall improvement seems
acceptable.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

Next meetings' agenda draft: [hackmd link](https://hackmd.io/znD7hBT3TBSH7UUgFzFKvg)
