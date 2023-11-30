---
tags: weekly, rustc
type: docs
note_id: I7BHh5YMReC2jAyhFwUwSQ
---

# T-compiler Meeting Agenda 2023-10-26

## Announcements

- [Compiler Team Steering Meeting - P-high review](https://www.google.com/calendar/event?eid=NnB2MDFtaGRhYTc4bXUwOWpxbjVkMm5lM3YgNnU1cnJ0Y2U2bHJ0djA3cGZpM2RhbWdqdXNAZw) at <time:2023-10-27T10:00:00-04:00>
- [Types team meeting: roadmap draft review [jackh726]](https://www.google.com/calendar/event?eid=MTg3MDhpdTc3YXBqMGMzbnNxanUwdWZnazhfMjAyMzEwMzBUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-10-30T10:00:00-04:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- [AFIT/RPITIT Impl Triage](https://www.google.com/calendar/event?eid=N2VsaWszdm9rY3NhdDF1MjdyMjVqajNpcWVfMjAyMzEwMjZUMjAwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-10-26T16:00:00-04:00>
- [[Types] Rotating new solver / formality / polonius deep dive](https://www.google.com/calendar/event?eid=N29vMXZqbGZ1MDIxbzllMDI3dGhocWhhZmNfMjAyMzEwMzBUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-10-30T11:00:00-04:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - None at this time
- Pending FCP requests (check your boxes!)
  - "Add `$message_type` field to distinguish json diagnostic outputs" [compiler-team#673](https://github.com/rust-lang/compiler-team/issues/673) 
  - "Add a new `--build-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20new.20.60--build-id.60.20flag.20to.20rustc.20compiler-team.23635))
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
  - "Stabilize `--json=unused-externs(-silent)`" [compiler-team#674](https://github.com/rust-lang/compiler-team/issues/674) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stabilize.20.60--json.3Dunused-externs.28-silent.29.60.20compiler-team.23674))
  - "Tracking issue for dyn upcasting coercion" [rust#65991](https://github.com/rust-lang/rust/issues/65991)
  - "Support overriding `warnings` level for a specific lint via command line" [rust#113307](https://github.com/rust-lang/rust/pull/113307)
  - "Update Windows platform support" [rust#115141](https://github.com/rust-lang/rust/pull/115141)
  - "make soft_unstable show up in future breakage reports" [rust#116274](https://github.com/rust-lang/rust/pull/116274)
- Things in FCP (make sure you're good with it)
  - "Add a stable flag to enable/disable codegen UB checks" [compiler-team#625](https://github.com/rust-lang/compiler-team/issues/625) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20blanket.20flag.20to.20enable.2Fdisable.20code.E2.80.A6.20compiler-team.23625))
  - "Report all lints, even if other errors already occurred." [compiler-team#633](https://github.com/rust-lang/compiler-team/issues/633) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Report.20all.20lints.2C.20even.20if.20other.20errors.20al.E2.80.A6.20compiler-team.23633))
  - "Match the behavior of `strip` and `split-debuginfo` across platforms" [compiler-team#669](https://github.com/rust-lang/compiler-team/issues/669) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Match.20the.20behavior.20of.20.60strip.60.20and.20.60split-.E2.80.A6.20compiler-team.23669))
  - "Add infrastructure to "compute the ABI of a Rust type, described as a C type"" [compiler-team#672](https://github.com/rust-lang/compiler-team/issues/672) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20infrastructure.20to.20.22compute.20the.20ABI.20of.E2.80.A6.20compiler-team.23672))
  - "Stabilize `--json=unused-externs(-silent)`" [compiler-team#674](https://github.com/rust-lang/compiler-team/issues/674) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stabilize.20.60--json.3Dunused-externs.28-silent.29.60.20compiler-team.23674))
  - "Have `rustc` produce a local log of execution metrics" [compiler-team#679](https://github.com/rust-lang/compiler-team/issues/679) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-t-compiler.2Fmajor-changes/topic/Have.20.60rustc.60.20produce.20a.20local.20log.20of.20execu.E2.80.A6.20compiler-team.23679))
  - "Remove support for compiler plugins." [rust#116412](https://github.com/rust-lang/rust/pull/116412)
- Accepted MCPs
  - "Enable Parallel Rustc Front End In Nightly Builds" [compiler-team#681](https://github.com/rust-lang/compiler-team/issues/681) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Enable.20Parallel.20Rustc.20Front.20End.20In.20Nightl.E2.80.A6.20compiler-team.23681))
  - "Rename generator to coroutine" [compiler-team#682](https://github.com/rust-lang/compiler-team/issues/682) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20generator.20to.20coroutine.20compiler-team.23682))
- Finalized FCPs (disposition merge)
  - "rustdoc: align stability badge to baseline instead of bottom" [rust#105666](https://github.com/rust-lang/rust/pull/105666)
  - "document ABI compatibility" [rust#115476](https://github.com/rust-lang/rust/pull/115476)

### WG checkins

- @_*WG-diagnostics* by @**Esteban Küber** and @**oli** ([previous checkin](https://hackmd.io/c9KaX3GNRZSKbIUp3SJpJw#WG-checkins)):
  > Checkin text

- @_*WG-rustc-dev-guide* by @**Santiago Pastorino** and @**Yuki Okushi|217081** ([previous checkin](https://hackmd.io/0I_xYjKMSc6lYT655FpWbg#WG-checkins)):
  > ### Most notable changes
  >
  > - Start a chapter about the evolving const effect system [#1808](https://github.com/rust-lang/rustc-dev-guide/pull/1808)
  > - Document subtle implied bounds issue in RPITIT inference [#1807](https://github.com/rust-lang/rustc-dev-guide/pull/1807)
  > - update new trait solver docs [#1802](https://github.com/rust-lang/rustc-dev-guide/pull/1802)
  > - Clarify all the `{AP,RP}IT{,IT}` impl trait types [#1798](https://github.com/rust-lang/rustc-dev-guide/pull/1798)
  > - Add deep dive document about early/late bound parameters interacting with turbofish [#1794](https://github.com/rust-lang/rustc-dev-guide/pull/1794)
  > - explain the MIR const vs TY const situation [#1793](https://github.com/rust-lang/rustc-dev-guide/pull/1793)
  > - Document the `coverage-map` and `run-coverage` test suites [#1790](https://github.com/rust-lang/rustc-dev-guide/pull/1790)
  > - Add section about building an optimized version of `rustc` [#1787](https://github.com/rust-lang/rustc-dev-guide/pull/1787)
  > - Add dropck documentation [#1767](https://github.com/rust-lang/rustc-dev-guide/pull/1767)
  > - Add RPITIT documentation [#1764](https://github.com/rust-lang/rustc-dev-guide/pull/1764)
  > - Explain more in depth what early and late bound generic parameters are [#1732](https://github.com/rust-lang/rustc-dev-guide/pull/1732)
  > - add section for normalization with the new solver [#1731](https://github.com/rust-lang/rustc-dev-guide/pull/1731)
  > - various fixes/improvements to Contributing chapter [#1723](https://github.com/rust-lang/rustc-dev-guide/pull/1723)
  > - document `./x test --rustc-args` option [#1719](https://github.com/rust-lang/rustc-dev-guide/pull/1719)
  >
  > ### Most notable WIPs
  >
  > - Update some outdated descriptions of coverage instrumentation [#1809](https://github.com/rust-lang/rustc-dev-guide/pull/1809)
  > - update some of the diagnostic translations info [#1711](https://github.com/rust-lang/rustc-dev-guide/pull/1711)
  > - rewrite bootstrapping stages [#1650](https://github.com/rust-lang/rustc-dev-guide/pull/1650)
  > - new chapter with examples of diagnostic translation PRs [#1621](https://github.com/rust-lang/rustc-dev-guide/pull/1621)
  > - Add back the `canonicalization` chapter. [#1532](https://github.com/rust-lang/rustc-dev-guide/pull/1532)
  > - Improve documentation of MIR queries & passes [#1434](https://github.com/rust-lang/rustc-dev-guide/pull/1434)
  > - Document inert vs active attributes [#1110](https://github.com/rust-lang/rustc-dev-guide/pull/1110)

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "dropck_outlives check whether generator witness needs_drop" [rust#117134](https://github.com/rust-lang/rust/pull/117134)
  - Currently waiting on perf. results and [RFC voting](https://github.com/rust-lang/rust/pull/117134#issuecomment-1780591398d)
  - T-compiler label was removed so is it fair to assume it's now fully in T-types hands?
<!--
/poll Approve beta backport of #117134?
approve
decline
don't know
-->
- :beta: "Avoid unbounded O(n^2) when parsing nested type args" [rust#117143](https://github.com/rust-lang/rust/pull/117143)
  - "When encountering code like f::<f::<f::<f::<f::<f::<f::<f::<... with unmatched closing angle brackets, add a linear check that avoids the exponential behavior of the parse recovery mechanism."
  - Fixes #117080 and #115414 (compiler `OOM`s)
<!--
/poll Approve beta backport of #117143?
approve
decline
don't know
-->
- No stable nominations for `T-compiler` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- Other issues [in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [65 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [36 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 3 P-high, 2 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 3 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 41 P-high, 100 P-medium, 19 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Code no longer compiles after -Zdrop-tracking-mir was enabled by default" [rust#116242](https://github.com/rust-lang/rust/issues/116242)
  - being handled by @**lcnr** + @**Santiago Pastorino** in [rust#117134](https://github.com/rust-lang/rust/pull/117134), thanks!

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "regression: parameter type may not live long enough" [rust#117055](https://github.com/rust-lang/rust/issues/117055)
  - RFC'd by T-types ([comment](https://github.com/rust-lang/rust/issues/117055#issuecomment-1775391986)). Decided it's an acceptable breaking change for a fix (downstream crates will need to update their code)
- "regression: new resolution failures in 1.74" [rust#117056](https://github.com/rust-lang/rust/issues/117056)
  - @**lqd** bisected to possibly #115834 ([comment](https://github.com/rust-lang/rust/issues/117056#issuecomment-1775014545))
  - @**Michael (compiler-errors) Goulet**  will be looking into it
- "regression: change in async capture rules?" [rust#117059](https://github.com/rust-lang/rust/issues/117059)
  - Duplicate of [rust#116242](https://github.com/rust-lang/rust/issues/116242), under T-types scrutiny (`I-types-nominated`)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2023-10-24?](https://github.com/rust-lang/rustc-perf/tree/master/triage#triage-logs)

TODO

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "tidy watcher" [rust#114209](https://github.com/rust-lang/rust/pull/114209)
  - Creates a [static watchlist](https://github.com/rust-lang/rust/pull/114209/files#diff-49631d09510c8623da388653d9b05a583117937ec65d6764068f13c80254b4ecR102) of code in different places, checks when not in sync anymore ([relevant code](https://github.com/rust-lang/rust/pull/114209/files#diff-49631d09510c8623da388653d9b05a583117937ec65d6764068f13c80254b4ec))
  - nominated by @**cjgillot** for visibility ([comment](https://github.com/rust-lang/rust/pull/114209#issuecomment-1747239041)) i.e. "is this potentially useful work?"
- "Code no longer compiles after -Zdrop-tracking-mir was enabled by default" [rust#116242](https://github.com/rust-lang/rust/issues/116242)
  - Probably handled by T-types and solved by #117134
  - anything to add? can remove `I-compiler-nominated`?

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Require `type_map::stub` callers to supply file information" [rust#104342](https://github.com/rust-lang/rust/pull/104342) (last review activity: 4 months ago)
  - @**Wesley Wiser** rerolling this one, if it's ok for you?
- "Try to use approximate placeholder regions when outputting an AscribeUserType error in borrowck" [rust#116097](https://github.com/rust-lang/rust/pull/116097) (last review activity: about 31 days ago)
  - cc: @**Wesley Wiser** 
- "Stabilize target_feature_11" [rust#116114](https://github.com/rust-lang/rust/pull/116114) (last review activity: about 31 days ago)
  - [RFC#2396](https://github.com/gnzlbg/rfcs/blob/71b9069938ba6f0d4a75427f19d7ff859d5fdcb6/text/0000-target-feature-1.1.md)
  - Unsure if the review at this stage is more for T-lang or T-compiler

## Next week's WG checkins

- Impl Trait initiative by @**oli**
- @_*WG-llvm* by @**nagisa** and @**Nikita Popov**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/S1BJlkBQTOikfnCtr1BOiw)
