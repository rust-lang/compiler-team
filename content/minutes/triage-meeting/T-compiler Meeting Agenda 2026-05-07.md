---
tags: weekly, rustc
type: docs
note_id: GwrFB3FHQoWOe508xMUgEA
---

# T-compiler Meeting Agenda 2026-05-07

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- @_**Jana** office hours <time:2026-05-07T16:00:00+02:00> and <time:2026-05-11T16:00:00+02:00>
- Stable MIR Weekly Meeting <time:2025-05-08T19:00:00+02:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: about 42 days ago)
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: 9 months ago)
  - "Add flag to pass MSRV/`package.rust-version` for use by lints" [compiler-team#950](https://github.com/rust-lang/compiler-team/issues/950) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Z.20msrv.3Dxx.2Eyy.2Ezz.60.20flag.20compiler-team.23950)) (last review activity: about 28 days ago)
  - "Create a new Tier 3 target: ` x86_64-nt-windows-msvc`" [compiler-team#952](https://github.com/rust-lang/compiler-team/issues/952) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20new.20Tier.203.20target.3A.20.60.20x86_64-nt-w.E2.80.A6.20compiler-team.23952)) (last review activity: 3 months ago)
  - "Add repro-check tool for build reproducibility" [compiler-team#962](https://github.com/rust-lang/compiler-team/issues/962) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20repro-check.20tool.20for.20build.20reproducib.E2.80.A6.20compiler-team.23962)) (last review activity: 3 months ago)
  - "Add -Z dead-fn-elimination to skip codegen of BFS-unreachable functions" [compiler-team#976](https://github.com/rust-lang/compiler-team/issues/976) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20-Z.20dead-fn-elimination.20to.20skip.20codege.E2.80.A6.20compiler-team.23976)) (last review activity: about 40 days ago)
  - "Change the ABI of powerpc64-unknown-linux-gnu to ELFv2" [compiler-team#977](https://github.com/rust-lang/compiler-team/issues/977) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Change.20the.20ABI.20of.20powerpc64-unknown-linux.E2.80.A6.20compiler-team.23977)) (last review activity: about 48 days ago)
  - "group target modifier options under `-T`" [compiler-team#980](https://github.com/rust-lang/compiler-team/issues/980) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/group.20target.20modifier.20options.20under.20.60-M.60.20compiler-team.23980)) (last review activity: about 34 days ago)
  - "Create a new Tier 3 target: `powerpc-unknown-none`" [compiler-team#986](https://github.com/rust-lang/compiler-team/issues/986) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20new.20Tier.203.20target.3A.20.60powerpc-unkn.E2.80.A6.20compiler-team.23986)) (last review activity: about 6 days ago)
  - "Create a new Tier 3 target: `powerpc64-unknown-none`" [compiler-team#987](https://github.com/rust-lang/compiler-team/issues/987) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20new.20Tier.203.20target.3A.20.60powerpc64-un.E2.80.A6.20compiler-team.23987)) (last review activity: about 6 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [Promotes 5 Thumb-mode bare-metal Arm targets to Tier 2 (compiler-team#985)](https://github.com/rust-lang/compiler-team/issues/985#issuecomment-4327831592)
    - no pending concerns
  - merge: [Stabilize stack-protector (rust#146369)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3271397169)
    - concerns: [mitigation-enforcement (by Noratrieb)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3286402251)
  - merge: [Clean up crate type names to fix dylib vs staticlib confusion (rust#153863)](https://github.com/rust-lang/rust/issues/153863#issuecomment-4061709608)
    - no pending concerns
  - merge: [make repr_transparent_non_zst_fields a hard error (rust#155299)](https://github.com/rust-lang/rust/pull/155299#issuecomment-4390179545)
    - concerns: [ensure-we-dont-break-generativity (by traviscross)](https://github.com/rust-lang/rust/pull/155299#issuecomment-4390357338)
- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - @**Wesley Wiser** can you check if [this reply](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2693022027) helps with the concerns you raised?
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864))
    - concern: [continued-maintainer-interest](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535030586)
    - concern: [documentation](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535045453)
  - "Proposal for a dedicated test suite for the parallel frontend" [compiler-team#906](https://github.com/rust-lang/compiler-team/issues/906) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Proposal.20for.20a.20dedicated.20test.20suite.20for.20t.E2.80.A6.20compiler-team.23906))
    - concern: [name-a-specific-reason](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137732970)
    - concern: [can-we-just-enhance-ui-suite](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137762379)
  - "Optimize `repr(Rust)` enums by omitting tags in more cases involving uninhabited variants." [compiler-team#922](https://github.com/rust-lang/compiler-team/issues/922) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Optimize.20.60repr.28Rust.29.60.20enums.20by.20omitting.20t.E2.80.A6.20compiler-team.23922))
  - "Promote loongarch32-unknown-none* to Tier 2" [compiler-team#968](https://github.com/rust-lang/compiler-team/issues/968) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20loongarch32-unknown-none.2A.20to.20Tier.E2.80.A6.20compiler-team.23968))
  - "Turn long-deprecated -C options into errors" [compiler-team#978](https://github.com/rust-lang/compiler-team/issues/978) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Turn.20long-deprecated.20-C.20options.20into.20erro.E2.80.A6.20compiler-team.23978))
  - "Create a new Tier 3 target: `powerpc64le-unknown-none`" [compiler-team#988](https://github.com/rust-lang/compiler-team/issues/988) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20new.20Tier.203.20target.3A.20.60powerpc64le-.E2.80.A6.20compiler-team.23988))
    - concern: [softfloat](https://github.com/rust-lang/compiler-team/issues/988#issuecomment-4331309832)
    - concern: [baseline-features](https://github.com/rust-lang/compiler-team/issues/988#issuecomment-4331309832)
  - "Resolver: Batched Import Resolution" [rust#145108](https://github.com/rust-lang/rust/pull/145108)
  - "resolve: Partially convert `ambiguous_glob_imports` lint into a hard error" [rust#149195](https://github.com/rust-lang/rust/pull/149195)
  - "fix: fix the capture behavior of `if let` in closures" [rust#154210](https://github.com/rust-lang/rust/pull/154210)
  - "Check arguments of attributes where no arguments are expected" [rust#155193](https://github.com/rust-lang/rust/pull/155193)
  - "error on empty `export_name`" [rust#155515](https://github.com/rust-lang/rust/pull/155515)
  - "validate `#[link_name = "..."]` & `#[link(name = "...")]` parameters" [rust#155817](https://github.com/rust-lang/rust/pull/155817)
- Accepted MCPs
  - "Promote riscv64gc-unknown-linux-musl to Tier 2 (with Tools)" [compiler-team#982](https://github.com/rust-lang/compiler-team/issues/982) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20riscv64gc-unknown-linux-musl.20to.20T.E2.80.A6.20compiler-team.23982))
  - "Make stable hashing names consistent" [compiler-team#983](https://github.com/rust-lang/compiler-team/issues/983) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Make.20stable.20hashing.20names.20consistent.20compiler-team.23983))
  - "replace `box_patterns` in the compiler with `deref_patterns`" [compiler-team#984](https://github.com/rust-lang/compiler-team/issues/984) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/replace.20.60box_patterns.60.20in.20the.20compiler.20wi.E2.80.A6.20compiler-team.23984))
- MCPs blocked on unresolved concerns
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: 7 months ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: 9 months ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
  - "Split the `-openbsd*` targets by version" [compiler-team#916](https://github.com/rust-lang/compiler-team/issues/916) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Split.20the.20.60-openbsd.2A.60.20targets.20by.20version.20compiler-team.23916)) (last review activity: 6 months ago)
    - concern: [why-not-ports-rustc](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315251054)
    - concern: [nonsystematic-breakage](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315243666)
    - concern: [version-churn](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315239793)
  - "Stop bumping the bootstrap version on every rustc release" [compiler-team#925](https://github.com/rust-lang/compiler-team/issues/925) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stop.20bumping.20the.20bootstrap.20version.20on.20eve.E2.80.A6.20compiler-team.23925)) (last review activity: 2 months ago)
    - concern: [infra-and-bootstrap-burden](https://github.com/rust-lang/compiler-team/issues/925#issuecomment-3898603216)
    - concern: [we-like-using-the-features-we-ship](https://github.com/rust-lang/compiler-team/issues/925#issuecomment-3898616402)
  - "Doc comments and attributes on macro arms" [compiler-team#935](https://github.com/rust-lang/compiler-team/issues/935) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Doc.20comments.20and.20attributes.20on.20macro.20arms.20compiler-team.23935)) (last review activity: 6 months ago)
    - concern: [lang](https://github.com/rust-lang/compiler-team/issues/935#issuecomment-3444181159)
  - "Publish `rustc_public` crate v0.1 to crates.io" [compiler-team#949](https://github.com/rust-lang/compiler-team/issues/949) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Publish.20.60rustc_public.60.20crate.20v0.2E1.20to.20crat.E2.80.A6.20compiler-team.23949)) (last review activity: about 45 days ago)
    - concern: [clarify blocking/non-blocking nature of librarification project reviews](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-4106239976)
    - concern: [ease of refreshing in tree rustc_public to match actual rustc](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-4106240317)
  - "Query `git` state to get information on a currently ongoing rebase when encountering conflict markers" [compiler-team#955](https://github.com/rust-lang/compiler-team/issues/955) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Query.20.60git.60.20state.20to.20get.20information.20on.20a.E2.80.A6.20compiler-team.23955)) (last review activity: 3 months ago)
    - concern: [not worth the complexity](https://github.com/rust-lang/compiler-team/issues/955#issuecomment-3684138445)
  - "Allow crates downstream of `rustc_middle` to define queries" [compiler-team#966](https://github.com/rust-lang/compiler-team/issues/966) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20crates.20downstream.20of.20.60rustc_middle.60.E2.80.A6.20compiler-team.23966)) (last review activity: 2 months ago)
    - concern: [complexity](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863771183)
    - concern: [fragmentation](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863853297)
- Finalized FCPs (disposition merge)
  - No new finished FCP (disposition merge) this time.

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

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [58 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [43 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 34 P-high, 100 P-medium, 31 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "1.96 beta regression: "lua does not live long enough", take 2" [rust#155902](https://github.com/rust-lang/rust/issues/155902)
  - Will be fixed by #155915 authored by @_**dianne**
  - backport nomination for T-libs

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-bootstrap)
- No unassigned `P-high` nightly regressions this time.

### Need triaging

These beta regressions are not yet completely clear to me:

- "1.96 beta rustdoc regression: "... is a virtual manifest, but this command requires running against an actual package in this workspace" [rust#152992](https://github.com/rust-lang/rust/issues/155992)
  - unclear actionable, unsure if this is a crater spurious error
  - we left a question for T-infra ([Prioritization thread](https://rust-lang.zulipchat.com/#narrow/channel/245100-t-compiler.2Fprioritization.2Falerts/topic/.23155992.201.2E96.20beta.20rustdoc.20regression.3A.20.22.2E.2E.2E.20is.20a.20virtual.20man.E2.80.A6/near/591999230) and [T-infra thread](https://rust-lang.zulipchat.com/#narrow/channel/241545-t-release/topic/1.2E96.2E0.20crater.20triage/near/591993814))
- "Regression in calculating value of `Result`" [rust#155985/rust](https://github.com/rust-lang/rust/issues/155985)
  - Seem related to the LLVM upgrade, labeled as `I-heavy`, unsure about the impact. Is this a `P-medium`-ish codegen regression?
- "Post-mono cycle ICE with dyn and RPIT" [rust#155538](https://github.com/rust-lang/rust/issues/155538)
  - Can't figure out the context, does this lead to an unsoundness? Last [comment](https://github.com/rust-lang/rust/issues/155538#issuecomment-4326666390) from @_**lcnr**

## Performance logs

> [2026-05-05 Triage Log](https://github.com/rust-lang/rustc-perf/tree/master/triage/2026)

This week's result is pretty much neutral. It looks negative in icount numbers, but that's spurious, wall time remained largely unchanged. Some big performance improvements landed in the new solver, which is not enabled by default, yet.

Triage done by **@panstromek**.
Revision range: [ca9a134e..1d72d7e8](https://perf.rust-lang.org/?start=ca9a134e0985765ded9cfdde4030a5df4db7e2bd&end=1d72d7e8136faaebad3a85eeed432e6ea1b2ffab&absolute=false&stat=instructions%3Au)

**Summary**:

|     (instructions:u)      | mean  |     range      | count |
|:-------------------------:|:-----:|:--------------:|:-----:|
|  Regressions ?(primary)   | 0.6%  |  [0.2%, 1.2%]  |  106  |
| Regressions ?(secondary)  | 0.7%  |  [0.2%, 2.4%]  |  67   |
|  Improvements ?(primary)  | -0.6% | [-1.7%, -0.2%] |  66   |
| Improvements ?(secondary) | -0.6% | [-2.8%, -0.0%] |  60   |
|     All ?? (primary)      | 0.1%  | [-1.7%, 1.2%]  |  172  |


1 Regression, 2 Improvements, 9 Mixed; 5 of them in rollups
34 artifact comparisons made in total

#### Regressions

Rollup of 19 pull requests [#156023](https://github.com/rust-lang/rust/pull/156023) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f53b654a8882fd5fc036c4ca7a4ff41ce32497a6&end=0469a92a76c327df972cb6c1356934b7a0c6b86d&stat=instructions:u)

|     (instructions:u)      | mean |    range     | count |
|:-------------------------:|:----:|:------------:|:-----:|
|  Regressions ?(primary)   | 0.3% | [0.2%, 0.3%] |   7   |
| Regressions ?(secondary)  | 0.5% | [0.3%, 0.7%] |   7   |
|  Improvements ?(primary)  |  -   |      -       |   0   |
| Improvements ?(secondary) |  -   |      -       |   0   |
|     All ?? (primary)      | 0.3% | [0.2%, 0.3%] |   7   |


Tiny regressions in frontend (mainly expand_crate, so likely macro expansion). Primary regressions are limited to very small benchmarks (`incr-unchanged`), secondary one is just a macro expansion stress test.

I suspect it's one of the PRs that touches this code - https://github.com/rust-lang/rust/pull/155237, https://github.com/rust-lang/rust/pull/155919 or https://github.com/rust-lang/rust/pull/155980, but all those changes look pretty innocent, so I think it's probably something like an inlining change caused by moving code around.

I don't think this is worth digging into more, but the queue is empty, so I kicked off a perf run on https://github.com/rust-lang/rust/pull/155237.

update: Results indicate it was https://github.com/rust-lang/rust/pull/155237 after all. I left a note there.

#### Improvements

Canonicalize free regions from inputs as placeholders in root univ [#155487](https://github.com/rust-lang/rust/pull/155487) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0424cc16731e6141a18077f8ccde77ba148d9649&end=c935696dd07ca51e6fba2f6579919eea2a50863b&stat=instructions:u)

|     (instructions:u)      | mean  |     range      | count |
|:-------------------------:|:-----:|:--------------:|:-----:|
|  Regressions ?(primary)   |   -   |       -        |   0   |
| Regressions ?(secondary)  |   -   |       -        |   0   |
|  Improvements ?(primary)  |   -   |       -        |   0   |
| Improvements ?(secondary) | -1.2% | [-2.9%, -0.8%] |   6   |
|     All ?? (primary)      |   -   |       -        |   0   |


Rollup of 9 pull requests [#156041](https://github.com/rust-lang/rust/pull/156041) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0469a92a76c327df972cb6c1356934b7a0c6b86d&end=0164cc139285d5452053bcc5a83da046a501ed61&stat=instructions:u)

|     (instructions:u)      | mean  |     range      | count |
|:-------------------------:|:-----:|:--------------:|:-----:|
|  Regressions ?(primary)   |   -   |       -        |   0   |
| Regressions ?(secondary)  |   -   |       -        |   0   |
|  Improvements ?(primary)  | -0.9% | [-0.9%, -0.9%] |   1   |
| Improvements ?(secondary) |   -   |       -        |   0   |
|     All ?? (primary)      | -0.9% | [-0.9%, -0.9%] |   1   |


#### Mixed

Remove `WithCachedTypeInfo::stable_hash`. [#155329](https://github.com/rust-lang/rust/pull/155329) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b806d39f033b05ea5aec9a353df75314007a728c&end=4ddb0b7f8ecda9dbdbcbc0519c9988badbd65d1c&stat=instructions:u)

|     (instructions:u)      | mean  |     range      | count |
|:-------------------------:|:-----:|:--------------:|:-----:|
|  Regressions ?(primary)   | 0.7%  |  [0.3%, 1.5%]  |  113  |
| Regressions ?(secondary)  | 0.7%  |  [0.1%, 2.4%]  |  70   |
|  Improvements ?(primary)  | -0.4% | [-0.7%, -0.2%] |  32   |
| Improvements ?(secondary) | -0.3% | [-0.7%, -0.0%] |  36   |
|     All ?? (primary)      | 0.5%  | [-0.7%, 1.5%]  |  145  |


icount regressions in `incr-*` cases, as expected in the pre-merge run. Justified by the comment above: https://github.com/rust-lang/rust/pull/155329#issuecomment-4251316568.

We now have more context in surrounding post-merge results, and it looks like this analysis holds up. If I click through wall time results (mostly non-relevant ones), the results look mostly indistinguishable from regular wall-time noise, and they still oscillate around the same level.

Rollup of 6 pull requests [#155953](https://github.com/rust-lang/rust/pull/155953) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=37d85e592f9ae5f20f7d9a9f99785246fa7298da&end=4f9e4e1aa6a9e97f9c96dec4b3ecebccfabd31e5&stat=instructions:u)

|     (instructions:u)      | mean  |     range      | count |
|:-------------------------:|:-----:|:--------------:|:-----:|
|  Regressions ?(primary)   |   -   |       -        |   0   |
| Regressions ?(secondary)  | 0.0%  |  [0.0%, 0.1%]  |   4   |
|  Improvements ?(primary)  |   -   |       -        |   0   |
| Improvements ?(secondary) | -0.2% | [-0.6%, -0.0%] |   5   |
|     All ?? (primary)      |   -   |       -        |   0   |

`include-blob` regressions look like noise.

Remove attribute parsing `Stage` [#155775](https://github.com/rust-lang/rust/pull/155775) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4f9e4e1aa6a9e97f9c96dec4b3ecebccfabd31e5&end=0424cc16731e6141a18077f8ccde77ba148d9649&stat=instructions:u)

|     (instructions:u)      | mean  |     range      | count |
|:-------------------------:|:-----:|:--------------:|:-----:|
|  Regressions ?(primary)   |   -   |       -        |   0   |
| Regressions ?(secondary)  | 0.0%  |  [0.0%, 0.0%]  |   3   |
|  Improvements ?(primary)  |   -   |       -        |   0   |
| Improvements ?(secondary) | -0.3% | [-0.5%, -0.1%] |  10   |
|     All ?? (primary)      |   -   |       -        |   0   |

Triaged by @JonathanBrouwer: "Net positive, regressions are probably noise and very small regardless"

Rollup of 21 pull requests [#155979](https://github.com/rust-lang/rust/pull/155979) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c935696dd07ca51e6fba2f6579919eea2a50863b&end=a021a7796f66600f46013d6c8d1dfc9e8d7f4a92&stat=instructions:u)

|     (instructions:u)      | mean  |     range      | count |
|:-------------------------:|:-----:|:--------------:|:-----:|
|  Regressions ?(primary)   |   -   |       -        |   0   |
| Regressions ?(secondary)  | 0.4%  |  [0.3%, 0.5%]  |  12   |
|  Improvements ?(primary)  | -0.6% | [-1.7%, -0.1%] |  33   |
| Improvements ?(secondary) | -0.0% | [-0.0%, -0.0%] |   1   |
|     All ?? (primary)      | -0.6% | [-1.7%, -0.1%] |  33   |

Based on @JonathanBrouwer's investigations, improvements come mostly from https://github.com/rust-lang/rust/pull/155794, regressions coming mostly from https://github.com/rust-lang/rust/pull/154149, where it was justified because we now do more work to check for ambiguity in imports.

`-Znext-solver` Eager normalization outside of solver  [#155767](https://github.com/rust-lang/rust/pull/155767) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=20de910db49d3476ccf49ea79a4b22e2b5dface0&end=a3e96d8cb8a420022828d0a595277ad3671928a7&stat=instructions:u)

|     (instructions:u)      | mean  |     range      | count |
|:-------------------------:|:-----:|:--------------:|:-----:|
|  Regressions ?(primary)   | 0.2%  |  [0.2%, 0.3%]  |   2   |
| Regressions ?(secondary)  | 4.6%  | [0.1%, 11.4%]  |   8   |
|  Improvements ?(primary)  | -0.4% | [-0.5%, -0.3%] |   7   |
| Improvements ?(secondary) | -1.6% | [-6.4%, -0.0%] |  18   |
|     All ?? (primary)      | -0.2% | [-0.5%, 0.3%]  |   9   |


Marking as triaged based on the comment from @lcnr: non-next solver is mostly noise, the typenum regression is acceptable.

Note that the new solver is not enabled by default. Diesel regression looks maybe real to me, but it's very tiny, so either way it seems like an acceptable trade-off for a step forward in this work.


Rollup of 4 pull requests [#156111](https://github.com/rust-lang/rust/pull/156111) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=54f67d248b14af80be8f3adc2094dd4a84ec2115&end=818811b3cd1e0ff0d8ef20d5a4cf0b7c079929bc&stat=instructions:u)

|     (instructions:u)      | mean  |     range      | count |
|:-------------------------:|:-----:|:--------------:|:-----:|
|  Regressions ?(primary)   | 0.7%  |  [0.1%, 1.3%]  |   2   |
| Regressions ?(secondary)  |   -   |       -        |   0   |
|  Improvements ?(primary)  | -0.7% | [-1.3%, -0.3%] |  10   |
| Improvements ?(secondary) | -0.2% | [-0.2%, -0.2%] |   2   |
|     All ?? (primary)      | -0.5% | [-1.3%, 1.3%]  |  12   |

Improvements outweigh regressions. `bitmaps` regression is very small, maybe noise. Rustdoc regression is probably https://github.com/rust-lang/rust/pull/156073 (only rustdoc-related change), but nothing here seems big enough to revert or investigate more deeply.

Runtime benchmark failure seems spurious, following run built properly.


Move tests array slice vec [#156044](https://github.com/rust-lang/rust/pull/156044) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=045b17737dab5fcc28e4cbee0cfe2ce4ed363b32&end=a51f3a89b2fffc6ce38f484d7cbf9dc25b0fe791&stat=instructions:u)

|     (instructions:u)      | mean  |     range      | count |
|:-------------------------:|:-----:|:--------------:|:-----:|
|  Regressions ?(primary)   |   -   |       -        |   0   |
| Regressions ?(secondary)  | 0.1%  |  [0.0%, 0.1%]  |   5   |
|  Improvements ?(primary)  |   -   |       -        |   0   |
| Improvements ?(secondary) | -0.2% | [-0.6%, -0.0%] |   4   |
|     All ?? (primary)      |   -   |       -        |   0   |

These results are noise, this PR doesn't modify the compiler.


std: implement `clear` via `truncate` [#154095](https://github.com/rust-lang/rust/pull/154095) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a51f3a89b2fffc6ce38f484d7cbf9dc25b0fe791&end=783062d3c612d223e6841db4bbbc9bac4ab31ff4&stat=instructions:u)

|     (instructions:u)      | mean  |     range      | count |
|:-------------------------:|:-----:|:--------------:|:-----:|
|  Regressions ?(primary)   |   -   |       -        |   0   |
| Regressions ?(secondary)  | 0.2%  |  [0.0%, 0.6%]  |   4   |
|  Improvements ?(primary)  |   -   |       -        |   0   |
| Improvements ?(secondary) | -0.1% | [-0.1%, -0.0%] |   5   |
|     All ?? (primary)      |   -   |       -        |   0   |

These results are noise, this PR only adds comment.


Short-circuit `calculate_fallback_to_f32` when no float vars [#156139](https://github.com/rust-lang/rust/pull/156139) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1d72d7e8136faaebad3a85eeed432e6ea1b2ffab&end=cb40c25f6aebb637163d26bf76a680ed6e5d1eda&stat=instructions:u)

|     (instructions:u)      |  mean  |      range      | count |
|:-------------------------:|:------:|:---------------:|:-----:|
|  Regressions ?(primary)   |   -    |        -        |   0   |
| Regressions ?(secondary)  |  0.1%  |  [0.0%, 0.1%]   |   4   |
|  Improvements ?(primary)  |   -    |        -        |   0   |
| Improvements ?(secondary) | -21.0% | [-87.6%, -0.0%] |  18   |
|     All ?? (primary)      |   -    |        -        |   0   |

`include-blob` regressions are noise.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Make bitset `would_modify_words` more vectorizer-friendly" [rust#153640](https://github.com/rust-lang/rust/pull/153640) (last review activity: about 58 days ago)
  - cc: @**Mads Marquart** (as per [comment](https://github.com/rust-lang/rust/pull/153640#issuecomment-4045774814), unsure if this was a dice roll assignment)
- "rustdoc: Add `[arg@name]` intra-doc syntax for referencing function arguments" [rust#153734](https://github.com/rust-lang/rust/pull/153734) (last review activity: about 56 days ago)
  - mostly T-rustdoc, some small bits for T-compiler?
- "Add a suite of ChunkedBitSet union/subtract/intersect test scenarios" [rust#153759](https://github.com/rust-lang/rust/pull/153759) (last review activity: about 56 days ago)
  - I think this review can be "stolen" by anyone
- "hir_typeck: suggest removing redundant .iter() and iter_mut ()calls" [rust#153700](https://github.com/rust-lang/rust/pull/153700) (last review activity: about 55 days ago)
  - PR author is looking for feedback from @**Esteban Küber**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/pea3InpUQ-yWXt_rROWl6A)
