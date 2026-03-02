---
tags: weekly, rustc
type: docs
note_id: 0IOxnzMtTFy1YTHUzReLvQ
---

# T-compiler Meeting Agenda 2025-12-04

## Announcements

- Next week Rust 1.921 release ([blog post](https://github.com/BoxyUwU/blog.rust-lang.org/blob/1.92.0/content/Rust-1.92.0.md))
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Introduce a tier-3 `wasm32-component` target" [compiler-team#948](https://github.com/rust-lang/compiler-team/issues/948) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Introduce.20a.20tier-3.20.60wasm32-component.60.20tar.E2.80.A6.20compiler-team.23948))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: about 20 days ago)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 5 months ago)
    - concern: [path-to-stabilization](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-2980212568)
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: about 58 days ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: 4 months ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: 4 months ago)
  - "Split the `-openbsd*` targets by version" [compiler-team#916](https://github.com/rust-lang/compiler-team/issues/916) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Split.20the.20.60-openbsd.2A.60.20targets.20by.20version.20compiler-team.23916)) (last review activity: about 56 days ago)
    - concern: [nonsystematic-breakage](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315243666)
    - concern: [version-churn](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315239793)
    - concern: [why-not-ports-rustc](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315251054)
  - "Promote tvOS/watchOS/visionOS to Tier 2" [compiler-team#918](https://github.com/rust-lang/compiler-team/issues/918) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tvOS.2FwatchOS.2FvisionOS.20to.20Tier.202.20compiler-team.23918)) (last review activity: about 56 days ago)
  - "Rename `hexagon-unknown-{none-elf,linux-musl}` targets" [compiler-team#921](https://github.com/rust-lang/compiler-team/issues/921) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.60hexagon-unknown-.7Bnone-elf.2Clinux-m.E2.80.A6.20compiler-team.23921)) (last review activity: about 49 days ago)
  - "Optimize `repr(Rust)` enums by omitting tags in more cases involving uninhabited variants." [compiler-team#922](https://github.com/rust-lang/compiler-team/issues/922) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Optimize.20.60repr.28Rust.29.60.20enums.20by.20omitting.20t.E2.80.A6.20compiler-team.23922)) (last review activity: about 49 days ago)
  - "Remove diagnostic translation infrastructure" [compiler-team#924](https://github.com/rust-lang/compiler-team/issues/924) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Remove.20diagnostic.20translation.20infrastruct.E2.80.A6.20compiler-team.23924)) (last review activity: about 48 days ago)
    - concern: [people-like-structs](https://github.com/rust-lang/compiler-team/issues/924#issuecomment-3377416128)
  - "Stop bumping the bootstrap version on every rustc release" [compiler-team#925](https://github.com/rust-lang/compiler-team/issues/925) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stop.20bumping.20the.20bootstrap.20version.20on.20eve.E2.80.A6.20compiler-team.23925)) (last review activity: about 48 days ago)
  - "Doc comments and attributes on macro arms" [compiler-team#935](https://github.com/rust-lang/compiler-team/issues/935) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Doc.20comments.20and.20attributes.20on.20macro.20arms.20compiler-team.23935)) (last review activity: about 27 days ago)
    - concern: [lang](https://github.com/rust-lang/compiler-team/issues/935#issuecomment-3444181159)
  - "Allow using prebuilt sanitizer libraries" [compiler-team#943](https://github.com/rust-lang/compiler-team/issues/943) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20using.20prebuilt.20sanitizer.20libraries.20compiler-team.23943)) (last review activity: about 6 days ago)
    - concern: [why-not-third-party-tool](https://github.com/rust-lang/compiler-team/issues/943#issuecomment-3518370372)
    - concern: [what-about-combinatorics](https://github.com/rust-lang/compiler-team/issues/943#issuecomment-3518380326)
  - "Parse unstable keywords for experimental syntax" [compiler-team#945](https://github.com/rust-lang/compiler-team/issues/945) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Parse.20unstable.20keywords.20for.20experimental.20.E2.80.A6.20compiler-team.23945)) (last review activity: about 6 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [Promote `riscv64a23-unknown-linux-gnu` to Tier 2 with host tools (compiler-team#910)](https://github.com/rust-lang/compiler-team/issues/910#issuecomment-3302421999)
    - @_**|125250** @_**|119031** @_**|426609** @_**|116122** @_**|116118** @_**|259697** @_**|444933**
    - concerns: [no-hardware-available (by davidtwco)](https://github.com/rust-lang/compiler-team/issues/910#issuecomment-3302832854) [unclear-justification (by jieyouxu)](https://github.com/rust-lang/compiler-team/issues/910#issuecomment-3305030219)
  - merge: [Destabilise target-spec-json (compiler-team#944)](https://github.com/rust-lang/compiler-team/issues/944#issuecomment-3519268694)
    - @_**|119031** @_**|116118** @_**|353056**
    - no pending concerns
  - merge: [sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets (rust#123617)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2135121317)
    - no pending checkboxes
    - concerns: [stabilization-scope (by wesleywiser)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2192330122)
  - merge: [Stabilize stack-protector (rust#146369)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3271397169)
    - @_**|116266** @_**|119031** @_**|426609** @_**|444933**
    - concerns: [mitigation-enforcement (by Noratrieb)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3286402251)
  - merge: [Revert "Do not check privacy for RPITIT." (rust#146470)](https://github.com/rust-lang/rust/pull/146470#issuecomment-3553748437)
    - @_**|116009** @_**|116883** @_**|125270**
    - concerns: [is my understanding correct (by tmandry)](https://github.com/rust-lang/rust/pull/146470#issuecomment-3583156673)
  - merge: [Stabilize the `supertrait_item_shadowing` feature (rust#148605)](https://github.com/rust-lang/rust/pull/148605#issuecomment-3582962396)
    - @_**|116009** @_**|124288** @_**|326176** @_**|232957**
    - concerns: [pending-reference-pr (by traviscross)](https://github.com/rust-lang/rust/pull/148605#issuecomment-3582964236) [rename-lints (by traviscross)](https://github.com/rust-lang/rust/pull/148605#issuecomment-3583574352)
- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864))
    - concern: [continued-maintainer-interest](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535030586)
    - concern: [documentation](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535045453)
  - "Proposal for a dedicated test suite for the parallel frontend" [compiler-team#906](https://github.com/rust-lang/compiler-team/issues/906) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Proposal.20for.20a.20dedicated.20test.20suite.20for.20t.E2.80.A6.20compiler-team.23906))
    - concern: [can-we-just-enhance-ui-suite](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137762379)
    - concern: [name-a-specific-reason](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137732970)
  - "Promote powerpc64-unknown-linux-musl to tier 2 with host tools" [compiler-team#946](https://github.com/rust-lang/compiler-team/issues/946) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20powerpc64-unknown-linux-musl.20to.20t.E2.80.A6.20compiler-team.23946))
  - "Use `annotate-snippets` as the default emitter" [compiler-team#947](https://github.com/rust-lang/compiler-team/issues/947) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Use.20.60annotate-snippets.60.20as.20the.20default.20em.E2.80.A6.20compiler-team.23947))
  - "Not linting irrefutable_let_patterns on let chains" [rust#146832](https://github.com/rust-lang/rust/pull/146832)
  - "Warn on codegen attributes on required trait methods" [rust#148756](https://github.com/rust-lang/rust/pull/148756)
  - "NFC normalize lifetime identifiers" [rust#149192](https://github.com/rust-lang/rust/pull/149192)
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - "Update bundled musl to 1.2.5" [rust#142682](https://github.com/rust-lang/rust/pull/142682)
  - "Fix backtraces with `-C panic=abort` on linux; emit unwind tables by default" [rust#143613](https://github.com/rust-lang/rust/pull/143613)
  - "Stabilize `-Zremap-path-scope`" [rust#147611](https://github.com/rust-lang/rust/pull/147611)
- Other teams finalized FCPs
  - "misc coercion cleanups and handle safety correctly" [rust#148602](https://github.com/rust-lang/rust/pull/148602)
  - "const validation: remove check for mutable refs in final value of const" [rust#148746](https://github.com/rust-lang/rust/pull/148746)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "CTFE: avoid emitting a hard error on generic normalization failures" [rust#149501](https://github.com/rust-lang/rust/pull/149501)
  - Authored by lcnr (thanks!!)
  - Fixes #149081, a P-critical regression, see Zulip [prioritization thread](https://rust-lang.zulipchat.com/#narrow/channel/245100-t-compiler.2Fprioritization.2Falerts/topic/.23149081.201.2E92.20regression.20in.20PyO3.3A.20unable.20to.20determine.20layout.E2.80.A6/near/558109603)
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23149501.3A.20beta-nominated/near/561139841)
  - Author comments that this fix a bit iffy but together with the downstream patch from the Py03 maintainer, but in the short term this should be ok
  - In addition/alternative we can revert #149081
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
- [57 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [39 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 1 P-high, 5 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 1 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
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

> [2025-12-03 Triage Log](https://github.com/rust-lang/rustc-perf/blob/master/triage/2025/2025-12-02.md)

A fairly quiet week overall, despite a slightly higher than usual amount of merged PRs.

Triage done by **@simulacrum**.
Revision range: [b64df9d1..eca9d93f](https://perf.rust-lang.org/?start=b64df9d1012f2482b54a4d959548cf8fc67e820c&end=eca9d93f9057f9a48ff691bd65e7daf2f94c1b67&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.2%, 1.0%]   | 152   |
| Regressions (secondary)  | 0.7%  | [0.1%, 2.4%]   | 98    |
| Improvements (primary)   | -0.3% | [-1.3%, -0.1%] | 23    |
| Improvements (secondary) | -0.3% | [-1.1%, -0.1%] | 53    |
| All  (primary)           | 0.4%  | [-1.3%, 1.0%]  | 175   |

3 Regressions, 1 Improvement, 4 Mixed; 3 of them in rollups
43 artifact comparisons made in total

#### Regressions

Rollup of 12 pull requests [#149351](https://github.com/rust-lang/rust/pull/149351) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c797096598b80ba4a40397ad7e91584fcd3df5f1&end=99ca3fc4ec35e11d1f034143e8d8f0b79ef4c1d7&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.1% | [0.1%, 0.1%] | 1     |
| Regressions (secondary)  | 0.8% | [0.3%, 1.3%] | 8     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.1% | [0.1%, 0.1%] | 1     |

This regressed due to [#147936](https://github.com/rust-lang/rust/pull/147936#issuecomment-3583927293)
which added intrinsics for offload on the large-workspace benchmark. It's not
clear why this had such a large effect though.

Rollup of 6 pull requests [#149387](https://github.com/rust-lang/rust/pull/149387) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=cf8a95590a1b768b7711f2631d5b5e3ead464de7&end=f392ed53ca3884c96430f2a283ffffa836b204f5&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | -    | -            | 0     |
| Regressions (secondary)  | 1.7% | [0.1%, 2.6%] | 4     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | -    | -            | 0     |

This regressed some next-solver benchmarks. Root cause not investigated but surface level inspection suggests this is a bug fix so probably warranted, marked as triaged.

Rollup of 3 pull requests [#149462](https://github.com/rust-lang/rust/pull/149462) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8a3a6bdb68b4d4c9ed922840808b02015741331e&end=3ff30e7eafc1da7104c3960187d17939172428ed&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.1%, 1.0%]   | 160   |
| Regressions (secondary)  | 0.6%  | [0.1%, 2.0%]   | 82    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.5% | [-0.5%, -0.5%] | 1     |
| All  (primary)                 | 0.5%  | [0.1%, 1.0%]   | 160   |

This is due to ongoing work to support open APIs, see [comment](https://github.com/rust-lang/rust/pull/149462#issuecomment-3592715205) with analysis.

#### Improvements

Remove context-dependent `!` fallback [#148871](https://github.com/rust-lang/rust/pull/148871) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=88bd39beb342e2ae7ded1eb7d58697416686d679&end=d645a4c9c563b80048ce5f32845e754a67f11efa&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.1%] | 38    |
| Improvements (secondary) | -0.3% | [-0.5%, -0.1%] | 40    |
| All  (primary)                 | -0.3% | [-0.4%, -0.1%] | 38    |


#### Mixed

v0 mangling for std on nightly [#149148](https://github.com/rust-lang/rust/pull/149148) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=cdb4236e654a49c3035269588fe22dfafc0cfa3a&end=7934bbdf84a6b9a30297caf4f4f38286dedf876a&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.8%  | [0.6%, 0.8%]   | 5     |
| Regressions (secondary)  | 0.5%  | [0.0%, 0.9%]   | 23    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-1.1%, -0.1%] | 5     |
| All  (primary)                 | 0.8%  | [0.6%, 0.8%]   | 5     |

Expected regressions due to binary size increases, see [comment](https://github.com/rust-lang/rust/pull/149148#issuecomment-3576262278).

Fix issue with callsite inline attribute not being applied sometimes. [#147404](https://github.com/rust-lang/rust/pull/147404) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=cc3eee7fbe17ea4b7238531cb97e1b7b8bd6afce&end=1eb0657f78777f0b4d6bcc49c126d5d35212cae5&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.3%, 0.4%]   | 2     |
| Regressions (secondary)  | 0.2%  | [0.1%, 0.3%]   | 5     |
| Improvements (primary)   | -0.1% | [-0.1%, -0.1%] | 2     |
| Improvements (secondary) | -0.2% | [-0.4%, -0.1%] | 22    |
| All  (primary)                 | 0.1%  | [-0.1%, 0.4%]  | 4     |

Mixed results. Arguably a correctness fix, so marking as triaged. Regressions
are due to doing a bit more work in codegen.

Compute jump threading opportunities in a single pass [#142821](https://github.com/rust-lang/rust/pull/142821) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1d60f9e070c1039b263e0f035c0f03dfcc610d0f&end=4ad239f4156aa4e7df5ac9eb90ff0ab3d0089d1c&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.1%, 0.8%]   | 18    |
| Regressions (secondary)  | 0.2%  | [0.1%, 1.0%]   | 19    |
| Improvements (primary)   | -0.7% | [-1.4%, -0.3%] | 8     |
| Improvements (secondary) | -0.3% | [-0.8%, -0.1%] | 27    |
| All  (primary)                 | 0.1%  | [-1.4%, 0.8%]  | 26    |

Mixed results as expected from MIR opt changes. Generally only a slight
regression and the PR has other benefits (simplification of code and what looks
like binary size wins).

Move even more early buffered lints to dyn lint diagnostics [#147634](https://github.com/rust-lang/rust/pull/147634) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=63b1db05801271e400954e41b8600a3cf1482363&end=47cd7120d9b4e1b64eb27c87522a07888197fae8&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 1     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.5% | [-0.9%, -0.1%] | 13    |
| All  (primary)                 | -     | -              | 0     |

Only a single secondary run regressed (ucd) so while it doesn't look spurious I
don't think it merits investigation, especially coupled with some improvements.
Marking as triaged.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

Next meetings' agenda draft: [hackmd link](https://hackmd.io/XfqCRe0OT9SDwLnNwNHG9g)
