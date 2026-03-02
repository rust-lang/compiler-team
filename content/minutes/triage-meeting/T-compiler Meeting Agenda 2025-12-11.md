---
tags: weekly, rustc
type: docs
note_id: XfqCRe0OT9SDwLnNwNHG9g
---

# T-compiler Meeting Agenda 2025-12-11

## Announcements

- Today Rust 1.92 is out, [WIP blog post](https://github.com/BoxyUwU/blog.rust-lang.org/blob/1.92.0/content/Rust-1.92.0.md)
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- WG-async design meeting <time:2025-11-20T13:00:00+02:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Introduce a tier-3 `wasm32-component` target" [compiler-team#948](https://github.com/rust-lang/compiler-team/issues/948) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Introduce.20a.20tier-3.20.60wasm32-component.60.20tar.E2.80.A6.20compiler-team.23948))
  - "Publish `rustc_public` crate v0.1 to crates.io" [compiler-team#949](https://github.com/rust-lang/compiler-team/issues/949) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Publish.20.60rustc_public.60.20crate.20v0.2E1.20to.20crat.E2.80.A6.20compiler-team.23949))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: about 27 days ago)
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: 4 months ago)
  - "Promote tvOS/watchOS/visionOS to Tier 2" [compiler-team#918](https://github.com/rust-lang/compiler-team/issues/918) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tvOS.2FwatchOS.2FvisionOS.20to.20Tier.202.20compiler-team.23918)) (last review activity: 2 months ago)
  - "Rename `hexagon-unknown-{none-elf,linux-musl}` targets" [compiler-team#921](https://github.com/rust-lang/compiler-team/issues/921) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.60hexagon-unknown-.7Bnone-elf.2Clinux-m.E2.80.A6.20compiler-team.23921)) (last review activity: about 55 days ago)
  - "Optimize `repr(Rust)` enums by omitting tags in more cases involving uninhabited variants." [compiler-team#922](https://github.com/rust-lang/compiler-team/issues/922) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Optimize.20.60repr.28Rust.29.60.20enums.20by.20omitting.20t.E2.80.A6.20compiler-team.23922)) (last review activity: about 55 days ago)
  - "Stop bumping the bootstrap version on every rustc release" [compiler-team#925](https://github.com/rust-lang/compiler-team/issues/925) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stop.20bumping.20the.20bootstrap.20version.20on.20eve.E2.80.A6.20compiler-team.23925)) (last review activity: about 55 days ago)
  - "Parse unstable keywords for experimental syntax" [compiler-team#945](https://github.com/rust-lang/compiler-team/issues/945) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Parse.20unstable.20keywords.20for.20experimental.20.E2.80.A6.20compiler-team.23945)) (last review activity: about 13 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [Promote `riscv64a23-unknown-linux-gnu` to Tier 2 with host tools (compiler-team#910)](https://github.com/rust-lang/compiler-team/issues/910#issuecomment-3302421999)
    - @_**|125250** @_**|119031** @_**|426609** @_**|116122** @_**|116118** @_**|259697** @_**|444933**
    - concerns: [no-hardware-available (by davidtwco)](https://github.com/rust-lang/compiler-team/issues/910#issuecomment-3302832854) [unclear-justification (by jieyouxu)](https://github.com/rust-lang/compiler-team/issues/910#issuecomment-3305030219)
  - merge: [sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets (rust#123617)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2135121317)
    - no pending checkboxes
    - concerns: [stabilization-scope (by wesleywiser)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2192330122)
  - merge: [Stabilize stack-protector (rust#146369)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3271397169)
    - @_**|116266** @_**|119031** @_**|426609** @_**|444933**
    - concerns: [mitigation-enforcement (by Noratrieb)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3286402251)
  - merge: [Revert "Do not check privacy for RPITIT." (rust#146470)](https://github.com/rust-lang/rust/pull/146470#issuecomment-3553748437)
    - no pending checkboxes
    - concerns: [crater run results (by tmandry)](https://github.com/rust-lang/rust/pull/146470#issuecomment-3637982255)
  - merge: [Stabilize the `supertrait_item_shadowing` feature (rust#148605)](https://github.com/rust-lang/rust/pull/148605#issuecomment-3582962396)
    - @_**|116009** @_**|124288** @_**|326176** @_**|232957**
    - concerns: [pending-reference-pr (by traviscross)](https://github.com/rust-lang/rust/pull/148605#issuecomment-3582964236)
  - merge: [resolve: Report more visibility-related early resolution ambiguities for imports (rust#149596)](https://github.com/rust-lang/rust/pull/149596#issuecomment-3639273969)
    - @_**|116009** @_**|239881** @_**|614535** @_**|125270**
    - no pending concerns
- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864))
    - concern: [documentation](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535045453)
    - concern: [continued-maintainer-interest](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535030586)
  - "Proposal for a dedicated test suite for the parallel frontend" [compiler-team#906](https://github.com/rust-lang/compiler-team/issues/906) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Proposal.20for.20a.20dedicated.20test.20suite.20for.20t.E2.80.A6.20compiler-team.23906))
    - concern: [name-a-specific-reason](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137732970)
    - concern: [can-we-just-enhance-ui-suite](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137762379)
  - "Destabilise target-spec-json" [compiler-team#944](https://github.com/rust-lang/compiler-team/issues/944) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Destabilise.20target-spec-json.20compiler-team.23944))
    - concern: [fcp](https://github.com/rust-lang/compiler-team/issues/944#issuecomment-3520213519)
  - "Promote powerpc64-unknown-linux-musl to tier 2 with host tools" [compiler-team#946](https://github.com/rust-lang/compiler-team/issues/946) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20powerpc64-unknown-linux-musl.20to.20t.E2.80.A6.20compiler-team.23946))
  - "Use `annotate-snippets` as the default emitter" [compiler-team#947](https://github.com/rust-lang/compiler-team/issues/947) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Use.20.60annotate-snippets.60.20as.20the.20default.20em.E2.80.A6.20compiler-team.23947))
  - "Warn on codegen attributes on required trait methods" [rust#148756](https://github.com/rust-lang/rust/pull/148756)
  - "NFC normalize lifetime identifiers" [rust#149192](https://github.com/rust-lang/rust/pull/149192)
- Accepted MCPs
  - No new accepted proposals this time.
- MCPs blocked on unresolved concerns
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 5 months ago)
    - concern: [path-to-stabilization](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-2980212568)
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: 2 months ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: 4 months ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
  - "Split the `-openbsd*` targets by version" [compiler-team#916](https://github.com/rust-lang/compiler-team/issues/916) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Split.20the.20.60-openbsd.2A.60.20targets.20by.20version.20compiler-team.23916)) (last review activity: 2 months ago)
    - concern: [version-churn](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315239793)
    - concern: [why-not-ports-rustc](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315251054)
    - concern: [nonsystematic-breakage](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315243666)
  - "Remove diagnostic translation infrastructure" [compiler-team#924](https://github.com/rust-lang/compiler-team/issues/924) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Remove.20diagnostic.20translation.20infrastruct.E2.80.A6.20compiler-team.23924)) (last review activity: about 55 days ago)
    - concern: [people-like-structs](https://github.com/rust-lang/compiler-team/issues/924#issuecomment-3377416128)
  - "Doc comments and attributes on macro arms" [compiler-team#935](https://github.com/rust-lang/compiler-team/issues/935) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Doc.20comments.20and.20attributes.20on.20macro.20arms.20compiler-team.23935)) (last review activity: about 34 days ago)
    - concern: [lang](https://github.com/rust-lang/compiler-team/issues/935#issuecomment-3444181159)
  - "Allow using prebuilt sanitizer libraries" [compiler-team#943](https://github.com/rust-lang/compiler-team/issues/943) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20using.20prebuilt.20sanitizer.20libraries.20compiler-team.23943)) (last review activity: about 13 days ago)
    - concern: [what-about-combinatorics](https://github.com/rust-lang/compiler-team/issues/943#issuecomment-3518380326)
    - concern: [why-not-third-party-tool](https://github.com/rust-lang/compiler-team/issues/943#issuecomment-3518370372)
- Finalized FCPs (disposition merge)
  - "Update bundled musl to 1.2.5" [rust#142682](https://github.com/rust-lang/rust/pull/142682)
  - "Fix backtraces with `-C panic=abort` on linux; emit unwind tables by default" [rust#143613](https://github.com/rust-lang/rust/pull/143613)
  - "Stabilize `-Zremap-path-scope`" [rust#147611](https://github.com/rust-lang/rust/pull/147611)
  - "Better closure requirement propagation." [rust#148329](https://github.com/rust-lang/rust/pull/148329)
  - "don't normalize where-clauses when checking well-formedness" [rust#148477](https://github.com/rust-lang/rust/pull/148477)
  - "misc coercion cleanups and handle safety correctly" [rust#148602](https://github.com/rust-lang/rust/pull/148602)
- Other teams finalized FCPs
  - "Stabilize `const_mul_add`" [rust#148052](https://github.com/rust-lang/rust/pull/148052)
  - "Better closure requirement propagation." [rust#148329](https://github.com/rust-lang/rust/pull/148329)
  - "don't normalize where-clauses when checking well-formedness" [rust#148477](https://github.com/rust-lang/rust/pull/148477)
  - "misc coercion cleanups and handle safety correctly" [rust#148602](https://github.com/rust-lang/rust/pull/148602)
  - "const validation: remove check for mutable refs in final value of const" [rust#148746](https://github.com/rust-lang/rust/pull/148746)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "attempt to fix unreachable code regression" [rust#149664](https://github.com/rust-lang/rust/pull/149664)
  - Authored by Kivooeo
  - (FIY) Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23149664.3A.20beta-nominated/near/562080251) was in favor but didn't make it to the release cut

We have 2 more beta-1.92 regressions open ([link](https://github.com/rust-lang/rust/issues?q=label%3Aregression-from-stable-to-beta+label%3AT-compiler+is%3Aopen)), but:
- [regression: temporary value dropped while borrowed - #148974](https://github.com/rust-lang/rust/issues/148974): this was an accepted breakage (#145838). Could probably close?
- [nightly `unused_assignments` false positives for `miette::Diagnostic` fields - #147648](https://github.com/rust-lang/rust/issues/147648): (P-medium) was fixed by #149147 but didn't make it to the release cut

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
- [60 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [41 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 1 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 34 P-high, 100 P-medium, 26 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

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

> [2025-12-08 Triage Log](https://github.com/rust-lang/rustc-perf/blob/master/triage/2025/2025-12-08.md)

Overall result is negative this week, but both main regressions are on track to be addressed. No outstanding changes otherwise.

Triage done by **@panstromek**.
Revision range: [eca9d93f..55495234](https://perf.rust-lang.org/?start=eca9d93f9057f9a48ff691bd65e7daf2f94c1b67&end=554952348a7dd13851f25789f6bb1061f45c4b60&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.1%, 4.3%]   | 111   |
| Regressions (secondary)  | 0.4%  | [0.1%, 2.2%]   | 97    |
| Improvements (primary)   | -1.0% | [-1.3%, -0.7%] | 2     |
| Improvements (secondary) | -0.2% | [-0.3%, -0.0%] | 9     |
| All  (primary)           | 0.4%  | [-1.3%, 4.3%]  | 113   |


3 Regressions, 2 Improvements, 3 Mixed; 3 of them in rollups
30 artifact comparisons made in total

#### Regressions

Rollup of 12 pull requests [#149631](https://github.com/rust-lang/rust/pull/149631) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=556beb9ec72360512d0294eb0855c92fb2c20c88&end=b1b08cdef5ed3bca71c0d6638fccadc90d2e0ea3&stat=instructions:u)

| (instructions:u)         | mean | range         | count |
|:------------------------:|:----:|:-------------:|:-----:|
| Regressions (primary)    | -    | -             | 0     |
| Regressions (secondary)  | 7.4% | [0.1%, 25.0%] | 10    |
| Improvements (primary)   | -    | -             | 0     |
| Improvements (secondary) | -    | -             | 0     |
| All  (primary)           | -    | -             | 0     |

Caused by https://github.com/rust-lang/rust/pull/149147, reverted in https://github.com/rust-lang/rust/pull/149657.

Add `#[inline]` to `Layout::is_size_align_valid` [#149690](https://github.com/rust-lang/rust/pull/149690) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=aa301763000fd65db235b2d6e4c04da99abf8cd8&end=1d6c526bb010900bc1fd4c45c4ef0307b5150583&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.2% | [0.1%, 4.3%] | 4     |
| Regressions (secondary)  | 1.0% | [0.2%, 2.2%] | 8     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 1.2% | [0.1%, 4.3%] | 4     |

Little regression matches pre-merge run, justified by https://github.com/rust-lang/rust/pull/149690#issuecomment-3620152210

early return on duplicate span lowerings [#149060](https://github.com/rust-lang/rust/pull/149060) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1d6c526bb010900bc1fd4c45c4ef0307b5150583&end=fa1f706fbd0fd1c02763ecb28915bf23c860cb32&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.1%, 0.8%] | 70    |
| Regressions (secondary)  | 0.4% | [0.0%, 0.8%] | 73    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.1%, 0.8%] | 70    |

Regression is unexpected, results don't match pre-merge results. Reverted in https://github.com/rust-lang/rust/pull/149757.

#### Improvements

misc coercion cleanups and handle safety correctly [#148602](https://github.com/rust-lang/rust/pull/148602) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=864339abf952f07098dd82610256338520167d4a&end=97b131c90059e6122f22562ab4d78d50160daeff&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.2% | [-0.5%, -0.1%] | 13    |
| All  (primary)                 | -     | -              | 0     |


Revert "Rollup merge of #149147 - chenyukang:yukang-fix-unused_assignments-macro-gen-147648, r=JonathanBrouwer" [#149657](https://github.com/rust-lang/rust/pull/149657) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d427ddfe90367eaa6d2ed7bb8a16559f0230f47a&end=1c5a0cfc13559b863b47b64b51429360fe55ef73&stat=instructions:u)

| (instructions:u)                   | mean  | range           | count |
|:----------------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | -     | -               | 0     |
| Regressions (secondary)  | -     | -               | 0     |
| Improvements (primary)   | -     | -               | 0     |
| Improvements (secondary) | -7.0% | [-20.0%, -0.6%] | 9     |
| All  (primary)                 | -     | -               | 0     |


#### Mixed

Rollup of 5 pull requests [#149560](https://github.com/rust-lang/rust/pull/149560) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=646a3f8c15baefb98dc6e0c1c1ba3356db702d2a&end=a4cfac7093a1c1c7fbdb6bc75d6b6dc4d385fc69&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.1%  | [0.1%, 0.1%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.6%, -0.1%] | 2     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -0.2% | [-0.6%, 0.1%]  | 3     |

I supect the doc regression is mostly noise. Either way, I don't think it's worth more investigation, it's just a doc and it's small.

Rollup of 9 pull requests [#149646](https://github.com/rust-lang/rust/pull/149646) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b33119ffdd483969934b10a886dc06dd29a473f9&end=3e2dbcdd3a4fc1b5aabfcd0c401c093734e72df2&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.1%, 0.3%]   | 30    |
| Regressions (secondary)  | 0.2%  | [0.1%, 0.4%]   | 7     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.2%] | 2     |
| Improvements (secondary) | -0.1% | [-0.1%, -0.1%] | 6     |
| All  (primary)                 | 0.2%  | [-0.4%, 0.3%]  | 32    |

Based on the results above, the regression seems to be caused by https://github.com/rust-lang/rust/pull/149524. After looking through other PRs, I don't think there's any other candidate. I left a comment on the PR. Author will investigate.

TypeRelating emit WellFormed, not generalize [#148823](https://github.com/rust-lang/rust/pull/148823) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=36b2369c91d32c2659887ed6fe3d570640f44fd2&end=b4f1098e10e71139bbdc08df5ea8183e68fc0955&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.2%  | [0.0%, 0.5%]   | 14    |
| Improvements (primary)   | -1.3% | [-1.3%, -1.3%] | 1     |
| Improvements (secondary) | -0.2% | [-0.3%, -0.1%] | 8     |
| All  (primary)                 | -1.3% | [-1.3%, -1.3%] | 1     |

post-merge results look worse on secondary benchmarks, compared to pre-merge run. The final result still is positive, but only because of 1 primary bechmark. I looked through the secondary regressions and most of them returned back to previous state in next PR, so this is probably noise.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Remove fewer Storage calls in CopyProp and GVN" [rust#142531](https://github.com/rust-lang/rust/pull/142531) (last review activity: 2 months ago)
  - cc @**cjgillot** (or maybe reroll? Who has context about GVN mir opts? Was partially approved ([comment](https://github.com/rust-lang/rust/pull/142531#issuecomment-3041368735)))
- "Impls and impl items inherit lint levels of the corresponding traits and trait items" [rust#144113](https://github.com/rust-lang/rust/pull/144113) (last review activity: 2 months ago)
  - cc @**cjgillot** (T-lang FCP'd and reviewed the changes)
- "Don't evaluate the sanitizer attribute if no sanitizer is enabled" [rust#145679](https://github.com/rust-lang/rust/pull/145679) (last review activity: 3 months ago)
  - cc: @**Ramon de C Valle**
- "RDR: avoid rebuilding dependent crates after comment changes" [rust#143249](https://github.com/rust-lang/rust/pull/143249) (last review activity: about 58 days ago)
  - cc @**bjorn3**
- "Remove `FromResidual` param default" [rust#147160](https://github.com/rust-lang/rust/pull/147160) (last review activity: 2 months ago)
  - cc @**scottmcm**, plus maybe a look also from Miri folks ([link](https://github.com/rust-lang/rust/pull/147160#issuecomment-3348688857)) cc @**RalfJ** @**lcnr**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/ze9-zjuoR0OBop1wwNJ9sg)
