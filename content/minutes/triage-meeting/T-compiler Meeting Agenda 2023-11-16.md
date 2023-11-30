---
tags: weekly, rustc
type: docs
note_id: 0GmbMjmTSDO5dXpIjsXmng
---

# T-compiler Meeting Agenda 2023-11-16

## Announcements

- Today Rust stable 1.74 release ([blog post](https://github.com/cuviper/blog.rust-lang.org/blob/rust-1.74.0/posts/2023-11-16-Rust-1.74.0.md))
- [Compiler Team Planning meeting](https://www.google.com/calendar/event?eid=MDJyYnJ1cGFtdWR1c2lnNjFmcHJ2b3JlODFfMjAyMzExMTdUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-11-17T10:00:00-05:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along)

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- [AFIT/RPITIT Impl Triage](https://www.google.com/calendar/event?eid=N2VsaWszdm9rY3NhdDF1MjdyMjVqajNpcWVfMjAyMzExMTZUMjEwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-11-16T16:00:00-05:00>
- [Stable MIR Weekly Meeting](https://www.google.com/calendar/event?eid=N25kMTM2Z3NxbXJjNTE5ZWJpM2traHNpa21fMjAyMzExMTdUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-11-17T10:00:00-05:00>
- [Types team meeting](https://www.google.com/calendar/event?eid=MTg3MDhpdTc3YXBqMGMzbnNxanUwdWZnazhfMjAyMzExMjBUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-11-20T10:00:00-05:00>
- [[Types] Rotating new solver / formality / polonius deep dive](https://www.google.com/calendar/event?eid=N29vMXZqbGZ1MDIxbzllMDI3dGhocWhhZmNfMjAyMzExMjBUMTYwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-11-20T11:00:00-05:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Require `--known-broken-llvm` flag for x.py to skip codegen tests on old LLVM" [compiler-team#687](https://github.com/rust-lang/compiler-team/issues/687) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Require.20.60--known-broken-llvm.60.20flag.20for.20x.2E.E2.80.A6.20compiler-team.23687))
    - concern [codegen-tests-are-for-new-optimizations](https://github.com/rust-lang/compiler-team/issues/687#issuecomment-1809869102)
- Old MCPs (not seconded, take a look)
  - "Add `$message_type` field to distinguish json diagnostic outputs" [compiler-team#673](https://github.com/rust-lang/compiler-team/issues/673) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.20Add.20.60type.60.20field.20to.20json.20diagnostic.20outp.E2.80.A6.20compiler-team.23673)) (last review activity: about 6 days ago)
- Pending FCP requests (check your boxes!)
  - "Add a new `--build-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20new.20.60--build-id.60.20flag.20to.20rustc.20compiler-team.23635))
    - concern [option-name](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1777545767)
    - concern [other-existing-options](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1777545767)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618781780)
    - concern [single-point-of-failure-via-stream-archival](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618781780)
  - "Stabilize `--json=unused-externs(-silent)`" [compiler-team#674](https://github.com/rust-lang/compiler-team/issues/674) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stabilize.20.60--json.3Dunused-externs.28-silent.29.60.20compiler-team.23674))
    - concern [lint-interactions](https://github.com/rust-lang/compiler-team/issues/674#issuecomment-1746696850)
  - "Support overriding `warnings` level for a specific lint via command line" [rust#113307](https://github.com/rust-lang/rust/pull/113307)
    - concern [nesting](https://github.com/rust-lang/rust/pull/113307#issuecomment-1621305927)
  - "Update Windows platform support" [rust#115141](https://github.com/rust-lang/rust/pull/115141)
    - concern [needs blog post](https://github.com/rust-lang/rust/pull/115141#issuecomment-1740089459)
  - "make soft_unstable show up in future breakage reports" [rust#116274](https://github.com/rust-lang/rust/pull/116274#issuecomment-1756999638)
  - "Stabilize Wasm target features that are in phase 4 and 5" [rust#117457](https://github.com/rust-lang/rust/pull/117457#issuecomment-1789204219)
- Things in FCP (make sure you're good with it)
  - "Add a stable flag to enable/disable codegen UB checks" [compiler-team#625](https://github.com/rust-lang/compiler-team/issues/625) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20blanket.20flag.20to.20enable.2Fdisable.20code.E2.80.A6.20compiler-team.23625))
    - concern [needs-fcp](https://github.com/rust-lang/compiler-team/issues/625#issuecomment-1672919695)
  - "Report all lints, even if other errors already occurred." [compiler-team#633](https://github.com/rust-lang/compiler-team/issues/633) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Report.20all.20lints.2C.20even.20if.20other.20errors.20al.E2.80.A6.20compiler-team.23633))
    - concern [errors-inherently-higher-priority](https://github.com/rust-lang/compiler-team/issues/633#issuecomment-1545905322)
  - "Add infrastructure to "compute the ABI of a Rust type, described as a C type"" [compiler-team#672](https://github.com/rust-lang/compiler-team/issues/672) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20infrastructure.20to.20.22compute.20the.20ABI.20of.E2.80.A6.20compiler-team.23672))
  - "Support response files generated by ninja with `@ninja:path` syntax" [compiler-team#684](https://github.com/rust-lang/compiler-team/issues/684) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Use.20shell.20parsing.20for.20response.20files.20compiler-team.23684))
  - "Add `-Zexperimental-target`" [compiler-team#685](https://github.com/rust-lang/compiler-team/issues/685) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Zexperimental-target.60.20compiler-team.23685))
    - concern [doesn-t-justify-the-maintenance](https://github.com/rust-lang/compiler-team/issues/685#issuecomment-1804693114)
  - "Tracking issue for dyn upcasting coercion" [rust#65991](https://github.com/rust-lang/rust/issues/65991)
    - Proposal is [now T-lang nominated](https://github.com/rust-lang/rust/issues/65991#issuecomment-1807453403)
- Accepted MCPs
  - "Set alignment of `i128` to 128 bits for x86" [compiler-team#683](https://github.com/rust-lang/compiler-team/issues/683) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Set.20alignment.20of.20.60i128.60.20to.20128.20bits.20compiler-team.23683))
- Finalized FCPs (disposition merge)
  - "TAIT defining scope options" [rust#107645](https://github.com/rust-lang/rust/issues/107645)
  - "dropck_outlives check whether generator witness needs_drop" [rust#117134](https://github.com/rust-lang/rust/pull/117134)

### WG checkins

- @_*WG-async-foundations* by @**nikomatsakis** and @**tmandry**
  > Checkin text

- @_*WG-diagnostics* by @**Esteban Küber** and @_**oli**
  > Checkin text

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: [1.75] "Update to LLVM 17.0.5" [rust#117907](https://github.com/rust-lang/rust/pull/117907)
  - Fixes #116177 perf regression on MIPS
  - nominated by @**nikic**: "Mips is tier 3, but it probably still makes sense to backport this, as the target is currently completely broken." ([comment](https://github.com/rust-lang/rust/pull/117907#issuecomment-1810017882))
  - Note: backport is for the next beta
<!--
/poll Approve beta backport of #117907?
approve
decline
don't know
-->

[T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- Other issues [in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [61 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [32 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 1 P-high, 4 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 3 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 40 P-high, 100 P-medium, 18 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2023-11-14](https://github.com/rylev/rustc-perf/blob/triage-2023-11-14/triage/2023-11-14.md)

A week dominated by one particular perf improvement that lead to huge performance gains - an avg of 5% improvement across 121 test cases! The perf improvement comes from adding an `#[inline]` hint to the output from `#[derive(Debug)]` which presumably allows the compiler to more easily do deadcode elimination reducing the binary size and the amount of code that actually needs to be code-gened.

Triage done by **@rylev**.
Revision range: [7b97a5ca..173b6e68](https://perf.rust-lang.org/?start=7b97a5ca8422d1495a8918106d3249aa405812d4&end=173b6e686b158dbad7d072c64bef3ced2052312b&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 0.9%]    | 10    |
| Regressions (secondary)  | 1.9%  | [0.2%, 3.6%]    | 12    |
| Improvements (primary)   | -5.6% | [-49.2%, -0.1%] | 111   |
| Improvements (secondary) | -3.5% | [-25.0%, -0.2%] | 155   |
| All  (primary)           | -5.1% | [-49.2%, 0.9%]  | 121   |


2 Regressions, 2 Improvements, 3 Mixed; 3 of them in rollups
55 artifact comparisons made in total

#### Regressions

Bump libc dependency [#117617](https://github.com/rust-lang/rust/pull/117617) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9bd71afb90c2a6e0348cdd4a2b10a3bf39908f19&end=118a2deea5f7aba3de1ab13143a998b6bad13704&stat=instructions:u)

| (instructions:u)         | mean | range         | count |
|:------------------------:|:----:|:-------------:|:-----:|
| Regressions (primary)    | 8.3% | [1.1%, 19.0%] | 9     |
| Regressions (secondary)  | -    | -             | 0     |
| Improvements (primary)   | -    | -             | 0     |
| Improvements (secondary) | -    | -             | 0     |
| All  (primary)           | 8.3% | [1.1%, 19.0%] | 9     |
- A curious perf infra glitch - the regression returned to normal after a few runs.


Rollup of 6 pull requests [#117736](https://github.com/rust-lang/rust/pull/117736) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d8dbf7ca0ee9c6da0fd039b1eb8cf7c7cb840f43&end=492e57c6adeb9e7635e9dfb7bab591997edd7f98&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.4% | [0.2%, 0.5%] | 5     |
| Regressions (secondary)  | 0.6% | [0.6%, 0.6%] | 1     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.4% | [0.2%, 0.5%] | 5     |
- The only PR that includes actual changes to the compiler is [#117645](https://github.com/rust-lang/rust/pull/117645). Kicked off a test to see if that's the root cause. 


#### Improvements

Rollup of 4 pull requests [#117680](https://github.com/rust-lang/rust/pull/117680) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=118a2deea5f7aba3de1ab13143a998b6bad13704&end=7adc89b69b941afceadcf8609dd6b2999353e550&stat=instructions:u)

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | -     | -               | 0     |
| Regressions (secondary)  | -     | -               | 0     |
| Improvements (primary)   | -9.1% | [-16.0%, -2.6%] | 7     |
| Improvements (secondary) | -     | -               | 0     |
| All  (primary)           | -9.1% | [-16.0%, -2.6%] | 7     |
- The flip side of [#117617](https://github.com/rust-lang/rust/pull/117617)'s strange perf regression.


Add `std::hash::{DefaultHasher, RandomState}` exports (needs FCP) [#115694](https://github.com/rust-lang/rust/pull/115694) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ed086d86b8b224f7df2da09cf48ac2a654bf841e&end=2c1b65ee1431f8d3fe2142e821eb13c623bbf8a0&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.9% | [-1.2%, -0.4%] | 6     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.9% | [-1.2%, -0.4%] | 6     |


#### Mixed

Only use `normalize_param_env` when normalizing predicate in `check_item_bounds` [#117542](https://github.com/rust-lang/rust/pull/117542) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=750c2ecd1503fe7ff39e41603977d12de33417d8&end=fab1054e1742790c22ccc92a625736d658363677&stat=instructions:u)

| (instructions:u)         | mean   | range           | count |
|:------------------------:|:------:|:---------------:|:-----:|
| Regressions (primary)    | 0.4%   | [0.4%, 0.4%]    | 1     |
| Regressions (secondary)  | 1.4%   | [0.8%, 2.3%]    | 12    |
| Improvements (primary)   | -18.4% | [-49.6%, -0.2%] | 20    |
| Improvements (secondary) | -      | -               | 0     |
| All  (primary)           | -17.5% | [-49.6%, 0.4%]  | 21    |
- Fixing https://github.com/rust-lang/rust/pull/117131#issuecomment-1791852906 and deemed acceptable for the small regressions.


Emit #[inline] on derive(Debug) [#117727](https://github.com/rust-lang/rust/pull/117727) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=eae4135939881ae730342bd336ae6302c3787e27&end=0f44eb32f1123ac93ab404d74c295263ce468343&stat=instructions:u)

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 3.1%  | [0.3%, 13.7%]   | 5     |
| Regressions (secondary)  | 1.8%  | [0.2%, 3.4%]    | 6     |
| Improvements (primary)   | -2.3% | [-10.6%, -0.1%] | 110   |
| Improvements (secondary) | -3.2% | [-25.2%, -0.1%] | 177   |
| All  (primary)           | -2.1% | [-10.6%, 13.7%] | 115   |
- Huge wins outweigh the small losses.


Rollup of 6 pull requests [#117769](https://github.com/rust-lang/rust/pull/117769) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0f44eb32f1123ac93ab404d74c295263ce468343&end=d42d73b144fbb6ccc9684b197a3b6ed53592d09b&stat=instructions:u)

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.3%, 0.3%]    | 1     |
| Regressions (secondary)  | 1.0%  | [1.0%, 1.0%]    | 1     |
| Improvements (primary)   | -6.5% | [-12.3%, -0.7%] | 2     |
| Improvements (secondary) | -     | -               | 0     |
| All  (primary)           | -4.2% | [-12.3%, 0.3%]  | 3     |
- Noise


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "RFC: Packages as (optional) namespaces" [rfcs#3243](https://github.com/rust-lang/rfcs/pull/3243)
  - See relevant [Zulip topic](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/Review.20for.20RFC.233243/near/400778424)
  - (will now remove the nomination label, the RFC has been widely announced)

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Require `type_map::stub` callers to supply file information" [rust#104342](https://github.com/rust-lang/rust/pull/104342) (last review activity: 5 months ago)
  - cc: @**wesley wiser**
  - looking closely at [this comment](https://github.com/rust-lang/rust/pull/104342#issuecomment-1595588331), seems the PR author is asking for guidance on how to implement a `-Z` flag.
- "Add illumos aarch64 target for rust." [rust#112936](https://github.com/rust-lang/rust/pull/112936) (last review activity: 4 months ago)
  - cc: @**jack huey**
  - PR seems approved ([comment](https://github.com/rust-lang/rust/pull/112936#issuecomment-1754092872)), maybe just needs a little nudge from the assigned reviewer?
- "fix(parse): avoid panic when cfg wrapper by bracket under `capture-cfg` mode" [rust#113056](https://github.com/rust-lang/rust/pull/113056) (last review activity: 3 months ago)
  - cc: @**Aaron Hill** (reviewer assigned by @_**davidtwco**)
- "Add `$message_type` field to distinguish json diagnostic outputs" [rust#115691](https://github.com/rust-lang/rust/pull/115691) (last review activity: 2 months ago)
  - Waits for [mcp#674](https://github.com/rust-lang/compiler-team/issues/674) now a FCP ([comment](https://github.com/rust-lang/rust/pull/115691#issuecomment-1712556480))
  - missing a few checkboxes from T-compiler
- "Try to use approximate placeholder regions when outputting an AscribeUserType error in borrowck" [rust#116097](https://github.com/rust-lang/rust/pull/116097) (last review activity: about 52 days ago)
  - cc: @**wesley wiser**

## Next triage meeting on <time:2023-11-30T16:00:00+01:00> 