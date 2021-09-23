---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2020-07-02

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- We have a planning scheduled for tomorrow (friday 3rd), but [tomorrow is a US holiday and @**nikomatsakis** was asking if we are having this meeting or we should skip it](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/2020-07-03.20Planning.20meeting)
- New MCPs (take a look, see if you like them!)
    - "Change `ty::Const` to an integer tree representation" [compiler-team#323](https://github.com/rust-lang/compiler-team/issues/323)
    - "Infer hidden types without replacing with an inference variable" [compiler-team#325](https://github.com/rust-lang/compiler-team/issues/325)
- Old MCPs (not seconded, take a look)
    - "Integration of the Cranelift backend with rustc" [compiler-team#270](https://github.com/rust-lang/compiler-team/issues/270)
    - "Decentralize queries" [compiler-team#277](https://github.com/rust-lang/compiler-team/issues/277)
    - "--extern-location to specify where an --extern dependency is defined" [compiler-team#303](https://github.com/rust-lang/compiler-team/issues/303)
    - "Move Rust provided objects, libraries and binaries meant for self-contained linkage to separate directory" [compiler-team#310](https://github.com/rust-lang/compiler-team/issues/310)
    - "Add future-incompat entries to json diagnostic output" [compiler-team#315](https://github.com/rust-lang/compiler-team/issues/315)
    - "MCP: Reorganize the rust-lang/rust repo directory structure" [compiler-team#316](https://github.com/rust-lang/compiler-team/issues/316)
- Pending FCP requests (check your boxes!)
    - "Stabilize control-flow-guard codegen option" [rust#73893](https://github.com/rust-lang/rust/pull/73893)
- Things in FCP (make sure you're good with it)
    - "illumos toolchain builds" [compiler-team#279](https://github.com/rust-lang/compiler-team/issues/279)
    - "RISC-V Linux Tier 2 Host support" [compiler-team#312](https://github.com/rust-lang/compiler-team/issues/312)
    - "Switch from libbacktrace to gimli" [compiler-team#313](https://github.com/rust-lang/compiler-team/issues/313)
    - "`#![deny(unsafe_op_in_unsafe_fn)]` in libcore and libstd" [compiler-team#317](https://github.com/rust-lang/compiler-team/issues/317)
    - "-Zmir-opt-level Reform" [compiler-team#319](https://github.com/rust-lang/compiler-team/issues/319)
    - "Move CONTRIBUTING.md to rustc-dev-guide and instead point to Getting Started" [compiler-team#320](https://github.com/rust-lang/compiler-team/issues/320)
    - "mv std libs to std/" [rust#73265](https://github.com/rust-lang/rust/pull/73265)
- Accepted MCPs
    - "Support const parameters in type dependent paths" [compiler-team#304](https://github.com/rust-lang/compiler-team/issues/304)

### WG checkins

@*WG-traits* checkin by @**Jack Huey**:
>* We are finishing up 2020 sprint 3 (ends Jul. 7th)
>* Set up weekly releases of Chalk
>    * Needed for rustc integration and rust-analyzer publishing
>* rustc work
>    * Work by @lcnr on refactoring `Predicate`, including interning and introducing `ForAll`
>    * Work by Matthew Jaspar pushing GATs
>    * Chalk integration is getting updated as new Chalk features are integrated
>        * Still quite a bit to be done, but progress is being made
>* Chalk work
>    * Two separate solvers - SLG and recursive
>        * We eventually want to settle on one, but for now, work is being done on both
>    * Some initial work on writing `.chalk` files for reproducing issues
>    * Getting close to supporting all builtin types and traits
>        * Recently added `Fn` family and closures
>        * Support for `enum`s has a PR
>        * `Generator`/`GeneratorWitness` work being done by @Aaron Hill
>        * Need full support for auto traits of builtin types
>        * `Unpin`/`CoerceUnsized`/`DispatchFromDyn` traits need to be implemented
>        * Subtyping is being worked on with WIP PR
>* Overall, the past 3 sprints have been super productive
>    * Lots of interest and activity
>* Taking a summer break from meetings & sprints, picking back up in September

## Beta-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler)
- "Change how compiler-builtins gets many CGUs" [rust#73136](https://github.com/rust-lang/rust/pull/73136)
  - This one was discussed and approved on our last meeting but is lacking the `beta-accepted` label. 
- "Reoder order in which MinGW libs are linked to fix recent breakage" [rust#73184](https://github.com/rust-lang/rust/pull/73184)
  - Approved on our last meeting but lacks `beta-accepted` label.
- "Perform obligation deduplication to avoid buggy `ExistentialMismatch`" [rust#73485](https://github.com/rust-lang/rust/pull/73485)
  - Approved on our last meeting but PR wasn't merged at that time, now it is already merged so it can be labelled with `beta-accepted`.
- "rustc_lexer: Simplify shebang parsing once more" [rust#73596](https://github.com/rust-lang/rust/pull/73596)
  - Fixes [a beta regression about parsing an empty shebang (admittedly questionable code)](https://github.com/rust-lang/rust/issues/73250)

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3Alibs-impl)
- No beta nominations this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc)
- "rustdoc: Fix doc aliases with crate filtering" [rust#73644](https://github.com/rust-lang/rust/pull/73644)
  - Approved on our last meeting but lacks `beta-accepted` label.

:back: / :shrug: / :hand:

## Stable-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- "Perform obligation deduplication to avoid buggy `ExistentialMismatch`" [rust#73485](https://github.com/rust-lang/rust/pull/73485)
  - Also beta nominated
  - Approved on our last meeting but PR wasn't merged at that time, now it is already merged so it can be labelled with `stable-accepted`.

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3Alibs-impl)
- No stable nominations this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No stable nominations this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Implement `--extern-location`" [rust#72603](https://github.com/rust-lang/rust/pull/72603)
  - [@**nikomatsakis** thinks it's reasonable to land this even though we've not figured out the cargo integration story, but he would reluctant to stabilize, however, until we have a clearer picture of what's happening with cargo.](https://github.com/rust-lang/rust/pull/72603#issuecomment-649705763)
  - Last minute edit: [MCP was just seconded](https://github.com/rust-lang/compiler-team/issues/303)

[libs-impl](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3Alibs-impl)
- No PRs waiting on libs-impl this time.

## Issues of Note

### Short Summary

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+)
  - [2 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [47 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+)
  - [25 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 4 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 1 P-high, 6 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 13 P-high, 44 P-medium, 4 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "cannot create local mono-item for DefId" [rust#73537](https://github.com/rust-lang/rust/issues/73537)
  - Discussed last week
  - [Labeled as `P-critical` to raise awareness](https://rust-lang.zulipchat.com/#narrow/stream/227806-t-compiler.2Fwg-prioritization/topic/I-prioritize.20.2373537.20cannot.20create.20local.20mono-item.20for.20DefId)
  - [This seems to be fixed seeing some of the latest comments](https://github.com/rust-lang/rust/issues/73537#issuecomment-649364509), still needs a test.
  - Maybe we should lower the priority to `P-medium` or something that represents the priority of lacking a test in the compiler.
- "Nightly ICEs trying to normalize during a cast" [rust#73747](https://github.com/rust-lang/rust/issues/73747)
  - Unassigned
  - nightly regression, ICE on previously accepted code
  - still needs MCVE and bisection
  - current repro code uses WinRT and thus is only reproducible on Windows

[libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3Alibs-impl)
- No P-critical issues for libs-impl this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No P-critical issues for T-rustdoc this time.

### Unassigned P-high regressions

[Beta regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-beta+P-high+no%3Aassignee)
- No unassigned P-high beta regressions this time.

[Nightly regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-nightly+P-high+no%3Aassignee)
- No unassigned P-high nightly regressions this time.

## Performance logs

[Triage done by njn](https://github.com/rust-lang/rustc-perf/tree/master/triage#triage-logs). Latest revision: 0ca7f74dbd23a3e8ec491cd3438f490a3ac22741.
Three regressions, two of them on rollups; two improvements, one on a rollup.

Regressions:
- [Rollup of 13 pull requests](https://github.com/rust-lang/rust/pull/73756#issuecomment-651422253)
  ([instructions](https://perf.rust-lang.org/compare.html?start=14e65d5e95da0f7e4f9127cf1598fa46f33972e8&end=9672b5e95c520774cc17bffc7031c80a1bcf4b4c&stat=instructions:u)):
  Up to 1.7% losses on many benchmarks, affecting `incr-unchanged` runs the
  most. Might be due to [#73102](https://github.com/rust-lang/rust/pull/73102)
  or [#73597](https://github.com/rust-lang/rust/pull/73597).
- [Rollup of 11 pull requests](https://github.com/rust-lang/rust/pull/73669#issuecomment-651421194)
  ([instructions](https://github.com/rust-lang/rust/compare/ff5b446d2fdbd898bc97a751f2f72858de185cf1...0c04344d86f9598f20d9ec86fe87ea2a5d6ff8e6)):
  Up to 2.1% losses on a few benchmarks, mostly on `incr-unchanged` runs.
- [Always capture tokens for `macro_rules!` arguments](https://github.com/rust-lang/rust/pull/73293#issuecomment-651423672)
  ([instructions](https://github.com/rust-lang/rust/compare/0c04344d86f9598f20d9ec86fe87ea2a5d6ff8e6...3c90ae8404b6b83bc3cba35840ddf7edd500cc86), [max-rss](https://perf.rust-lang.org/compare.html?start=0c04344d86f9598f20d9ec86fe87ea2a5d6ff8e6&end=3c90ae8404b6b83bc3cba35840ddf7edd500cc86&stat=max-rss)):
  Up to 6.1% losses on the artificial `deep-vector` benchmark, and memory
  increases on the same benchmark.

Improvements:
- [Rollup of 9 pull requests](https://github.com/rust-lang/rust/pull/73643#issuecomment-651427381)
  ([instructions](https://github.com/rust-lang/rust/compare/3b1c08c68ccc2c222f84384c836b5e167e2bc241...1557fb031b272b4c5bfcc7de5df7eddc7b36a584)):
  Up to 13.6% wins on `wg-grammar`, tiny wins on a couple of other benchmarks.
- [Revert PR #72389 - "Explain move errors that occur due to method calls involving `self`"](https://github.com/rust-lang/rust/pull/73594)
  ([instructions](https://github.com/rust-lang/rust/compare/6bb3dbfc6c6d8992d08431f320ba296a0c2f7498...cbf356a1a5677b1c073f09ba833d8247c7ed01aa)):
  Up to 3.1% wins on a few benchmarks.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "Some `NodeId`/`LocalDefId` don't have a corresponding `HirId`" [rust#71104](https://github.com/rust-lang/rust/issues/71104)
  - Unassigned
  - Blocks a rustdoc feature: intra-doc links.
  - Has no clear path for a fix, thus would benefit from discussion in a T-compiler meeting.
  - Issue raised when trying to remove `DUMMY_HIR_ID`
  - Has a proposed fix by @_**Joshua Nelson**: #73566
- "Inherit `#[stable(..)]` annotations in enum variants and fields from its item" [rust#71481](https://github.com/rust-lang/rust/pull/71481)
  - Assigned to: @**Matthew Jasper**
  - Is a PR to allow stability attributes flow down in enums to their variants and fields
  - Nominated because it's controversial
    - [@**Vadim Petrochenkov** believes is not a good idea](https://github.com/rust-lang/rust/pull/71481#issuecomment-625423500)
    - [@**nagisa** believes it's dangerous and also limits our possibilities in the future](https://github.com/rust-lang/rust/pull/71481#discussion_r436266259)
    - [@**nikomatsakis** expressed that we might accidentally stabilize struct fields without intending to](https://github.com/rust-lang/rust/pull/71481#discussion_r439594190)
- "Rename TypeckTables to TypeckResults." [rust#72983](https://github.com/rust-lang/rust/pull/72983)
  - This PR changes from `TypeckTables` to `TypeckResults` and it's already r+'d
  - [@**nikomatsakis** thinks that the name is objectively better here](https://github.com/rust-lang/rust/pull/72983#issuecomment-652498948)
  - Nominated to draw attention to it, people should be aware of the change 

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3Alibs-impl)
- No nominated issues for libs-impl this time.