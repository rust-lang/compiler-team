---
tags: weekly, rustc
type: docs
note_id: PfX_0CjUTkuqGoioqVjKGQ
---

# T-compiler Meeting Agenda 2026-05-28

## Announcements

- Today Rust 1.96.0 release ([blog post](https://github.com/cuviper/blog.rust-lang.org/blob/rust-1.96.0/content/Rust-1.96.0.md))
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Boxy** so we can pass it along).
- This is the first meeting since @_**Wesley Wiser** has rotated out as lead - thanks to Wesley for all of his hard work over the years as compiler team co-lead!
- ... and welcome Boxy as new co-lead :-)

### Other WG meetings

- @_**Jana** office hours <time:2026-05-28T16:00:00+02:00> and <time:2026-06-02T16:00:00+02:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Add `-Zglobal-target-cpu`" [compiler-team#991](https://github.com/rust-lang/compiler-team/issues/991) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Zglobal-target-cpu.60.20compiler-team.23991))
  - "Create a new Tier 3 target: `s390x-ibm-zos`" [compiler-team#992](https://github.com/rust-lang/compiler-team/issues/992) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20new.20Tier.203.20target.3A.20.60s390x-ibm-zo.E2.80.A6.20compiler-team.23992))
  - "Set requirements for windows-gnu" [compiler-team#993](https://github.com/rust-lang/compiler-team/issues/993) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Set.20requirements.20for.20windows-gnu.20compiler-team.23993))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time

- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 2 months ago)
    - This looks pretty much dead in the water. Candidate for closing (with an advertisement period)?
    - Anybody knows more about it? cc @**davidtwco** author mentioned you last (but very long ago)
  - "Relative VTables for Rust" [compiler-team#903](https://github.com/rust-lang/compiler-team/issues/903) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903)) (last review activity: 10 months ago)
    - Work is progressing, but the lack of seconding makes it unclear the general vibe
    - I [had left a comment](https://rust-lang.zulipchat.com/#narrow/channel/233931-t-compiler.2Fmajor-changes/topic/Relative.20VTables.20for.20Rust.20compiler-team.23903/near/595056042) but no concrete reply
  - "Add flag to pass MSRV/`package.rust-version` for use by lints" [compiler-team#950](https://github.com/rust-lang/compiler-team/issues/950) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Z.20msrv.3Dxx.2Eyy.2Ezz.60.20flag.20compiler-team.23950)) (last review activity: about 49 days ago)
    - There were some comments which the MCP author tried to address. I don't see a clear consensus (or maybe there is no capacity)
  - "Create a new Tier 3 target: ` x86_64-nt-windows-msvc`" [compiler-team#952](https://github.com/rust-lang/compiler-team/issues/952) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20new.20Tier.203.20target.3A.20.60.20x86_64-nt-w.E2.80.A6.20compiler-team.23952)) (last review activity: 3 months ago)
    - Same here. Left a comment but no feedback ...
  - "Change the ABI of powerpc64-unknown-linux-gnu to ELFv2" [compiler-team#977](https://github.com/rust-lang/compiler-team/issues/977) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Change.20the.20ABI.20of.20powerpc64-unknown-linux.E2.80.A6.20compiler-team.23977)) (last review activity: 2 months ago)
    - there was a bit of pushback from the maintainer of many Debian ports but the conversation turned out to be not very productive
    - I *think* (ignoring the bad communication) there are enough reasons to close the MCP as having side-effects
  - "group target modifier options under `-T`" [compiler-team#980](https://github.com/rust-lang/compiler-team/issues/980) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/group.20target.20modifier.20options.20under.20.60-M.60.20compiler-team.23980)) (last review activity: about 55 days ago)
    - cc: @**davidtwco** a question (potential concern) was just posted [here](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/group.20target.20modifier.20options.20under.20.60-M.60.20compiler-team.23980)
  - "Create a new Tier 3 target: `powerpc-unknown-none`" [compiler-team#986](https://github.com/rust-lang/compiler-team/issues/986) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20new.20Tier.203.20target.3A.20.60powerpc-unkn.E2.80.A6.20compiler-team.23986)) (last review activity: about 27 days ago)
    - Discussion on this other [Zulip thread](https://rust-lang.zulipchat.com/#narrow/channel/233931-t-compiler.2Fmajor-changes/topic/Create.20a.20new.20Tier.203.20target.3A.20.60powerpc64le-.E2.80.A6.20compiler-team.23988/near/591203537) (i.e. compiler-team#988)
  - "Create a new Tier 3 target: `powerpc64-unknown-none`" [compiler-team#987](https://github.com/rust-lang/compiler-team/issues/987) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20new.20Tier.203.20target.3A.20.60powerpc64-un.E2.80.A6.20compiler-team.23987)) (last review activity: about 27 days ago)
    - Discussion on this other [Zulip thread](https://rust-lang.zulipchat.com/#narrow/channel/233931-t-compiler.2Fmajor-changes/topic/Create.20a.20new.20Tier.203.20target.3A.20.60powerpc64le-.E2.80.A6.20compiler-team.23988/near/591203537) (i.e. compiler-team#988)
- Pending FCP requests (check your boxes!)
  - merge: [Stabilize stack-protector (rust#146369)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3271397169)
    - @_**|116266** @_**|426609** @_**|444933**
    - concerns: [mitigation-enforcement (by Noratrieb)](https://github.com/rust-lang/rust/pull/146369#issuecomment-3286402251)
  - merge: [Clean up crate type names to fix dylib vs staticlib confusion (rust#153863)](https://github.com/rust-lang/rust/issues/153863#issuecomment-4061709608)
    - @_**|124288** @_**|125250** @_**|245964** @_**|353056**
    - no pending concerns
  - "transmute: fix check for whether newtypes have equal size" [rust#155418](https://github.com/rust-lang/rust/pull/155418)
- Things in FCP (make sure you're good with it)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
  - "Promote tier 3 riscv32 ESP-IDF targets to tier 2" [compiler-team#864](https://github.com/rust-lang/compiler-team/issues/864) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20ESP-IDF.20targets.20to.E2.80.A6.20compiler-team.23864))
    - concern: [continued-maintainer-interest](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535030586)
    - concern: [documentation](https://github.com/rust-lang/compiler-team/issues/864#issuecomment-3535045453)
  - "Proposal for a dedicated test suite for the parallel frontend" [compiler-team#906](https://github.com/rust-lang/compiler-team/issues/906) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Proposal.20for.20a.20dedicated.20test.20suite.20for.20t.E2.80.A6.20compiler-team.23906))
    - concern: [can-we-just-enhance-ui-suite](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137762379)
    - concern: [name-a-specific-reason](https://github.com/rust-lang/compiler-team/issues/906#issuecomment-3137732970)
  - "Optimize `repr(Rust)` enums by omitting tags in more cases involving uninhabited variants." [compiler-team#922](https://github.com/rust-lang/compiler-team/issues/922) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Optimize.20.60repr.28Rust.29.60.20enums.20by.20omitting.20t.E2.80.A6.20compiler-team.23922))
  - "Add -Z dead-fn-elimination to skip codegen of BFS-unreachable functions" [compiler-team#976](https://github.com/rust-lang/compiler-team/issues/976) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20-Z.20dead-fn-elimination.20to.20skip.20codege.E2.80.A6.20compiler-team.23976))
  - "Promotes 5 Thumb-mode bare-metal Arm targets to Tier 2" [compiler-team#985](https://github.com/rust-lang/compiler-team/issues/985) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promotes.205.20Thumb-mode.20bare-metal.20Arm.20targ.E2.80.A6.20compiler-team.23985))
  - "Create a new Tier 3 target: `powerpc64le-unknown-none`" [compiler-team#988](https://github.com/rust-lang/compiler-team/issues/988) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20a.20new.20Tier.203.20target.3A.20.60powerpc64le-.E2.80.A6.20compiler-team.23988))
    - concern: [baseline-features](https://github.com/rust-lang/compiler-team/issues/988#issuecomment-4331309832)
    - concern: [softfloat](https://github.com/rust-lang/compiler-team/issues/988#issuecomment-4331309832)
  - "riscv: promote d, e, and f target_features to CfgStableToggleUnstable" [rust#156188](https://github.com/rust-lang/rust/pull/156188)
- Accepted MCPs
  - "Removing the unstable ptx linker flavor" [compiler-team#990](https://github.com/rust-lang/compiler-team/issues/990) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Removing.20the.20unstable.20ptx.20linker.20flavor.20compiler-team.23990))
- MCPs blocked on unresolved concerns
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850)) (last review activity: 7 months ago)
    - concern: [wont-stop-target-names-from-proliferating](https://github.com/rust-lang/compiler-team/issues/850#issuecomment-3074434152)
  - "WebAssembly for procedural macros" [compiler-team#876](https://github.com/rust-lang/compiler-team/issues/876) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/WebAssembly.20for.20procedural.20macros.20compiler-team.23876)) (last review activity: 10 months ago)
    - concern: [proposal-wording](https://github.com/rust-lang/compiler-team/issues/876#issuecomment-3078140906)
  - "Split the `-openbsd*` targets by version" [compiler-team#916](https://github.com/rust-lang/compiler-team/issues/916) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Split.20the.20.60-openbsd.2A.60.20targets.20by.20version.20compiler-team.23916)) (last review activity: 7 months ago)
    - concern: [nonsystematic-breakage](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315243666)
    - concern: [why-not-ports-rustc](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315251054)
    - concern: [version-churn](https://github.com/rust-lang/compiler-team/issues/916#issuecomment-3315239793)
  - "Stop bumping the bootstrap version on every rustc release" [compiler-team#925](https://github.com/rust-lang/compiler-team/issues/925) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stop.20bumping.20the.20bootstrap.20version.20on.20eve.E2.80.A6.20compiler-team.23925)) (last review activity: 3 months ago)
    - concern: [infra-and-bootstrap-burden](https://github.com/rust-lang/compiler-team/issues/925#issuecomment-3898603216)
    - concern: [we-like-using-the-features-we-ship](https://github.com/rust-lang/compiler-team/issues/925#issuecomment-3898616402)
  - "Doc comments and attributes on macro arms" [compiler-team#935](https://github.com/rust-lang/compiler-team/issues/935) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Doc.20comments.20and.20attributes.20on.20macro.20arms.20compiler-team.23935)) (last review activity: 6 months ago)
    - concern: [lang](https://github.com/rust-lang/compiler-team/issues/935#issuecomment-3444181159)
  - "Publish `rustc_public` crate v0.1 to crates.io" [compiler-team#949](https://github.com/rust-lang/compiler-team/issues/949) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Publish.20.60rustc_public.60.20crate.20v0.2E1.20to.20crat.E2.80.A6.20compiler-team.23949)) (last review activity: 2 months ago)
    - concern: [clarify blocking/non-blocking nature of librarification project reviews](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-4106239976)
    - concern: [ease of refreshing in tree rustc_public to match actual rustc](https://github.com/rust-lang/compiler-team/issues/949#issuecomment-4106240317)
  - "Query `git` state to get information on a currently ongoing rebase when encountering conflict markers" [compiler-team#955](https://github.com/rust-lang/compiler-team/issues/955) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Query.20.60git.60.20state.20to.20get.20information.20on.20a.E2.80.A6.20compiler-team.23955)) (last review activity: 3 months ago)
    - concern: [not worth the complexity](https://github.com/rust-lang/compiler-team/issues/955#issuecomment-3684138445)
  - "Allow crates downstream of `rustc_middle` to define queries" [compiler-team#966](https://github.com/rust-lang/compiler-team/issues/966) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20crates.20downstream.20of.20.60rustc_middle.60.E2.80.A6.20compiler-team.23966)) (last review activity: 3 months ago)
    - concern: [complexity](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863771183)
    - concern: [fragmentation](https://github.com/rust-lang/compiler-team/issues/966#issuecomment-3863853297)
- Finalized FCPs (disposition merge)
  - [T-types] "Make trait refs & assoc ty paths properly induce trait object lifetime defaults" [rust#129543](https://github.com/rust-lang/rust/pull/129543)

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

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [61 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [43 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 2 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 35 P-high, 100 P-medium, 30 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-bootstrap)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [2026-05-25 Triage Log](https://github.com/rust-lang/rustc-perf/tree/master/triage/2026)

This week was largely positive, with most of the improvements coming from algorithm change in visibility checking: [#156228](https://github.com/rust-lang/rust/pull/156228).

Triage done by **@panstromek**.
Revision range: [281c97c3..783eb8c8](https://perf.rust-lang.org/?start=281c97c3240a9abd984ca0c6a2cd7389115e80d5&end=783eb8c8682ddde0807c60ed8293670ef523794f&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.1%, 0.7%]   | 5     |
| Regressions (secondary)  | 0.5%  | [0.1%, 1.1%]   | 16    |
| Improvements (primary)   | -0.9% | [-6.6%, -0.1%] | 164   |
| Improvements (secondary) | -0.4% | [-1.3%, -0.1%] | 51    |
| All  (primary)                 | -0.9% | [-6.6%, 0.7%]  | 169   |


2 Regressions, 2 Improvements, 5 Mixed; 2 of them in rollups
34 artifact comparisons made in total

#### Regressions

Stabilize `--remap-path-prefix` in rustdoc [#155307](https://github.com/rust-lang/rust/pull/155307) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e96c36b6f76833388c519561d145492d2c08db4e&end=4d276d7fdba2a24c73dbca3027461bb202e83436&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.7% | [0.7%, 0.7%] | 1     |
| Regressions (secondary)  | 0.4% | [0.4%, 0.4%] | 1     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.7% | [0.7%, 0.7%] | 1     |

`nalgebra` regressions are noise (return to default state after previous PR).

Rollup of 4 pull requests [#156881](https://github.com/rust-lang/rust/pull/156881) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1d59f669f9c699b982f112ebbc81e8b1eb550d68&end=609b8c5cefb3932bbaf4497cb7f9195ca8a1eab6&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.4%]   | 11    |
| Regressions (secondary)  | 0.2%  | [0.0%, 0.6%]   | 12    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.9% | [-1.9%, -1.9%] | 1     |
| All  (primary)                 | 0.3%  | [0.2%, 0.4%]   | 11    |

Looks to be caused by https://github.com/rust-lang/rust/pull/156824. I couldn't confirm this directly because we miss the unrolled build, but looking at the other PRs, one is a pure test change, and perf runs on the other two came back with no relevant changes, so this is the only one remaning.

It doesn't seem like that big of a deal to me (mostly tiny benchmarks, `incr-unchanged/patched`), but seems unexpected. Some of them regress in queries that don't seem related (match checking). Left a comment there.

#### Improvements

Privacy: try use queue instead of fixed-point iteration [#156228](https://github.com/rust-lang/rust/pull/156228) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ca9203f29c609b344566d4eed9b5d9a3bf10290c&end=60592ad7c63cdb7cfe092f785bb224b655512926&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.9% | [-6.7%, -0.1%] | 144   |
| Improvements (secondary) | -0.5% | [-1.3%, -0.1%] | 31    |
| All  (primary)                 | -0.9% | [-6.7%, -0.1%] | 144   |


Update LLVM to 22.1.6 [#156757](https://github.com/rust-lang/rust/pull/156757) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=037b621e831cba9ebd4148f9de33eff361df23d3&end=e96c36b6f76833388c519561d145492d2c08db4e&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-0.7%, -0.7%] | 1     |
| Improvements (secondary) | -0.4% | [-0.4%, -0.4%] | 1     |
| All  (primary)                 | -0.7% | [-0.7%, -0.7%] | 1     |

note: this result is spurious, we got inverse results in the next PR ([#155307](https://github.com/rust-lang/rust/pull/155307), first PR in the regressions list).

#### Mixed

Make bitset `would_modify_words` more vectorizer-friendly [#153640](https://github.com/rust-lang/rust/pull/153640) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1ea1171c1e537f295225be1c7b67dba46794e6ad&end=e50aa6fba4e63ab34c72bf9acfd2c307c1155d1a&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.1%  | [0.1%, 0.1%]   | 1     |
| Improvements (primary)   | -1.4% | [-2.2%, -0.7%] | 4     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -1.4% | [-2.2%, -0.7%] | 4     |

`include-blob` regression is noise.

Fix jump-to-def links broken by turbofish syntax [#156727](https://github.com/rust-lang/rust/pull/156727) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4b9792692fbb675174d4d2082e7c37b2bc930e71&end=1f8e04d34ab0c1fd9574840aa6db670e41593bfb&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.7%, 0.7%]   | 1     |
| Regressions (secondary)  | 0.4%  | [0.4%, 0.4%]   | 1     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.1% | [-0.1%, -0.1%] | 1     |
| All  (primary)                 | 0.7%  | [0.7%, 0.7%]   | 1     |

Perf results are noise, this PR doesn't change anything in the compiler. It seems that `nalgebra` `opt` became bimodal.

Rollup of 2 pull requests [#156794](https://github.com/rust-lang/rust/pull/156794) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b954122bbe6c4a244c511a9a168c6d5438d8f58f&end=037b621e831cba9ebd4148f9de33eff361df23d3&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.4%]   | 64    |
| Regressions (secondary)  | 0.3%  | [0.1%, 0.4%]   | 38    |
| Improvements (primary)   | -0.3% | [-0.5%, -0.2%] | 9     |
| Improvements (secondary) | -0.2% | [-0.2%, -0.2%] | 8     |
| All  (primary)                 | 0.2%  | [-0.5%, 0.4%]  | 73    |

Caused by https://github.com/rust-lang/rust/pull/156242, already triaged by @JonathanBrouwer, addressed by @Saethlin in https://github.com/rust-lang/rust/pull/156849.

Implement fast path for `derive(PartialOrd)` when deriving `Ord` [#155598](https://github.com/rust-lang/rust/pull/155598) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=23a3312d92a1c4ba0373f1e25277be20ba8bb28c&end=dd8b2d6162c5616d7030238c29f892a431093cdd&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.5%, 0.8%]   | 3     |
| Regressions (secondary)  | 0.7%  | [0.2%, 1.0%]   | 9     |
| Improvements (primary)   | -0.3% | [-0.5%, -0.2%] | 20    |
| Improvements (secondary) | -0.3% | [-0.5%, -0.2%] | 5     |
| All  (primary)                 | -0.2% | [-0.5%, 0.8%]  | 23    |

Improvements mostly outweigh regressions. Results roughly match pre-merge results, so I assume the comments above still hold and this is considered fine.

Re-add call site inlining attributes [#156849](https://github.com/rust-lang/rust/pull/156849) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a06c1ca53a775af31bcbdaeed995c2f224b34d06&end=1d59f669f9c699b982f112ebbc81e8b1eb550d68&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.3%, 0.4%]   | 2     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 8     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.2%] | 66    |
| Improvements (secondary) | -0.3% | [-0.5%, -0.2%] | 42    |
| All  (primary)                 | -0.3% | [-0.4%, 0.4%]  | 68    |

Fixes the regression from https://github.com/rust-lang/rust/pull/156242, already triaged by @saethlin (author): "Perf impact is the inverse of the PR linked in the description, within typical jitter. The net effect of the two PRs is nothing."


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- Skipping this week due to many contributors being at RustWeek

Next meetings' agenda draft: [hackmd link](https://hackmd.io/1pSFLZPgR0ins0y1clB0nQ)
