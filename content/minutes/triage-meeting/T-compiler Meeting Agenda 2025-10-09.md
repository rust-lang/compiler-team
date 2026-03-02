---
tags: weekly, rustc
type: docs
note_id: znD7hBT3TBSH7UUgFzFKvg
---

# T-compiler Meeting Agenda 2025-10-09

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).
  - Mentioning [MCP#919](https://github.com/rust-lang/compiler-team/issues/919). Discussion on Zulip, [from this message](https://rust-lang.zulipchat.com/#narrow/channel/233931-t-compiler.2Fmajor-changes/topic/target.20tier.203.20support.20for.20hexagon-unknown.E2.80.A6.20compiler-team.23919/near/543658888)
  - Proponent contacted Qualcomm legal team ([comment](https://rust-lang.zulipchat.com/#narrow/channel/233931-t-compiler.2Fmajor-changes/topic/target.20tier.203.20support.20for.20hexagon-unknown.E2.80.A6.20compiler-team.23919/near/543771438) and following) with the quesiton in the thread

### Other WG meetings

- WG-async design meeting <time:2025-10-0925T19:00:00+02:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Turn emscripten-wasm-eh unwinding ABI on by default" [compiler-team#920](https://github.com/rust-lang/compiler-team/issues/920) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Turn.20emscripten-wasm-eh.20unwinding.20ABI.20on.20.E2.80.A6.20compiler-team.23920))
  - "Rename `hexagon-unknown-{none-elf,linux-musl}` targets" [compiler-team#921](https://github.com/rust-lang/compiler-team/issues/921) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.60hexagon-unknown-.7Bnone-elf.2Clinux-m.E2.80.A6.20compiler-team.23921))
  - "Optimize `repr(Rust)` enums by omitting tags in more cases involving uninhabited variants." [compiler-team#922](https://github.com/rust-lang/compiler-team/issues/922) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Optimize.20.60repr.28Rust.29.60.20enums.20by.20omitting.20t.E2.80.A6.20compiler-team.23922))
  - "Run main rust-analyzer tests in rust-lang/rust CI" [compiler-team#923](https://github.com/rust-lang/compiler-team/issues/923) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Run.20main.20rust-analyzer.20tests.20in.20rust-lang.E2.80.A6.20compiler-team.23923))
  - "Remove diagnostic translation infrastructure" [compiler-team#924](https://github.com/rust-lang/compiler-team/issues/924) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Remove.20diagnostic.20translation.20infrastruct.E2.80.A6.20compiler-team.23924))
    - concern: [people-like-structs](https://github.com/rust-lang/compiler-team/issues/924#issuecomment-3377416128)
- Old MCPs (not seconded, take a look)
  - "Compile UI tests as libraries by default" [compiler-team#842](https://github.com/rust-lang/compiler-team/issues/842) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Compile.20UI.20tests.20as.20libraries.20by.20default.20compiler-team.23842)) (last review activity: 7 months ago)
  - "Unify ui test inline error annotation style" [compiler-team#859](https://github.com/rust-lang/compiler-team/issues/859) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Unify.20ui.20test.20inline.20error.20annotation.20sty.E2.80.A6.20compiler-team.23859)) (last review activity: 2 months ago)
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864)) (last review activity: 3 months ago)
  - "Add support for specifying split-debuginfo=unpacked output directory" [compiler-team#871](https://github.com/rust-lang/compiler-team/issues/871) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20support.20for.20specifying.20split-debuginf.E2.80.A6.20compiler-team.23871)) (last review activity: 5 months ago)
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: 2 months ago)
  - "Experiment with replacing specialization in libcore with downcasting" [compiler-team#904](https://github.com/rust-lang/compiler-team/issues/904) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Experiment.20with.20replacing.20specialization.20.E2.80.A6.20compiler-team.23904)) (last review activity: 2 months ago)
- Pending FCP requests (check your boxes!)
  - merge: [Promote `riscv64a23-unknown-linux-gnu` to Tier 2 with host tools (compiler-team#910)](https://github.com/rust-lang/compiler-team/issues/910#issuecomment-3302421999)
    - @_**|124288** @_**|125250** @_**|119031** @_**|426609** @_**|116122** @_**|116118** @_**|259697** @_**|444933**
    - concerns: [no-hardware-available (by davidtwco)](https://github.com/rust-lang/compiler-team/issues/910#issuecomment-3302832854) [unclear-justification (by jieyouxu)](https://github.com/rust-lang/compiler-team/issues/910#issuecomment-3305030219)
  - merge: [sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets (rust#123617)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2135121317)
    - no pending checkboxes
    - concerns: [stabilization-scope (by wesleywiser)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2192330122)
  - merge: [Impls and impl items inherit `dead_code` lint level of the corresponding traits and trait items (rust#144113)](https://github.com/rust-lang/rust/pull/144113#issuecomment-3382027300)
    - @_**|116009** @_**|614535** @_**|125270**
    - no pending concerns
  - merge: [Stabilize -Zno-jump-tables into -Cjump-tables=bool (rust#145974)](https://github.com/rust-lang/rust/pull/145974#issuecomment-3349582314)
    - @**|124288** @**|119031** @**|426609**
    - no pending concerns
  - merge: [Stabilize stack-protector (rust#146369)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3271397169)
    - @_**|116266** @_**|119031** @_**|426609** @_**|116122** @_**|444933**
    - concerns: [mitigation-enforcement (by Noratrieb)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3286402251)
- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Proposal for a dedicated test suite for the parallel frontend" [compiler-team#906](https://github.com/rust-lang/compiler-team/issues/906) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Proposal.20for.20a.20dedicated.20test.20suite.20for.20t.E2.80.A6.20compiler-team.23906))
    - concern: [name-a-specific-reason](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137732970)
    - concern: [can-we-just-enhance-ui-suite](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137762379)
  - "Promote armv7a-none-eabihf to Tier 2" [compiler-team#913](https://github.com/rust-lang/compiler-team/issues/913) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20armv7a-none-eabihf.20to.20Tier.202.20compiler-team.23913))
  - "Promote armv8r-none-eabihf to Tier 2" [compiler-team#914](https://github.com/rust-lang/compiler-team/issues/914) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20armv8r-none-eabihf.20to.20Tier.202.20compiler-team.23914))
  - "target tier 3 support for hexagon-unknown-qurt" [compiler-team#919](https://github.com/rust-lang/compiler-team/issues/919) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/target.20tier.203.20support.20for.20hexagon-unknown.E2.80.A6.20compiler-team.23919))
  - "Remove current code for embedding command-line args in PDB" [rust#147022](https://github.com/rust-lang/rust/pull/147022)
- Accepted MCPs
  - "Demote both armebv7r-none-* targets" [compiler-team#912](https://github.com/rust-lang/compiler-team/issues/912) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Demote.20both.20armebv7r-none-.2A.20targets.20compiler-team.23912))
- MCPs blocked on unresolved concerns
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: 2 months ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
  - "Promote `armv7-unknown-linux-musleabihf` to tier 2 with host tools" [compiler-team#888](https://github.com/rust-lang/compiler-team/issues/888) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20.60armv7-unknown-linux-musleabihf.60.20.E2.80.A6.20compiler-team.23888)) (last review activity: 2 months ago)
    - concern: [lack-of-maintainers](https://github.com/rust-lang/compiler-team/issues/888#issuecomment-3035366625)
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: about 2 days ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 3 months ago)
    - concern: [path-to-stabilization](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-2980212568)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: 3 months ago)
    - concern: [needs-a-blog-post](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024360549)
    - concern: [needs-a-sufficiently-long-deprecation-timeline](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024361071)
    - concern: [broad-change-needs-tlang-buy-in-possibly-fcp](https://github.com/rust-lang/compiler-team/issues/825#issuecomment-3024361199)
- Finalized FCPs (disposition merge)
  - "Fix accidental type inference in array coercion" [rust#140283](https://github.com/rust-lang/rust/pull/140283)
  - "Fix backtraces with `-C panic=abort` on linux; emit unwind tables by default" [rust#143613](https://github.com/rust-lang/rust/pull/143613)
- Other teams finalized FCPs
  - "Fix accidental type inference in array coercion" [rust#140283](https://github.com/rust-lang/rust/pull/140283)
  - "Allow `&raw [mut | const]` for union field in safe code" [rust#141469](https://github.com/rust-lang/rust/pull/141469)
  - "Do not materialise X in [X; 0] when X is unsizing a const" [rust#145277](https://github.com/rust-lang/rust/pull/145277)
  - "Allow borrowing array elements from packed structs with ABI align <= packed align" [rust#145419](https://github.com/rust-lang/rust/pull/145419)
  - "Reject invalid literal suffixes in tuple indexing, tuple struct indexing, and struct field name position" [rust#145463](https://github.com/rust-lang/rust/pull/145463)
  - "Opportunistically split `!=` to successfully parse never type" [rust#145536](https://github.com/rust-lang/rust/pull/145536)
  - "docs(style): Specify the frontmatter style" [rust#145617](https://github.com/rust-lang/rust/pull/145617)
  - "Stabilize `std::panic::Location::file_as_c_str`" [rust#145664](https://github.com/rust-lang/rust/pull/145664)
  - "the `#[track_caller]` shim should not inherit `#[no_mangle]`" [rust#145724](https://github.com/rust-lang/rust/pull/145724)
  - "Deny-by-default never type lints" [rust#146167](https://github.com/rust-lang/rust/pull/146167)
  - "Allow specifying multiple bounds for same associated item, except in trait objects" [rust#146593](https://github.com/rust-lang/rust/pull/146593)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Don't normalize higher-ranked assumptions if they're not used" [rust#147299](https://github.com/rust-lang/rust/pull/147299)
  - Authored by compiler-errors
  - No voting Zulip topics :shrug:, backports need to be decided here
  - Fixes #147244 and #147285 (2 P-high stable regressions)
<!--
/poll Approve beta backport of #147299?
approve
decline
don't know
-->
- :beta: "Fix target list of `link_section`" [rust#147418](https://github.com/rust-lang/rust/pull/147418)
  - Authored by JonathanBrouwer
  - Fixes an annoying and confusing warning from #147411
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23147418.3A.20beta-nominated/near/543410779), in favor
- :stable: "Don't normalize higher-ranked assumptions if they're not used" [rust#147299](https://github.com/rust-lang/rust/pull/147299)
  - Authored by compiler-errors
<!--
/poll Approve stable backport of #147299?
approve
approve (but does not justify new dot release on its own)
decline
don't know
-->

[T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- :beta: and :stable: "Don't normalize higher-ranked assumptions if they're not used" [rust#147299](https://github.com/rust-lang/rust/pull/147299)
  - Discussed above

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
- [1 P-critical, 4 P-high, 3 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 1 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 30 P-high, 100 P-medium, 25 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

- "Coverage behavioral changes on #[derive] lines" [rust#147434](https://github.com/rust-lang/rust/issues/147434)
  - Question: what are our guarantees about code `llvm-cov`?
  - See [previous discussion](https://rust-lang.zulipchat.com/#narrow/channel/241545-t-release/topic/llvm-tools.20stabilization/near/421067194) about `llvm-tools` (from last year, though)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "`alloc-variant-zeroed` causing issues with LTO" [rust#145995](https://github.com/rust-lang/rust/issues/145995)
- "Duplicate warning on some attributes with wrong targets" [rust#147417](https://github.com/rust-lang/rust/issues/147417)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2025-10-06](https://github.com/rust-lang/rustc-perf/blob/master/triage/2025/2025-10-06.md)

Largely a positive week. Big win coming from avoiding unnecessary work for debug log in [#147293](https://github.com/rust-lang/rust/pull/147293), and another one for rustdoc from optimized span representation for highlighter [#147189](https://github.com/rust-lang/rust/pull/147189). Lots of noisy results otherwise.

Triage done by **@panstromek**.
Revision range: [8d72d3e1..1a3cdd34](https://perf.rust-lang.org/?start=8d72d3e1e96f58ca10059a6bb6e8aecba4a0e9cd&end=1a3cdd34629306fa67624eaa60d73687e7fcf855&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.2%, 2.0%]    | 10    |
| Regressions (secondary)  | 0.4%  | [0.0%, 0.8%]    | 50    |
| Improvements (primary)   | -1.3% | [-5.3%, -0.2%]  | 147   |
| Improvements (secondary) | -1.3% | [-12.7%, -0.1%] | 111   |
| All  (primary)           | -1.2% | [-5.3%, 2.0%]   | 157   |

6 Regressions, 3 Improvements, 6 Mixed; 8 of them in rollups
40 artifact comparisons made in total

#### Regressions

Rollup of 7 pull requests [#147140](https://github.com/rust-lang/rust/pull/147140) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=772f380092b30680313b70a622cafc17f03e6bff&end=7af913fc90968844286e5ff6675ab66afa98cdc6&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.2% | [0.1%, 0.3%] | 6     |
| Regressions (secondary)  | 0.2% | [0.0%, 0.4%] | 2     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.2% | [0.1%, 0.3%] | 6     |

Based on perf runs on respective PRs, this seems to be https://github.com/rust-lang/rust/pull/133477. https://github.com/rust-lang/rust/pull/147092 was tested but regressions on that are noise and don't match this PR. Other PR's don't touch benchmarked code.

This could also be noise, since the results somewhat fit a bimodal pattern and changes are tiny, but detailed results show increases in number of executed visibility related queries.

Rollup of 5 pull requests [#147186](https://github.com/rust-lang/rust/pull/147186) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a2db9280539229a3b8a084a09886670a57bc7e9c&end=42d009c0a9be0f7020a03f85dd47faa00d6d7bdf&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 3.0% | [3.0%, 3.0%] | 1     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 3.0% | [3.0%, 3.0%] | 1     |

`clap_derive` bimodal noise

Turn ProjectionElem::Subtype into CastKind::Subtype [#147055](https://github.com/rust-lang/rust/pull/147055) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3369e82c6bc03c5cdb66f730dba6f738b74c8e1d&end=42b384ec0dfcd528d99a4db0a337d9188a9eecaa&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 3.0% | [3.0%, 3.0%] | 1     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 3.0% | [3.0%, 3.0%] | 1     |

`clap_derive` bimodal noise

Rollup of 9 pull requests [#147261](https://github.com/rust-lang/rust/pull/147261) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4b9c62b4da3e17cee99d3d2052f1c576b188e2a8&end=94ecb52bbeeccc990545d4ebc9e9c35dcaf285e3&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 2.8% | [2.8%, 2.8%] | 1     |
| Regressions (secondary)  | 0.1% | [0.1%, 0.1%] | 1     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 2.8% | [2.8%, 2.8%] | 1     |

`clap_derive` bimodal noise and something that looks like optimization shuffling in `coercions` (most of the changes are in the backend). This is a small change in secondary benchmark, so I don't think this is worth more investigation.

Extending `#[rustc_force_inline]` to be applicable to inherent methods [#147231](https://github.com/rust-lang/rust/pull/147231) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5c7ae0c7ed184c603e5224604a9f33ca0e8e0b36&end=8d603ef2879fd263f8e9aea340b4c035ed7973db&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 3.1% | [3.1%, 3.1%] | 1     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 3.1% | [3.1%, 3.1%] | 1     |

`clap_derive` bimodal noise

don't make empty ident when printing `'` ident from `extern "'"` [#147377](https://github.com/rust-lang/rust/pull/147377) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=828c2a9afccf3b3ff8133368cfbc8bfe526aaa4d&end=1a3cdd34629306fa67624eaa60d73687e7fcf855&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | -    | -            | 0     |
| Regressions (secondary)  | 0.9% | [0.8%, 1.0%] | 6     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | -    | -            | 0     |

Perf results are noise. Looks like `wg-grammar` became bimodal recently.

#### Improvements

Rollup of 11 pull requests [#147220](https://github.com/rust-lang/rust/pull/147220) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1e1a39441bd11aba541a48ba714d939490fc7b85&end=d4ae855111df8c7ee255bea4c112e74b7d72cf45&stat=instructions:u)

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | -     | -               | 0     |
| Regressions (secondary)  | 0.1%  | [0.1%, 0.1%]    | 1     |
| Improvements (primary)   | -1.3% | [-5.4%, -0.2%]  | 19    |
| Improvements (secondary) | -3.8% | [-12.6%, -0.2%] | 13    |
| All  (primary)           | -1.3% | [-5.4%, -0.2%]  | 19    |


Test: Ambigious bindings in same namespace with the same res [#147196](https://github.com/rust-lang/rust/pull/147196) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=94ecb52bbeeccc990545d4ebc9e9c35dcaf285e3&end=5c7ae0c7ed184c603e5224604a9f33ca0e8e0b36&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -2.9% | [-2.9%, -2.9%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -2.9% | [-2.9%, -2.9%] | 1     |


Rollup of 6 pull requests [#147282](https://github.com/rust-lang/rust/pull/147282) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8d603ef2879fd263f8e9aea340b4c035ed7973db&end=3b8665c5ab3aeced9b01672404c3764583e722ca&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -2.9% | [-2.9%, -2.9%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -2.9% | [-2.9%, -2.9%] | 1     |


#### Mixed

Rollup of 6 pull requests [#147197](https://github.com/rust-lang/rust/pull/147197) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=42d009c0a9be0f7020a03f85dd47faa00d6d7bdf&end=fa3155a644dd62e865825087b403646be01d4cef&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.3%  | [0.3%, 0.3%]   | 1     |
| Improvements (primary)   | -1.5% | [-2.9%, -0.4%] | 3     |
| Improvements (secondary) | -0.6% | [-1.2%, -0.3%] | 5     |
| All  (primary)           | -1.5% | [-2.9%, -0.4%] | 3     |

Improvements outweigh regressions. `coercions` regression also looks like noise.

Split Bound index into Canonical and Bound [#147138](https://github.com/rust-lang/rust/pull/147138) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=42b384ec0dfcd528d99a4db0a337d9188a9eecaa&end=4b9c62b4da3e17cee99d3d2052f1c576b188e2a8&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.1%, 0.4%]   | 7     |
| Regressions (secondary)  | 0.1%  | [0.1%, 0.2%]   | 11    |
| Improvements (primary)   | -1.0% | [-2.8%, -0.1%] | 4     |
| Improvements (secondary) | -0.3% | [-1.1%, -0.0%] | 11    |
| All  (primary)                 | -0.3% | [-2.8%, 0.4%]  | 11    |

Improvements outweigh regressions, but some of those improvements are noise (clap-derive and syn). Main regressions match pre-merge results, so I assume this was deemed acceptable as a part of work on new solver, but I don't see any explicit justification.

Introduce debuginfo to statements in MIR [#142771](https://github.com/rust-lang/rust/pull/142771) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=dd091003ace19d9556c647d87f7a9cd1e8dcc17e&end=8b6b15b877fbceb1ee5d9a5a4746e7515901574a&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.1%, 2.0%]   | 9     |
| Regressions (secondary)  | 0.5%  | [0.1%, 0.9%]   | 43    |
| Improvements (primary)   | -0.3% | [-1.2%, -0.1%] | 101   |
| Improvements (secondary) | -0.3% | [-1.0%, -0.1%] | 102   |
| All  (primary)           | -0.3% | [-1.2%, 2.0%]  | 110   |

Improvements outweigh regressions. Some secondary regressions are just noise (`wg-grammar`), the biggest meaningful change seems to be `diesel` opt, as mentioned in https://github.com/rust-lang/rust/pull/142771#issuecomment-3367798805, due to more inlining, `syn` seems to be a similar case.

Rollup of 10 pull requests [#147340](https://github.com/rust-lang/rust/pull/147340) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=99ca0ae87ba5571acee116ea83d1f9e88a7bf8d8&end=2cb4e7dce84fdebc0279159f1082f92b99299d87&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.1%  | [0.1%, 0.1%]   | 2     |
| Regressions (secondary)  | 0.2%  | [0.1%, 0.3%]   | 12    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.9% | [-1.0%, -0.8%] | 6     |
| All  (primary)           | 0.1%  | [0.1%, 0.1%]   | 2     |

Non-doc changes are mostly noise. Doc changes are not super clear to me. Even hello-world changed a tiny bit, so maybe this is just caused by the number of std changes? Some of those changes also mirror https://github.com/rust-lang/rust/pull/142771 dip, so it could also be noise.

Either way, all doc changes are small and mostly secondary, I think we don't need to look more deeply into it.

Avoid getting `dep_dep_node` unnecessarily. [#147293](https://github.com/rust-lang/rust/pull/147293) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2cb4e7dce84fdebc0279159f1082f92b99299d87&end=227ac7c3cd486872d5c2352b3df02b571500e53a&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.9%  | [0.8%, 1.0%]   | 6     |
| Improvements (primary)   | -1.3% | [-3.5%, -0.2%] | 115   |
| Improvements (secondary) | -1.1% | [-2.6%, -0.2%] | 61    |
| All  (primary)           | -1.3% | [-3.5%, -0.2%] | 115   |

`wg-grammar` regressions are noise, this is clearly a win otherwise.

Rollup of 7 pull requests [#147363](https://github.com/rust-lang/rust/pull/147363) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=227ac7c3cd486872d5c2352b3df02b571500e53a&end=e2c96cc06bdbdbc6f59c7551194d6a742260d6ff&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.1%  | [0.1%, 0.1%]   | 1     |
| Improvements (primary)   | -0.5% | [-1.6%, -0.2%] | 6     |
| Improvements (secondary) | -0.5% | [-1.6%, -0.0%] | 4     |
| All  (primary)           | -0.5% | [-1.6%, -0.2%] | 6     |

Improvements outweigh a small regression in secondary stress test.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Gate tests with the right edition" [rust#147498](https://github.com/rust-lang/rust/pull/147498)
  - Nominated by @**Jieyou Xu**, asks to check if it looks good
  - This PR implements what was discussed in [mcp#861](https://github.com/rust-lang/compiler-team/issues/861) (i.e. add capability to run tests, splitting by edition)

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Revert "Change prefetch to avoid deadlock"" [rust#121910](https://github.com/rust-lang/rust/pull/121910) (last review activity: 19 months ago)
  - cc @**cjgillot** (just unblocked)
- "feat: add `succinct-zkvm` os and target" [rust#138463](https://github.com/rust-lang/rust/pull/138463) (last review activity: 6 months ago)
  - cc @**Wesley Wiser** (here the [last discussion](https://rust-lang.zulipchat.com/#narrow/channel/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202025-04-24/near/514151632))
- "diagnostics: hide expansion of builtin-like macros" [rust#141314](https://github.com/rust-lang/rust/pull/141314) (last review activity: 4 months ago)
  - cc @**Vadim Petrochenkov** does your last comment mean that that PR can be closed?

Next meetings' agenda draft: [hackmd link](https://hackmd.io/jMDUHDugQf6qe0jgFPdzHQ)
