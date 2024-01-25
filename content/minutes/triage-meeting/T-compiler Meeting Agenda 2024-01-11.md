---
tags: weekly, rustc
type: docs
note_id: 9uykm3hKQkiNVxHG_w33vQ
---

# T-compiler Meeting Agenda 2024-01-11

## Announcements

- Big rework of the [meetings calendar](https://github.com/rust-lang/calendar), thanks @**davidtwco** ([Zulip topic](https://rust-lang.zulipchat.com/#narrow/stream/217588-project-leads-.28public.29/topic/team.20calendars/near/411714819))!
- Compiler Team Planning meeting <time:2024-01-12T16:00:00+01:00> ?
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- Stable MIR Weekly <time:2024-01-12T16:00:00+01:00>
- wg-macros Triage <time:2024-01-11T17:00:00+01:00>
- Types Team Meeting <time:2024-01-14T16:00:00+01:00>
- Types Team: Rotating Solver/Formality/Polonius Deep Dive <time:2024-01-14T17:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Semantics of `-Cinstrument-coverage=all`" [compiler-team#690](https://github.com/rust-lang/compiler-team/issues/690) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Semantics.20of.20.60-Cinstrument-coverage.3Dall.60.20compiler-team.23690)) (last review activity: about 29 days ago)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: about 29 days ago)
  - "Introduce perma-unstable `wasm-c-abi` flag" [compiler-team#703](https://github.com/rust-lang/compiler-team/issues/703) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Introduce.20perma-unstable.20.60wasm-c-abi.60.20flag.20compiler-team.23703)) (last review activity: about 27 days ago)
  - "Support patchable-function-entry" [compiler-team#704](https://github.com/rust-lang/compiler-team/issues/704) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Support.20patchable-function-entry.20compiler-team.23704)) (last review activity: about 27 days ago)
  - "Add -Z direct-access-external-data" [compiler-team#707](https://github.com/rust-lang/compiler-team/issues/707) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20-Z.20direct-access-external-data.20compiler-team.23707)) (last review activity: about 1 days ago)
- Pending FCP requests (check your boxes!)
  - "Add a new `--build-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1777545767) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20new.20.60--build-id.60.20flag.20to.20rustc.20compiler-team.23635))
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618781780) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
  - "Stabilize `--json=unused-externs(-silent)`" [compiler-team#674](https://github.com/rust-lang/compiler-team/issues/674#issuecomment-1740243111) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stabilize.20.60--json.3Dunused-externs.28-silent.29.60.20compiler-team.23674))
  - "Support overriding `warnings` level for a specific lint via command line" [rust#113307](https://github.com/rust-lang/rust/pull/113307#issuecomment-1621305927)
  - "Update Windows platform support" [rust#115141](https://github.com/rust-lang/rust/pull/115141#issuecomment-1740089459)
  - "Stabilize Wasm target features that are in phase 4 and 5" [rust#117457](https://github.com/rust-lang/rust/pull/117457#issuecomment-1789204219)
  - "Undeprecate lint `unstable_features` and make use of it in the compiler" [rust#118639](https://github.com/rust-lang/rust/pull/118639#issuecomment-1864781050)
- Things in FCP (make sure you're good with it)
  - "Add a stable flag to enable/disable codegen UB checks" [compiler-team#625](https://github.com/rust-lang/compiler-team/issues/625) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20blanket.20flag.20to.20enable.2Fdisable.20code.E2.80.A6.20compiler-team.23625))
  - "Stabilize `--json=unused-externs(-silent)`" [compiler-team#674](https://github.com/rust-lang/compiler-team/issues/674) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stabilize.20.60--json.3Dunused-externs.28-silent.29.60.20compiler-team.23674))
  - "New Tier-3 target: `wasm32-wasi-preview2`" [compiler-team#694](https://github.com/rust-lang/compiler-team/issues/694) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/New.20Tier-3.20target.3A.20.60wasm32-wasi-preview2.60.20compiler-team.23694))
  - "Smooth the renaming transition of `wasm32-wasi`" [compiler-team#695](https://github.com/rust-lang/compiler-team/issues/695) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Smooth.20the.20renaming.20transition.20of.20.60wasm32.E2.80.A6.20compiler-team.23695))
  - "Provide option to shorten symbol names by replacing them with a digest" [compiler-team#705](https://github.com/rust-lang/compiler-team/issues/705) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/new.20option.20to.20reduce.20the.20size.20of.20dylib.20compiler-team.23705))
  - "uplift some -Zverbose calls and rename to -Zverbose-internals" [compiler-team#706](https://github.com/rust-lang/compiler-team/issues/706) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/merge.20-Zverbose.20into.20--verbose.20compiler-team.23706))
  - "Start using clippy on rustc" [compiler-team#709](https://github.com/rust-lang/compiler-team/issues/709) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Start.20using.20clippy.20on.20rustc.20compiler-team.23709))
  - "Promote tier 3 `*-pc-windows-gnullvm` targets to tier 2" [compiler-team#710](https://github.com/rust-lang/compiler-team/issues/710) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20.60.2A-pc-windows-gnullvm.60.20tar.E2.80.A6.20compiler-team.23710))
  - "Unstably support MIR-only rlibs" [compiler-team#713](https://github.com/rust-lang/compiler-team/issues/713) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Unstably.20support.20MIR-only.20rlibs.20compiler-team.23713))
  - "Warn on references casting to bigger memory layout" [rust#118983](https://github.com/rust-lang/rust/pull/118983)
  - "const-eval interning: get rid of type-driven traversal" [rust#119044](https://github.com/rust-lang/rust/pull/119044)
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - No new finished FCP (disposition merge) this time.

### WG checkins

None this week

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "[beta] Revert #117472: Stabilize C string literals" [rust#119528](https://github.com/rust-lang/rust/pull/119528)
  - Revert authored by Wesley, [T-lang discussion](https://rust-lang.zulipchat.com/#narrow/stream/213817-t-lang/topic/rfc.203349.3A.20mixed.20utf8.20literals/near/409534224)
<!--
/poll Approve beta backport of #119528?
approve
decline
don't know
-->
- :beta: "Update LLVM submodule" [rust#119802](https://github.com/rust-lang/rust/pull/119802)
  - Not yet merged. Fixes a number of P-highs: Fixes #118867 #119160 #119179
<!--
/poll Approve beta backport of #119528?
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
- "large_assignments: Lint on specific large args passed to functions" [rust#116520](https://github.com/rust-lang/rust/pull/116520)
  - Seems there are some perf. regressions (in part already discussed). Maybe add a comment to help take a decision and unblock?
- Other issues [in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [60 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [31 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 1 P-high, 3 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 2 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 41 P-high, 100 P-medium, 18 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "🐛 Symbol multiply defined since nightly-2023-12-02 with custom builtins." [rust#118609](https://github.com/rust-lang/rust/issues/118609)
  - Discussed also last week ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202024-01-04/near/411206766))
  - Wesley [said](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202024-01-04/near/411210073)
    > Let's revisit this next week. It looks like work is actively happening here so while I think a temporary revert is potentially a good idea, let's give the author some time to propose a fix or argue why this should not be supported at all.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2024-01-08](https://github.com/rust-lang/rustc-perf/blob/master/triage/2024-01-08.md)

Not a particularly notable week. Large swings aren't spurious but also are
driven by changes in high-level behavior (diagnostics going from zero to one
emission primarily), which causes a lot more work to happen. This isn't really
representative of the underlying rustc performance changing though.

Triage done by **@simulacrum**.
Revision range: [67b6975051b83ef2bd28f06e8467470d570aceb3..76101eecbe9aa80753664bbe637ad06d1925f315](https://perf.rust-lang.org/?start=67b6975051b83ef2bd28f06e8467470d570aceb3&end=76101eecbe9aa80753664bbe637ad06d1925f315&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌(primary)  | 4.9%  | [0.2%, 24.3%]  | 14    |
| Regressions (secondary)  | 4.6%  | [0.2%, 29.9%]  | 55    |
| Improvements (primary)   | -0.5% | [-1.5%, -0.2%] | 61    |
| Improvements (secondary) | -0.7% | [-1.0%, -0.4%] | 14    |
| All  (primary)           | 0.5%  | [-1.5%, 24.3%] | 75    |


4 Regressions, 4 Improvements, 6 Mixed; 1 of them in rollups

33 artifact comparisons made in total

#### Regressions

rustc_lint: Enforce `rustc::potential_query_instability` lint [#119251](https://github.com/rust-lang/rust/pull/119251) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=67b6975051b83ef2bd28f06e8467470d570aceb3&end=e51e98dde6a60637b6a71b8105245b629ac3fe77&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.2% | [0.2%, 0.3%] | 2     |
| Regressions (secondary)  | 0.3% | [0.2%, 0.4%] | 8     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.2% | [0.2%, 0.3%] | 2     |

Minor change in just a few benchmarks. Not clear whether this is noise or not
but the overall change is required for correctness.

Merge `unused_tuple_struct_fields` into `dead_code` [#118297](https://github.com/rust-lang/rust/pull/118297) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a59a98024e3fe317e37e218392f5c34e932b2394&end=5113ed28ea1451a13eae3a05dca0dbabfd56f587&stat=instructions:u)

| (instructions:u)         | mean | range         | count |
|:------------------------:|:----:|:-------------:|:-----:|
| Regressions (primary)    | 0.6% | [0.3%, 0.8%]  | 7     |
| Regressions (secondary)  | 8.3% | [0.2%, 30.4%] | 28    |
| Improvements (primary)   | -    | -             | 0     |
| Improvements (secondary) | -    | -             | 0     |
| All  (primary)           | 0.6% | [0.3%, 0.8%]  | 7     |

Regressions are related to this lint firing in a few benchmarks, which causes a
good deal of lazy loading to actually happen in diagnostics infra.

Exhaustiveness: Statically enforce revealing of opaques [#119329](https://github.com/rust-lang/rust/pull/119329) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=595bc6f00369475047538fdae1ff8cea692ac385&end=5bcd86d89b2b7b6a490f7e075dd4eb346deb5f98&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | -    | -            | 0     |
| Regressions (secondary)  | 1.9% | [1.7%, 2.0%] | 6     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | -    | -            | 0     |

Only a match-stress regression, seems like an acceptable change for the
correctness fix.

Inline a few utility functions around MIR [#119459](https://github.com/rust-lang/rust/pull/119459) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5bcd86d89b2b7b6a490f7e075dd4eb346deb5f98&end=d62f05b842d94d3bcad4d41d4b81df3949bad7c6&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.3%, 0.4%] | 3     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.3%, 0.4%] | 3     |

Potentially just noise. Overall impact is limited to just one benchmark and
only incr-full.

#### Improvements

Separate immediate and in-memory ScalarPair representation [#118991](https://github.com/rust-lang/rust/pull/118991) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6bc08a725f888a06ea3c6844f3d0cc2d2ebc5142&end=432fffa8afb8fcfe658e6548e5e8f10ad2001329&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.6%, 0.6%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.0% | [-1.5%, -0.6%] | 13    |
| Improvements (secondary) | -0.2% | [-0.2%, -0.2%] | 1     |
| All  (primary)           | -0.9% | [-1.5%, 0.6%]  | 14    |


rustc_span: Optimize syntax context comparisons [#119531](https://github.com/rust-lang/rust/pull/119531) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=efb3f1108750ab68c855bafd8caffe5d078b6f75&end=9212108a9b32cc381995cf509dd2627123c11a25&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.6% | [-0.8%, -0.4%] | 5     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.6% | [-0.8%, -0.4%] | 5     |


Exhaustiveness: remove `Matrix.wildcard_row` [#119667](https://github.com/rust-lang/rust/pull/119667) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=87e1430893d55001034bd76c5dbe832d80bc50c3&end=d8b44d2802ab665b183dce06d527bf09175dd8cf&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -2.8% | [-3.0%, -2.6%] | 6     |
| All  (primary)           | -     | -              | 0     |


macro_rules: Add an expansion-local cache to span marker [#119693](https://github.com/rust-lang/rust/pull/119693) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=76101eecbe9aa80753664bbe637ad06d1925f315&end=0ee9cfd54db7b5f4be35f026588904500c866196&stat=instructions:u)

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | -     | -               | 0     |
| Regressions (secondary)  | -     | -               | 0     |
| Improvements (primary)   | -1.4% | [-20.5%, -0.2%] | 80    |
| Improvements (secondary) | -0.8% | [-1.9%, -0.3%]  | 16    |
| All  (primary)           | -1.4% | [-20.5%, -0.2%] | 80    |

Largest improvements here are recovery from a spurious regression in previous
PR, but this is still a good win even aside from that.

#### Mixed

 Reorder check_item_type diagnostics so they occur next to the corresponding `check_well_formed` diagnostics [#117213](https://github.com/rust-lang/rust/pull/117213) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f688dd684faca5b31b156fac2c6e0ae81fc9bc90&end=791a53f380d5cf800191f25941c94ace5099876e&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.4%]   | 7     |
| Regressions (secondary)  | 0.8%  | [0.2%, 2.3%]   | 5     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.3%] | 2     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 0.1%  | [-0.3%, 0.4%]  | 9     |


Stabilize THIR unsafeck [#117673](https://github.com/rust-lang/rust/pull/117673) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8d39ec1825024f3014e1f847942ac5bbfcf055b0&end=6bc08a725f888a06ea3c6844f3d0cc2d2ebc5142&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.4%]   | 2     |
| Improvements (primary)   | -0.4% | [-0.9%, -0.2%] | 39    |
| Improvements (secondary) | -0.6% | [-1.1%, -0.4%] | 9     |
| All  (primary)           | -0.4% | [-0.9%, -0.2%] | 39    |

Improvements outweigh regressions.

Replace a number of FxHashMaps/Sets with stable-iteration-order alternatives [#119192](https://github.com/rust-lang/rust/pull/119192) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=11035f9f52c65739d9613f5b9ecd332e9e640e71&end=b8c207435c85955d0c0806240d5491f5ccd1def5&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.3%  | [0.1%, 0.5%]   | 7     |
| Improvements (primary)   | -0.4% | [-0.6%, -0.2%] | 2     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.4% | [-0.6%, -0.2%] | 2     |

Correctness fix, acceptable regressions.

Rollup of 9 pull requests [#119662](https://github.com/rust-lang/rust/pull/119662) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9212108a9b32cc381995cf509dd2627123c11a25&end=b6a8c762eed0ae0383658c38d65cb91bbd9800a1&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 1     |
| Regressions (secondary)  | 0.7%  | [0.2%, 1.3%]   | 13    |
| Improvements (primary)   | -0.4% | [-0.4%, -0.2%] | 6     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.3% | [-0.4%, 0.2%]  | 7     |

tt-muncher is the primary significant regression, and appears to be
significantly beyond the noise level for that benchmark. Investigation is
ongoing.

mark vec::IntoIter pointers as `!nonnull` [#114205](https://github.com/rust-lang/rust/pull/114205) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6f4af9cbfc5ec176359c85446d1259a988299ea0&end=9522993b033e57579dcdee960d8792932aba791f&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.6%, 0.8%]   | 2     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.4%, -0.4%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 0.4%  | [-0.4%, 0.8%]  | 3     |

Likely slightly more work for LLVM.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Environment variable sandboxing" [rust#118372](https://github.com/rust-lang/rust/issues/118372)
  - @**Guillaume Gomez (imperio)** asks [on Zulip](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/Stabilizing.20.60--env.60.20option.20flag.3F) about the best conduct to stabilize a `--env` flag and its liasion with [rfc#2794](https://github.com/rust-lang/rfcs/pull/2794)
  - That RFC is been worked by @_**Jeremy Fitzhardinge** and was already scrutinized during a T-compiler meeting (see [comment](https://github.com/rust-lang/rfcs/pull/2794#issuecomment-1741005935))

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Create the previous dep graph index on a background thread" [rust#116375](https://github.com/rust-lang/rust/pull/116375) (last review activity: 3 months ago)
  - cc: **cjgillot**
- "offset: allow zero-byte offset on arbitrary pointers" [rust#117329](https://github.com/rust-lang/rust/pull/117329)
  - cc: @**nikita Popov** (maybe)
- "Save liveness results for DestinationPropagation" [rust#115291](https://github.com/rust-lang/rust/pull/115291)
  - cc @**Jak{e,ob} Degen** (can you [comment](https://github.com/rust-lang/rust/pull/115291#issuecomment-1751990260) if your review is final?)

## Next week's WG checkins

- @_*WG-mir-opt* by @**oli**
- @_*T-rust-analyzer* by @**Lukas Wirth**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/RVxx4rUCSSy0NoXImNS8iQ)
