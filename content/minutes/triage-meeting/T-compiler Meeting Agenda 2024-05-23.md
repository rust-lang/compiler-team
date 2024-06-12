---
tags: weekly, rustc
type: docs
note_id: 9smuckNqRJmQ4a1s1sHbcQ
---

# T-compiler Meeting Agenda 2024-05-23

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- Types Team: ITE (Impl Trait Everywhere) Triage <time:2024-05-23T22:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Add a `--emit=nameres` for IDEs" [compiler-team#749](https://github.com/rust-lang/compiler-team/issues/749) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20.60--emit.3Dnameres.60.20for.20IDEs.20compiler-team.23749))
  - "Fully rustfmt `use` declarations" [compiler-team#750](https://github.com/rust-lang/compiler-team/issues/750) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23750))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 4 months ago)
    - concern: [added-complexity-to-frontend](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-1845169318)
  - "Target families for executable format" [compiler-team#716](https://github.com/rust-lang/compiler-team/issues/716) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Target.20families.20for.20executable.20format.20compiler-team.23716)) (last review activity: 3 months ago)
  - "Promote riscv64gc-unknown-linux-musl to tier 2" [compiler-team#728](https://github.com/rust-lang/compiler-team/issues/728) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20riscv64gc-unknown-linux-gnu.20to.20ti.E2.80.A6.20compiler-team.23728)) (last review activity: 2 months ago)
  - "Only emit forward compatible v0 symbol names with graceful degradation" [compiler-team#737](https://github.com/rust-lang/compiler-team/issues/737) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Only.20emit.20forward.20compatible.20v0.20symbol.20na.E2.80.A6.20compiler-team.23737)) (last review activity: about 48 days ago)
  - "Partial compilation using MIR-only rlibs" [compiler-team#738](https://github.com/rust-lang/compiler-team/issues/738) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Partial.20compilation.20using.20MIR-only.20rlibs.20compiler-team.23738)) (last review activity: about 41 days ago)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: about 6 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [Show files produced by `--emit foo` in json artifact notifications (rust#122597)](https://github.com/rust-lang/rust/pull/122597#issuecomment-2063945502)
    - @**|116107** @**|125294** @**|248906** @**|426609** @**|116118** @**|232957**
    - no pending concerns
- Things in FCP (make sure you're good with it)
  - "Skip virtual drop for !needs_drop types" [compiler-team#730](https://github.com/rust-lang/compiler-team/issues/730) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Skip.20virtual.20drop.20for.20.21needs_drop.20types.20compiler-team.23730))
  - "Add `--emit=thin-link-bitcode` to enable distributed ThinLTO users" [compiler-team#735](https://github.com/rust-lang/compiler-team/issues/735) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Zemit-thin-lto-index.3D.3Cpath.3E.60.20to.20ena.E2.80.A6.20compiler-team.23735))
  - "Add --print=check-cfg" [compiler-team#743](https://github.com/rust-lang/compiler-team/issues/743) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20--print.3Dcheck-cfg.20compiler-team.23743))
  - "Support `-Cforce-frame-pointers=non-leaf`" [compiler-team#744](https://github.com/rust-lang/compiler-team/issues/744) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Support.20.60-Cforce-frame-pointers.3Dnon-leaf.60.20compiler-team.23744))
  - "Promote arm64ec-pc-windows-msvc to tier 2" [compiler-team#746](https://github.com/rust-lang/compiler-team/issues/746) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20arm64ec-pc-windows-msvc.20to.20tier.202.20compiler-team.23746))
  - "`-Zfixed-x18`" [compiler-team#748](https://github.com/rust-lang/compiler-team/issues/748) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.60-Cfixed-x18.60.20compiler-team.23748))
  - "Support C23's Variadics Without a Named Parameter" [rust#124048](https://github.com/rust-lang/rust/pull/124048)
- Accepted MCPs
  - No new accepted proposals this time.
- MCPs blocked on unresolved concerns
  - merge: [Add a new `--build-id` flag to rustc (compiler-team#635)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1777545767)
    - @_**|125250** @_**|116107** @_**|125294** @_**|123856**
    - concerns: [other-existing-options (by petrochenkov)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1779597156) [option-name (by wesleywiser)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1785349936)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [single-point-of-failure-via-stream-archival](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1664056989)
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
  - merge: [Stabilize `--env-set` option (rust#119926)](https://github.com/rust-lang/rust/pull/119926#issuecomment-1898766442)
    - @_**|119009** @_**|124288** @_**|123586** @_**|125250** @_**|119031** @_**|124287** @_**|116118**
    - concerns: [other-rustc-vars (by petrochenkov)](https://github.com/rust-lang/rust/pull/119926#issuecomment-1900703005)
  - merge: [allow overwriting the output of `rustc --version` (rust#124339)](https://github.com/rust-lang/rust/pull/124339#issuecomment-2075414901)
    - @_**|248906** @_**|124287** @_**|426609** @_**|116118** @_**|216206** @_**|232957**
    - concerns: [subsequent-crates-io-policy (by wesleywiser)](https://github.com/rust-lang/rust/pull/124339#issuecomment-2113331348)
- Finalized FCPs (disposition merge)
  - No new finished FCP (disposition merge) this time.
- Other teams finalized FCPs
  - "offset: allow zero-byte offset on arbitrary pointers" [rust#117329](https://github.com/rust-lang/rust/pull/117329)

### WG checkins

None

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Add v0 symbol mangling for `f16` and `f128`" [rust#123816](https://github.com/rust-lang/rust/pull/123816)
  - Authored by tgross35
  - Suggests backporting the first [commit](https://github.com/rust-lang/rust/pull/123816/commits/809b84edba988408071630b1e89a8c06be07aeed), low-risk and unblocks updating [compiler_builtins#125016](https://github.com/rust-lang/rust/pull/125016) ([comment](https://github.com/rust-lang/rust/pull/123816#issuecomment-2116383814) and [discussion on Zulip](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/Backport.20.20.23123816.20.28v0.20mangling.20for.20f16.20.26.20f128.29.20to.20beta))
<!--
/poll Approve beta backport of #123816?
approve
decline
don't know
-->
- :beta: "Only make GAT ambiguous in `match_projection_projections` considering shallow resolvability" [rust#125214](https://github.com/rust-lang/rust/pull/125214)
  - Authored by compiler-errors
  - This revert will fix #125196, regression emerged in the latest beta crater run
  - About:
    > In #123537, I tweaked the hack from #93892 to use `resolve_vars_if_possible` instead of
    > `shallow_resolve`. This considers more inference guidance ambiguous but resulted in a crater
    > regressions. I've effectively reverted the change to the old behavior. That being
    > said, I don't like this behavior, but I'd rather keep it for now since #123537 was not meant to
    > make any behavioral changes.
<!--
/poll Approve beta backport of #125214?
approve
decline
don't know
-->
- :beta: "Update to LLVM 18.1.6" [rust#125288](https://github.com/rust-lang/rust/pull/125288)
  - Authored by nikic
  - perf. neutral, notable changes:
    > Fixes #123695 (miscompile with wrapping pointer arithmetic).
    > Fixes #125053 (compiler crash on M1).
    > Also fixes https://bugzilla.redhat.com/show_bug.cgi?id=2226905 (crypto miscompile on s390x)
  - [Big diff](https://github.com/rust-lang/llvm-project/compare/5399a24c66cb6164cf32280e7d300488c90d5765...b31c30a9bb4dbbd13c359d0e2bea7f65d20adf3f) and LLVM 18.1.6 [release notes](https://github.com/llvm/llvm-project/releases/tag/llvmorg-18.1.6)
<!--
/poll Approve beta backport of #125288?
approve
decline
don't know
-->
- No stable nominations for `T-compiler` this time.

[T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Show files produced by `--emit foo` in json artifact notifications" [rust#122597](https://github.com/rust-lang/rust/pull/122597)
  - pending checkboxes from team members
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [5 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [4 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [63 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [34 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [4 P-critical, 2 P-high, 1 P-medium, 2 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 5 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 36 P-high, 100 P-medium, 16 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

These are mostly all regressions in the latest beta crater run (feel free to downgrade priority, if necessary)

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "`-C target_cpu=cortex-a72` (and `-target-cpu=native` on Raspberry Pi) wrongly enables crypto features that are optional on Cortex-A72" [rust#125033](https://github.com/rust-lang/rust/issues/125033)
  - Tracked in [llvm-project#90365](https://github.com/llvm/llvm-project/issues/90365#issuecomment-2117644294)
- "regression: opaque types got hidden types registered from within subtype predicate" [rust#125192](https://github.com/rust-lang/rust/issues/125192)
  - Regressed in #123979, @_**oli** self-assigned so it's on their radar
- "regression: trait bound not satisfied" [rust#125194](https://github.com/rust-lang/rust/issues/125194)
  - [Comment](https://github.com/rust-lang/rust/issues/125194#issuecomment-2116465608) from @**lcnr**: considering reverting in #119820 for one more beta
- "regression: type annotations needed" [rust#125196](https://github.com/rust-lang/rust/issues/125196)
  - Fixed by @_**Michael Goulet (compiler-errors)** in #125194 (thanks!)
- "regression: ambiguous outer attributes" [rust#125199](https://github.com/rust-lang/rust/issues/125199)
  - Comes from #124099, no owner yet for a fix
  - [Question](https://github.com/rust-lang/rust/issues/125199#issuecomment-2122381178) from @_**apiraino**:
    > How do we want to handle the changes in #124099? I don't see a mention of it being aware about breaking changes (PR was rolled up)
    > i.e. just revert or try to fix?

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "False positive and highly misleading suggestions for the `non-local-definitions` lint" [rust#124396](https://github.com/rust-lang/rust/issues/124396)
  - Fixed by #124539, beta-accepted
- "endless loop by running `cargo test` with toolchain 2024-05-14" [rust#125269](https://github.com/rust-lang/rust/issues/125269)
  - @**lcnr** authored fix #125343 (thanks!), review in progress but waiting on #125413 first to fix a test ([comment](https://github.com/rust-lang/rust/pull/125413/files#diff-32f4e070dfb8a097027fb27ee48e089c2a0d94d99d1cf4078d7f579bc7c8cef4R5))

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2024-05-21](https://github.com/rust-lang/rustc-perf/blob/master/triage/2024-05-21.md)

Fairly quiet week with the exception of a very large improvement coming from the switch to `rust-lld` on nightly Linux. This can have very large impacts on benchmarks where linking dominates the build time (e.g., `ripgrep`, `exa`, small binaries like `hello-world`). Aside from that change, there were a few small regressions that were either deemed worth it or are still being investigated.

Triage done by **@rylev**.
Revision range: [9105c57b..1d0e4afd](https://perf.rust-lang.org/?start=9105c57b7f6623310e33f3ee7e48a3114e5190a7&end=1d0e4afd4cac09078e12a232508c3e9f8d42535d&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean   | range           | count |
|:------------------------:|:------:|:---------------:|:-----:|
| Regressions (primary)    | 0.7%   | [0.1%, 2.5%]    | 30    |
| Regressions (secondary)  | 0.5%   | [0.2%, 0.8%]    | 5     |
| Improvements (primary)   | -30.4% | [-71.7%, -0.4%] | 35    |
| Improvements (secondary) | -25.6% | [-70.9%, -0.5%] | 75    |
| All  (primary)           | -16.1% | [-71.7%, 2.5%]  | 65    |


4 Regressions, 1 Improvement, 4 Mixed; 2 of them in rollups
66 artifact comparisons made in total

#### Regressions

Add x86_64-unknown-linux-none target [#125023](https://github.com/rust-lang/rust/pull/125023) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c45e831d8fcd33d656047ba97d263c4b91a00735&end=31026b7fe3e510a646eddeda838d1f0859f892e7&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.6% | [0.2%, 1.0%] | 3     |
| Regressions (secondary)  | 0.4% | [0.4%, 0.4%] | 3     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.6% | [0.2%, 1.0%] | 3     |
- Noise


Rollup of 6 pull requests [#125144](https://github.com/rust-lang/rust/pull/125144) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3cb0030fe9de01eeacb7c03eeef0c51420798cfb&end=ade234d5743795423db6cc7cd52541390a088eab&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.5% | [0.2%, 1.2%] | 3     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.5% | [0.2%, 1.2%] | 3     |


Update `expr` matcher for Edition 2024 and add `expr_2021` nonterminal [#123865](https://github.com/rust-lang/rust/pull/123865) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1a7397988684934ae01a71f524bdfff24895d8cc&end=9b75a4388143a163b77fa7d458e4aa4dd34ac1bd&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.2% | [0.2%, 0.3%] | 5     |
| Regressions (secondary)  | 0.5% | [0.2%, 1.7%] | 7     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.2% | [0.2%, 0.3%] | 5     |
- It seems the primary benchmark affected by this html5ever seems to spend lots of time in expand_crate which could be impacted by this change. 
- Asked authors and reviewer whether this is worth an investigation or not.


Update `unexpected_cfgs` lint for Cargo new `check-cfg` config [#125219](https://github.com/rust-lang/rust/pull/125219) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=be71fd477243f253a735bb35e0cd23cc528cf30a&end=b92758a9aef1cef7b79e2b72c3d8ba113e547f89&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.8% | [0.2%, 2.5%] | 21    |
| Regressions (secondary)  | 0.2% | [0.2%, 0.2%] | 1     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.8% | [0.2%, 2.5%] | 21    |
- Somewhat further fall out from https://github.com/rust-lang/rust/pull/124684. This adds additional output which will slow down benchmarks which emit this warning particularly often.
- We're likely ok with this given this is the "unhappy path".


#### Improvements

Enable `rust-lld` on nightly `x86_64-unknown-linux-gnu` [#124129](https://github.com/rust-lang/rust/pull/124129) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=fa37db51ac2ba8d20eb88079cb3234d0072c5c3a&end=8af67ba01a1b1d95ff375b645ef5a395d3249e09&stat=instructions:u)

| (instructions:u)         | mean   | range           | count |
|:------------------------:|:------:|:---------------:|:-----:|
| Regressions (primary)    | -      | -               | 0     |
| Regressions (secondary)  | -      | -               | 0     |
| Improvements (primary)   | -30.8% | [-71.8%, -0.5%] | 31    |
| Improvements (secondary) | -25.6% | [-70.9%, -0.5%] | 75    |
| All  (primary)           | -30.8% | [-71.8%, -0.5%] | 31    |


#### Mixed

Rollup of 7 pull requests [#125120](https://github.com/rust-lang/rust/pull/125120) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=bdfd941f4dcbe54e0283433ac970febf4092fa6a&end=ac385a5af6d9fa8399a0cec799833cd28324abf8&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 2     |
| Regressions (secondary)  | 0.5%  | [0.3%, 1.0%]   | 12    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.4% | [-0.5%, -0.4%] | 2     |
| All  (primary)           | 0.2%  | [0.2%, 0.2%]   | 2     |
- Caused by https://github.com/rust-lang/rust/pull/125088. Asked the author/reviewers whether this is worth following up on.


Remove bound checks from `BorrowedBuf` and `BorrowedCursor` methods [#123786](https://github.com/rust-lang/rust/pull/123786) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=698293518de49ac79eb7874e97557f8e2eabda06&end=959a67a7f2215d80b55e765d6c4b3f5a711ad484&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.8%  | [0.8%, 0.8%]   | 1     |
| Regressions (secondary)  | 1.3%  | [1.3%, 1.3%]   | 1     |
| Improvements (primary)   | -1.7% | [-1.7%, -1.7%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.5% | [-1.7%, 0.8%]  | 2     |
- Noise


optimize inplace collection of Vec [#123878](https://github.com/rust-lang/rust/pull/123878) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d84b9037541f45dc2c52a41d723265af211c0497&end=12075f04e677de64f740687f601114e2a21e09ca&stat=instructions:u)

| (instructions:u)         | mean   | range           | count |
|:------------------------:|:------:|:---------------:|:-----:|
| Regressions (primary)    | 1.4%   | [0.3%, 2.9%]    | 3     |
| Regressions (secondary)  | 0.3%   | [0.2%, 0.3%]    | 2     |
| Improvements (primary)   | -22.7% | [-37.4%, -0.4%] | 5     |
| Improvements (secondary) | -      | -               | 0     |
| All  (primary)           | -13.7% | [-37.4%, 2.9%]  | 8     |
- Improvements vastly outweigh the regressions which seemed to have returned to baseline after this PR.


Follow-up fixes to `report_return_mismatched_types` [#123812](https://github.com/rust-lang/rust/pull/123812) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1d0e4afd4cac09078e12a232508c3e9f8d42535d&end=e8753914580fb42554a79a4b5c5fb4cc98933231&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.1%  | [0.6%, 1.8%]   | 3     |
| Regressions (secondary)  | 0.2%  | [0.1%, 0.2%]   | 6     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.1% | [-1.1%, -1.1%] | 2     |
| All  (primary)           | 1.1%  | [0.6%, 1.8%]   | 3     |
- Single benchmark with a large regression. Asked author to investigate.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- TODO

## Next week's WG checkins

- @_*WG-async* by @**nikomatsakis** and @**tmandry**
- @_*WG-diagnostics* by @**Esteban Küber** and @**oli**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/khtxxG3CQ5KkoiqKDN_qug)
