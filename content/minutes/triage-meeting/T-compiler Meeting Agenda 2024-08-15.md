---
tags: weekly, rustc
type: docs
note_id: pxKZfm4kToGkN9V1pC8L1Q
---

# T-compiler Meeting Agenda 2024-08-15

## Announcements

- Today released dot release 1.80.1: https://blog.rust-lang.org/2024/08/08/Rust-1.80.1.html
- Also published list of Project Goals 2024! https://blog.rust-lang.org/2024/08/12/Project-goals.html
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings
- Types Team: ITE (Impl Trait Everywhere) Triage <time:2024-08-15T22:00:00+01:00>
- wg-rust-analyzer steering meeting on Zulip (https://rust-lang.zulipchat.com/#narrow/stream/185405-t-compiler.2Fwg-rls-2.2E0/topic/Steering.20meeting) <time:2024-08-15T17:00:00+01:00>
- wg-macros triage meeting Zulip (https://rust-lang.zulipchat.com/#narrow/stream/410876-wg-macros.2Ftriage) <time:2024-08-15T18:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Don't track `--emit=` options as part of crate SVH" [compiler-team#769](https://github.com/rust-lang/compiler-team/issues/769) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Don.27t.20track.20.60--emit.3D.60.20options.20as.20part.20of.20.E2.80.A6.20compiler-team.23769))
  - "Opt-in flag for absolute paths in diagnostics" [compiler-team#770](https://github.com/rust-lang/compiler-team/issues/770) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Opt-in.20flag.20for.20absolute.20paths.20in.20diagnos.E2.80.A6.20compiler-team.23770))
  - "`--msrv=version` option so the compiler can take MSRV into account when linting" [compiler-team#772](https://github.com/rust-lang/compiler-team/issues/772) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.60-C.20msrv.3Dversion.60.20option.20so.20the.20compiler.20.E2.80.A6.20compiler-team.23772))
  - "Enable `deny(unreachable_pub)` on `rustc_*` crates" [compiler-team#773](https://github.com/rust-lang/compiler-team/issues/773) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23773))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 7 months ago)
    - concern: [added-complexity-to-frontend](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-1845169318)
  - "Target families for executable format" [compiler-team#716](https://github.com/rust-lang/compiler-team/issues/716) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Target.20families.20for.20executable.20format.20compiler-team.23716)) (last review activity: 6 months ago)
  - "Partial compilation using MIR-only rlibs" [compiler-team#738](https://github.com/rust-lang/compiler-team/issues/738) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Partial.20compilation.20using.20MIR-only.20rlibs.20compiler-team.23738)) (last review activity: 4 months ago)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: 3 months ago)
- Pending FCP requests (check your boxes!)
  - merge: [sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets (rust#123617)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2135121317)
    - no pending checkboxes
    - concerns: [stabilization-scope (by wesleywiser)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2192330122)
- Things in FCP (make sure you're good with it)
  - "Stabilize `raw_ref_op` (RFC 2582)" [rust#127679](https://github.com/rust-lang/rust/pull/127679)
- Accepted MCPs
  - No new accepted proposals this time.
- MCPs blocked on unresolved concerns
  - merge: [Add a new `--build-id` flag to rustc (compiler-team#635)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1777545767)
    - @_**|125250** @_**|116107** @_**|125294** @_**|123856**
    - concerns: [other-existing-options (by petrochenkov)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1779597156) [option-name (by wesleywiser)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1785349936)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
  - merge: [Add `--print host-triple` to print host target triple (rust#125579)](https://github.com/rust-lang/rust/pull/125579#issuecomment-2133192548)
    - @_**|232957**
    - concerns: [triple vs tuple (by lcnr)](https://github.com/rust-lang/rust/pull/125579#issuecomment-2133938172)
- Finalized FCPs (disposition merge)
  - "Disallow setting some built-in cfg via the command-line" [rust#126158](https://github.com/rust-lang/rust/pull/126158)
- Other teams finalized FCPs
  - "Enforce supertrait outlives obligations hold when confirming impl" [rust#124336](https://github.com/rust-lang/rust/pull/124336)
  - "turn `invalid_type_param_default` into a `FutureReleaseErrorReportInDeps`" [rust#127655](https://github.com/rust-lang/rust/pull/127655)
  - "Stabilize unsafe extern blocks (RFC 3484)" [rust#127921](https://github.com/rust-lang/rust/pull/127921)
  - "Unify run button display with "copy code" button and with mdbook buttons" [rust#128394](https://github.com/rust-lang/rust/pull/128394)

### WG checkins

None

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta:"Do not apply `#[do_not_recommend]` if the feature flag is not set" [rust#128674](https://github.com/rust-lang/rust/pull/128674)
  - Authored by weiznich
  - Adds additional checks for the feature flag (as apparently it is possible to use this on a beta compiler without feature flags).
  - Fixes an issue reported on Bevy ([link](https://github.com/bevyengine/bevy/issues/14591#issuecomment-2266213084))
  - Michael suggests backporting either this or #128912 ([comment](https://github.com/rust-lang/rust/pull/128674#issuecomment-2285081667))
<!--
/poll Approve beta backport of #128674?
approve
deny
don't know
-->
- :beta:"Store `do_not_recommend`-ness in impl header" [rust#128912](https://github.com/rust-lang/rust/pull/128912)
  - Authored by compiler-errors
  - Alternate approach to #128674:
  > This only affects the error path, but it's still strange and probably not something we want users to rely on implicitly.
  > It's less flexible, but also less invasive. Hopefully it's also performant.
<!--
/poll Approve beta backport of #128912?
approve
deny
don't know
-->
- :beta:"Revert #125915 on beta" [rust#128760](https://github.com/rust-lang/rust/pull/128760)
  - Authored by BoxyUwU
  - Fixes #128016 (P-critical), reverts #125915:
  > This reverts commit #125915 on beta preventing #128016 from reaching stable. This breaks the `argon2rs` crate which causes a fair amount of downstream breakage of random projects. I don't think its necessarily a huge deal but this was an incredibly clean revert and it does prevent breakage of code that used to work so I think this is worth it.
<!--
/poll Approve beta backport of #128760?
approve
deny
don't know
-->
- :beta:"derive(SmartPointer): register helper attributes" [rust#128925](https://github.com/rust-lang/rust/pull/128925)
  - Authored by dingxiangfei2009
  - Fixes #128888, P-high beta regression found by a crater run
<!--
/poll Approve beta backport of #128925?
approve
deny
don't know
-->
- :beta:"Fix bug in `Parser::look_ahead`." [rust#128994](https://github.com/rust-lang/rust/pull/128994)
  - Authored by nnethercote
  - Fixes #128895, P-high beta regression found by a crater run
<!--
/poll Approve beta backport of #128994?
approve
deny
don't know
-->
- No stable nominations for `T-compiler` this time.

[T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "[crater] Make `missing_fragment_specifier` an unconditional error" [rust#128425](https://github.com/rust-lang/rust/pull/128425)
  - See issue nominated for discussion
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [67 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [39 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [2 P-critical, 3 P-high, 3 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 5 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 36 P-high, 100 P-medium, 16 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "ICE: `adding a def'n for node-id NodeId(18) and def kind AnonConst but a previous def'n exists`" [rust#128016](https://github.com/rust-lang/rust/issues/128016)
  - Reverted in beta by #128760
  - Will be fixed by #128844
- "regression: adding a def'n for node-id NodeId(597) and def kind AnonConst but a previous def'n exists" [rust#128901](https://github.com/rust-lang/rust/issues/128901)
  - Can't find a discussion but since it's a duplicate of #128016, assumed it will be fixed by #128760

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "regression: overflow evaluating the requirement" [rust#128887](https://github.com/rust-lang/rust/issues/128887)
  - Breaking change introduced in #126128, which could be accepted ([comment](https://github.com/rust-lang/rust/issues/128887#issuecomment-2283315016))
- "regression: expected one of `!`, `(`, `+`, `::`, `<`, `>`, or `as`, found `:`" [rust#128895](https://github.com/rust-lang/rust/issues/128895)
  - fixed by #128994 (nominated for beta backport)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- "Generated WebAssembly unexpectedly requires reference types" [rust#128475](https://github.com/rust-lang/rust/issues/128475)
  - (discussed last week)
  - Alex Chrichton authored #128511

## Performance logs

> [triage logs for 2024-08-13](https://github.com/rust-lang/rustc-perf/blob/master/triage/2024-08-13.md)

A big week for compiler performance brought on mostly by statically linking the std library into `rustc_driver` instead of dynamic linking. This overshadows all other improvements and regressions that were seen this week.

Triage done by **@rylev**.
Revision range: [8c7e0e16..9cb1998e](https://perf.rust-lang.org/?start=8c7e0e160831866bc1a40691a39455aac21271c0&end=9cb1998ea15e179482504e07cad8fa121e169a32&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.3% | [-2.9%, -0.2%] | 217   |
| Improvements (secondary) | -1.4% | [-4.9%, -0.2%] | 196   |
| All  (primary)           | -1.3% | [-2.9%, -0.2%] | 217   |


2 Regressions, 2 Improvements, 2 Mixed; 1 of them in rollups
35 artifact comparisons made in total

#### Regressions

Rollup of 7 pull requests [#128768](https://github.com/rust-lang/rust/pull/128768) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2f3dc46465c04d10cb74d34b1bd80c3ebfdc05bf&end=6a2cd0d50c9b7e1243d948641758c76d1f22e25e&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.4% | [0.4%, 0.4%] | 1     |
| Regressions (secondary)  | 0.3% | [0.2%, 0.4%] | 11    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.4% | [0.4%, 0.4%] | 1     |
- All docs regressions caused by [#128417](https://github.com/rust-lang/rust/pull/128417) which is simply just documenting more.


Stabilize `min_exhaustive_patterns` [#122792](https://github.com/rust-lang/rust/pull/122792) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=48090b11b52bd841fa89082cdaa4c139f11995f7&end=8291d68d926cedcdc77973e4c68f0828156d5bd8&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.8% | [0.3%, 1.5%] | 13    |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.8% | [0.3%, 1.5%] | 13    |
- Seems this has a negative impact on the performance of coherence checking which I imagine is expected.
- Confirming with the author/reviewer.


#### Improvements

Cache supertrait outlives of impl header for soundness check [#128746](https://github.com/rust-lang/rust/pull/128746) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7347f8e4e007fbb3712364bc174476f5f55a6da4&end=48090b11b52bd841fa89082cdaa4c139f11995f7&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 1     |
| Regressions (secondary)  | 0.0%  | [0.0%, 0.0%]   | 1     |
| Improvements (primary)   | -0.5% | [-1.3%, -0.2%] | 69    |
| Improvements (secondary) | -1.8% | [-3.8%, -0.2%] | 30    |
| All  (primary)           | -0.5% | [-1.3%, 0.2%]  | 70    |


Link `std` statically in `rustc_driver` [#122362](https://github.com/rust-lang/rust/pull/122362) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5e5ec8af1b34a71fbf0063586a70bae7460a892a&end=9cb1998ea15e179482504e07cad8fa121e169a32&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.0% | [-2.0%, -0.2%] | 229   |
| Improvements (secondary) | -1.0% | [-2.0%, -0.2%] | 222   |
| All  (primary)           | -1.0% | [-2.0%, -0.2%] | 229   |


#### Mixed

Only walk ribs to collect possibly shadowed params if we are adding params in our new rib [#128550](https://github.com/rust-lang/rust/pull/128550) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=86e7875c13f048ed03d413aa83215df94f0467e8&end=0d65e5a1806db2662ba6a34d89c3b4bc506fb59a&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 2.2%  | [2.2%, 2.2%]   | 1     |
| Improvements (primary)   | -0.6% | [-2.0%, -0.2%] | 31    |
| Improvements (secondary) | -0.3% | [-0.3%, -0.2%] | 6     |
| All  (primary)           | -0.6% | [-2.0%, -0.2%] | 31    |
- Regression seems to be noise.


Apply "polymorphization at home" to RawVec [#126793](https://github.com/rust-lang/rust/pull/126793) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9cb1998ea15e179482504e07cad8fa121e169a32&end=ba33d7b0ae7e8081a59ca8f768202290c6903405&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.2%, 1.6%]   | 98    |
| Regressions (secondary)  | 0.4%  | [0.1%, 1.2%]   | 125   |
| Improvements (primary)   | -1.0% | [-3.5%, -0.2%] | 51    |
| Improvements (secondary) | -1.3% | [-2.9%, -0.3%] | 13    |
| All  (primary)           | -0.0% | [-3.5%, 1.6%]  | 149   |
- "there's a bunch of instruction regressions -- improvements too, but fewer of those -- but looking at cycles, wall time, bootstrap, and binary size it looks consistently great. And the overall approach is good, so there should be space to get smaller improvements with tweaks to things like mir inlining"

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "ill-typed unused FFI declarations can cause UB" [rust#46188](https://github.com/rust-lang/rust/issues/46188)
  - Discussed last week but didn't finish ([comment](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202024-08-08/near/457394621))
  - Discussion can resume from [here](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202024-08-08/near/457396215) about landing #128247 as a mitigation
  - Should be a T-lang discussion?
- "[crater] Make `missing_fragment_specifier` an unconditional error" [rust#128425](https://github.com/rust-lang/rust/pull/128425)
  - Nominated by @**Trevor Gross** ([comment](https://github.com/rust-lang/rust/pull/128425#issuecomment-2287923502))
  - Asks to evaluate the fallout of making this an error ([comment](https://github.com/rust-lang/rust/pull/128425#issuecomment-2287923502))
- "type_id is not sufficiently collision-resistant" [rust#129014](https://github.com/rust-lang/rust/issues/129014)
  - authored and nominated by @**RalfJ**
  - See opening comment
- "Tracking Issue for the C-cmse-nonsecure-call ABI" [rust#81391](https://github.com/rust-lang/rust/issues/81391)
  - nominated by @**Jieyou Xu** ([comment](https://github.com/rust-lang/rust/issues/81391#issuecomment-2267314513)):
  - also nominated for T-lang
  - Does this need an MCP/FCP for stabilization, or does this need further design?
  - Does this need a joint T-compiler/T-lang FCP?
  - We should help the people working on cmse-related things to find knowledgeable reviewers / domain experts who can help reviewing the changes, or otherwise provide advice on how to split related PRs for easier reviewing.
  - Are cmse-related efforts being tracked anywhere?
- "[DRAFT] #[contracts::requires(...)]" [rust#128045](https://github.com/rust-lang/rust/pull/128045)
  - nominated by @**Jieyou Xu** ([comment](https://github.com/rust-lang/rust/pull/128045#issuecomment-2267121847)): looking for a reviewer familiar with attribute handling / HIR/MIR changes
  - Felix left a [comment](https://github.com/rust-lang/rust/pull/128045#issuecomment-2269302031): this is no longer "ready for review" -- the review feedback has made it clear that this should not land as-is
  - The current challenge seems to be that existing attribute handling only supports a "single path segment", i.e. `#[contracts(<inner_expr>)]` but not `#[contracts::requires(<inner_expr>)]`. We also can't trivially reuse existing `register_attr!` or visitor because they impose strict limits on the `<inner_expr>` and require it to be very primitive (like literals or identifiers or simple lists) but does not support arbitrary expressions like `x > 0`. To support the arbitrary inner expression (in that it may not necessarily be a valid rust expression), it may require relaxing that restriction, but it may raise further parsing/grammar questions. It's not clear what's the best path forward here.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

Skipping this week

## Next week's WG checkins

None

Next meetings' agenda draft: [hackmd link](https://hackmd.io/YJn8yQCVTfqDpW_nVTUfow)
