---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2023-07-20

## Announcements

- Proposal from @**apiraino**: removing T-rustdoc backport nominations from T-compiler meeting's agenda, T-rustdoc [now has their own meetings](https://rust-lang.zulipchat.com/#narrow/stream/266220-rustdoc/topic/T-rustdoc.20backports/near/374828518) and can take on that. Is everybody happy with that?
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- [wg-async reading club: Tree-Structured Concurrency](https://www.google.com/calendar/event?eid=N211N3RrYzVqcnVvNnBycGFrcW9mcjNocTNfMjAyMzA3MjBUMTYwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-07-20T13:00:00-04:00>
- [AFIT/RPITIT Impl Triage](https://www.google.com/calendar/event?eid=N2VsaWszdm9rY3NhdDF1MjdyMjVqajNpcWVfMjAyMzA3MjBUMjAwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-07-20T16:00:00-04:00>
- [Types team meeting: generator locals](https://www.google.com/calendar/event?eid=MTg3MDhpdTc3YXBqMGMzbnNxanUwdWZnazhfMjAyMzA3MjRUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-07-24T10:00:00-04:00>
- [[Types] Rotating new solver / formality / polonius deep dive](https://www.google.com/calendar/event?eid=N29vMXZqbGZ1MDIxbzllMDI3dGhocWhhZmNfMjAyMzA3MjRUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-07-24T11:00:00-04:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Expose default_hidden_visibility as a rustc command line option" [compiler-team#656](https://github.com/rust-lang/compiler-team/issues/656) 
- Old MCPs (not seconded, take a look)
  - "Cell Broadband Engine SPU support" [compiler-team#614](https://github.com/rust-lang/compiler-team/issues/614) (last review activity: 3 months ago)
  - "Add support for Zephyr OS" [compiler-team#629](https://github.com/rust-lang/compiler-team/issues/629) (last review activity: about 28 days ago)
  - "Consistently use "region" terminology in later stages of the compiler" [compiler-team#634](https://github.com/rust-lang/compiler-team/issues/634) (last review activity: about 55 days ago)
  - "Add a new `--build-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635) (last review activity: about 55 days ago)
  - "Simplify and improve explicitness of the check-cfg syntax" [compiler-team#636](https://github.com/rust-lang/compiler-team/issues/636) (last review activity: about 35 days ago)
  - "[MCP] proposing a macros working group" [compiler-team#637](https://github.com/rust-lang/compiler-team/issues/637) (last review activity: about 34 days ago)
  - "Add support for visionOS targets" [compiler-team#642](https://github.com/rust-lang/compiler-team/issues/642) (last review activity: about 20 days ago)
  - "Add illumos Tier3 targets" [compiler-team#644](https://github.com/rust-lang/compiler-team/issues/644) (last review activity: about 20 days ago)
  - "Migrate away from u32 as an offset/length type" [compiler-team#647](https://github.com/rust-lang/compiler-team/issues/647) (last review activity: about 13 days ago)
  - "New tier-3 targets for TEEOS" [compiler-team#652](https://github.com/rust-lang/compiler-team/issues/652) (last review activity: about 6 days ago)
- Pending FCP requests (check your boxes!)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618781780) 
  - "Support overriding `warnings` level for a specific lint via command line" [rust#113307](https://github.com/rust-lang/rust/pull/113307#issuecomment-1621305927) 
- Things in FCP (make sure you're good with it)
  - "Revise error code documentation standard" [compiler-team#615](https://github.com/rust-lang/compiler-team/issues/615) 
  - "Add a blanket flag to enable/disable codegen UB checks" [compiler-team#625](https://github.com/rust-lang/compiler-team/issues/625) 
  - "Report all lints, even if other errors already occurred." [compiler-team#633](https://github.com/rust-lang/compiler-team/issues/633) 
  - "Use `FieldIdx` all the way down" [compiler-team#639](https://github.com/rust-lang/compiler-team/issues/639) 
  - "Add support for the riscv64-linux-android target" [compiler-team#640](https://github.com/rust-lang/compiler-team/issues/640) 
  - "Implement alignment and size niches for references" [compiler-team#641](https://github.com/rust-lang/compiler-team/issues/641) 
  - "Changes to StatementKind::Coverage" [compiler-team#645](https://github.com/rust-lang/compiler-team/issues/645) 
  - "KRabcake SANitization (KRSAN) mode" [compiler-team#646](https://github.com/rust-lang/compiler-team/issues/646) 
  - "Drop MIPS to tier 3" [compiler-team#648](https://github.com/rust-lang/compiler-team/issues/648) 
  - "Disallow non-identifier-valid --extern crate names " [compiler-team#650](https://github.com/rust-lang/compiler-team/issues/650) 
  - "Windows support schedule 2024" [compiler-team#651](https://github.com/rust-lang/compiler-team/issues/651) 
  - "Add option to pass environment variables" [compiler-team#653](https://github.com/rust-lang/compiler-team/issues/653) 
  - "Amend target policy to require codegen support" [compiler-team#655](https://github.com/rust-lang/compiler-team/issues/655) 
  - "Add documentation on v0 symbol mangling." [rust#97571](https://github.com/rust-lang/rust/pull/97571) 
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - No new finished FCP (disposition merge) this time.

### WG checkins

- @_*WG-rls2.0* by @**Lukas Wirth** ([last checkin](https://hackmd.io/LBCwQjC6QFCfan1AHHFVVQ#WG-checkins))
  > Since last time we've had a lot of MIR improvements from hkalbasi (we can actually interpret a few of the r-a tests in MIR form). Also notable was upgrading chalk, which should have fixed a bunch of long-standing issues and the start of a [memory layout viewer](https://user-images.githubusercontent.com/308347/252252339-e394e713-ebb9-4567-9acc-60f4a2a19407.png).

- @_*WG-self-profile* by @**mw** and @**Wesley Wiser** ([last checkin](https://hackmd.io/pdK-8nD2TySu6dw2N7cbgw#WG-checkins))
  > check-in text

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: [1.72] "make MCP510 behavior opt-in to avoid conflicts between the CLI and target flavors" [rust#113631](https://github.com/rust-lang/rust/pull/113631)
  - nominated by @**lqd** ([comment](https://github.com/rust-lang/rust/pull/113631#issuecomment-1635885465))
  - Fixes #113597 (now in beta) and bypasses the new behavior introduced in #112910
- :beta: [1.72] "allow opaques to be defined by trait queries, again" [rust#113690](https://github.com/rust-lang/rust/pull/113690)
  - reverts #112963 and fixes #113689, nominated by @**oli**
<!--
/poll Approve beta backport of #113690?
approve
decline
don't know
-->
- No stable nominations for `T-compiler` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Tracking issue for dyn upcasting coercion" [rust#65991](https://github.com/rust-lang/rust/issues/65991)
  - issue is progressing, new [comment from Niko](https://github.com/rust-lang/rust/issues/65991#issuecomment-1640732308)
- Other issues [in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [56 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [25 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 4 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 4 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 34 P-high, 100 P-medium, 18 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` at this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` at this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` at this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2023-07-18](https://github.com/rust-lang/rustc-perf/blob/master/triage/2023-07-18.md)

A lot of spurious results in the regressions this week. However, we did see some real gains with PR #113609, with nearly 40 real-world benchmarks improving their check-build performance by >=1%.

Triage done by **@pnkfelix**.
Revision range: [1d4f5aff..6b9236ed](https://perf.rust-lang.org/?start=1d4f5affbdee00c816f961c227c6b28a3e725ce6&end=6b9236ed5a58879969ddcf4c35a6a24f6260e979&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.5%  | [0.6%, 3.0%]   | 11    |
| Regressions (secondary)  | 1.4%  | [0.6%, 1.8%]   | 11    |
| Improvements (primary)   | -1.6% | [-3.7%, -0.6%] | 46    |
| Improvements (secondary) | -1.9% | [-4.2%, -0.4%] | 46    |
| All  (primary)           | -1.0% | [-3.7%, 3.0%]  | 57    |


5 Regressions, 5 Improvements, 5 Mixed; 2 of them in rollups
57 artifact comparisons made in total
30 Untriaged Pull Requests

#### Regressions

miri: protect Move() function arguments during the call [#113569](https://github.com/rust-lang/rust/pull/113569) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=910be1b3e83d8876a144441695b7a5077967296e&end=136dab66142115d9de16b4cfe2d8395d71a8ab6d&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.8% | [0.5%, 1.1%] | 13    |
| Regressions (secondary)  | 0.9% | [0.4%, 1.4%] | 11    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.8% | [0.5%, 1.1%] | 13    |

* RalfJ is investigating; has potential fix up in [PR #113630](https://github.com/rust-lang/rust/pull/113630), ...
* ... but its not totally certain that PR is a real fix (i.e. the regression may already have been masked or otherwise resolved independently).
* But meanwhile, I am hypothesizing that the regression reported here is spurious ([discussion](https://rust-lang.zulipchat.com/#narrow/stream/247081-t-compiler.2Fperformance/topic/perf.20triage.202023-07-18/near/376402031))
* marking as triaged

Ignore flaky clippy tests. [#113621](https://github.com/rust-lang/rust/pull/113621) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1e6db3486da0f6474920477c01fca90453b7c428&end=33a2c2487ac5d9927830ea4c1844335c6b9f77db&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.0% | [0.6%, 1.2%] | 7     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 1.0% | [0.6%, 1.2%] | 7     |

* already marked as triaged (its noise)

Rollup of 6 pull requests [#113673](https://github.com/rust-lang/rust/pull/113673) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a161ab00dbf660dd587ee42a8c855bac94047ddb&end=7bd81ee1902c049691d0a1f03be5558bee51d100&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.2% | [1.2%, 1.2%] | 1     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 1.2% | [1.2%, 1.2%] | 1     |

* addressed by PR #113697, already marked as triaged.

Add even more GHA log groups [#113514](https://github.com/rust-lang/rust/pull/113514) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ad963232d9b987d66a6f8e6ec4141f672b8b9900&end=4d6e4260b2de66a356a2536320f339467dff0d2b&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | -    | -            | 0     |
| Regressions (secondary)  | 2.9% | [2.7%, 3.0%] | 6     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | -    | -            | 0     |

* PR author says "this doesn't affect how the compiler was built at all, the perf regression must be spurious."
* I agree, marking as triaged

Rollup of 3 pull requests [#113738](https://github.com/rust-lang/rust/pull/113738) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4124617c6ebe6b5b4df2c8c8400e87389c377dcc&end=2c718d12599ca00dc3957ec604cb3e87fe437124&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.7% | [0.7%, 0.7%] | 1     |
| Regressions (secondary)  | 3.1% | [2.7%, 3.5%] | 6     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.7% | [0.7%, 0.7%] | 1     |


#### Improvements

Rewrite `UnDerefer`, again [#113316](https://github.com/rust-lang/rust/pull/113316) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=fcaf04e715bf74ddcbba4c6b0f9adfa00bae1af6&end=5b733e2bcaf784e6a8c523a6d5e74d7263ec7915&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.2%  | [1.2%, 1.2%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.9% | [-1.7%, -0.4%] | 14    |
| Improvements (secondary) | -1.2% | [-2.0%, -0.2%] | 21    |
| All  (primary)           | -0.8% | [-1.7%, 1.2%]  | 15    |


(re-)tighten sourceinfo span of adjustments in MIR [#112945](https://github.com/rust-lang/rust/pull/112945) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=136dab66142115d9de16b4cfe2d8395d71a8ab6d&end=da1d099f91ea387a2814a6244dd875a2048b486f&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-1.1%, -0.4%] | 18    |
| Improvements (secondary) | -0.5% | [-0.6%, -0.5%] | 5     |
| All  (primary)           | -0.7% | [-1.1%, -0.4%] | 18    |


Bump bootstrap to 1.72 beta [#113637](https://github.com/rust-lang/rust/pull/113637) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1b3e68692592d71938df8e7fd8e53fbe5e7ef58c&end=a161ab00dbf660dd587ee42a8c855bac94047ddb&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.9% | [-1.2%, -0.6%] | 12    |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.9% | [-1.2%, -0.6%] | 12    |


Add a cache for `maybe_lint_level_root_bounded` [#113609](https://github.com/rust-lang/rust/pull/113609) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7d60819bfd0d66bdc300713101bd285350407038&end=fe03b46ee4688a99d7155b4f9dcd875b6903952d&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.4% | [-3.4%, -0.5%] | 29    |
| Improvements (secondary) | -1.9% | [-5.9%, -0.2%] | 33    |
| All  (primary)           | -1.4% | [-3.4%, -0.5%] | 29    |


Remove `LLVMRustCoverageHashCString` [#113430](https://github.com/rust-lang/rust/pull/113430) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2c718d12599ca00dc3957ec604cb3e87fe437124&end=ffb9b61294b96c389d343a4c55b15400249d74e6&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-0.7%, -0.7%] | 2     |
| Improvements (secondary) | -2.8% | [-3.2%, -2.4%] | 6     |
| All  (primary)           | -0.7% | [-0.7%, -0.7%] | 2     |


#### Mixed

Eliminate ZST allocations in `Box` and `Vec` [#113113](https://github.com/rust-lang/rust/pull/113113) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7a5814f922f85370e773f2001886b8f57002811c&end=cca3373706b8f5fa12a1b7f18222dde4c3ed6e32&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.7%  | [0.5%, 3.5%]   | 3     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.0% | [-1.7%, -0.4%] | 2     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 0.6%  | [-1.7%, 3.5%]  | 5     |

* regressions here were anticipated and unavoidable. This is a bug fix.
* Marking as triaged.


Enable MIR reference propagation by default [#109025](https://github.com/rust-lang/rust/pull/109025) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5767cad9b8b58a5c0521c5ddd652a24d0c65f466&end=079e544174b79c372b4b4b473a01d699f128c2de&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.2%  | [0.5%, 2.5%]   | 15    |
| Regressions (secondary)  | 0.8%  | [0.2%, 1.3%]   | 7     |
| Improvements (primary)   | -0.9% | [-1.0%, -0.8%] | 3     |
| Improvements (secondary) | -0.6% | [-1.1%, -0.4%] | 6     |
| All  (primary)           | 0.8%  | [-1.0%, 2.5%]  | 18    |

* This is turning on a MIR pass at lower optimizations levels, so its expected that it would cause the compiler to do more work.
* its clear from the perf runs on the PR itself that the PR author already put in much effort to make the pass faster than it had started out.
* marking as triaged.

Resurrect: rustc_target: Add alignment to indirectly-passed by-value types, correcting the alignment of byval on x86 in the process. [#112157](https://github.com/rust-lang/rust/pull/112157) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4d6e4260b2de66a356a2536320f339467dff0d2b&end=7a17f577b3d437179cad254e299b2ace972487c5&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.7%  | [1.5%, 2.0%]   | 6     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -2.8% | [-2.9%, -2.8%] | 6     |
| All  (primary)           | 1.7%  | [1.5%, 2.0%]   | 6     |

* The six primary regressions were all to variants of diesel (all of check/debug/opt) for variious full and incr-full scenarios.
* It isn't noise, there seems to be a clear cliff that starts with this PR when looking at the graph starting from 2023-0702.
* not marking as triaged yet, but was tempted to do so, because this PR is a prerequiste for unlocking various memcpy optimizations added by pcwalton to LLVM

Remove unneeded handling for `ExternalLocation::Unknown` in rustdoc render context [#113697](https://github.com/rust-lang/rust/pull/113697) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=425726d46b637f94995ca1c95f4f16cdb903d30e&end=4c8bb79d9f565115637cc6da739f8389e79f3a29&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 3.0%  | [2.5%, 3.4%]   | 6     |
| Improvements (primary)   | -1.1% | [-1.1%, -1.1%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -1.1% | [-1.1%, -1.1%] | 1     |

* this was mentioned up above when I was talking about PR #113673
* the secondary regressions are all to ctfe-stress-5, which lqd says was noisy at this time.
* marked as triaged.

Add support for allocators in `Rc` & `Arc` [#89132](https://github.com/rust-lang/rust/pull/89132) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1787f312907eee9a4a9ac010985d725ad9a03ab6&end=da6b55cc5eaf76ed6acb7dc2f7d611e32af7c9a7&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.8%  | [0.8%, 0.8%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.3% | [-1.3%, -1.3%] | 1     |
| Improvements (secondary) | -0.7% | [-0.8%, -0.5%] | 4     |
| All  (primary)           | -0.3% | [-1.3%, 0.8%]  | 2     |

* primary regression was to image-0.24.1 opt full by 0.79%
* I think this is just noise. From the [graph](https://perf.rust-lang.org/index.html?start=2023-06-17&end=2023-07-18&benchmark=image-0.24.1&profile=opt&scenario=full&stat=instructions%3Au&kind=raw), it seems like image has unpredictably jumped up and down between two plateaus since PR #113113 (a PR discussed up above that changed low level allocation procotol code in Box and Vec, and thus might be expected to have some weird follow-on effects).
* marked as triaged

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "MSVC and rustc disagree on minimum stack alignment on x86 Windows" [rust#112480](https://github.com/rust-lang/rust/issues/112480)
  - discussed last week ([notes](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202023-07-13/near/374961199)), needs further discussion.
- ""Legacy" tier 2 targets have misplaced or absent maintainer docs" [rust#113739](https://github.com/rust-lang/rust/issues/113739)
  - nominated by @**Jubilee**, [Zulip discussion happening here](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/documenting.20target.20maintainers/near/375650948)
  - summary: some tier 2 compile targets are basically unsupported, we should probably refresh our list of support

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

- "Only unpack tupled args in inliner if we expect args to be unpacked" [rust#110833](https://github.com/rust-lang/rust/pull/110833) (last review activity: 2 months ago)
  - cc @**cjgillot**
- "add a Callable trait that is implemented for unsafe functions, too" [rust#107123](https://github.com/rust-lang/rust/pull/107123)
  - @**Michael Goulet (compiler-errors)** / @**oli**reminder about triaging the crater report, thanks!
- "Only run MaybeInitializedPlaces dataflow once to elaborate drops" [rust#111555](https://github.com/rust-lang/rust/pull/111555)
  - cc: @**Wesley Wiser**
- "Fix target_feature 1.1 should print the list of missing target features" [rust#109710](https://github.com/rust-lang/rust/pull/109710) (last review activity: about 41 days ago)
  - cc: @**est31**
- "Tweak spans for self arg, fix borrow suggestion for signature mismatch" [rust#112508](https://github.com/rust-lang/rust/pull/112508) (last review activity: about 38 days ago)
  - cc: @**Wesley Wiser** 

## Next week's WG checkins

- Types team by @**nikomatsakis** and @**Jack Huey**
- @_*WG-mir-opt* by @**oli**

Next week's agenda draft: https://hackmd.io/IPpNv80sQAmD2ZTF6h56ng
