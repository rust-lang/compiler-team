---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2021-02-04

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Tomorrow at <time:2021-02-05T12:00:00-03:00> Compiler Team Design Meeting: [perf.lo site review](https://github.com/rust-lang/compiler-team/issues/389)
- Next Thursday **February, the 11th**: release of next stable 1.50 
- 🎉 [David Wood and Jack Huey are now compiler team members](https://github.com/rust-lang/team/pull/525) 🎉
- New MCPs (take a look, see if you like them!)
  - "rustdoc is using rustc_ast_pretty, would it be possible to make it somewhat "stable"?" [compiler-team#403](https://github.com/rust-lang/compiler-team/issues/403)
- Old MCPs (not seconded, take a look)
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
  - "Add 32-bit and 64-bit stderr/stdout files for ui tests" [compiler-team#365](https://github.com/rust-lang/compiler-team/issues/365)
  - "Add a `NOOP_METHOD_CALL` lint for methods which should never be directly called" [compiler-team#375](https://github.com/rust-lang/compiler-team/issues/375)
  - "refactor the unsafe checking to work on the THIR" [compiler-team#402](https://github.com/rust-lang/compiler-team/issues/402)
  - "Distribute rustc_codegen_cranelift as rustup component" [compiler-team#405](https://github.com/rust-lang/compiler-team/issues/405)
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - [T-libs] "Tracking Issue for feature(int_bits_const): <integer>::BITS" [rust#76904](https://github.com/rust-lang/rust/issues/76904)
  - [T-libs] "Implement io::Seek for io::Empty" [rust#78044](https://github.com/rust-lang/rust/pull/78044)
  - [T-libs] "Stabilize Arc::{increment,decrement}_strong_count" [rust#79285](https://github.com/rust-lang/rust/pull/79285)
  - [T-libs] "Stabilize `peekable_next_if`" [rust#80011](https://github.com/rust-lang/rust/pull/80011)
  - [T-libs] "stabilise `cargo test -- --include-ignored`" [rust#80053](https://github.com/rust-lang/rust/pull/80053)
  - [T-libs] "Implement missing `AsMut<str>` for `str`" [rust#80279](https://github.com/rust-lang/rust/pull/80279)
  - [T-libs] "Stabilize by-value `[T; N]` iterator `core::array::IntoIter`" [rust#80470](https://github.com/rust-lang/rust/pull/80470)
  - [T-libs] "Add Box::downcast() for dyn Any + Send + Sync" [rust#80945](https://github.com/rust-lang/rust/pull/80945)
  - [T-libs] "Stabilize `core::slice::fill_with`" [rust#81048](https://github.com/rust-lang/rust/pull/81048)
  - [T-libs] "Remove requirement that forces symmetric and transitive PartialEq impls to exist" [rust#81198](https://github.com/rust-lang/rust/pull/81198)
### WG checkins

- @*WG-rustc-dev-guide* by @**Santiago Pastorino**
>- 🎉 New members! [@camelid](https://github.com/rust-lang/team/pull/504), [@igaray](https://github.com/rust-lang/team/pull/503) and [@rylev](https://github.com/rust-lang/team/issues/532) joined the WG 🎉
>- We are starting to plan on working on a walkthrough section. That would be a section of the guide where we show Rust code and show what the compiler is doing and how is transforming the data.
>- There are [41 merged PRs since our last check-in](https://github.com/rust-lang/rustc-dev-guide/pulls?q=is%3Apr+is%3Aclosed+sort%3Aupdated-desc+updated%3A%3E2020-12-10+) and [4 WIP PRs](https://github.com/rust-lang/rustc-dev-guide/pulls)
>
>### Most notable changes
>
>- Document how to stabilize a library feature [#1036](https://github.com/rust-lang/rustc-dev-guide/pull/1036)
>- Note that `x.py check` now allows using any stage [#1025](https://github.com/rust-lang/rustc-dev-guide/pull/1025)
>- Add a note about UI test entry limitation [#1019](https://github.com/rust-lang/rustc-dev-guide/pull/1019)
>- Make instructions for configuring compiler for debug more explicit [#1005](https://github.com/rust-lang/rustc-dev-guide/pull/1005)
>- Clarify that `check` uses a different stage than `build` [#999](https://github.com/rust-lang/rustc-dev-guide/pull/999)
>- Update logging section and explain `RUSTC_LOG_COLOR` [#997](https://github.com/rust-lang/rustc-dev-guide/pull/997)
>- [Fixes #778] Added and reorganized lecture links [#993](https://github.com/rust-lang/rustc-dev-guide/pull/993)
>- Document `error-pattern` header [#989](https://github.com/rust-lang/rustc-dev-guide/pull/989)
>
>### Most notable WIPs
>
>- Add chapter on libs and metadata. [#1044](https://github.com/rust-lang/rustc-dev-guide/pull/1044)
>- Document lang items [#978](https://github.com/rust-lang/rustc-dev-guide/pull/978)

- @*wg-incr-comp* by @**Wesley Wiser**
> We've restarted our bi-weekly meetings after skipping a few at the end of last year for the holidays.
>
> There's been a lot of work around the incremental/query system in rustc recently:
>
>   - @cjgillot has been working on moving HIR attributes into a side table instead of storing them directly on various HIR types with the goal of reducing incr-comp invalidations due to attributes changing. [#79519](https://github.com/rust-lang/rust/pull/79519)
>   - @tgnottingham has been doing a lot of work to reduce memory usage, improve performance and improve code quality :tada: [#80957](https://github.com/rust-lang/rust/pull/80957), [#80602](https://github.com/rust-lang/rust/pull/80602), [#80463](https://github.com/rust-lang/rust/pull/80463), [#80177](https://github.com/rust-lang/rust/pull/80177) and [#79589](https://github.com/rust-lang/rust/pull/79589)
>   - @mw has been experimenting with writing a hash table that uses the same binary representation both on disk and in-memory with goal of reducing serialization and deserialization costs for the `DefPathTable`. [Zulip thread](https://rust-lang.zulipchat.com/#narrow/stream/241847-t-compiler.2Fwg-incr-comp/topic/Lazy.20DefPathTable.20decoding), [hash table implementation](https://github.com/michaelwoerister/odht)
>
> We've also spent some time discussing ideas for the upcoming compiler team sprint which we will continue doing.

## Beta-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler)
- "Remove incorrect `delay_span_bug`" [rust#81532](https://github.com/rust-lang/rust/pull/81532)
    - opened by @**Esteban Küber**, not yet r'ed
    - Removes invalid `delay_span_bug` that was introduced in [rust#70998](https://github.com/rust-lang/rust/pull/70998)
    - Nominated for beta and stable
    - @**pnkfelix** r+'ed
- "introduce future-compatibility warning for forbidden lint groups" [rust#81556](https://github.com/rust-lang/rust/pull/81556)
    - opened by @**nikomatsakis**
    - @**pnkfelix** r+'ed
    - `Explanation` section is missing in documentation, causing the [build errors](https://github.com/rust-lang/rust/pull/81556#issuecomment-770230801)
    - Fixes two `P-high` regressions, [rust#80988](https://github.com/rust-lang/rust/issues/80988), [rust#81218](https://github.com/rust-lang/rust/issues/81218) caused by [rust#78864](https://github.com/rust-lang/rust/pull/78864)

:back: / :shrug: / :hand:

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-libs-impl)
- No beta nominations for `libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## Stable-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- "Remove incorrect `delay_span_bug`" [rust#81532](https://github.com/rust-lang/rust/pull/81532)
    - See above in "Beta-nominations"

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-libs-impl)
- No stable nominations for `libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- No PRs waiting on `T-compiler` this time.

[libs-impl](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-libs-impl)
- No PRs waiting on `libs-impl` this time.

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [63 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+)
  - [38 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 5 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 37 P-high, 88 P-medium, 10 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-libs-impl)
- "File implementation on Windows has unsound methods" [rust#81357](https://github.com/rust-lang/rust/issues/81357)
  - an unsoundness on how Rust handles the Windows I/O API, should be probably marked as critical. we don't have a MVCE from a Windows user, but possibly it's been there since long time. 
  - [libs meeting report](https://github.com/rust-lang/rust/issues/81357#issuecomment-768607504) by @**Ashley Mannix**: seems the consensus is ack one of the options suggested by the issue reporter (call `GetOverlappedResult` and if it returns error, call `abort()`)
  - not yet assigned, @**Arlie Davis**  [volunteered last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.20meeting.5D.202021-01-28.20.2354818/near/224342001) to have a look at it

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high)
- "Cross-compiling Rust to s390x yields a faulty toolchain" [rust#80810](https://github.com/rust-lang/rust/issues/80810)
  - Opened by [Jakob-Naucke](https://github.com/Jakob-Naucke)
  - previously discussed, assigned to @**pnkfelix**
  - Note: this issue is up for grab for anyone willing to follow it up
  - seems to affect specifically s390x or to be related to endianess
  - Issue not yet completely clear, could be checked against PR [#80732](https://github.com/rust-lang/rust/pull/80732) (not ready for merge yet)
  - @**cuviper** comments that this issue [could also be unrelated to endianess](https://github.com/rust-lang/rust/issues/80810#issuecomment-761253970)
- "regression 1.50: Duplicate symbol linker error" [rust#80951](https://github.com/rust-lang/rust/issues/80951)
    - opened by @**rylev** 
    - regression on crate [utxo-oracle](https://github.com/devrandom/utxo-oracle) that compiled on 1.49 (see [logs](https://crater-reports.s3.amazonaws.com/beta-1.50-1/beta-2021-01-01/gh/devrandom.utxo-oracle/log.txt))
    - @**Frank Steffahn** adds that [doesn't look like a genuine regression](https://github.com/rust-lang/rust/issues/80951#issuecomment-768602173)
    - @**apiraino** asks (out of curiosity): the crate imports a bitcoin library, the project does not seems very active and the [scope is unclear](https://github.com/devrandom/utxo-oracle/blob/master/src/main.rs) to me. Worth checking when was this crate added and why? Does it have specific code to be monitored between releases?
- "regression 1.50: Borrow checker reports function param as not living long enough" [rust#80949](https://github.com/rust-lang/rust/issues/80949)
  - opened by @**rylev**, emerged in crater run for 1.50
  - [Smallest MCVE found](https://github.com/rust-lang/rust/issues/80949#issuecomment-759432282) points to PR [#78373](https://github.com/rust-lang/rust/pull/78373)
  - @**Matthew Jasper** comments that pr #78373 [caused MIR to have one fewer basic block](https://github.com/rust-lang/rust/issues/80949#issuecomment-760019484) which reduced borrowck precision
  - @**Matthew Jasper** added [additional details ](https://github.com/rust-lang/rust/issues/80949#issuecomment-760417066)
  - @**pnkfelix** is working on PR [rust#81257](https://github.com/rust-lang/rust/pull/81257) to revert [rust#78373](https://github.com/rust-lang/rust/pull/78373) and fix this issue
- "regression 1.50: deny after forbid breaks build" [rust#80988](https://github.com/rust-lang/rust/issues/80988)
  - Opened by @**rylev**, emerged in crater run for 1.50 
  - Assigned to @**pnkfelix**
  - possibly related to issue [#77713](https://github.com/rust-lang/rust/issues/77713)
  - @**simulacrum** points to PR [#78864](https://github.com/rust-lang/rust/pull/78864) and figures out [the root cause](https://github.com/rust-lang/rust/issues/80988#issuecomment-761622611)
  - discussed in the [T-lang meeting](https://github.com/rust-lang/rust/issues/80988#issuecomment-763096218), the decision would be to close this
  - @**pnkfelix** [comments](https://github.com/rust-lang/rust/issues/80988#issuecomment-763874759) that the specific issue discussed in the RFC is probably best dealt in issue [#81218](https://github.com/rust-lang/rust/issues/81218)
  - ***final-comment-period is canceled***
  - will be a future-incompatibility warning, @**nikomatsakis** is working on make it so
- "beta regression: forbid(warnings) interacts poorly with common derives." [rust#81218](https://github.com/rust-lang/rust/issues/81218)
    - Spawned from above issue [rust#80988](https://github.com/rust-lang/rust/issues/80988) ([discussed last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.20meeting.5D.202021-01-21.20.2354818/near/223527544)) to address specifically `forbid` and `derive` interacting surprisingly
    - @**simulacrum** [added some comments](https://github.com/rust-lang/rust/issues/81218#issuecomment-766500893) after last week's discussion
    - Assigned to @**simulacrum**
    - same for [rust#80988](https://github.com/rust-lang/rust/issues/80988)  @**nikomatsakis** is working to make it a future-incompatibility warning

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee)
- No unassigned P-high nightly regressions

## Performance logs

> [2021-02-02 Triage Log](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-02-02.md)

Another week dominated by rollups, most of which had relatively small changes with unclear causes embedded. Overall no major changes in performance this week.

Triage done by **@simulacrum**.

2 Regressions, 1 Improvements, 1 Mixed
3 of them in rollups

#### Regressions

Rollup of 12 pull requests [#81625](https://github.com/rust-lang/rust/issues/81625)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=70b18bc2cbac4712020019f5bf57c00905373205&end=02b85d722050d61b40ae9746b3bac54ab55b1056&stat=instructions:u) (up to 3.3% on `incr-unchanged` builds of `match-stress-enum-check`)
- Unclear responsible PR. Nothing in this rollup stands out, and self-profile
  information does not reveal obvious causes.

Add visitors for checking #[inline] [#80641](https://github.com/rust-lang/rust/issues/80641)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=02b85d722050d61b40ae9746b3bac54ab55b1056&end=d4e3570db4c007089035b833cc20c7fc2f8cb32f&stat=instructions:u) (up to 1.7% on `incr-unchanged` builds of `unicode_normalization-check`)
- Primarily limited to incremental benchmarks; we are simply visiting more nodes
  for this check, so it is unsurprising that we take a performance hit.

#### Improvements

- Rollup of 13 pull requests [#81461](https://github.com/rust-lang/rust/issues/81461)

#### Mixed

- Rollup of 10 pull requests [#81493](https://github.com/rust-lang/rust/issues/81493)

#### Nags requiring follow up

From last week:

- Deprecate in future regression [#80958](https://github.com/rust-lang/rust/pull/80958#issuecomment-767837811)
    - Some commentary in response but seems likely this will not be addressed
      one way or another.
- Waiting on [response](https://github.com/rust-lang/rust/pull/80919#issuecomment-767854932) to inquiry.
    - Some investigation in [#81476](https://github.com/rust-lang/rust/issues/81476), potentially regression was down to a bugfix.
- Regression in prevent query cycles in the MIR inliner - expected? [#68828](https://github.com/rust-lang/rust/pull/68828#issuecomment-767872361)
    - No updates yet from  @**oli** on their investigation.


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "Demote x86_64-rumprun-netbsd target" [rust#81514](https://github.com/rust-lang/rust/issues/81514)
    - Demote due to inactivity of the rumprun project
    - Nominated by @**nagisa**
- "Adding diesel to the cargetest suite" [rust#81507](https://github.com/rust-lang/rust/issues/81507)
    - opened by @**weiznich** 
    - Came up in [rust#79560](https://github.com/rust-lang/rust/issues/79560#issuecomment-767542364)
    - Last PR to add diesel to cargotest was closed due to a missing FCP policy for cargotest targets
    - @**pnkfelix** [doesn't want this to be blocked until there's a proper policy](https://github.com/rust-lang/rust/pull/81507#issuecomment-771255829)
    - @**simulacrum** [considers a temporary policy for this case, e.g. a "T-compiler and T-infra FCP"](https://github.com/rust-lang/rust/pull/81507#issuecomment-771256999)

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-libs-impl)
- No nominated issues for `libs-impl` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "RFC: Checking conditional compilation at compile time" [rfcs#3013](https://github.com/rust-lang/rfcs/pull/3013)
  - [review by](https://github.com/rust-lang/rfcs/pull/3013#pullrequestreview-568757930) by @**Wesley Wiser** 
  - RFC author implemented suggestions, waiting for feedback


