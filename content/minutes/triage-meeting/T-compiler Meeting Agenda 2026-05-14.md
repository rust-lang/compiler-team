---
tags: weekly, rustc
type: docs
note_id: pea3InpUQ-yWXt_rROWl6A
---

# T-compiler Meeting Agenda 2026-05-14

## Announcements

- [Opened a request](https://github.com/rust-lang/all-hands-2026/issues/66) for a small slot at the RustWeek to discuss and receive feedback about the weekly triage meeting: let's talk about how we can improve it!
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- @_**Jana** office hours <time:2026-05-14T16:00:00+02:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: about 49 days ago)
    - Don't see great consensus, No open concerns but discussion didn't result in a great consensus or capacity to support (see my [comment](https://rust-lang.zulipchat.com/#narrow/channel/233931-t-compiler.2Fmajor-changes/topic/Add.20hygiene.20attributes.20to.20compile.20expande.E2.80.A6.20compiler-team.23692/near/582990846))
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876))
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
    - Left a ping to the author ([comment](https://rust-lang.zulipchat.com/#narrow/channel/233931-t-compiler.2Fmajor-changes/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876/near/590425048)), unsure if they still have bandwidth to discuss the proposal
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903))
    - Not seconded but not stale. Authors (@_**Leonard Chan** and then @_**Erick Tryzelaar**) are working on improving the proposal (guided by the Gemini AI and feedback from T-compiler members)
    - Might post a comment asking for clarification: unclear if there is consensus about the proposal. But in the meanwhile the authors are putting effort in it
  - "Split the `-openbsd*` targets by version" [compiler-team#916](https://github.com/rust-lang/compiler-team/issues/916) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Split.20the.20.60-openbsd.2A.60.20targets.20by.20version.20compiler-team.23916)) (last review activity: 7 months ago)
    - concern: [nonsystematic-breakage](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315243666)
    - concern: [why-not-ports-rustc](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315251054)
    - concern: [version-churn](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315239793)
    - Unclear consensus, I don't think I see a wild enthusiasm either.
- Old MCPs (not seconded, take a look)
  - "Add flag to pass MSRV/`package.rust-version` for use by lints" [compiler-team#950](https://github.com/rust-lang/compiler-team/issues/950) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Z.20msrv.3Dxx.2Eyy.2Ezz.60.20flag.20compiler-team.23950)) (last review activity: about 35 days ago)
  - "Create a new Tier 3 target: ` x86_64-nt-windows-msvc`" [compiler-team#952](https://github.com/rust-lang/compiler-team/issues/952) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20new.20Tier.203.20target.3A.20.60.20x86_64-nt-w.E2.80.A6.20compiler-team.23952)) (last review activity: 3 months ago)
  - "Add repro-check tool for build reproducibility" [compiler-team#962](https://github.com/rust-lang/compiler-team/issues/962) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20repro-check.20tool.20for.20build.20reproducib.E2.80.A6.20compiler-team.23962)) (last review activity: 3 months ago)
  - "Add -Z dead-fn-elimination to skip codegen of BFS-unreachable functions" [compiler-team#976](https://github.com/rust-lang/compiler-team/issues/976) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20-Z.20dead-fn-elimination.20to.20skip.20codege.E2.80.A6.20compiler-team.23976)) (last review activity: about 47 days ago)
  - "Change the ABI of powerpc64-unknown-linux-gnu to ELFv2" [compiler-team#977](https://github.com/rust-lang/compiler-team/issues/977) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Change.20the.20ABI.20of.20powerpc64-unknown-linux.E2.80.A6.20compiler-team.23977)) (last review activity: about 55 days ago)
  - "group target modifier options under `-T`" [compiler-team#980](https://github.com/rust-lang/compiler-team/issues/980) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/group.20target.20modifier.20options.20under.20.60-M.60.20compiler-team.23980)) (last review activity: about 41 days ago)
  - "Create a new Tier 3 target: `powerpc-unknown-none`" [compiler-team#986](https://github.com/rust-lang/compiler-team/issues/986) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20new.20Tier.203.20target.3A.20.60powerpc-unkn.E2.80.A6.20compiler-team.23986)) (last review activity: about 13 days ago)
  - "Create a new Tier 3 target: `powerpc64-unknown-none`" [compiler-team#987](https://github.com/rust-lang/compiler-team/issues/987) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20new.20Tier.203.20target.3A.20.60powerpc64-un.E2.80.A6.20compiler-team.23987)) (last review activity: about 13 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [Promotes 5 Thumb-mode bare-metal Arm targets to Tier 2 (compiler-team#985)](https://github.com/rust-lang/compiler-team/issues/985#issuecomment-4327831592)
    - no pending concerns, are we ok with approving this? Throwing some pings around:
    - cc: @**|124288** @**|119031** @**|116118** @**|343125**
  - merge: [Stabilize stack-protector (rust#146369)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3271397169)
    - concerns: [mitigation-enforcement (by Noratrieb)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3286402251)
  - merge: [Clean up crate type names to fix dylib vs staticlib confusion (rust#153863)](https://github.com/rust-lang/rust/issues/153863#issuecomment-4061709608)
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
    - concern: [name-a-specific-reason](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137732970)
    - concern: [can-we-just-enhance-ui-suite](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137762379)
  - "Optimize `repr(Rust)` enums by omitting tags in more cases involving uninhabited variants." [compiler-team#922](https://github.com/rust-lang/compiler-team/issues/922) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Optimize.20.60repr.28Rust.29.60.20enums.20by.20omitting.20t.E2.80.A6.20compiler-team.23922))
  - "Create a new Tier 3 target: `powerpc64le-unknown-none`" [compiler-team#988](https://github.com/rust-lang/compiler-team/issues/988) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20new.20Tier.203.20target.3A.20.60powerpc64le-.E2.80.A6.20compiler-team.23988))
    - concern: [softfloat](https://github.com/rust-lang/compiler-team/issues/988#issuecomment-4331309832)
    - concern: [baseline-features](https://github.com/rust-lang/compiler-team/issues/988#issuecomment-4331309832)
  - "Resolver: Batched Import Resolution" [rust#145108](https://github.com/rust-lang/rust/pull/145108)
  - "fix: fix the capture behavior of `if let` in closures" [rust#154210](https://github.com/rust-lang/rust/pull/154210)
  - "Check arguments of attributes where no arguments are expected" [rust#155193](https://github.com/rust-lang/rust/pull/155193)
- Accepted MCPs
  - "Promote riscv64gc-unknown-linux-musl to Tier 2 (with Tools)" [compiler-team#982](https://github.com/rust-lang/compiler-team/issues/982) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20riscv64gc-unknown-linux-musl.20to.20T.E2.80.A6.20compiler-team.23982))
  - "Make stable hashing names consistent" [compiler-team#983](https://github.com/rust-lang/compiler-team/issues/983) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Make.20stable.20hashing.20names.20consistent.20compiler-team.23983))
  - "replace `box_patterns` in the compiler with `deref_patterns`" [compiler-team#984](https://github.com/rust-lang/compiler-team/issues/984) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/replace.20.60box_patterns.60.20in.20the.20compiler.20wi.E2.80.A6.20compiler-team.23984))
- MCPs blocked on unresolved concerns
  - "Stop bumping the bootstrap version on every rustc release" [compiler-team#925](https://github.com/rust-lang/compiler-team/issues/925) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stop.20bumping.20the.20bootstrap.20version.20on.20eve.E2.80.A6.20compiler-team.23925)) (last review activity: 2 months ago)
    - concern: [we-like-using-the-features-we-ship](https://github.com/rust-lang/compiler-team/issues/925#issuecomment-3898616402)
    - concern: [infra-and-bootstrap-burden](https://github.com/rust-lang/compiler-team/issues/925#issuecomment-3898603216)
  - "Doc comments and attributes on macro arms" [compiler-team#935](https://github.com/rust-lang/compiler-team/issues/935) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Doc.20comments.20and.20attributes.20on.20macro.20arms.20compiler-team.23935)) (last review activity: 6 months ago)
    - concern: [lang](https://github.com/rust-lang/compiler-team/issues/935#issuecomment-3444181159)
  - "Publish `rustc_public` crate v0.1 to crates.io" [compiler-team#949](https://github.com/rust-lang/compiler-team/issues/949) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Publish.20.60rustc_public.60.20crate.20v0.2E1.20to.20crat.E2.80.A6.20compiler-team.23949)) (last review activity: about 52 days ago)
    - concern: [ease of refreshing in tree rustc_public to match actual rustc](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-4106240317)
    - concern: [clarify blocking/non-blocking nature of librarification project reviews](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-4106239976)
  - "Query `git` state to get information on a currently ongoing rebase when encountering conflict markers" [compiler-team#955](https://github.com/rust-lang/compiler-team/issues/955) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Query.20.60git.60.20state.20to.20get.20information.20on.20a.E2.80.A6.20compiler-team.23955)) (last review activity: 3 months ago)
    - concern: [not worth the complexity](https://github.com/rust-lang/compiler-team/issues/955#issuecomment-3684138445)
  - "Allow crates downstream of `rustc_middle` to define queries" [compiler-team#966](https://github.com/rust-lang/compiler-team/issues/966) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20crates.20downstream.20of.20.60rustc_middle.60.E2.80.A6.20compiler-team.23966)) (last review activity: 3 months ago)
    - concern: [complexity](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863771183)
    - concern: [fragmentation](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863853297)
- Finalized FCPs (disposition merge)
  - [T-types] "Make trait refs & assoc ty paths properly induce trait object lifetime defaults" [rust#129543](https://github.com/rust-lang/rust/pull/129543)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "resolve: Set correct parent and expansion for `self` declarations" [rust#156353](https://github.com/rust-lang/rust/pull/156353)
  - Authored by petrochenkov
  - From [comment](https://github.com/rust-lang/rust/pull/156353#issuecomment-4412367065):
    > The backport is mostly for the use of self_decl (#146972) and trivial fixes to it (#154313 and this PR) to go into the same release.
    > I'm not sure if the ICE can be triggered before #156185 is merged.
    > Maybe it's not so important to backport after all.
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23156353.3A.20beta-nominated/near/593955288), general vibe is "doesn't *need* to be backported but it's a nice to have"
<!--
@**triagebot** backport beta accept 156353
@**triagebot** backport beta decline 156353
-->
- :beta: "Fix unused assignments in diverging branches" [rust#156425](https://github.com/rust-lang/rust/pull/156425)
  - Authored by chenyukang
  - Fixes diag issue #156425, self-contained
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23156425.3A.20beta-nominated/near/594824071), no strong opinions in either way
<!--
@**triagebot** backport beta accept 156425
@**triagebot** backport beta decline 156425
-->
- :stable: "resolve: Set correct parent and expansion for `self` declarations" [rust#156353](https://github.com/rust-lang/rust/pull/156353)
  - Authored by petrochenkov
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23156353.3A.20stable-nominated/near/593955536), same reasoning for the beta nomination. A nice to have for a dot release, currently not planned)
<!--
@**triagebot** backport stable accept 156353
@**triagebot** backport stable decline 156353
-->

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
- [60 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [43 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 0 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 35 P-high, 100 P-medium, 30 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- None

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-bootstrap)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [2026-05-12 Triage Log](https://github.com/rust-lang/rustc-perf/tree/master/triage/2026)

This week saw a couple of PRs affecting the new trait solver, which is steadily moving forward,
in particular [#156139](https://github.com/rust-lang/rust/pull/156139) was a massive perf. win.
[#156185](https://github.com/rust-lang/rust/pull/156185) optimized visibility computation, resulting
in an up to 8% win on the `typenum` crate.

Triage done by **@Kobzol**.
Revision range: [1d72d7e8..aa31d6d8](https://perf.rust-lang.org/?start=1d72d7e8136faaebad3a85eeed432e6ea1b2ffab&end=aa31d6d8020dcb7c6e6635648d1ca2bc18caf059&absolute=false&stat=instructions%3Au)

**Summary**:

|     (instructions:u)     |  mean  |      range      | count |
|:------------------------:|:------:|:---------------:|:-----:|
|  Regressions (primary)   |  0.3%  |  [0.1%, 0.4%]   |  62   |
| Regressions (secondary)  |  0.5%  |  [0.1%, 1.5%]   |  77   |
|  Improvements (primary)  | -1.7%  | [-8.8%, -0.2%]  |  18   |
| Improvements (secondary) | -13.6% | [-85.6%, -0.0%] |  34   |
|      All  (primary)      | -0.2%  |  [-8.8%, 0.4%]  |  80   |


2 Regressions, 2 Improvements, 5 Mixed; 4 of them in rollups
31 artifact comparisons made in total

#### Regressions

Lint unused pub items in binary crates [#149509](https://github.com/rust-lang/rust/pull/149509) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4ddd4538a881317c622ed674b08300b8fc8dabdd&end=0e5924a4a0b57f2c6bc8cac93f59281e68541a91&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.1%, 0.4%] | 4     |
| Regressions (secondary)  | 0.1% | [0.1%, 0.1%] | 1     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.3% | [0.1%, 0.4%] | 4     |

- The regression looks genuine, but it is very small. The compiler now runs a new allow-by-default lint, so that is expected.
- Marked as triaged.

@rustbot label: +perf-regression-triaged

-Zassumptions-on-binders [#155887](https://github.com/rust-lang/rust/pull/155887) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=aa31d6d8020dcb7c6e6635648d1ca2bc18caf059&end=29b7590130c83542a095cdf1323ed0f78eec2bb8&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.1%, 0.2%]   | 10    |
| Regressions (secondary)  | 0.5%  | [0.1%, 1.1%]   | 25    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.0% | [-0.0%, -0.0%] | 1     |
| All  (primary)                 | 0.2%  | [0.1%, 0.2%]   | 10    |

- Tiny regressions across the board, mostly in trait-heavy crates and the new trait solver.
- Not marking as triaged yet.

#### Improvements

Rollup of 12 pull requests [#156267](https://github.com/rust-lang/rust/pull/156267) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0e5924a4a0b57f2c6bc8cac93f59281e68541a91&end=32bd660612bf1c61bdf290a3ec643c8538b8357d&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.2%] | 8     |
| Improvements (secondary) | -0.2% | [-0.2%, -0.2%] | 2     |
| All  (primary)                 | -0.3% | [-0.3%, -0.2%] | 8     |


resolve: Evaluate private visibilities eagerly in eff vis computation [#156185](https://github.com/rust-lang/rust/pull/156185) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d1961bebe091816d8ce9771f29ad471dda398f5d&end=99eed207b47aca1fec5c665531db8e948a92d0ca&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -2.5% | [-8.6%, -0.2%] | 11    |
| Improvements (secondary) | -1.8% | [-2.5%, -0.3%] | 13    |
| All  (primary)                 | -2.5% | [-8.6%, -0.2%] | 11    |


#### Mixed

Short-circuit `calculate_fallback_to_f32` when no float vars [#156139](https://github.com/rust-lang/rust/pull/156139) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1d72d7e8136faaebad3a85eeed432e6ea1b2ffab&end=cb40c25f6aebb637163d26bf76a680ed6e5d1eda&stat=instructions:u)

| (instructions:u)                   | mean   | range           | count |
|:----------------------------------:|:------:|:---------------:|:-----:|
| Regressions (primary)    | -      | -               | 0     |
| Regressions (secondary)  | 0.1%   | [0.0%, 0.1%]    | 4     |
| Improvements (primary)   | -      | -               | 0     |
| Improvements (secondary) | -21.0% | [-87.6%, -0.0%] | 18    |
| All  (primary)                 | -      | -               | 0     |

- Massive wins in the new trait solver.
- Already marked as triaged.

Rollup of 7 pull requests [#156190](https://github.com/rust-lang/rust/pull/156190) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=740679e1f5554a3c1695317e084809e3fceb9825&end=e95e73209faf6ead2bc5c7636e45e589a751b79b&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.1%, 0.3%]   | 3     |
| Regressions (secondary)  | 0.5%  | [0.2%, 0.7%]   | 25    |
| Improvements (primary)   | -0.3% | [-0.3%, -0.3%] | 1     |
| Improvements (secondary) | -1.2% | [-1.8%, -0.5%] | 2     |
| All  (primary)                 | 0.1%  | [-0.3%, 0.3%]  | 4     |

- Regression caused by [#156172](https://github.com/rust-lang/rust/pull/156172), discussion is continuing there.
- Marked as triaged.

Rollup of 15 pull requests [#156217](https://github.com/rust-lang/rust/pull/156217) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e95e73209faf6ead2bc5c7636e45e589a751b79b&end=ba1a955819d72439dc59d5f73ad7a6a01e3fcdfe&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.6%  | [0.1%, 1.0%]   | 10    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.0% | [-0.1%, -0.0%] | 3     |
| All  (primary)                 | -     | -              | 0     |

- The wg-grammar regression was caused by [#155808](https://github.com/rust-lang/rust/pull/155808).
- Marked as triaged.

Improve caching by introducing `TypingMode::ErasedNotCoherence` [#155443](https://github.com/rust-lang/rust/pull/155443) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ba1a955819d72439dc59d5f73ad7a6a01e3fcdfe&end=365c0e1d7a614ca94cb48431dcd2bc6d3b645db1&stat=instructions:u)

| (instructions:u)                   | mean  | range           | count |
|:----------------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | -     | -               | 0     |
| Regressions (secondary)  | 2.5%  | [0.0%, 16.6%]   | 18    |
| Improvements (primary)   | -     | -               | 0     |
| Improvements (secondary) | -9.0% | [-26.2%, -0.1%] | 11    |
| All  (primary)                 | -     | -               | 0     |

- This only really affects the new solver, where it is a big win for `wg-grammar`, though also a big regression for `deeply-nested-multi`.
- Marked as triaged.

Rollup of 4 pull requests [#156324](https://github.com/rust-lang/rust/pull/156324) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f2b291d902bfde7d7f209fc3a64908134bcef201&end=8068e2fc9afa8c888336b12db01987be768785f9&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.3%, 0.3%]   | 1     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.3%]   | 3     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.5% | [-1.5%, -1.5%] | 1     |
| All  (primary)                 | 0.3%  | [0.3%, 0.3%]   | 1     |

- Tiny regression on hyper `doc` benchmark and the `bitmaps` benchmark with the new trait solver, overall a wash. I don't think it's worth digging further.
- Marked as triaged.


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Unconstrained parameter fix" [rust#148788](https://github.com/rust-lang/rust/pull/148788) (last review activity: about 49 days ago)
  - cc: @**davidtwco**
- "Hand-written Debug implementation for `TypeTest`" [rust#153785](https://github.com/rust-lang/rust/pull/153785) (last review activity: about 47 days ago)
  - cc @_**Martin Nordholts (Enselic)** (ok to leave a comment on the PR?)
- "debuginfo: emit DW_TAG_call_site entries on optimized builds" [rust#154532](https://github.com/rust-lang/rust/pull/154532) (last review activity: about 46 days ago)
  - @**Ding Xiang Fei (wieDasDing)** (this should recover a perf. loss from beginning of April)
- "Fix marker trait winnowing depending on impl order" [rust#153847](https://github.com/rust-lang/rust/pull/153847) (last review activity: about 44 days ago)
  - Unsure if it needs a first look by T-lang? T-types? cc @**oli**
- "GVN: transmute adts to their fields if a field projection is immediately transmuted anyway" [rust#153085](https://github.com/rust-lang/rust/pull/153085) (last review activity: 2 months ago)
  - I think waiting on @_**scottmcm** (not in this channel, ok to leave a comment?)

Next meeting will probably skip due to RustWeek?
