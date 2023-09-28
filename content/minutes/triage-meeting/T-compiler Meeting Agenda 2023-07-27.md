---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2023-07-27

## Announcements

- A Rust release 1.71.1 is scheduled for August, 3rd ([comment](https://github.com/rust-lang/rust/pull/111516#issuecomment-1650656406))
  - stable backports this week are targeting this point release
  - for reference, next stable 1.72.0 is planned for <time:2023-08-24T14:00:00+02:00>
- [Compiler Team Planning meeting](https://www.google.com/calendar/event?eid=MDJyYnJ1cGFtdWR1c2lnNjFmcHJ2b3JlODFfMjAyMzA3MjhUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-07-28T10:00:00-04:00>
- An interesting [Zulip thread](https://rust-lang.zulipchat.com/#narrow/stream/241545-t-release/topic/Edition.20target.20date) about a possible date for a 2024 edition
  - Spoiler: could be around Nov, 28th 2024 (Rust ~1.83.0)
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- [AFIT/RPITIT Impl Triage](https://www.google.com/calendar/event?eid=N2VsaWszdm9rY3NhdDF1MjdyMjVqajNpcWVfMjAyMzA3MjdUMjAwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-07-27T16:00:00-04:00>
- [Types team meeting: RPITIT refactor](https://www.google.com/calendar/event?eid=MTg3MDhpdTc3YXBqMGMzbnNxanUwdWZnazhfMjAyMzA3MzFUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-07-31T10:00:00-04:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Cell Broadband Engine SPU support" [compiler-team#614](https://github.com/rust-lang/compiler-team/issues/614)(last review activity: 3 months ago)
  - "Add support for Zephyr OS" [compiler-team#629](https://github.com/rust-lang/compiler-team/issues/629)(last review activity: about 35 days ago)
  - "Consistently use "region" terminology in later stages of the compiler" [compiler-team#634](https://github.com/rust-lang/compiler-team/issues/634)(last review activity: 2 months ago)
  - "Add a new `--build-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635)(last review activity: 2 months ago)
  - "Simplify and improve explicitness of the check-cfg syntax" [compiler-team#636](https://github.com/rust-lang/compiler-team/issues/636)(last review activity: about 42 days ago)
  - "Add support for visionOS targets" [compiler-team#642](https://github.com/rust-lang/compiler-team/issues/642)(last review activity: about 27 days ago)
  - "Add illumos Tier3 targets" [compiler-team#644](https://github.com/rust-lang/compiler-team/issues/644)(last review activity: about 2 days ago)
  - "Migrate away from u32 as an offset/length type" [compiler-team#647](https://github.com/rust-lang/compiler-team/issues/647)(last review activity: about 20 days ago)
- Pending FCP requests (check your boxes!)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649)
    - Note: pending 2 concerns
  - "Support overriding `warnings` level for a specific lint via command line" [rust#113307](https://github.com/rust-lang/rust/pull/113307)
- Things in FCP (make sure you're good with it)
  - "Revise error code documentation standard" [compiler-team#615](https://github.com/rust-lang/compiler-team/issues/615)
  - "Add a blanket flag to enable/disable codegen UB checks" [compiler-team#625](https://github.com/rust-lang/compiler-team/issues/625)
  - "Report all lints, even if other errors already occurred." [compiler-team#633](https://github.com/rust-lang/compiler-team/issues/633)
  - "[MCP] proposing a macros working group" [compiler-team#637](https://github.com/rust-lang/compiler-team/issues/637)
  - "Drop MIPS to tier 3" [compiler-team#648](https://github.com/rust-lang/compiler-team/issues/648)
  - "Disallow non-identifier-valid --extern crate names " [compiler-team#650](https://github.com/rust-lang/compiler-team/issues/650)
  - "Windows support schedule 2024" [compiler-team#651](https://github.com/rust-lang/compiler-team/issues/651)
  - "New tier-3 targets for TEEOS" [compiler-team#652](https://github.com/rust-lang/compiler-team/issues/652)
  - "Add option to pass environment variables" [compiler-team#653](https://github.com/rust-lang/compiler-team/issues/653)
  - "Amend target policy to require codegen support" [compiler-team#655](https://github.com/rust-lang/compiler-team/issues/655)
  - "Expose default_hidden_visibility as a rustc command line option" [compiler-team#656](https://github.com/rust-lang/compiler-team/issues/656)
  - "Add tidy rule against `issue-[0-9]+.rs` tests" [compiler-team#658](https://github.com/rust-lang/compiler-team/issues/658)
    - in nominated issues section: @**pnkfelix** suggests a quick discussion (see [comment](https://rust-lang.zulipchat.com/#narrow/stream/233931-t-compiler.2Fmajor-changes/topic/Add.20tidy.20rule.20against.20.60issue-.5B0-9.5D.2B.2Ers.60.20t.E2.80.A6.20compiler-team.23658)) 
- Accepted MCPs
  - "Use `FieldIdx` all the way down" [compiler-team#639](https://github.com/rust-lang/compiler-team/issues/639)
  - "Add support for the riscv64-linux-android target" [compiler-team#640](https://github.com/rust-lang/compiler-team/issues/640)
  - "Implement alignment and size niches for references" [compiler-team#641](https://github.com/rust-lang/compiler-team/issues/641)
  - "Changes to StatementKind::Coverage" [compiler-team#645](https://github.com/rust-lang/compiler-team/issues/645)
  - "KRabcake SANitization (KRSAN) mode" [compiler-team#646](https://github.com/rust-lang/compiler-team/issues/646)
- Finalized FCPs (disposition merge)
  - "Add documentation on v0 symbol mangling." [rust#97571](https://github.com/rust-lang/rust/pull/97571)
  - "Support interpolated block for `try` and `async`" [rust#112953](https://github.com/rust-lang/rust/pull/112953)

### WG checkins

- Types team by @**nikomatsakis** and @**Jack Huey** ([previous checkin](https://hackmd.io/dPMI9IZqR0uzp4fuZVr4lg#WG-checkins))
  > * Trait system refactor blog post: https://blog.rust-lang.org/inside-rust/2023/07/17/trait-system-refactor-initiative.html
  > * We have started recurring "solver" meetings on Mondays after our full types team meetings
  > * Crater run for using new trait solver for coherence went really well (https://github.com/rust-lang/rust/pull/113895)

- @_*WG-mir-opt* by @**oli** ([previous checkin](https://hackmd.io/auk0MATiScWFokXL6RlO-w#WG-checkins))
  > * SMIR now supports all TyKind variants

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: [1.72.0] "lint/ctypes: fix `()` return type checks" [rust#113457](https://github.com/rust-lang/rust/pull/113457)
  - Fixes #113436, a warn-by-default after [T-libs decision](https://github.com/rust-lang/rust/issues/113436#issuecomment-1640756721) to proceed
  - perf run indicates neutral changes
<!--
/poll Approve beta backport of #113457?
approve
decline
don't know
-->
- :beta: [1.72.0] "Substitute types before checking inlining compatibility." [rust#113802](https://github.com/rust-lang/rust/pull/113802)
  - Fixes #112332 and #113781, two ICEs (one dupe of the other, btw), one affecting a old version of a real-world crate (updated since then)
  - Also nominated for stable backport
<!--
/poll Approve beta backport of #113802?
approve
decline
don't know
-->
- :stable: [1.71.1] "Don't use `can_eq` in `derive(..)` suggestion for missing method" [rust#111516](https://github.com/rust-lang/rust/pull/111516)
  - Fixes regression #111500, ICE on invalid code but reported also on sibling issues #114049 and 114056
<!--
/poll Approve stable backport of #111516?
approve
approve but does not justify new dot release
decline
don't know
-->
- :stable: [1.71.1] "`suspicious_double_ref_op`: don't lint on `.borrow()`" [rust#112517](https://github.com/rust-lang/rust/pull/112517)
  - Fixes #112489, P-medium diag regression
<!--
/poll Approve stable backport of #112517?
approve
approve but does not justify new dot release
decline
don't know
-->
- :stable: [1.71.1] "Substitute types before checking inlining compatibility." [rust#113802](https://github.com/rust-lang/rust/pull/113802)
<!--
/poll Approve stable backport of #113802?
approve
approve but does not justify new dot release
decline
don't know
-->

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- Other issues [in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [55 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [25 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 3 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 3 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
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

[Triage logs for 2023-07-26](https://github.com/rust-lang/rustc-perf/blob/master/triage/2023-07-26.md)

A relatively light week with respect to performance changes. The one major
regressing PR was reverted (for other reasons), and we saw some very nice gains
on compile-times from (1.) changes to our codegen-unit merging logic and from
(2.) changes to the stdlib slice iterators encoding its non-null guarantees
directly, allowing the removal of a call to the `assume` intrinsic.

Triage done by **@pnkfelix**.
Revision range: [6b9236ed..0308df23](https://perf.rust-lang.org/?start=6b9236ed5a58879969ddcf4c35a6a24f6260e979&end=0308df23e621e783e31a27ca5beaa01b9df60d4a&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.4%  | [0.6%, 10.2%]  | 27    |
| Regressions (secondary)  | 1.1%  | [0.3%, 2.9%]   | 19    |
| Improvements (primary)   | -2.2% | [-8.3%, -0.4%] | 21    |
| Improvements (secondary) | -1.6% | [-2.0%, -1.2%] | 2     |
| All  (primary)           | -0.2% | [-8.3%, 10.2%] | 48    |


1 Regressions, 1 Improvements, 4 Mixed; 1 of them in rollups
30 Untriaged Pull Requests
35 artifact comparisons made in total

#### Regressions

Prototype: Add unstable `-Z reference-niches` option [#113166](https://github.com/rust-lang/rust/pull/113166) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1e6c09a803fd543a98bfbe1624d697a55300a786&end=557359f92512ca88b62a602ebda291f17a953002&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.7% | [0.3%, 1.1%] | 19    |
| Regressions (secondary)  | 1.0% | [0.3%, 1.2%] | 4     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.7% | [0.3%, 1.1%] | 19    |

* reverted in PR #113946
* marked as triaged

#### Improvements

Inline overlap based CGU merging [#113777](https://github.com/rust-lang/rust/pull/113777) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=903e279f468590fa3425f8aff7f3d61a5a873dbb&end=0d6a9b2bf7f823ed563ca3a75392ba9bf9ff1566&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.2%  | [1.2%, 1.2%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.8% | [-4.5%, -0.3%] | 11    |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -1.6% | [-4.5%, 1.2%]  | 12    |

this improved instruction-counts for 9 opt-full primary benchmarks. (The one regression was to regex-1.5.5 opt-full, by -1.15%; but the wins elsewhere pay for this.)

As noted by @nnethercote , this results in nearly 10second reduction in bootstrap time (i.e. -1.495%, no small feat at all!)

#### Mixed

Turn copy into moves during DSE. [#113758](https://github.com/rust-lang/rust/pull/113758) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6b53175b5d8558b69f5f46ce969fe42fb457e01b&end=06a53ddc0bd3a50f9bcf2f7c373011dc7869f59f&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 9.4%  | [9.4%, 9.4%]   | 1     |
| Regressions (secondary)  | 0.6%  | [0.6%, 0.6%]   | 1     |
| Improvements (primary)   | -1.0% | [-2.1%, -0.2%] | 14    |
| Improvements (secondary) | -0.8% | [-1.3%, -0.2%] | 2     |
| All  (primary)           | -0.3% | [-2.1%, 9.4%]  | 15    |

* regression is to webrender-2022 opt incr-patched, (by 9.4%, as you can see from the above)
* from the flamegraphs, seems like `codegen_module_perform_lto` went from 8.6 seconds to 9.6 seconds, with half of the growth in `LLVM_lto_optimize`, and half in `LLVM_module_codegen_emit_obj`.
* not marking as triaged for now.

Rollup of 7 pull requests [#113890](https://github.com/rust-lang/rust/pull/113890) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=06a53ddc0bd3a50f9bcf2f7c373011dc7869f59f&end=092e4f46be168ab24d53e4141086b2cf04822b8e&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 1     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.2%] | 4     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.3% | [-0.3%, -0.2%] | 4     |

* that doesn't seem worth dissecting
* marking as triaged
* (the specific secondary is tt-muncher check incr-unchanged 0.23%)

Always const-prop scalars and scalar pairs [#113858](https://github.com/rust-lang/rust/pull/113858) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=399b068235ceea440540539b3bfd1aeb82214a28&end=e2a7ba2771a70439cd546fdae676abe11dacf6f9&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.8%  | [0.3%, 3.3%]   | 42    |
| Regressions (secondary)  | 0.7%  | [0.2%, 1.1%]   | 19    |
| Improvements (primary)   | -0.6% | [-1.3%, -0.2%] | 6     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 0.6%  | [-1.3%, 3.3%]  | 48    |

* we didn't anticipate such a high impact to the instruction-counts; the trial run said there were two primary regressions here, not 42.
    * exa-0.10.1 opt-full regressed by 3.34%
    * five various bitmaps-3.1.0 profiles/scenarios regressed by 1.01% to 1.21%
    * ripgrep-13.0.0 check-incr-unchanged regressed by 1.01%
    * bunch of others that regressed by a little less than 1%... seems not great.
* not marking as triaged.

Get `!nonnull` metadata on slice iterators, without `assume`s [#113344](https://github.com/rust-lang/rust/pull/113344) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e2a7ba2771a70439cd546fdae676abe11dacf6f9&end=c720a9cd1280d24838d0f649538dcd0e4352692c&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 8.3%  | [8.3%, 8.3%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.1% | [-8.3%, -0.5%] | 63    |
| Improvements (secondary) | -0.7% | [-1.1%, -0.3%] | 15    |
| All  (primary)           | -1.0% | [-8.3%, 8.3%]  | 64    |

* cranelift-codegen-0.82.1 opt-full regressed by 8.31%
* a slew of other benchmarks improved (regex-1.5.5 incr-patched by -8.28%, bitmaps incr by 1.2-1.4%, the rest by -1% or less)
* overall, a nice win. That's enough to let me mark this as triaged.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "MSVC and rustc disagree on minimum stack alignment on x86 Windows" [rust#112480](https://github.com/rust-lang/rust/issues/112480)
  - Discussed in the past 2 meetings ([here](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202023-07-13/near/374961199) and [here](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202023-07-20/near/377002646)), left nominated for further discussion (maybe in a separate session)
- ""Legacy" tier 2 targets have misplaced or absent maintainer docs" [rust#113739](https://github.com/rust-lang/rust/issues/113739)
  - Discussed in the past meeting ([here](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202023-07-20/near/377013350)), left nominated for further discussion (maybe in a separate session)
- "Add tidy rule against `issue-[0-9]+.rs` tests" [compiler-team#658](https://github.com/rust-lang/compiler-team/issues/658)
  - an MCP proposing to remove the issue # from UI tests filename, considered lacking semantic information
  - other proposals point to keeping the issue # as it _is_ descriptive of the issue(s), with variations around "issue-123456-<blurb-describing-what-the-test-does>"
  - maybe enforcing a descriptive first-line comment in the test file (e.g. `// #12345 Fixed redundant streaming problem`)
  - thoughts from Jack
> tl;dr There are two things we should discuss: 1) This seems like a process failure and we should think about scheduling a discussion around MCPs (and when waiting the full 10 days is appropriate and when it's unnecessary). 2) Do we like this MCP/PR *as-is*, is it *okay-enough* to stay on master until we figure out a *better* solution, or should we revert?

>First, it kind of irks me that this was pushed through without waiting for the full 10 days of MCP, and I wonder if there's a discussion to be had about process here. (I'm not sure if we reevaluated if MCPs are working or not, etc.) This is clearly the type of PR that MCPs are meant for: changes that have wide-ranging effects on compiler development. The PR itself even got some comments one way or the other, and so does the (now created) MCP zulip thread. AND there was even this note in the PR OP: "note: between the creation of this PR and 2023-07-25 (14 days), 10 more tests were added that failed this check." So, people are obviously using this pattern at a high frequency. Really, this should have waited for more visibility before merge.

>For the actual substance of the PR/MCP, a few thoughts. First, it's not clear to me if something like `issue-12345-invalid-fn-name.rs` would be allowed or not (doesn't seem like it is, but this seems to have been heavily favored in the comments as *a minimum* for what should be allowed). Second, it doesn't seem the places/situations where file names like `issue-12345.rs` actually makes decent sense were even considered: bug tests where we're there's an open issue, issues reported through fuzzing where the actual program is ICE->error, issues that have been fixed since being opened and it's not clear what exactly the problem was. I also think the test naming is evidence of a more subtle pattern: we very often today commit tests as-is from issues. This is maybe okay when there is one issue that a given PR fixes. But, it starts to get interesting when you have a PR that fixes multiple related issues. Now, we're in the dilemma of "are these tests similar enough to each other that they should just be only one test file, or could they be triggered separately". This change *could* help with that, by making it more work to add regression tests exactly, but I'm not sure "more work" is a good solution. (Aside, I don't personally agree that `issue-12345.rs` doesn't give enough context to what the test is for: it's a regression test from a reported issue).
- "coverage: Replace `ExpressionOperandId` with enum `Operand` [rust#113428](https://github.com/rust-lang/rust/pull/113428)
  - nominated to help find a reviewer with some context
- "Support `--print KIND=PATH` command line syntax by [rust#113780](https://github.com/rust-lang/rust/pull/113780)
  - Nominated by @**Urgau** ([comment](https://github.com/rust-lang/rust/pull/113780#issuecomment-1646566381)): asks if this change shouldn't have gone through some signal boosting / approval procedure before being merged

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Fix suggestion spans for expr from macro expansions" [rust#112043](https://github.com/rust-lang/rust/pull/112043) (last review activity: about 28 days ago)
  - cc @**cjgillot** 
- "Tait must be constrained if in sig" [rust#113169](https://github.com/rust-lang/rust/pull/113169) (last review activity: about 27 days ago)
  - cc @**oli** (appointed as self reviewer)
- "Report allocation errors as panics, second attempt" [rust#112331](https://github.com/rust-lang/rust/pull/112331) (last review activity: about 26 days ago)
  - cc: @**bjorn3** (though T-libs also in the review loop)

## Next week's WG checkins

- @_*WG-rls2.0* by @**Lukas Wirth** (https://hackmd.io/team/rust-compiler-team?nav=overview)
- @_*WG-self-profile* by @**mw** and @**Wesley Wiser** (https://hackmd.io/team/rust-compiler-team?nav=overview)

Next agenda draft: https://hackmd.io/LLdrdTZPT06xMPq9a1gYcQ
