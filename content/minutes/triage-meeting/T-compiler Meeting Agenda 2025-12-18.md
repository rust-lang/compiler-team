---
tags: weekly, rustc
type: docs
note_id: ze9-zjuoR0OBop1wwNJ9sg
---

# T-compiler Meeting Agenda 2025-12-18

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- WG-async design meeting <time:2025-12-18T13:00:00+02:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Introduce a tier-3 `wasm32-component` target" [compiler-team#948](https://github.com/rust-lang/compiler-team/issues/948) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Introduce.20a.20tier-3.20.60wasm32-component.60.20tar.E2.80.A6.20compiler-team.23948))
  - "Publish `rustc_public` crate v0.1 to crates.io" [compiler-team#949](https://github.com/rust-lang/compiler-team/issues/949) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Publish.20.60rustc_public.60.20crate.20v0.2E1.20to.20crat.E2.80.A6.20compiler-team.23949))
  - "Add `-Z msrv=xx.yy.zz` flag" [compiler-team#950](https://github.com/rust-lang/compiler-team/issues/950) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Z.20msrv.3Dxx.2Eyy.2Ezz.60.20flag.20compiler-team.23950))
  - "Create new Tier 2 targets with sanitizers enabled by default" [compiler-team#951](https://github.com/rust-lang/compiler-team/issues/951) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20new.20targets.20with.20sanitizers.20enable.E2.80.A6.20compiler-team.23951))
  - "Create a new Tier 3 target: ` x86_64-nt-windows-msvc`" [compiler-team#952](https://github.com/rust-lang/compiler-team/issues/952) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20new.20Tier.203.20target.3A.20.60.20x86_64-nt-w.E2.80.A6.20compiler-team.23952))
  - "Tier 3 targets proposal: LoongArch UEFI" [compiler-team#953](https://github.com/rust-lang/compiler-team/issues/953) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Tier.203.20targets.20proposal.3A.20LoongArch.20UEFI.20compiler-team.23953))
- Old MCPs (not seconded, take a look)
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: 4 months ago)
  - "Promote tvOS/watchOS/visionOS to Tier 2" [compiler-team#918](https://github.com/rust-lang/compiler-team/issues/918) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tvOS.2FwatchOS.2FvisionOS.20to.20Tier.202.20compiler-team.23918)) (last review activity: 2 months ago)
  - "Rename `hexagon-unknown-{none-elf,linux-musl}` targets" [compiler-team#921](https://github.com/rust-lang/compiler-team/issues/921) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.60hexagon-unknown-.7Bnone-elf.2Clinux-m.E2.80.A6.20compiler-team.23921)) (last review activity: 2 months ago)
  - "Optimize `repr(Rust)` enums by omitting tags in more cases involving uninhabited variants." [compiler-team#922](https://github.com/rust-lang/compiler-team/issues/922) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Optimize.20.60repr.28Rust.29.60.20enums.20by.20omitting.20t.E2.80.A6.20compiler-team.23922)) (last review activity: 2 months ago)
  - "Stop bumping the bootstrap version on every rustc release" [compiler-team#925](https://github.com/rust-lang/compiler-team/issues/925) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stop.20bumping.20the.20bootstrap.20version.20on.20eve.E2.80.A6.20compiler-team.23925)) (last review activity: 2 months ago)
  - "Parse unstable keywords for experimental syntax" [compiler-team#945](https://github.com/rust-lang/compiler-team/issues/945) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Parse.20unstable.20keywords.20for.20experimental.20.E2.80.A6.20compiler-team.23945)) (last review activity: about 20 days ago)
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
  - merge: [Support importing path-segment keyword with renaming (rust#146972)](https://github.com/rust-lang/rust/pull/146972#issuecomment-3666229367)
    - @_**|116009**
    - concerns: [documentation (by traviscross)](https://github.com/rust-lang/rust/pull/146972#issuecomment-3666233920) [consistent-axioms (by nikomatsakis)](https://github.com/rust-lang/rust/pull/146972#issuecomment-3666303278)
  - merge: [Stabilize ppc inline assembly (rust#147996)](https://github.com/rust-lang/rust/pull/147996#issuecomment-3666408084)
    - @_**|116009** @_**|116883** @_**|125270**
    - no pending concerns
  - merge: [Stabilize the `supertrait_item_shadowing` feature (rust#148605)](https://github.com/rust-lang/rust/pull/148605#issuecomment-3582962396)
    - @_**|116009** @_**|124288** @_**|326176** @_**|232957**
    - concerns: [pending-reference-pr (by traviscross)](https://github.com/rust-lang/rust/pull/148605#issuecomment-3582964236)
  - merge: [const-eval: always do mem-to-mem copies if there might be padding involved (rust#148967)](https://github.com/rust-lang/rust/pull/148967#issuecomment-3647768288)
    - @_**|116009** @_**|239881** @_**|125270**
    - no pending concerns
  - merge: [resolve: Report more visibility-related early resolution ambiguities for imports (rust#149596)](https://github.com/rust-lang/rust/pull/149596#issuecomment-3639273969)
    - @_**|116009** @_**|239881** @_**|125270**
    - no pending concerns
  - merge: [Do not deduplicate captured args while expanding `format_args!` (rust#149926)](https://github.com/rust-lang/rust/pull/149926#issuecomment-3650769355)
    - @_**|116009** @_**|239881** @_**|116883** @_**|125270**
    - no pending concerns
- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864))
    - concern: [documentation](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535045453)
    - concern: [continued-maintainer-interest](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535030586)
  - "Proposal for a dedicated test suite for the parallel frontend" [compiler-team#906](https://github.com/rust-lang/compiler-team/issues/906) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Proposal.20for.20a.20dedicated.20test.20suite.20for.20t.E2.80.A6.20compiler-team.23906))
    - concern: [can-we-just-enhance-ui-suite](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137762379)
    - concern: [name-a-specific-reason](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137732970)
  - "Destabilise target-spec-json" [compiler-team#944](https://github.com/rust-lang/compiler-team/issues/944) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Destabilise.20target-spec-json.20compiler-team.23944))
    - concern: [fcp](https://github.com/rust-lang/compiler-team/issues/944#issuecomment-3520213519)
  - "Allow combining `--help -C help -Z help -W help` in one invocation" [compiler-team#954](https://github.com/rust-lang/compiler-team/issues/954) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20combining.20.60--help.20-C.20help.20-Z.20help.20-.E2.80.A6.20compiler-team.23954))
- Accepted MCPs
  - "Promote powerpc64-unknown-linux-musl to tier 2 with host tools" [compiler-team#946](https://github.com/rust-lang/compiler-team/issues/946) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20powerpc64-unknown-linux-musl.20to.20t.E2.80.A6.20compiler-team.23946))
  - "Use `annotate-snippets` as the default emitter" [compiler-team#947](https://github.com/rust-lang/compiler-team/issues/947) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Use.20.60annotate-snippets.60.20as.20the.20default.20em.E2.80.A6.20compiler-team.23947))
- MCPs blocked on unresolved concerns
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 6 months ago)
    - concern: [path-to-stabilization](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-2980212568)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: about 34 days ago)
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: 2 months ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: 5 months ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
  - "Split the `-openbsd*` targets by version" [compiler-team#916](https://github.com/rust-lang/compiler-team/issues/916) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Split.20the.20.60-openbsd.2A.60.20targets.20by.20version.20compiler-team.23916)) (last review activity: 2 months ago)
    - concern: [nonsystematic-breakage](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315243666)
    - concern: [version-churn](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315239793)
    - concern: [why-not-ports-rustc](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315251054)
  - "Remove diagnostic translation infrastructure" [compiler-team#924](https://github.com/rust-lang/compiler-team/issues/924) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Remove.20diagnostic.20translation.20infrastruct.E2.80.A6.20compiler-team.23924)) (last review activity: 2 months ago)
    - concern: [people-like-structs](https://github.com/rust-lang/compiler-team/issues/924#issuecomment-3377416128)
  - "Doc comments and attributes on macro arms" [compiler-team#935](https://github.com/rust-lang/compiler-team/issues/935) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Doc.20comments.20and.20attributes.20on.20macro.20arms.20compiler-team.23935)) (last review activity: about 41 days ago)
    - concern: [lang](https://github.com/rust-lang/compiler-team/issues/935#issuecomment-3444181159)
  - "Allow using prebuilt sanitizer libraries" [compiler-team#943](https://github.com/rust-lang/compiler-team/issues/943) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20using.20prebuilt.20sanitizer.20libraries.20compiler-team.23943)) (last review activity: about 5 days ago)
    - concern: [why-not-third-party-tool](https://github.com/rust-lang/compiler-team/issues/943#issuecomment-3518370372)
    - concern: [what-about-combinatorics](https://github.com/rust-lang/compiler-team/issues/943#issuecomment-3518380326)
- Finalized FCPs (disposition merge)
  - "Update bundled musl to 1.2.5" [rust#142682](https://github.com/rust-lang/rust/pull/142682)
  - "Fix backtraces with `-C panic=abort` on linux; emit unwind tables by default" [rust#143613](https://github.com/rust-lang/rust/pull/143613)
  - "Stabilize `-Zremap-path-scope`" [rust#147611](https://github.com/rust-lang/rust/pull/147611)
- Other teams finalized FCPs
  - "Stabilize `const_mul_add`" [rust#148052](https://github.com/rust-lang/rust/pull/148052)
  - "Better closure requirement propagation." [rust#148329](https://github.com/rust-lang/rust/pull/148329)
  - "don't normalize where-clauses when checking well-formedness" [rust#148477](https://github.com/rust-lang/rust/pull/148477)
  - "misc coercion cleanups and handle safety correctly" [rust#148602](https://github.com/rust-lang/rust/pull/148602)
  - "const validation: remove check for mutable refs in final value of const" [rust#148746](https://github.com/rust-lang/rust/pull/148746)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Update to LLVM 21.1.8" [rust#150057](https://github.com/rust-lang/rust/pull/150057)
  - Authored by nikic
  - A small patch release, diff: https://github.com/rust-lang/rust/pull/150057#issuecomment-3665487007
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23150057.3A.20beta-nominated/near/564257670), in favor
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
- [58 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [40 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 0 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 1 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 33 P-high, 100 P-medium, 26 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

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

> [2025-12-16 Triage Log](https://github.com/rust-lang/rustc-perf/blob/master/triage/2025/2025-12-16.md)

This week we saw several regressions, partly from the compiler doing more work. The remaining
regressions are being investigated.

Triage done by **@kobzol**.
Revision range: [55495234..21ff67df](https://perf.rust-lang.org/?start=554952348a7dd13851f25789f6bb1061f45c4b60&end=21ff67df15329dd7548ccba54b6c6ae9a562124f&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.1%, 5.1%]   | 40    |
| Regressions (secondary)  | 0.8%  | [0.0%, 3.0%]   | 63    |
| Improvements (primary)   | -0.7% | [-1.5%, -0.1%] | 35    |
| Improvements (secondary) | -1.0% | [-7.4%, -0.0%] | 73    |
| All  (primary)           | -0.1% | [-1.5%, 5.1%]  | 75    |


3 Regressions, 2 Improvements, 5 Mixed; 2 of them in rollups
36 artifact comparisons made in total

#### Regressions

resolve: Preserve ambiguous glob reexports in crate metadata [#147984](https://github.com/rust-lang/rust/pull/147984) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e2893f7c95e45f74c8bc5dbd033486c5bfaa4deb&end=c61a3a44d1a5bee35914cada6c788a05e0808f5b&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.1%, 0.5%]   | 24    |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.7%]   | 13    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.1% | [-0.1%, -0.1%] | 1     |
| All  (primary)                 | 0.3%  | [0.1%, 0.5%]   | 24    |

- The compiler is doing more work after this change, and this work should unblock parallelizing name resolution and macro expansion in the future.
- Asked on the PR if something can be done about the regression.

Rollup of 9 pull requests [#149891](https://github.com/rust-lang/rust/pull/149891) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5b150d238fbd4fe7bc2cd3140d8e6fb4406099fa&end=c4dc70ee0ad7f811fb32e5bed9cd6c7b37beed4e&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.9% | [0.5%, 7.6%] | 10    |
| Regressions (secondary)  | 1.2% | [0.2%, 2.2%] | 2     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 1.9% | [0.5%, 7.6%] | 10    |

- The regression in doc builds was caused by [#142380](https://github.com/rust-lang/rust/pull/142380).
- Continuing discussion on the PR.

Externally implementable items [#146348](https://github.com/rust-lang/rust/pull/146348) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2cd4ee6bcf517345dd76d7b102d56b2e873cddbc&end=3f4dc1e02d759aa3c3807d4efc1f7f6e293536a5&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.6%, 0.7%]   | 2     |
| Regressions (secondary)  | 0.3%  | [0.1%, 0.8%]   | 35    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.0% | [-0.1%, -0.0%] | 2     |
| All  (primary)                 | 0.6%  | [0.6%, 0.7%]   | 2     |

- The regressions are only on the tiniest crates, and is quite small.
- Marked as triaged.

#### Improvements

Remove unwraps from metadata decoding: introduce `BlobDecoder` [#149455](https://github.com/rust-lang/rust/pull/149455) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=03d7ad7dd67d71f1ef1a790fcb4ceb2484ced761&end=5bc345055b06dc096b01bc6d1e0cbe92d3cc630e&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.4%, -0.1%] | 8     |
| Improvements (secondary) | -0.4% | [-1.4%, -0.1%] | 28    |
| All  (primary)                 | -0.2% | [-0.4%, -0.1%] | 8     |


Don't leak sysroot crates through dependencies [#149273](https://github.com/rust-lang/rust/pull/149273) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3f4dc1e02d759aa3c3807d4efc1f7f6e293536a5&end=08de25c4ea16d7ecc3ceeb093d4f343a2be30df5&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -2.9% | [-6.7%, -0.1%] | 11    |
| All  (primary)                 | -     | -              | 0     |


#### Mixed

std: Use more `unix.rs` code on WASI targets [#147572](https://github.com/rust-lang/rust/pull/147572) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a371038013f4f3e3f1d4fdcacfaa02c3252a518b&end=018d26972e523b8d28f9579056185a1713949dfd&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 3     |
| Regressions (secondary)  | 0.3%  | [0.1%, 0.5%]   | 2     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.0% | [-0.0%, -0.0%] | 1     |
| All  (primary)                 | 0.2%  | [0.2%, 0.2%]   | 3     |

- Except for the tiny helloworld doc regression, this seems to be noise.
- Marked as triaged.

Revert "early return on duplicate span lowerings" [#149757](https://github.com/rust-lang/rust/pull/149757) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d5525a73009e2c61b09daa69df79064530bd4dcf&end=e2893f7c95e45f74c8bc5dbd033486c5bfaa4deb&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.1%  | [0.1%, 0.1%]   | 1     |
| Improvements (primary)   | -0.3% | [-0.7%, -0.1%] | 94    |
| Improvements (secondary) | -0.4% | [-0.8%, -0.0%] | 107   |
| All  (primary)                 | -0.3% | [-0.7%, -0.1%] | 94    |

- This revert fixed a previous performance regression from [#149060](https://github.com/rust-lang/rust/pull/149060).
- Marked as triaged.

Rollup of 5 pull requests [#149818](https://github.com/rust-lang/rust/pull/149818) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c61a3a44d1a5bee35914cada6c788a05e0808f5b&end=5f1173bb2b0a7012640bd5383c61b433b16a452d&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.1%, 0.3%]   | 18    |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.5%]   | 13    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.4% | [-0.6%, -0.3%] | 3     |
| All  (primary)                 | 0.2%  | [0.1%, 0.3%]   | 18    |

- Small regression caused by [#149664](https://github.com/rust-lang/rust/pull/149664), continuing
  discussion on that PR.
- Not marking as triaged yet.

Port `doc` attributes to new attribute API [#149645](https://github.com/rust-lang/rust/pull/149645) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f5209000832c9d3bc29c91f4daef4ca9f28dc797&end=5b150d238fbd4fe7bc2cd3140d8e6fb4406099fa&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 1     |
| Regressions (secondary)  | 1.4%  | [0.1%, 3.1%]   | 18    |
| Improvements (primary)   | -0.6% | [-1.3%, -0.2%] | 36    |
| Improvements (secondary) | -0.6% | [-1.2%, -0.1%] | 32    |
| All  (primary)                 | -0.6% | [-1.3%, 0.2%]  | 37    |

- More improvements than regressions.
- Already marked as triaged.

Overhaul filename handling for cross-compiler consistency [#149709](https://github.com/rust-lang/rust/pull/149709) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=eb171a227f9e5de5d376b6edb56b174bc8235fb3&end=8188f6c8084bade919921457e011fa39c6bf09a4&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.2%, 1.1%]   | 6     |
| Regressions (secondary)  | 0.6%  | [0.0%, 2.2%]   | 31    |
| Improvements (primary)   | -0.6% | [-1.5%, -0.1%] | 12    |
| Improvements (secondary) | -0.3% | [-0.6%, -0.2%] | 4     |
| All  (primary)                 | -0.2% | [-1.5%, 1.1%]  | 18    |

- The results are a bit all over the place, but overall it's a wash. Some tiny improvements are expected to be gained from a follow-up in [#149989](https://github.com/rust-lang/rust/pull/149989).
- Marked as triaged.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "RISC-V: Implement (Zkne or Zknd) intrinsics correctly" [rust#146798](https://github.com/rust-lang/rust/pull/146798) (last review activity: 2 months ago)
  - cc: @**Amanieu** (I wonder if this [comment](https://github.com/rust-lang/rust/pull/146798#issuecomment-3314002998) is relevant)
- "Do not use dlltool to create DLL Import Libraries for Windows" [rust#147274](https://github.com/rust-lang/rust/pull/147274) (last review activity: 2 months ago)
  - cc: @**Wesley Wiser**
- "cg_llvm: More preparation for moving FFI bindings to `rustc_llvm`" [rust#147430](https://github.com/rust-lang/rust/pull/147430) (last review activity: 2 months ago)
  - cc: (autoassigned) @**Sparrow Li**
- "Uplift module inspect from clippy" [rust#147599](https://github.com/rust-lang/rust/pull/147599) (last review activity: 2 months ago)
  - cc: (autoassigned) @**Esteban Küber** (fixes a P-low issue ...)

### Next meeting(s) when?

Next two Thursdays fall exactly on Dec, 25th and Jan, 1st :-)
