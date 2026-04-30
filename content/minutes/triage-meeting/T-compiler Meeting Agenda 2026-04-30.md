---
tags: weekly, rustc
type: docs
note_id: 0EpG9nx1S4a6Oq6PjFPBgg
---

# T-compiler Meeting Agenda 2026-04-30

## Announcements

- (TIP) add here non-recurrent scheduled meetings, [check the schedule calendar](https://github.com/rust-lang/calendar)
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other meetings

- @_**Jana** office hours <time:2026-04-30T16:00:00+02:00> and <time:2026-05-04T16:00:00+02:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Create a new Tier 3 target: `powerpc-unknown-none`" [compiler-team#986](https://github.com/rust-lang/compiler-team/issues/986) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20new.20Tier.203.20target.3A.20.60powerpc-unkn.E2.80.A6.20compiler-team.23986))
     - Discussion moved to https://rust-lang.zulipchat.com/#narrow/channel/233931-t-compiler.2Fmajor-changes/topic/Create.20a.20new.20Tier.203.20target.3A.20.60powerpc64le-.E2.80.A6.20compiler-team.23988/with/591431652
  - "Create a new Tier 3 target: `powerpc64-unknown-none`" [compiler-team#987](https://github.com/rust-lang/compiler-team/issues/987) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20new.20Tier.203.20target.3A.20.60powerpc64-un.E2.80.A6.20compiler-team.23987))
     - Discussion moved to https://rust-lang.zulipchat.com/#narrow/channel/233931-t-compiler.2Fmajor-changes/topic/Create.20a.20new.20Tier.203.20target.3A.20.60powerpc64le-.E2.80.A6.20compiler-team.23988/with/591431652
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: about 35 days ago)
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: 9 months ago)
  - "Add flag to pass MSRV/`package.rust-version` for use by lints" [compiler-team#950](https://github.com/rust-lang/compiler-team/issues/950) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Z.20msrv.3Dxx.2Eyy.2Ezz.60.20flag.20compiler-team.23950)) (last review activity: about 21 days ago)
  - "Create a new Tier 3 target: ` x86_64-nt-windows-msvc`" [compiler-team#952](https://github.com/rust-lang/compiler-team/issues/952) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20new.20Tier.203.20target.3A.20.60.20x86_64-nt-w.E2.80.A6.20compiler-team.23952)) (last review activity: 3 months ago)
  - "Add repro-check tool for build reproducibility" [compiler-team#962](https://github.com/rust-lang/compiler-team/issues/962) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20repro-check.20tool.20for.20build.20reproducib.E2.80.A6.20compiler-team.23962)) (last review activity: 3 months ago)
  - "Add -Z dead-fn-elimination to skip codegen of BFS-unreachable functions" [compiler-team#976](https://github.com/rust-lang/compiler-team/issues/976) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20-Z.20dead-fn-elimination.20to.20skip.20codege.E2.80.A6.20compiler-team.23976)) (last review activity: about 33 days ago)
  - "Change the ABI of powerpc64-unknown-linux-gnu to ELFv2" [compiler-team#977](https://github.com/rust-lang/compiler-team/issues/977) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Change.20the.20ABI.20of.20powerpc64-unknown-linux.E2.80.A6.20compiler-team.23977)) (last review activity: about 41 days ago)
  - "group target modifier options under `-T`" [compiler-team#980](https://github.com/rust-lang/compiler-team/issues/980) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/group.20target.20modifier.20options.20under.20.60-M.60.20compiler-team.23980)) (last review activity: about 27 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [Promote loongarch32-unknown-none* to Tier 2 (compiler-team#968)](https://github.com/rust-lang/compiler-team/issues/968#issuecomment-3907992097)
    - @**|124288** @**|125250** @**|119031** @**|353056**
    - no pending concerns
  - merge: [Promotes 5 Thumb-mode bare-metal Arm targets to Tier 2 (compiler-team#985)](https://github.com/rust-lang/compiler-team/issues/985#issuecomment-4327831592)
    - no pending concerns
  - merge: [Stabilize stack-protector (rust#146369)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3271397169)
    - By reading this [comment](https://github.com/rust-lang/rust/pull/146369#issuecomment-4241896278), is this waiting on the author?
    - concerns: [mitigation-enforcement (by Noratrieb)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3286402251)
      - cc: @**noratrieb** is your concern still standing? There was a [discussion on Zulip](https://rust-lang.zulipchat.com/#narrow/channel/233931-t-compiler.2Fmajor-changes/topic/Mitigation.20enforcement.20.28.60-C.20allow-partial-mitigations.60.29/with/539144305) last year
  - merge: [Stabilize the `supertrait_item_shadowing` feature (rust#148605)](https://github.com/rust-lang/rust/pull/148605#issuecomment-3582962396)
    - concerns: [implementation-confidence (by BoxyUwU)](https://github.com/rust-lang/rust/pull/148605#issuecomment-3853046997) [inconsistent-name-res-semantics (by BoxyUwU)](https://github.com/rust-lang/rust/pull/148605#issuecomment-3853051038)
      - (left a comment asking for an update)
  - "Implement lint for black_boxing ZSTs" [rust#150037](https://github.com/rust-lang/rust/pull/150037)
    - asked for an update, status unclear
  - merge: [WF checks on closure arguments. (rust#151510)](https://github.com/rust-lang/rust/pull/151510#issuecomment-3996248181)
    - concerns: [jobsteal crater regression fix (by lcnr)](https://github.com/rust-lang/rust/pull/151510#issuecomment-3996255213)
  - merge: [fix(resolve): Warn on Self-Type Lifetime Elision for Non-`Self` Types (rust#153692)](https://github.com/rust-lang/rust/pull/153692#issuecomment-4207518206)
    - concerns: [should-example-cases-without-lifetimes (by traviscross)](https://github.com/rust-lang/rust/pull/153692#issuecomment-4207522428)
  - merge: [Clean up crate type names to fix dylib vs staticlib confusion (rust#153863)](https://github.com/rust-lang/rust/issues/153863#issuecomment-4061709608)
    - no pending concerns (last one resolved last week)
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
  - "Turn long-deprecated -C options into errors" [compiler-team#978](https://github.com/rust-lang/compiler-team/issues/978) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Turn.20long-deprecated.20-C.20options.20into.20erro.E2.80.A6.20compiler-team.23978))
  - "Promote riscv64gc-unknown-linux-musl to Tier 2 (with Tools)" [compiler-team#982](https://github.com/rust-lang/compiler-team/issues/982) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20riscv64gc-unknown-linux-musl.20to.20T.E2.80.A6.20compiler-team.23982))
  - "Make stable hashing names consistent" [compiler-team#983](https://github.com/rust-lang/compiler-team/issues/983) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Make.20stable.20hashing.20names.20consistent.20compiler-team.23983))
  - "replace `box_patterns` in the compiler with `deref_patterns`" [compiler-team#984](https://github.com/rust-lang/compiler-team/issues/984) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/replace.20.60box_patterns.60.20in.20the.20compiler.20wi.E2.80.A6.20compiler-team.23984))
  - "Create a new Tier 3 target: `powerpc64le-unknown-none`" [compiler-team#988](https://github.com/rust-lang/compiler-team/issues/988) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20new.20Tier.203.20target.3A.20.60powerpc64le-.E2.80.A6.20compiler-team.23988))
    - concern: [baseline-features](https://github.com/rust-lang/compiler-team/issues/988#issuecomment-4331309832)
    - concern: [softfloat](https://github.com/rust-lang/compiler-team/issues/988#issuecomment-4331309832)
  - "error on empty `export_name`" [rust#155515](https://github.com/rust-lang/rust/pull/155515)
  - "validate `#[link_name = "..."]` & `#[link(name = "...")]` parameters" [rust#155817](https://github.com/rust-lang/rust/pull/155817)
- Accepted MCPs
  - No new accepted proposals this time.
- MCPs blocked on unresolved concerns
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: 6 months ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: 9 months ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
  - "Split the `-openbsd*` targets by version" [compiler-team#916](https://github.com/rust-lang/compiler-team/issues/916) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Split.20the.20.60-openbsd.2A.60.20targets.20by.20version.20compiler-team.23916)) (last review activity: 6 months ago)
    - concern: [why-not-ports-rustc](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315251054)
    - concern: [nonsystematic-breakage](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315243666)
    - concern: [version-churn](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315239793)
  - "Stop bumping the bootstrap version on every rustc release" [compiler-team#925](https://github.com/rust-lang/compiler-team/issues/925) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stop.20bumping.20the.20bootstrap.20version.20on.20eve.E2.80.A6.20compiler-team.23925)) (last review activity: 2 months ago)
    - concern: [we-like-using-the-features-we-ship](https://github.com/rust-lang/compiler-team/issues/925#issuecomment-3898616402)
    - concern: [infra-and-bootstrap-burden](https://github.com/rust-lang/compiler-team/issues/925#issuecomment-3898603216)
  - "Doc comments and attributes on macro arms" [compiler-team#935](https://github.com/rust-lang/compiler-team/issues/935) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Doc.20comments.20and.20attributes.20on.20macro.20arms.20compiler-team.23935)) (last review activity: 5 months ago)
    - concern: [lang](https://github.com/rust-lang/compiler-team/issues/935#issuecomment-3444181159)
  - "Publish `rustc_public` crate v0.1 to crates.io" [compiler-team#949](https://github.com/rust-lang/compiler-team/issues/949) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Publish.20.60rustc_public.60.20crate.20v0.2E1.20to.20crat.E2.80.A6.20compiler-team.23949)) (last review activity: about 38 days ago)
    - concern: [ease of refreshing in tree rustc_public to match actual rustc](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-4106240317)
    - concern: [clarify blocking/non-blocking nature of librarification project reviews](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-4106239976)
  - "Query `git` state to get information on a currently ongoing rebase when encountering conflict markers" [compiler-team#955](https://github.com/rust-lang/compiler-team/issues/955) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Query.20.60git.60.20state.20to.20get.20information.20on.20a.E2.80.A6.20compiler-team.23955)) (last review activity: 3 months ago)
    - concern: [not worth the complexity](https://github.com/rust-lang/compiler-team/issues/955#issuecomment-3684138445)
  - "Allow crates downstream of `rustc_middle` to define queries" [compiler-team#966](https://github.com/rust-lang/compiler-team/issues/966) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20crates.20downstream.20of.20.60rustc_middle.60.E2.80.A6.20compiler-team.23966)) (last review activity: 2 months ago)
    - concern: [complexity](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863771183)
    - concern: [fragmentation](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863853297)
- Finalized FCPs (disposition merge)
  - None
- Other teams finalized FCPs
  - None

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "codegen-options docs: remove -Csoft-float" [rust#155514](https://github.com/rust-lang/rust/pull/155514)
  - Authored by RalfJung
  - updates a Markdown file about the removal of this flag, nothing critical apparently
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23155514.3A.20beta-nominated/near/590510336), in favor
<!--
@**triagebot** backport :beta: accept 155514
@**triagebot** backport :beta: decline 155514
-->
- :beta: "`dlltool`: Set the working directory to workaround `--temp-prefix` bug" [rust#155899](https://github.com/rust-lang/rust/pull/155899)
  - Authored by ChrisDenton
  - PR was just merged
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23155899.3A.20beta-nominated/near/591319329), not yet a clear consensus
  - while I (@_**apiraino**) have flagged #155591 as P-critical, we're still not sure of its impact
<!--
@**triagebot** backport :beta: accept 155899
@**triagebot** backport :beta: decline 155899
-->
- :stable: "`dlltool`: Set the working directory to workaround `--temp-prefix` bug" [rust#155899](https://github.com/rust-lang/rust/pull/155899)
  - Authored by ChrisDenton
  - Voting [Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23155899.3A.20stable-nominated/near/591390252), in favor of a patch-release in case planned, (which for now doesn't seem the case)
<!--
Triagebot commands for handling backports on GitHub
If approved: @triagebot backport :stable:  accept 155899
If declined: @triagebot backport :stable:  decline 155899
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
- [59 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [43 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 35 P-high, 100 P-medium, 31 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "1.96 beta regression: "lua does not live long enough", take 2" [rust#155902](https://github.com/rust-lang/rust/issues/155902)
  - Will be fixed by #155915 authored by @_**dianne**
  - backport nominated (T-libs call)

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-bootstrap)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2026-04-27](https://github.com/Mark-Simulacrum/rustc-perf/blob/triage/triage%2F2026%2F2026-04-27.md)

Relatively few perf-affecting changes this week. Perf report is more positive
than users should see due to the `-Zincremental-verify-ich` related
improvements in [#155473](https://github.com/rust-lang/rust/pull/155473).

Triage done by **@simulacrum**.
Revision range: [9ab01ae5..ca9a134e](https://perf.rust-lang.org/?start=9ab01ae53c416f89fe256b79588a76dcbcdc9290&end=ca9a134e0985765ded9cfdde4030a5df4db7e2bd&absolute=false&stat=instructions%3Au)

**Summary**:

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.8%  |  [0.4%, 2.0%]  |  17   |
| Regressions (secondary)  | 0.4%  |  [0.0%, 1.7%]  |  10   |
|  Improvements (primary)  | -0.8% | [-2.8%, -0.2%] |  137  |
| Improvements (secondary) | -1.0% | [-5.3%, -0.0%] |  176  |
|      All  (primary)      | -0.6% | [-2.8%, 2.0%]  |  154  |

1 Regression, 5 Improvements, 3 Mixed; 3 of them in rollups
32 artifact comparisons made in total

#### Regressions

privacy: Assert that compared visibilities are (usually) ordered [#155257](https://github.com/rust-lang/rust/pull/155257) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=fb76025f2fe6a1c8ce03fe0931f941c8077a2c34&end=9838411cb723b60dc62b1625751075c4d933b992&stat=instructions:u)

|     (instructions:u)     | mean |    range     | count |
|:------------------------:|:----:|:------------:|:-----:|
|  Regressions (primary)   | 0.4% | [0.2%, 0.7%] |  12   |
| Regressions (secondary)  |  -   |      -       |   0   |
|  Improvements (primary)  |  -   |      -       |   0   |
| Improvements (secondary) |  -   |      -       |   0   |
|      All  (primary)      | 0.4% | [0.2%, 0.7%] |  12   |

This regressed in typenum and libc, both of which have many imports/items
declared. Based on PR discussion, it sounds like this is an intentional
regression with a goal of identifying potential bugs in the wild where
visibilities don't match expectations.
<https://github.com/rust-lang/rust/pull/155608> is a potential improvement
mitigating the impact.

#### Improvements

Replace `ShardedHashMap` method `insert` with debug-checked `insert_unique` [#155550](https://github.com/rust-lang/rust/pull/155550) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=913e4bea83424658d76712fee9c52452a3a9ef0e&end=30837cb66de032fbc8072c8ecbf76c39c5b14478&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   |   -   |       -        |   0   |
| Regressions (secondary)  |   -   |       -        |   0   |
|  Improvements (primary)  | -0.4% | [-0.7%, -0.2%] |   9   |
| Improvements (secondary) | -0.5% | [-0.7%, -0.2%] |  21   |
|      All  (primary)      | -0.4% | [-0.7%, -0.2%] |   9   |


Streamline `CrateMetadataRef` construction in `provide_one!`. [#155628](https://github.com/rust-lang/rust/pull/155628) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=827651f2200cefab42dac4c2ae7f80a7149340de&end=2eaa5de4a3a911f52adbee7dda0bc84b06115576&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   |   -   |       -        |   0   |
| Regressions (secondary)  |   -   |       -        |   0   |
|  Improvements (primary)  | -0.5% | [-1.3%, -0.3%] |  14   |
| Improvements (secondary) | -0.8% | [-2.2%, -0.2%] |  30   |
|      All  (primary)      | -0.5% | [-1.3%, -0.3%] |  14   |


Permit `{This}` in diagnostic attribute format literals [#155662](https://github.com/rust-lang/rust/pull/155662) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7c61a357e3c91b8a3c02dc63b7744d942d572a9a&end=80729d7ce0ec05aef7a33d9892484cfd5cf34675&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   |   -   |       -        |   0   |
| Regressions (secondary)  |   -   |       -        |   0   |
|  Improvements (primary)  |   -   |       -        |   0   |
| Improvements (secondary) | -0.2% | [-0.3%, -0.2%] |  13   |
|      All  (primary)      |   -   |       -        |   0   |


Prefer `-1` for `None` [#155473](https://github.com/rust-lang/rust/pull/155473) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c7fe5e9d1eb0ef8cc033961956d60f8e2e91e741&end=d4f78565699b229227c9e9ca8164efa3d5d7213e&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   |   -   |       -        |   0   |
| Regressions (secondary)  | 0.7%  |  [0.2%, 1.9%]  |   5   |
|  Improvements (primary)  | -0.3% | [-2.7%, -0.1%] |  67   |
| Improvements (secondary) | -0.3% | [-0.8%, -0.1%] |  52   |
|      All  (primary)      | -0.3% | [-2.7%, -0.1%] |  67   |

Rollup of 10 pull requests [#155655](https://github.com/rust-lang/rust/pull/155655) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f676c20edd32321e9fa2781543d8970109707e30&end=913e4bea83424658d76712fee9c52452a3a9ef0e&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   |   -   |       -        |   0   |
| Regressions (secondary)  | 0.1%  |  [0.0%, 0.1%]  |   2   |
|  Improvements (primary)  | -0.8% | [-3.7%, -0.2%] |  110  |
| Improvements (secondary) | -1.2% | [-5.5%, -0.0%] |  83   |
|      All  (primary)      | -0.8% | [-3.7%, -0.2%] |  110  |

The few regressions in include-blob look to be potentially noise. Marked as
triaged. The majority or all of the improvements are mostly not going to affect
users, they're specific to `-Zincremental-verify-ich` which is not on by
default (but is on in the perf collector). See
[comment](https://github.com/rust-lang/rust/pull/155655#issuecomment-4301028365).

#### Mixed

Rollup of 6 pull requests [#155596](https://github.com/rust-lang/rust/pull/155596) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=93637f398f4d0d40badc6bf1ed3f241499d06f88&end=365515367b4a20a315ec65a466991441b9dfba66&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 1.0%  |  [0.3%, 2.1%]  |  14   |
| Regressions (secondary)  | 0.6%  |  [0.6%, 0.7%]  |   7   |
|  Improvements (primary)  |   -   |       -        |   0   |
| Improvements (secondary) | -0.2% | [-0.2%, -0.2%] |   3   |
|      All  (primary)      | 1.0%  |  [0.3%, 2.1%]  |  14   |

Ran perf runs on PRs inside the rollup and identified root cause as "Fix
#[expect(dead_code)] liveness propagation"
[#154377](https://github.com/rust-lang/rust/pull/154377#issuecomment-4330991142).
Marked the regression as triaged since that is a correctness fix and I suspect
the regression is isolated in instruction count rather than wall clock changes.

`AliasTerm` refactor [#155392](https://github.com/rust-lang/rust/pull/155392) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f9988fefd3add01f414f52b414308e7872622fee&end=1bfcb284f7a2199ad322daa463e29e708d5bc635&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.5%  |  [0.1%, 0.9%]  |  19   |
| Regressions (secondary)  | 0.3%  |  [0.0%, 0.7%]  |  19   |
|  Improvements (primary)  | -0.3% | [-0.4%, -0.2%] |  10   |
| Improvements (secondary) | -0.3% | [-0.5%, -0.2%] |   9   |
|      All  (primary)      | 0.2%  | [-0.4%, 0.9%]  |  29   |

[Asked](https://github.com/rust-lang/rust/pull/155392#issuecomment-4331105877)
whether we think the tradeoff is worth it on the PR.

Rollup of 7 pull requests [#155687](https://github.com/rust-lang/rust/pull/155687) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2eaa5de4a3a911f52adbee7dda0bc84b06115576&end=36ba2c7712052d731a7082d0eba5ed3d9d56c133&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.3%  |  [0.2%, 0.5%]  |  16   |
| Regressions (secondary)  | 0.1%  |  [0.1%, 0.1%]  |   3   |
|  Improvements (primary)  |   -   |       -        |   0   |
| Improvements (secondary) | -0.5% | [-0.7%, -0.2%] |  14   |
|      All  (primary)      | 0.3%  |  [0.2%, 0.5%]  |  16   |

Unclear what the root cause is. Kicked off a build on #155469.


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "fix(interp): Treat `UnsafeBinder` as Compound Type in `try_visit_primitive`" [rust#153458](https://github.com/rust-lang/rust/pull/153458) (last review activity: about 55 days ago)
  - cc @**dingxiangfei2009**
- "Use `trait_object_dummy_self` more & heavily fix+update related docs" [rust#153497](https://github.com/rust-lang/rust/pull/153497) (last review activity: about 54 days ago)
  - cc @**dingxiangfei2009**
- "Add suggestion for E0401 on inner const items" [rust#153566](https://github.com/rust-lang/rust/pull/153566) (last review activity: about 52 days ago)
  - cc @**esteban**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/GwrFB3FHQoWOe508xMUgEA)
