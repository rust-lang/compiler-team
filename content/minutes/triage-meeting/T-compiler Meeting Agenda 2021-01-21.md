---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2021-01-21

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "MCP: move compiler/ crates to stable Rust" [compiler-team#358](https://github.com/rust-lang/compiler-team/issues/358)
  - "Add 32-bit and 64-bit stderr/stdout files for ui tests" [compiler-team#365](https://github.com/rust-lang/compiler-team/issues/365)
  - "Add a `NOOP_METHOD_CALL` lint for methods which should never be directly called" [compiler-team#375](https://github.com/rust-lang/compiler-team/issues/375)
  - "MCP: More Cranelift-friendly portable SIMD intrinsics" [compiler-team#381](https://github.com/rust-lang/compiler-team/issues/381)
  - "Debuggable Macro Expansions" [compiler-team#386](https://github.com/rust-lang/compiler-team/issues/386)
  - "Move query implementation outside rustc_middle" [compiler-team#388](https://github.com/rust-lang/compiler-team/issues/388)
  - "Uplift the `invalid_atomic_ordering` lint from clippy to rustc" [compiler-team#390](https://github.com/rust-lang/compiler-team/issues/390)
  - "Staged queries" [compiler-team#391](https://github.com/rust-lang/compiler-team/issues/391)
  - "Do not traverse the HIR to generate metadata" [compiler-team#392](https://github.com/rust-lang/compiler-team/issues/392)
  - "Embed version numbers in backport nominations and regression labels" [compiler-team#393](https://github.com/rust-lang/compiler-team/issues/393)
  - "Add different entry points for x.py" [compiler-team#396](https://github.com/rust-lang/compiler-team/issues/396)
- Pending FCP requests (check your boxes!)
  - No pending FCP requests this time.
- Things in FCP (make sure you're good with it)
  - "rustc: Stabilize `-Zrun-dsymutil` as `-Csplit-debuginfo`" [rust#79570](https://github.com/rust-lang/rust/pull/79570)
- Accepted MCPs
  - "Drop official support for Windows XP" [compiler-team#378](https://github.com/rust-lang/compiler-team/issues/378)
- Finalized FCPs (disposition merge)
  - [T-compiler,T-infra,T-release] "Drop official support for Windows XP" [compiler-team#378](https://github.com/rust-lang/compiler-team/issues/378)
  - [T-libs] "Tracking Issue for `panic_any`" [rust#78500](https://github.com/rust-lang/rust/issues/78500)

### WG checkins

@*WG-traits* checkin by @nikomatsakis and @Jack Huey:

> Last week we held a meeting to discuss our next steps. 
> We were looking specifically at "async fn in traits" and what it would take to support that within the compiler.
> We identified a path of incremental support by enabling other features.
> There are [meeting notes](https://hackmd.io/j8KTAWU2TzC-STlsB8ZSVQ) available here and a recording will be posted.
> We've also been making progress towards refactoring and type library work;
> the [2021-01-12 meeting](https://zulip-archive.rust-lang.org/144729wgtraits/40141meeting20210112.html)
> contains a good summary. -nikomatsakis
> We're also planning to try out the "sprint week" instead of the 6 week sprints we have been using so far. We haven't set the dates yet, though.

## Beta-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler)
- "Make hitting the recursion limit in projection non-fatal" [rust#81055](https://github.com/rust-lang/rust/pull/81055)
  - Opened by @**Matthew Jasper**
  - Assigned to @**nikomatsakis** not yet r'ed
  - This patch goes with merged PR [#80953](https://github.com/rust-lang/rust/issues/80953) (infinite loop bug in caching normalization of projections) making reaching the recursion limit not fatal.
  - This should fix regression not caught in [the crater run](https://github.com/rust-lang/rust/issues/80953#issuecomment-759347129) and appeared in stable 1.49 and that breaks compiling production code
  - related to PR [#80246](https://github.com/rust-lang/rust/pull/80246) already merged

- "rustc_parse_format: Fix character indices in find_skips" [rust#81071](https://github.com/rust-lang/rust/pull/81071)
  - opened by @**osa1** 
  - fixes [#81006](https://github.com/rust-lang/rust/issues/81006), a `P-medium` issue, incorrect format string/argument mismatch triggering an ICE 
  - r'ed by @**Esteban Küber**, [suggests beta backport](https://github.com/rust-lang/rust/pull/81071#issuecomment-761605595) to deploy the patch sooner and reduce user experiencing this error

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3Alibs-impl)
- No beta nominations for `libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## Stable-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- "Make hitting the recursion limit in projection non-fatal" [rust#81055](https://github.com/rust-lang/rust/pull/81055)
  - same as beta nomination 

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3Alibs-impl)
- No stable nominations for `libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "MIR-OPT: Pass to deduplicate blocks" [rust#77551](https://github.com/rust-lang/rust/pull/77551)
  - @**oli** has some thoughts about [merging this PR](https://github.com/rust-lang/rust/pull/77551#issuecomment-721142677) (the performance diff seems to be a net negative)
  - [previous discussion](https://github.com/rust-lang/rust/pull/77551#issuecomment-752986652)
  - @**oli** suggests to [put it into mir-opt-level=3 and merge](https://github.com/rust-lang/rust/pull/77551#issuecomment-753640105), then re-evaluate the spans and other performance improvements

[libs-impl](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3Alibs-impl)
- No PRs waiting on `libs-impl` this time.

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [60 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+)
  - [38 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 3 P-high, 3 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 6 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 38 P-high, 84 P-medium, 9 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3Alibs-impl)
- No `P-critical` issues for `libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high)
- "Cross-compiling Rust to s390x yields a faulty toolchain" [rust#80810](https://github.com/rust-lang/rust/issues/80810)
  - Opened by [Jakob-Naucke](https://github.com/Jakob-Naucke)
  - Assigned to @**pnkfelix**
  - mentioned last week
  - seems to affect specific s390x or to be related to endianess
  - Need to checked against PR [#80732](https://github.com/rust-lang/rust/pull/80732) (ready for review)
- "regression 1.50: Borrow checker reports function param as not living long enough" [rust#80949](https://github.com/rust-lang/rust/issues/80949)
  - opened by @**rylev**, emerged in crater run for 1.50
  - [Smallest MCVE found](https://github.com/rust-lang/rust/issues/80949#issuecomment-759432282) points to PR [#78373](https://github.com/rust-lang/rust/pull/78373)
  - @**Matthew Jasper** comments that pr #78373 [caused MIR to have one fewer basic block](https://github.com/rust-lang/rust/issues/80949#issuecomment-760019484) which reduced borrowck precision
  - @**Matthew Jasper** added [more details to the PR](the question of a revert for later, after we get more data about impact regression has on ecosystem)
- "regression 1.50: deny after forbid breaks build" [rust#80988](https://github.com/rust-lang/rust/issues/80988)
  - Opened by @**rylev**, emerged in crater run for 1.50 
  - possibly related to issue [#77713](https://github.com/rust-lang/rust/issues/77713)
  - @**simulacrum** self assigns this issue, points to PR [#78864](https://github.com/rust-lang/rust/pull/78864) and figures out [the root cause](https://github.com/rust-lang/rust/issues/80988#issuecomment-761622611)
  - discussed in the [T-lang meeting](https://github.com/rust-lang/rust/issues/80988#issuecomment-763096218), the decision would be to close this
  - @**pnkfelix** [comments](https://github.com/rust-lang/rust/issues/80988#issuecomment-763874759) that the specific issue discussed in the RFC is probably best dealt in issue [#81218](https://github.com/rust-lang/rust/issues/81218)
- "beta regression: forbid(warnings) interacts poorly with common derives." [rust#81218](https://github.com/rust-lang/rust/issues/81218)
    - see :point_up_2: but to address specifically `forbid` and `derive` interacting surprisingly

## Performance logs

[2021-01-20 Triage full log](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-01-20.md)

A busy week with more performance gains than regressions. These changes included one very large [perf gain](https://github.com/rust-lang/rust/issues/79670) and one very large [perf regression](https://github.com/rust-lang/rust/issues/78407) in stress test benchmarks that seem to only produce mild perf changes in real world use cases. 

Triage done by **@rylev**.

3 Regressions, 5 Improvements, 4 Mixed
2 of them in rollups

#### Regressions

Use tcx.symbol_name when determining clashing extern declarations. [#80009](https://github.com/rust-lang/rust/issues/80009)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=704e47f78b4c8801a3c76f235a5a152e1b60b300&end=7a9b552cb1621c9c57898d147228aab32b65a7c3&stat=instructions:u) (up to 1.3% on `incr-full` builds of `externs-check`)
- Fix for [overeager warning in clashing extern declarations](https://github.com/rust-lang/rust/issues/79581).
- Unsure how much performance can be gained back but an allocation is occuring that isn't strictly necessary. Perhaps removing it will help.
- PR author was pinged about the regression [here](https://github.com/rust-lang/rust/pull/80009#issuecomment-763526902)

Update cargo [#80974](https://github.com/rust-lang/rust/issues/80974)
- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=18ec4a9a74731ddc6a453ca29c0836f61dbcb8d4&end=e48eb37b9470a26748c916f7153569906f3c67bf&stat=instructions:u) (up to 5.2% on `incr-unchanged` builds of `token-stream-stress-opt`)
- Purely an update of Cargo. Not sure why this is causing issues.

implement ptr::write without dedicated intrinsic [#80290](https://github.com/rust-lang/rust/issues/80290)
- Small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=63a83c5f55801b17b77adf690db397d17c706c48&end=492b83c6971c390af7a42932869502224ef55ef7&stat=instructions:u) (up to 1.2% on `full` builds of `regex-debug`)
- Small regex-debug full builds regression specifically in the `LLVM_module_codegen_emit_obj` query. This largely affects debug builds due to this previously being an instrinsic but now requiring LLVM to optimize it to its previously efficient form.
- An idea for gaining the performance back can be found [here](https://github.com/rust-lang/rust/pull/80290#issuecomment-763583590)

#### Improvements

- Turn type inhabitedness into a query to fix `exhaustive_patterns` perf [#79670](https://github.com/rust-lang/rust/issues/79670)
- Reintroduce hir::ExprKind::If [#79328](https://github.com/rust-lang/rust/issues/79328)
- Use probe-stack=inline-asm in LLVM 11+ [#77885](https://github.com/rust-lang/rust/issues/77885)
- Try to avoid locals when cloning into Box/Rc/Arc [#80824](https://github.com/rust-lang/rust/issues/80824)
- BTreeMap: convert search functions to methods [#81159](https://github.com/rust-lang/rust/issues/81159)

#### Mixed

- Make CTFE able to check for UB... [#78407](https://github.com/rust-lang/rust/issues/78407)
- Rollup of 10 pull requests [#80960](https://github.com/rust-lang/rust/issues/80960)
- Rollup of 13 pull requests [#81113](https://github.com/rust-lang/rust/issues/81113)
- Remove PredicateKind and instead only use Binder<PredicateAtom> [#80679](https://github.com/rust-lang/rust/issues/80679)

#### Nags requiring follow up

* Still need a follow up to one of last weeks [perf regressions](https://github.com/rust-lang/rust/pull/80441)

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated issues for `T-compiler` this time.

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3Alibs-impl)
- No nominated issues for `libs-impl` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "RFC: Checking conditional compilation at compile time" [rfcs#3013](https://github.com/rust-lang/rfcs/pull/3013)
  - [review by](https://github.com/rust-lang/rfcs/pull/3013#pullrequestreview-568757930) by @**Wesley Wiser** 
  - RFC author implemented new suggestions