---
tags: weekly, rustc
type: docs
note_id: 1pSFLZPgR0ins0y1clB0nQ
---

# T-compiler Meeting Agenda 2026-06-04

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Boxy** so we can pass it along).

### Other WG meetings

- @_**Jana** office hours restarting <time:2026-06-04T16:15:00+02:00> and <time:2026-06-08T16:00:00+02:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Add `-Zglobal-target-cpu`" [compiler-team#991](https://github.com/rust-lang/compiler-team/issues/991) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Zglobal-target-cpu.60.20compiler-team.23991))
  - "Create a new Tier 3 target: `s390x-ibm-zos`" [compiler-team#992](https://github.com/rust-lang/compiler-team/issues/992) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20new.20Tier.203.20target.3A.20.60s390x-ibm-zo.E2.80.A6.20compiler-team.23992))
    - concern: [expected-support-from-rust-project](https://github.com/rust-lang/compiler-team/issues/992#issuecomment-4586334688)
  - "`{cwd}` placeholder in --remap-path-prefix" [compiler-team#998](https://github.com/rust-lang/compiler-team/issues/998) ([Zulip](@rustbot label +major-change +T-compiler))
- Old MCPs (not seconded, take a look)
  - "Create a new Tier 3 target: ` x86_64-nt-windows-msvc`" [compiler-team#952](https://github.com/rust-lang/compiler-team/issues/952) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20new.20Tier.203.20target.3A.20.60.20x86_64-nt-w.E2.80.A6.20compiler-team.23952)) (last review activity: about 0 days ago)
  - "group target modifier options under `-T`" [compiler-team#980](https://github.com/rust-lang/compiler-team/issues/980) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/group.20target.20modifier.20options.20under.20.60-M.60.20compiler-team.23980)) (last review activity: 2 months ago)
  - "Create a new Tier 3 target: `powerpc-unknown-none`" [compiler-team#986](https://github.com/rust-lang/compiler-team/issues/986) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20new.20Tier.203.20target.3A.20.60powerpc-unkn.E2.80.A6.20compiler-team.23986)) (last review activity: about 34 days ago)
  - "Create a new Tier 3 target: `powerpc64-unknown-none`" [compiler-team#987](https://github.com/rust-lang/compiler-team/issues/987) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20new.20Tier.203.20target.3A.20.60powerpc64-un.E2.80.A6.20compiler-team.23987)) (last review activity: about 34 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [Stabilize stack-protector (rust#146369)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3271397169)
    - @_**|116266** @_**|426609** @_**|444933**
    - concerns: [mitigation-enforcement (by Noratrieb)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3286402251)
- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864))
    - concern: [documentation](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535045453)
    - concern: [continued-maintainer-interest](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535030586)
  - "Optimize `repr(Rust)` enums by omitting tags in more cases involving uninhabited variants." [compiler-team#922](https://github.com/rust-lang/compiler-team/issues/922) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Optimize.20.60repr.28Rust.29.60.20enums.20by.20omitting.20t.E2.80.A6.20compiler-team.23922))
  - "Add flag to pass MSRV/`package.rust-version` for use by lints" [compiler-team#950](https://github.com/rust-lang/compiler-team/issues/950) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Z.20msrv.3Dxx.2Eyy.2Ezz.60.20flag.20compiler-team.23950))
  - "Create a new Tier 3 target: `powerpc64le-unknown-none`" [compiler-team#988](https://github.com/rust-lang/compiler-team/issues/988) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20new.20Tier.203.20target.3A.20.60powerpc64le-.E2.80.A6.20compiler-team.23988))
    - concern: [softfloat](https://github.com/rust-lang/compiler-team/issues/988#issuecomment-4331309832)
    - concern: [baseline-features](https://github.com/rust-lang/compiler-team/issues/988#issuecomment-4331309832)
  - "Set requirements for windows-gnu" [compiler-team#993](https://github.com/rust-lang/compiler-team/issues/993) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Set.20requirements.20for.20windows-gnu.20compiler-team.23993))
  - "Add `-Zllvm-target-feature` target *modifier* to directly set LLVM-level target features, and deprecate doing that with `-Ctarget-feature`" [compiler-team#994](https://github.com/rust-lang/compiler-team/issues/994) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Zllvm-target-feature.60.20target.20.2Amodif.E2.80.A6.20compiler-team.23994))
  - "Test new solver and polonius alpha on CI" [compiler-team#996](https://github.com/rust-lang/compiler-team/issues/996) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Test.20new.20solver.20and.20polonius.20alpha.20on.20CI.20compiler-team.23996))
  - "Desugar async blocks in HIR instead of MIR" [compiler-team#997](https://github.com/rust-lang/compiler-team/issues/997) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Desugar.20async.20blocks.20in.20HIR.20instead.20of.20MIR.20compiler-team.23997))
  - "riscv: promote d, e, and f target_features to CfgStableToggleUnstable" [rust#156188](https://github.com/rust-lang/rust/pull/156188)
- Accepted MCPs
  - "Add -Z dead-fn-elimination to skip codegen of BFS-unreachable functions" [compiler-team#976](https://github.com/rust-lang/compiler-team/issues/976) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20-Z.20dead-fn-elimination.20to.20skip.20codege.E2.80.A6.20compiler-team.23976))
  - "Removing the unstable ptx linker flavor" [compiler-team#990](https://github.com/rust-lang/compiler-team/issues/990) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Removing.20the.20unstable.20ptx.20linker.20flavor.20compiler-team.23990))
- MCPs blocked on unresolved concerns
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: 8 months ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: 10 months ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: about 0 days ago)
    - concern: [needs-champion](https://github.com/rust-lang/compiler-team/issues/903#issuecomment-4613446775)
  - "Split the `-openbsd*` targets by version" [compiler-team#916](https://github.com/rust-lang/compiler-team/issues/916) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Split.20the.20.60-openbsd.2A.60.20targets.20by.20version.20compiler-team.23916)) (last review activity: 7 months ago)
    - concern: [why-not-ports-rustc](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315251054)
    - concern: [nonsystematic-breakage](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315243666)
    - concern: [version-churn](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315239793)
  - "Stop bumping the bootstrap version on every rustc release" [compiler-team#925](https://github.com/rust-lang/compiler-team/issues/925) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stop.20bumping.20the.20bootstrap.20version.20on.20eve.E2.80.A6.20compiler-team.23925)) (last review activity: 3 months ago)
    - concern: [we-like-using-the-features-we-ship](https://github.com/rust-lang/compiler-team/issues/925#issuecomment-3898616402)
    - concern: [infra-and-bootstrap-burden](https://github.com/rust-lang/compiler-team/issues/925#issuecomment-3898603216)
  - "Doc comments and attributes on macro arms" [compiler-team#935](https://github.com/rust-lang/compiler-team/issues/935) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Doc.20comments.20and.20attributes.20on.20macro.20arms.20compiler-team.23935)) (last review activity: 6 months ago)
    - concern: [lang](https://github.com/rust-lang/compiler-team/issues/935#issuecomment-3444181159)
  - "Publish `rustc_public` crate v0.1 to crates.io" [compiler-team#949](https://github.com/rust-lang/compiler-team/issues/949) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Publish.20.60rustc_public.60.20crate.20v0.2E1.20to.20crat.E2.80.A6.20compiler-team.23949)) (last review activity: 2 months ago)
    - concern: [clarify blocking/non-blocking nature of librarification project reviews](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-4106239976)
    - concern: [ease of refreshing in tree rustc_public to match actual rustc](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-4106240317)
  - "Query `git` state to get information on a currently ongoing rebase when encountering conflict markers" [compiler-team#955](https://github.com/rust-lang/compiler-team/issues/955) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Query.20.60git.60.20state.20to.20get.20information.20on.20a.E2.80.A6.20compiler-team.23955)) (last review activity: 4 months ago)
    - concern: [not worth the complexity](https://github.com/rust-lang/compiler-team/issues/955#issuecomment-3684138445)
  - "Allow crates downstream of `rustc_middle` to define queries" [compiler-team#966](https://github.com/rust-lang/compiler-team/issues/966) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20crates.20downstream.20of.20.60rustc_middle.60.E2.80.A6.20compiler-team.23966)) (last review activity: 3 months ago)
    - concern: [complexity](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863771183)
    - concern: [fragmentation](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863853297)
- Finalized FCPs (disposition merge)
  - [T-types] "Make trait refs & assoc ty paths properly induce trait object lifetime defaults" [rust#129543](https://github.com/rust-lang/rust/pull/129543)

## Interesting MCPs/FCPs

Note: let's review them one by one (maybe send pings?)

- Pending FCP
  - merge: [Clean up crate type names to fix dylib vs staticlib confusion (rust#153863)](https://github.com/rust-lang/rust/issues/153863#issuecomment-4061709608)
    - @_**|124288** @_**|125250** @_**|353056**
    - no pending concerns, seems just waiting on 1 more tick from T-compiler
  - merge: [Stabilize `-Zprofile-sample-use` (rust#155942)](https://github.com/rust-lang/rust/pull/155942#issuecomment-4603443003)
    - @_**|116266** @_**|125250** @_**|116107** @_**|119031** @_**|116122** @_**|123856** @_**|370197** @_**|343125**
    - no pending concerns, FCP opened 2 days ago (all's good, I think)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Revert "drop derive helpers during ast lowering" " [rust#157150](https://github.com/rust-lang/rust/pull/157150)
  - Authored by JonathanBrouwer
  - Voting [T-compiler Zulip topic](https://rust-lang.zulipchat.com/#narrow/channel/474880-t-compiler.2Fbackports/topic/.23157150.3A.20beta-nominated/near/598860096) and [T-rustdoc's](https://rust-lang.zulipchat.com/#narrow/channel/266220-t-rustdoc/topic/beta-nominated.3A.20.23157150/near/598860094)
  - This revert fixes #157107, a T-rustdoc (nightly-only) regression. The revert undoes commit https://github.com/rust-lang/rust/commit/29e9273185bd6d67145524733bbf4af4c4cc65c8
  - there was a bit of back and forth and some questions on both sides if we should backport a revert on something that has not stable guarantees. In the end it seems that the change is small and safe enough to backport.
  - Urgau: I've nominated the backport for the next rustdoc meeting (next monday)
<!--
@**triagebot** backport accept beta 157150
@**triagebot** backport decline beta 157150
-->
- No stable nominations for `T-compiler` this time.

[T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-t-compiler

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-t-compiler)
- "Stabilize `-Zprofile-sample-use`" [rust#155942](https://github.com/rust-lang/rust/pull/155942)
  - (FCP opened 2 days ago)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [61 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [44 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 33 P-high, 100 P-medium, 31 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

:warning: Note: a new beta (1.96) crater-run has just completed and we have a few regressions (will look into them)
- https://github.com/rust-lang/rust/issues?q=is%3Aopen%20is%3Aissue%20label%3AI-prioritize%20label%3Aregression-from-stable-to-beta

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-bootstrap)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [2026-06-01 Triage Log](https://github.com/rust-lang/rustc-perf/tree/master/triage/2026)

This week we saw nice wins across the board thanks to merging several compiler queries together ([#155678](https://github.com/rust-lang/rust/pull/155678)), and also substantial improvements in `doc` performance thanks to
doing less work when sorting trait impls ([#157179](https://github.com/rust-lang/rust/pull/157179)).

Triage done by **@Kobzol**.
Revision range: [783eb8c8..4804ad7e](https://perf.rust-lang.org/?start=783eb8c8682ddde0807c60ed8293670ef523794f&end=4804ad7e93e1b31f4605b7083871d0d3d85a2afe&absolute=false&stat=instructions%3Au)

**Summary**:

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.3%  |  [0.1%, 0.7%]  |  14   |
| Regressions (secondary)  | 0.4%  |  [0.1%, 0.9%]  |  39   |
|  Improvements (primary)  | -0.9% | [-6.8%, -0.2%] |  111  |
| Improvements (secondary) | -1.1% | [-2.9%, -0.1%] |  53   |
|      All  (primary)      | -0.8% | [-6.8%, 0.7%]  |  125  |


3 Regressions, 1 Improvement, 2 Mixed; 4 of them in rollups
35 artifact comparisons made in total

#### Regressions

Rollup of 10 pull requests [#157031](https://github.com/rust-lang/rust/pull/157031) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=77a4fb62f70c6ea05e1820216d903938e331d42b&end=57d06900fd7d9ee06d3a7f323bb77f17ab3cfaf8&stat=instructions:u)

|     (instructions:u)     | mean |    range     | count |
|:------------------------:|:----:|:------------:|:-----:|
|  Regressions (primary)   | 0.2% | [0.2%, 0.2%] |   3   |
| Regressions (secondary)  | 0.3% | [0.2%, 0.6%] |   7   |
|  Improvements (primary)  |  -   |      -       |   0   |
| Improvements (secondary) |  -   |      -       |   0   |
|      All  (primary)      | 0.2% | [0.2%, 0.2%] |   3   |

- Noise that reverted back in follow-up PRs.
- Already marked as triaged.

Rollup of 8 pull requests [#157161](https://github.com/rust-lang/rust/pull/157161) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c58275e0369d09fc3959b8ba87dcbcbe73797465&end=f8a08b688cbe60acc386ed1fbd1b7cbaaf5576b1&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.2%  |  [0.1%, 0.6%]  |  15   |
| Regressions (secondary)  | 0.5%  |  [0.1%, 2.4%]  |  18   |
|  Improvements (primary)  |   -   |       -        |   0   |
| Improvements (secondary) | -0.0% | [-0.0%, -0.0%] |   1   |
|      All  (primary)      | 0.2%  |  [0.1%, 0.6%]  |  15   |

- Regression caused by [#156875](https://github.com/rust-lang/rust/pull/156875), continuing discussion on that PR.
- Marked as triaged.

Rollup of 2 pull requests [#157177](https://github.com/rust-lang/rust/pull/157177) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e7a21fa2562f67cf9cac407c29287a16862b4463&end=f375177a48bcab5e27d800b464fa25363c0198f1&stat=instructions:u)

|     (instructions:u)     | mean |    range     | count |
|:------------------------:|:----:|:------------:|:-----:|
|  Regressions (primary)   | 0.1% | [0.1%, 0.1%] |   3   |
| Regressions (secondary)  |  -   |      -       |   0   |
|  Improvements (primary)  |  -   |      -       |   0   |
| Improvements (secondary) |  -   |      -       |   0   |
|      All  (primary)      | 0.1% | [0.1%, 0.1%] |   3   |

- Either noise or [#157165](https://github.com/rust-lang/rust/pull/157165), but the regression is tiny and only on a single benchmark, not worth digging deeper.
- Marked as triaged.

#### Improvements

rustdoc: optimize impl sorting [#157179](https://github.com/rust-lang/rust/pull/157179) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9e293ae9f8abecb0be5105787d181518c9012a19&end=1ce45a011a3fe99ab08643d8eb7229bfc3b40bda&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   |   -   |       -        |   0   |
| Regressions (secondary)  |   -   |       -        |   0   |
|  Improvements (primary)  | -1.5% | [-6.7%, -0.3%] |  13   |
| Improvements (secondary) | -1.1% | [-1.9%, -0.4%] |   2   |
|      All  (primary)      | -1.5% | [-6.7%, -0.3%] |  13   |


#### Mixed

Merge several HIR-level queries into one [#155678](https://github.com/rust-lang/rust/pull/155678) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ddc1a64229890506f57bae5b270f9e5f604294ec&end=77a4fb62f70c6ea05e1820216d903938e331d42b&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   |   -   |       -        |   0   |
| Regressions (secondary)  | 0.4%  |  [0.0%, 1.1%]  |  11   |
|  Improvements (primary)  | -0.7% | [-1.7%, -0.1%] |  109  |
| Improvements (secondary) | -0.9% | [-2.8%, -0.1%] |  62   |
|      All  (primary)      | -0.7% | [-1.7%, -0.1%] |  109  |

- Wins greatly outweigh the regressions.
- Marked as triaged.

Rollup of 16 pull requests [#157121](https://github.com/rust-lang/rust/pull/157121) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6368fd52cb9f230dfb156097625993e7a8891800&end=6eda7419e71fdbc1185ed5be7e6bff1a474ab5cd&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   |   -   |       -        |   0   |
| Regressions (secondary)  | 0.6%  |  [0.3%, 1.0%]  |   9   |
|  Improvements (primary)  |   -   |       -        |   0   |
| Improvements (secondary) | -0.1% | [-0.2%, -0.1%] |   2   |
|      All  (primary)      |   -   |       -        |   0   |

- Regression caused by [#157076](https://github.com/rust-lang/rust/pull/157076).
- The regression should be fixed by [#157182](https://github.com/rust-lang/rust/pull/157182).
- Already marked as triaged.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "stabilize optimize attribute" [rust#157273](https://github.com/rust-lang/rust/pull/157273)
  - Opened 3 days ago, nominated by @_**Trevor Gross** (in [comment](https://github.com/rust-lang/rust/pull/157273#issuecomment-4596377758))
  - @_**Jieyou Xu**  ([left a review](https://github.com/rust-lang/rust/pull/157273#pullrequestreview-4405825963)) and @_**nagisa** ([comment](https://github.com/rust-lang/rust/pull/157273#issuecomment-4601575641)) had a first look

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "MIR move elimination" [rfcs#3943](https://github.com/rust-lang/rfcs/pull/3943)
  - Asked on Zulip ([thread](https://rust-lang.zulipchat.com/#narrow/channel/131828-t-compiler/topic/Moving.20forward.20with.20move.20elimination/near/599944581))
  - Work in progress implementation of [RFC#3943](https://github.com/rust-lang/rfcs/pull/3943) in #156046, shows promising perf. gains
  - Nominated by @_**Amanieu d'Antras** (needs some eyeballs from T-compiler or just kick off an FCP)

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "lint ImproperCTypes: refactor linting architecture (part 3)" [rust#146275](https://github.com/rust-lang/rust/pull/146275) (last review activity: 7 months ago)
  - maybe cc @_**Jana** (why T-bootstrap, btw?)
- "Dont bail in error predicate unless self ty is error in new solver" [rust#150453](https://github.com/rust-lang/rust/pull/150453) (last review activity: 4 months ago)
  - cc @_**lcnr**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/EMdqzvKwTga744deYVpMgg)
