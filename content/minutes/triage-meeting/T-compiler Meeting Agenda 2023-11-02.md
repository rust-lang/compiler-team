---
tags: weekly, rustc
type: docs
note_id: S1BJlkBQTOikfnCtr1BOiw
---

# T-compiler Meeting Agenda 2023-11-02

## Announcements

- [Compiler Team Steering Meeting - P-high review](https://www.google.com/calendar/event?eid=NjZ1Z25sYnA4YzUwaWVrOG5yN2ZsdWl1OWogNnU1cnJ0Y2U2bHJ0djA3cGZpM2RhbWdqdXNAZw) at <time:2023-11-03T10:00:00-04:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- [wg-async weekly](https://www.google.com/calendar/event?eid=ajVtNGowYjlzdDNhM2VwZG9vNjg4OTlzNDBfMjAyMzExMDJUMTYwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-11-02T12:00:00-04:00>
- [AFIT/RPITIT Impl Triage](https://www.google.com/calendar/event?eid=N2VsaWszdm9rY3NhdDF1MjdyMjVqajNpcWVfMjAyMzExMDJUMjAwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-11-02T16:00:00-04:00>
- [wg-macros triage meeting](https://www.google.com/calendar/event?eid=MjZ2bTVqMXRiMmttaXFoMHF1cWZtdnE0MnZfMjAyMzExMDNUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-11-03T11:00:00-04:00>
- [Types team meeting](https://www.google.com/calendar/event?eid=MTg3MDhpdTc3YXBqMGMzbnNxanUwdWZnazhfMjAyMzExMDZUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-11-06T10:00:00-05:00>
- [Types Rotating new solver / formality / polonius deep dive](https://www.google.com/calendar/event?eid=N29vMXZqbGZ1MDIxbzllMDI3dGhocWhhZmNfMjAyMzExMDZUMTYwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-11-06T11:00:00-05:00>
- [Async WG triage meeting](https://www.google.com/calendar/event?eid=cXZ1NGZncDF1dXA1NnVnMnA1M2Mzb2lvdWVfMjAyMzExMDZUMTYzMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-11-06T11:30:00-05:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - " Add `$message_type` field to distinguish json diagnostic outputs" [compiler-team#673](https://github.com/rust-lang/compiler-team/issues/673) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.20Add.20.60type.60.20field.20to.20json.20diagnostic.20outp.E2.80.A6.20compiler-team.23673))
  - "Allow and evaluate quoting in response files" [compiler-team#684](https://github.com/rust-lang/compiler-team/issues/684) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Use.20shell.20parsing.20for.20response.20files.20compiler-team.23684))
  - "Add `-Zexperimental-target`" [compiler-team#685](https://github.com/rust-lang/compiler-team/issues/685) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Zexperimental-target.60.20compiler-team.23685))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - No old proposals this time.
- Pending FCP requests (check your boxes!)
  - "Add a new `--build-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20new.20.60--build-id.60.20flag.20to.20rustc.20compiler-team.23635))
    - concern [option-name](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1785349936)
    - concern [other-existing-options](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1779597156)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
    - concern [single-point-of-failure-via-stream-archival](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1664056989)
    - concern [unanimous-approval](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1779537550) (resolved)
  - "Stabilize `--json=unused-externs(-silent)`" [compiler-team#674](https://github.com/rust-lang/compiler-team/issues/674) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stabilize.20.60--json.3Dunused-externs.28-silent.29.60.20compiler-team.23674))
  - "Tracking issue for dyn upcasting coercion" [rust#65991](https://github.com/rust-lang/rust/issues/65991)
    - concern [ensure-we-discuss-lcnr's-thoughts-in-triage](https://github.com/rust-lang/rust/issues/65991#issuecomment-1688682808) (resolved)
  - "Support overriding `warnings` level for a specific lint via command line" [rust#113307](https://github.com/rust-lang/rust/pull/113307)
    - concern [nesting](https://github.com/rust-lang/rust/pull/113307#issuecomment-1718755358)
  - "Update Windows platform support" [rust#115141](https://github.com/rust-lang/rust/pull/115141)
    - concern [needs-blog-post](https://github.com/rust-lang/rust/pull/115141#issuecomment-1746427695) (probably resolved) 
  - "make soft_unstable show up in future breakage reports" [rust#116274](https://github.com/rust-lang/rust/pull/116274)
  - "Stabilize Wasm target features that are in phase 4 and 5" [rust#117457](https://github.com/rust-lang/rust/pull/117457)
- Things in FCP (make sure you're good with it)
  - "Add a stable flag to enable/disable codegen UB checks" [compiler-team#625](https://github.com/rust-lang/compiler-team/issues/625) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20blanket.20flag.20to.20enable.2Fdisable.20code.E2.80.A6.20compiler-team.23625))
    - concern [needs-fcp](https://github.com/rust-lang/compiler-team/issues/625#issuecomment-1672919695)
  - "Report all lints, even if other errors already occurred." [compiler-team#633](https://github.com/rust-lang/compiler-team/issues/633) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Report.20all.20lints.2C.20even.20if.20other.20errors.20al.E2.80.A6.20compiler-team.23633))
  - "Match the behavior of `strip` and `split-debuginfo` across platforms" [compiler-team#669](https://github.com/rust-lang/compiler-team/issues/669) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Match.20the.20behavior.20of.20.60strip.60.20and.20.60split-.E2.80.A6.20compiler-team.23669))
  - "Add infrastructure to "compute the ABI of a Rust type, described as a C type"" [compiler-team#672](https://github.com/rust-lang/compiler-team/issues/672) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20infrastructure.20to.20.22compute.20the.20ABI.20of.E2.80.A6.20compiler-team.23672))
  - "Stabilize `--json=unused-externs(-silent)`" [compiler-team#674](https://github.com/rust-lang/compiler-team/issues/674) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stabilize.20.60--json.3Dunused-externs.28-silent.29.60.20compiler-team.23674))
    - concern [lint-interactions](https://github.com/rust-lang/compiler-team/issues/674#issuecomment-1746696850)
  - "Set alignment of `i128` to 128 bits for x86" [compiler-team#683](https://github.com/rust-lang/compiler-team/issues/683) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Set.20alignment.20of.20.60i128.60.20to.20128.20bits.20compiler-team.23683))
  - "Remove support for compiler plugins." [rust#116412](https://github.com/rust-lang/rust/pull/116412)
- Accepted MCPs
  - "Have `rustc` produce a local log of execution metrics" [compiler-team#679](https://github.com/rust-lang/compiler-team/issues/679) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-t-compiler.2Fmajor-changes/topic/Have.20.60rustc.60.20produce.20a.20local.20log.20of.20execu.E2.80.A6.20compiler-team.23679))
  - "Enable Parallel Rustc Front End In Nightly Builds" [compiler-team#681](https://github.com/rust-lang/compiler-team/issues/681) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Enable.20Parallel.20Rustc.20Front.20End.20In.20Nightl.E2.80.A6.20compiler-team.23681))
  - "Rename generator to coroutine" [compiler-team#682](https://github.com/rust-lang/compiler-team/issues/682) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20generator.20to.20coroutine.20compiler-team.23682))
- Finalized FCPs (disposition merge)
  - "Allow partially moved values in match" [rust#103208](https://github.com/rust-lang/rust/pull/103208)
  - "document ABI compatibility" [rust#115476](https://github.com/rust-lang/rust/pull/115476)
  - "Consider alias bounds when computing liveness in NLL (but this time sound hopefully)" [rust#116733](https://github.com/rust-lang/rust/pull/116733)

### WG checkins

- Impl Trait initiative by @**oli**:
  > at the T-types meetup we came up with a type-alias-impl-trait stabilization plan, which does not match the latest T-lang plan, but a change necessitated by implementation concerns. Most notably, we're restricting the defining scope even further (see [rust#113169](https://github.com/rust-lang/rust/pull/113169) for an implementation of this). The full proposal can be found at this [HackMD link](https://hackmd.io/QOsEaEJtQK-XDS_xN4UyQA#Proposal-preferred). As usual, the work is tracked in: https://github.com/orgs/rust-lang/projects/22/views/1

- @_*WG-llvm* by @**nagisa** and @**Nikita Popov**
  > Checkin text

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Update to LLVM 17.0.4" [rust#117436](https://github.com/rust-lang/rust/pull/117436)
  - Fixes a number of `P-high`s: #116668, #116941, #116976
  - (tangential: @**apiraino** wonders if there's a way to see a clearer changelog of LLVM merges...)
<!--
/poll Approve beta backport of #117436?
approve
decline
don't know
-->

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- Other issues [in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [63 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [35 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 3 P-high, 2 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 4 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 40 P-high, 100 P-medium, 18 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Code no longer compiles after -Zdrop-tracking-mir was enabled by default" [rust#116242](https://github.com/rust-lang/rust/issues/116242)
  - Mentioned [last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.E2.9C.94.20.5Bweekly.5D.202023-10-26/near/398709352), postponed to this meeting
  - Probably solved by [rust#117134](https://github.com/rust-lang/rust/pull/117134), authored by @**lcnr**, [RFC reviewed](https://github.com/rust-lang/rust/pull/117134#issuecomment-1780591422), no crater regressions ([link](https://github.com/rust-lang/rust/pull/117134#issuecomment-1781362318))
  - anything to add? can remove `I-compiler-nominated`?

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

Notes:
- These regressions were triaged last week 
- next stable in 2 weeks -> <time:2023-11-16T12:00:00+01:00>

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "regression: parameter type may not live long enough" [rust#117055](https://github.com/rust-lang/rust/issues/117055)
  - Crate that regressed was fixed
- "regression: new resolution failures in 1.74" [rust#117056](https://github.com/rust-lang/rust/issues/117056)
  - discussed [last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.E2.9C.94.20.5Bweekly.5D.202023-10-26/near/398704000), seems there might be multiple sources for this regression
  - @**lqd** bisected some of the crates, possibly #115834 ([comment](https://github.com/rust-lang/rust/issues/117056#issuecomment-1775014545))
  - @**Michael (compiler-errors) Goulet**, @**pnkfelix** @**wesley wiser** would split bisecting the other crates
- "regression: change in async capture rules?" [rust#117059](https://github.com/rust-lang/rust/issues/117059)
  - [comments from last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.E2.9C.94.20.5Bweekly.5D.202023-10-26/near/398707787)
    > Ok, so this is the actual crater fallout from -Zdrop-tracking-mir that we were waiting for. It's good to see that it's relatively small and being addressed.
  - Duplicate of [rust#116242](https://github.com/rust-lang/rust/issues/116242), under T-types scrutiny (`I-types-nominated`)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2023-10-31](https://github.com/rust-lang/rustc-perf/blob/master/triage/2023-10-31.md)

Short triage this week, as last week's was done later in the week than usual.
As a result, a pretty quiet set of results.

Triage done by **@simulacrum**.
Revision range: [698db856de0b67313ddcb96b6599598058489ea9..650991d62c3a2c80ba27009d06839adbb038bf5e](https://perf.rust-lang.org/?start=698db856de0b67313ddcb96b6599598058489ea9&end=650991d62c3a2c80ba27009d06839adbb038bf5e&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.2%, 5.0%]   | 48    |
| Regressions (secondary)  | 0.7%  | [0.1%, 1.9%]   | 18    |
| Improvements (primary)   | -0.9% | [-3.3%, -0.2%] | 11    |
| Improvements (secondary) | -0.5% | [-0.8%, -0.4%] | 4     |
| All  (primary)           | 0.4%  | [-3.3%, 5.0%]  | 59    |

2 Regressions, 1 Improvements, 1 Mixed; 0 of them in rollups
43 artifact comparisons made in total

#### Regressions

Lint overlapping ranges as a separate pass [#116751](https://github.com/rust-lang/rust/pull/116751) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=688892938e825312fcf808236af95cadb4f088e9&end=9d6d5d48948945debca5a693f6030246f7bb2baf&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.2%, 1.0%] | 19    |
| Regressions (secondary)  | 0.3% | [0.3%, 0.3%] | 3     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.2%, 1.0%] | 19    |

Slight regressions across multiple benchmarks. This is expected impact with no
planned mitigation, likely small enough to be acceptable for the functionality
here.

Eat close paren if capture_cfg to avoid unbalanced parens [#116889](https://github.com/rust-lang/rust/pull/116889) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=83c9732e0c7e1cae5f039677da4c51ee1d9b19b0&end=88ae8c93854a1a67c6c0a45971c7198477456c33&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.2% | [0.1%, 0.2%] | 6     |
| Regressions (secondary)  | 0.6% | [0.4%, 0.9%] | 9     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.2% | [0.1%, 0.2%] | 6     |

> This is indeed a slight perf regression for benchmarks with large number of function parameters, like externs with 3000 function definitions.

(https://github.com/rust-lang/rust/pull/116889#issuecomment-1784115059)

However a possibly faster version will be [worked on by the
author](https://github.com/rust-lang/rust/pull/116889#issuecomment-1784141294).
In the meantime the regression is limited to just a few benchmarks, mostly
stress tests.

#### Improvements

Only call `mir_const_qualif` if absolutely necessary [#117166](https://github.com/rust-lang/rust/pull/117166) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9d6d5d48948945debca5a693f6030246f7bb2baf&end=10143e781b3ae63240b96cabe13cc33671ccb13a&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.5%, -0.2%] | 35    |
| Improvements (secondary) | -0.4% | [-0.4%, -0.4%] | 3     |
| All  (primary)           | -0.3% | [-0.5%, -0.2%] | 35    |


#### Mixed

rustdoc: use JS to inline target type impl docs into alias [#116471](https://github.com/rust-lang/rust/pull/116471) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2f1bd0729b74787f55d4cbc7818cfd787cd43a99&end=6f349cdbfaf75e12ed3c307721da34a400d31b7c&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.8%  | [0.3%, 5.0%]   | 10    |
| Regressions (secondary)  | 1.0%  | [0.2%, 1.9%]   | 4     |
| Improvements (primary)   | -2.7% | [-3.4%, -1.5%] | 3     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 0.7%  | [-3.4%, 5.0%]  | 13    |

> The perf regression was explained above; it's very small, rustdoc-only, and
> is more than balanced by the large reductions in generated doc size.

https://github.com/rust-lang/rust/pull/116471#issuecomment-1784228010

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Code no longer compiles after -Zdrop-tracking-mir was enabled by default" [rust#116242](https://github.com/rust-lang/rust/issues/116242)
  - (already discussed)

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "RFC: Packages as (optional) namespaces" [rfcs#3243](https://github.com/rust-lang/rfcs/pull/3243)
  - FIY also for T-compiler to make sure all voices are heard

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Save liveness results for DestinationPropagation" [rust#115291](https://github.com/rust-lang/rust/pull/115291)
  - cc @**Jak{e,ob} Degen** (can you [comment](https://github.com/rust-lang/rust/pull/115291#issuecomment-1751990260) if your review is final?) 
- "Add `$message_type` field to distinguish json diagnostic outputs" [rust#115691](https://github.com/rust-lang/rust/pull/115691) (last review activity: about 51 days ago)
  - FCP in progress, missing a few checkboxes (cc: @**michael goulet (compiler-errors)** @**nagisa**)
- "Stabilize target_feature_11" [rust#116114](https://github.com/rust-lang/rust/pull/116114) (last review activity: about 31 days ago)
  - [RFC#2396](https://github.com/gnzlbg/rfcs/blob/71b9069938ba6f0d4a75427f19d7ff859d5fdcb6/text/0000-target-feature-1.1.md)
  - Unsure if the review at this stage is more for T-libs or T-compiler
- "Stabilize `extended_varargs_abi_support`" [rust#116161](https://github.com/rust-lang/rust/pull/116161)
  - cc @**wesley wiser** (autoassigned) (author has a small [comment](https://github.com/rust-lang/rust/pull/116161#discussion_r1336437170) to check)

## Next week's WG checkins

- @_*WG-mir-opt* by @**oli**
- @_*T-rust-analyzer* by @**Lukas Wirth**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/mdVtQOZMQqqFCjtY9H-05g)
