---
tags: weekly, rustc
type: docs
note_id: J5IoTXI6STWyyqPxArgxPg
---

# T-compiler Meeting Agenda 2025-11-27

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- WG-async design meeting <time:2025-11-27T13:00:00+02:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Parse unstable keywords for experimental syntax" [compiler-team#945](https://github.com/rust-lang/compiler-team/issues/945) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Parse.20unstable.20keywords.20for.20experimental.20.E2.80.A6.20compiler-team.23945))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: about 13 days ago)
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: 4 months ago)
  - "Promote tvOS/watchOS/visionOS to Tier 2" [compiler-team#918](https://github.com/rust-lang/compiler-team/issues/918) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tvOS.2FwatchOS.2FvisionOS.20to.20Tier.202.20compiler-team.23918)) (last review activity: about 49 days ago)
  - "Rename `hexagon-unknown-{none-elf,linux-musl}` targets" [compiler-team#921](https://github.com/rust-lang/compiler-team/issues/921) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.60hexagon-unknown-.7Bnone-elf.2Clinux-m.E2.80.A6.20compiler-team.23921)) (last review activity: about 41 days ago)
  - "Optimize `repr(Rust)` enums by omitting tags in more cases involving uninhabited variants." [compiler-team#922](https://github.com/rust-lang/compiler-team/issues/922) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Optimize.20.60repr.28Rust.29.60.20enums.20by.20omitting.20t.E2.80.A6.20compiler-team.23922)) (last review activity: about 41 days ago)
  - "Stop bumping the bootstrap version on every rustc release" [compiler-team#925](https://github.com/rust-lang/compiler-team/issues/925) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stop.20bumping.20the.20bootstrap.20version.20on.20eve.E2.80.A6.20compiler-team.23925)) (last review activity: about 41 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [Promote `riscv64a23-unknown-linux-gnu` to Tier 2 with host tools (compiler-team#910)](https://github.com/rust-lang/compiler-team/issues/910#issuecomment-3302421999)
    - @_**|125250** @_**|119031** @_**|426609** @_**|116122** @_**|116118** @_**|259697** @_**|444933**
    - concerns: [no-hardware-available (by davidtwco)](https://github.com/rust-lang/compiler-team/issues/910#issuecomment-3302832854) [unclear-justification (by jieyouxu)](https://github.com/rust-lang/compiler-team/issues/910#issuecomment-3305030219)
  - merge: [Destabilise target-spec-json (compiler-team#944)](https://github.com/rust-lang/compiler-team/issues/944#issuecomment-3519268694)
    - @_**|125250** @_**|119031** @_**|116118** @_**|353056**
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
  - "Fix ICE when applying test macro to crate root" [rust#147841](https://github.com/rust-lang/rust/pull/147841)
  - merge: [Stabilize the `supertrait_item_shadowing` feature (rust#148605)](https://github.com/rust-lang/rust/pull/148605#issuecomment-3582962396)
    - @_**|116266** @_**|116009** @_**|124288** @_**|326176** @_**|232957**
    - concerns: [pending-reference-pr (by traviscross)](https://github.com/rust-lang/rust/pull/148605#issuecomment-3582964236) [rename-lints (by traviscross)](https://github.com/rust-lang/rust/pull/148605#issuecomment-3583574352)
  - merge: [Warn on codegen attributes on required trait methods (rust#148756)](https://github.com/rust-lang/rust/pull/148756#issuecomment-3523712714)
    - @_**|116009**
    - concerns: [jackh726-concern (by nikomatsakis)](https://github.com/rust-lang/rust/pull/148756#issuecomment-3554318576)
- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864))
    - concern: [documentation](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535045453)
    - concern: [continued-maintainer-interest](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535030586)
  - "Proposal for a dedicated test suite for the parallel frontend" [compiler-team#906](https://github.com/rust-lang/compiler-team/issues/906) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Proposal.20for.20a.20dedicated.20test.20suite.20for.20t.E2.80.A6.20compiler-team.23906))
    - concern: [can-we-just-enhance-ui-suite](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137762379)
    - concern: [name-a-specific-reason](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137732970)
  - "Not linting irrefutable_let_patterns on let chains" [rust#146832](https://github.com/rust-lang/rust/pull/146832)
- Accepted MCPs
  - "Add support for specifying split-debuginfo=unpacked output directory" [compiler-team#871](https://github.com/rust-lang/compiler-team/issues/871) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20support.20for.20specifying.20split-debuginf.E2.80.A6.20compiler-team.23871))
  - "Begin enforcing Tier 2 target maintainer requirements" [compiler-team#896](https://github.com/rust-lang/compiler-team/issues/896) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Begin.20enforcing.20Tier.202.20target.20maintainer.20.E2.80.A6.20compiler-team.23896))
  - "Experiment with replacing specialization in libcore with downcasting" [compiler-team#904](https://github.com/rust-lang/compiler-team/issues/904) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Experiment.20with.20replacing.20specialization.20.E2.80.A6.20compiler-team.23904))
  - "target tier 3 support for hexagon-unknown-qurt" [compiler-team#919](https://github.com/rust-lang/compiler-team/issues/919) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/target.20tier.203.20support.20for.20hexagon-unknown.E2.80.A6.20compiler-team.23919))
  - "Omit suggestions when spans overlap" [compiler-team#929](https://github.com/rust-lang/compiler-team/issues/929) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Omit.20suggestions.20when.20spans.20overlap.20compiler-team.23929))
  - "Use v0 mangling by default on nightly" [compiler-team#938](https://github.com/rust-lang/compiler-team/issues/938) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Use.20v0.20mangling.20by.20default.20on.20nightly.20compiler-team.23938))
  - "remove support for `typeof`" [compiler-team#940](https://github.com/rust-lang/compiler-team/issues/940) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/remove.20support.20for.20.60typeof.60.20compiler-team.23940))
  - "Contracts: primitive ownership assertions: `owned` and `alloc_block`" [compiler-team#942](https://github.com/rust-lang/compiler-team/issues/942) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Contracts.3A.20primitive.20ownership.20assertions.E2.80.A6.20compiler-team.23942))
- MCPs blocked on unresolved concerns
  - <Here group MCPs blocked on unresolved concerns>
  - "Allow using prebuilt sanitizer libraries" [compiler-team#943](https://github.com/rust-lang/compiler-team/issues/943) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20using.20prebuilt.20sanitizer.20libraries.20compiler-team.23943))
    - concern: [what-about-combinatorics](https://github.com/rust-lang/compiler-team/issues/943#issuecomment-3518380326)
    - concern: [why-not-third-party-tool](https://github.com/rust-lang/compiler-team/issues/943#issuecomment-3518370372)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 5 months ago)
    - concern: [path-to-stabilization](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-2980212568)
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: about 51 days ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: 4 months ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
  - "Split the `-openbsd*` targets by version" [compiler-team#916](https://github.com/rust-lang/compiler-team/issues/916) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Split.20the.20.60-openbsd.2A.60.20targets.20by.20version.20compiler-team.23916)) (last review activity: about 49 days ago)
    - concern: [nonsystematic-breakage](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315243666)
    - concern: [version-churn](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315239793)
    - concern: [why-not-ports-rustc](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315251054)
  - "Remove diagnostic translation infrastructure" [compiler-team#924](https://github.com/rust-lang/compiler-team/issues/924) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Remove.20diagnostic.20translation.20infrastruct.E2.80.A6.20compiler-team.23924)) (last review activity: about 41 days ago)
    - concern: [people-like-structs](https://github.com/rust-lang/compiler-team/issues/924#issuecomment-3377416128)
  - "Doc comments and attributes on macro arms" [compiler-team#935](https://github.com/rust-lang/compiler-team/issues/935) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Doc.20comments.20and.20attributes.20on.20macro.20arms.20compiler-team.23935)) (last review activity: about 20 days ago)
    - concern: [lang](https://github.com/rust-lang/compiler-team/issues/935#issuecomment-3444181159)
- Finalized FCPs (disposition merge)
  - "Update bundled musl to 1.2.5" [rust#142682](https://github.com/rust-lang/rust/pull/142682)
    - Blog post annnouncement at blog.rust-lang.org#1641
    - I (@_**apiraino**) approved the blog post PR as it seems ok, if anyone else wants to give a second look, feel free to do so.
  - "Fix backtraces with `-C panic=abort` on linux; emit unwind tables by default" [rust#143613](https://github.com/rust-lang/rust/pull/143613)
  - "Stabilize `-Zremap-path-scope`" [rust#147611](https://github.com/rust-lang/rust/pull/147611)
- Other teams finalized FCPs
  - "parser/lexer: bump to Unicode 17, use faster unicode-ident" [rust#148321](https://github.com/rust-lang/rust/pull/148321)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Fix the issue of unused assignment from MIR liveness checking" [rust#149072](https://github.com/rust-lang/rust/pull/149072)
  - Authored by chenyukang
  - Part of the work to fix #142390, see summary [last week](https://rust-lang.zulipchat.com/#narrow/channel/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202025-11-20/near/558459171)
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23149072.3A.20beta-nominated/near/558850658), seems greenlit
- :beta: "Skip unused variables warning for unreachable code" [rust#149096](https://github.com/rust-lang/rust/pull/149096)
  - Authored by chenyukang
  - Part of the work to fix #142390, see summary [last week](https://rust-lang.zulipchat.com/#narrow/channel/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202025-11-20/near/558459171)
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23149096.3A.20beta-nominated/near/558615379), the jury is still out :-)
- :beta: "Handle cycles when checking impl candidates for `doc(hidden)`" [rust#149185](https://github.com/rust-lang/rust/pull/149185)
  - Authored by Jules-Bertholet
  - Fixes #149092, a regression where rustc would hang on invalid code (stable rustc would correctly produce an error)
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23149185.3A.20beta-nominated/near/558801365), greenlit
- No stable nominations for `T-compiler` this time.

[T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-t-compiler

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-t-compiler)
- "library: core: document layout guarantee of `TypeId`" [rust#148265](https://github.com/rust-lang/rust/pull/148265)
  - xxx
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [58 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [40 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 1 P-high, 8 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 0 P-high, 2 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 31 P-high, 100 P-medium, 25 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "1.92 regression in PyO3: unable to determine layout for ... because ... cannot be normalized" [rust#149081](https://github.com/rust-lang/rust/issues/149081)
  - [Zulip discussion](https://rust-lang.zulipchat.com/#narrow/channel/245100-t-compiler.2Fprioritization.2Falerts/topic/.23149081.201.2E92.20regression.20in.20PyO3.3A.20unable.20to.20determine.20layout.E2.80.A6/near/558109603)
  - This has a big impact and seems we do not have an owner yet
  - Affects PyO3 in uncommon conditions (repro: compile a dependency with debug mode but optimizations on)
  - Py03 maintainer seems to have worked around the issue in https://github.com/PyO3/pyo3/pull/5638
  - Reverting th culprit PR #147793 might not be trivial
  - There is a way out detailed by @**lcnr** in #149283 but it's labelled as `E-hard`

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- "1.92 regression in PyO3: unable to determine layout for ... because ... cannot be normalized" [rust#149081](https://github.com/rust-lang/rust/issues/149081)
  - (see above)

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.
- "regression: temporary value dropped while borrowed" [rust#148974](https://github.com/rust-lang/rust/issues/148974)
  - This looks like an intended/accepted regression from #145838, affects an unusually big number (25) of crates
  - Question: we don't *need* to open issues on other repos, right?

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [2025-11-25 Triage Log](https://github.com/rust-lang/rustc-perf/blob/master/triage/2025/2025-11-25.md)

Only a handful of performance-related changes landed this week. The largest one was changing the default name mangling scheme in nightly to the v0 version, which produces slightly larger symbol names, so it had a small negative effect on binary sizes and compilation time.

Triage done by **@kobzol**.
Revision range: [6159a440..b64df9d1](https://perf.rust-lang.org/?start=6159a44067ebce42b38f062cc7df267a1348e092&end=b64df9d1012f2482b54a4d959548cf8fc67e820c&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.9%  | [0.3%, 2.7%]   | 48    |
| Regressions (secondary)  | 0.9%  | [0.2%, 2.1%]   | 25    |
| Improvements (primary)   | -0.5% | [-6.8%, -0.1%] | 33    |
| Improvements (secondary) | -0.5% | [-1.4%, -0.1%] | 53    |
| All  (primary)           | 0.4%  | [-6.8%, 2.7%]  | 81    |


1 Regression, 2 Improvements, 5 Mixed; 1 of them in rollups
28 artifact comparisons made in total

#### Regressions

Turn moves into copies after copy propagation [#147804](https://github.com/rust-lang/rust/pull/147804) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=23f708107b459ed551a860ef0bf8b61bc80b48b4&end=122cbd043833a1d7540cc5f99c458bfca2d3c525&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.6% | [0.1%, 0.9%] | 6     |
| Regressions (secondary)  | 0.8% | [0.8%, 0.8%] | 1     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.6% | [0.1%, 0.9%] | 6     |

- The perf. regression was deemed acceptable, as this fixes miscompilations.
- Marked as triaged.

#### Improvements

Bump compiler dependencies [#148831](https://github.com/rust-lang/rust/pull/148831) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=27b076af7e3e7a363975443d81dfa9ecee5a74ec&end=5934b0655768a45aad237a704995780276b91261&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.6%, -0.1%] | 27    |
| Improvements (secondary) | -0.4% | [-1.3%, -0.1%] | 36    |
| All  (primary)                 | -0.3% | [-0.6%, -0.1%] | 27    |


Rollup of 9 pull requests [#149222](https://github.com/rust-lang/rust/pull/149222) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4b1b6dde0c15243857165672a1c616a4523ef32a&end=94b49fd998d6723e0a9240a7cff5f9df37b84dd8&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 3     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -0.2% | [-0.2%, -0.2%] | 3     |


#### Mixed

Update wasm-related dependencies in CI [#149037](https://github.com/rust-lang/rust/pull/149037) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6159a44067ebce42b38f062cc7df267a1348e092&end=a591113c0a2b7755514c47bde211fdb92d1d7002&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.4%, 0.4%]   | 1     |
| Regressions (secondary)  | 0.5%  | [0.2%, 0.9%]   | 9     |
| Improvements (primary)   | -2.8% | [-2.8%, -2.8%] | 1     |
| Improvements (secondary) | -0.1% | [-0.1%, -0.1%] | 1     |
| All  (primary)                 | -1.2% | [-2.8%, 0.4%]  | 2     |

- Noise.
- Already marked as triaged.

sess: default to v0 symbol mangling on nightly [#89917](https://github.com/rust-lang/rust/pull/89917) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d2f887349fe3ea079a4f89b020ce6df1993e1e06&end=683dd08db5808c41baceef49368fc82a6c4767bb&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.2%, 1.5%]   | 31    |
| Regressions (secondary)  | 0.7%  | [0.2%, 1.6%]   | 14    |
| Improvements (primary)   | -0.4% | [-0.4%, -0.4%] | 1     |
| Improvements (secondary) | -0.2% | [-0.6%, -0.1%] | 6     |
| All  (primary)                 | 0.7%  | [-0.4%, 1.5%]  | 32    |

- This PR caused binary size regressions, which is expected, as the v0 mangling scheme produces larger symbols than the legacy mangling scheme, in general.
- The compile-time regressions were likely caused by the same thing, more symbol string handling and more time spent in LLVM due to processing longer symbols.
- Marked as triaged.

See if this is the time we can remove `layout::size_align` [#149109](https://github.com/rust-lang/rust/pull/149109) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7281a3bc4b89a010aed05528d648450feb8b69d3&end=53732d5e076329a62f71d3c6901886ce8a71e812&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.4%  | [0.1%, 0.6%]   | 4     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.7% | [-1.3%, -0.2%] | 8     |
| All  (primary)                 | -     | -              | 0     |

- Just noise returning to steady state.
- Already marked as triaged.

library: upgrade to hashbrown v0.16.1 [#149159](https://github.com/rust-lang/rust/pull/149159) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=af17d59d71cd344fb34caab3e96c88b7c137f872&end=1dd43f247e6ec20a84dd017e4665266fa65e3a89&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.4%, 1.4%]   | 4     |
| Regressions (secondary)  | 1.5%  | [1.5%, 1.5%]   | 1     |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 2     |
| Improvements (secondary) | -0.3% | [-0.5%, -0.1%] | 25    |
| All  (primary)                 | 0.4%  | [-0.2%, 1.4%]  | 6     |

- More improvements than regressions.
- Marked as triaged.

Fix MaybeUninit codegen using GVN [#147827](https://github.com/rust-lang/rust/pull/147827) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=122cbd043833a1d7540cc5f99c458bfca2d3c525&end=e9acbd99d384280874129fb7fa0da9faeae0d051&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.1%  | [0.1%, 0.1%]   | 1     |
| Regressions (secondary)  | 0.3%  | [0.1%, 0.5%]   | 6     |
| Improvements (primary)   | -7.3% | [-7.3%, -7.3%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -3.6% | [-7.3%, 0.1%]  | 2     |

- Tiny regressions on secondary benchmarks, but a large (and real) win on the cranelift-codegen opt benchmark.
- This should ideally produce better codegen.
- Marked as triaged.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- None

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Compute jump threading opportunities in a single pass" [rust#142821](https://github.com/rust-lang/rust/pull/142821) (last review activity: 3 months ago)
  - cc: @**Ben Kimock (Saethlin)**
- "RDR: avoid rebuilding dependent crates after comment changes" [rust#143249](https://github.com/rust-lang/rust/pull/143249) (last review activity: about 58 days ago)
  - cc @**bjorn3**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/0IOxnzMtTFy1YTHUzReLvQ)
