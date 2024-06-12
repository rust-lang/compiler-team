---
tags: weekly, rustc
type: docs
note_id: aLmXuZKATsy2y-vB1ZgaJA
---

# T-compiler Meeting Agenda 2024-04-04

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings
- Types Team: ITE (Impl Trait Everywhere) Triage <time:2024-03-28T22:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Skip virtual drop for !needs_drop types" [compiler-team#730](https://github.com/rust-lang/compiler-team/issues/730) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Skip.20virtual.20drop.20for.20.21needs_drop.20types.20compiler-team.23730))
  - "Add `-Zemit-thin-lto-index=<path>` to enable distributed ThinLTO users" [compiler-team#735](https://github.com/rust-lang/compiler-team/issues/735) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Zemit-thin-lto-index.3D.3Cpath.3E.60.20to.20ena.E2.80.A6.20compiler-team.23735))
- Old MCPs (not seconded, take a look)
  - "Target families for executable format" [compiler-team#716](https://github.com/rust-lang/compiler-team/issues/716) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Target.20families.20for.20executable.20format.20compiler-team.23716)) (last review activity: 2 months ago)
  - "Add `--emit=` to emit nothing" [compiler-team#718](https://github.com/rust-lang/compiler-team/issues/718) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60--emit.3D.60.20to.20emit.20nothing.20compiler-team.23718)) (last review activity: 2 months ago)
  - "Promote riscv64gc-unknown-linux-musl to tier 2" [compiler-team#728](https://github.com/rust-lang/compiler-team/issues/728) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20riscv64gc-unknown-linux-gnu.20to.20ti.E2.80.A6.20compiler-team.23728)) (last review activity: about 27 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [Tracking Issue for RFC 3013: Checking conditional compilation at compile time (rust#82450)](https://github.com/rust-lang/rust/issues/82450#issuecomment-1965328542)
    - @**|116107** @**|125294** @**|119031** @**|248906** @**|232957**
    - no pending concerns
  - merge: [Ignore `-C strip` on MSVC (rust#115120)](https://github.com/rust-lang/rust/pull/115120#issuecomment-2024832395)
    - @_**|116083** @_**|123586** @_**|125250** @_**|119031** @_**|232957**
    - no pending concerns
  - merge: [Make casts of pointers to trait objects stricter (rust#120248)](https://github.com/rust-lang/rust/pull/120248#issuecomment-1981506568)
    - @_**|239881** @_**|116883** @_**|125270**
    - no pending concerns
  - merge: [sess: stabilize `-Zrelro-level` as `-Crelro-level` (rust#121694)](https://github.com/rust-lang/rust/pull/121694#issuecomment-1988156080)
    - @_**|116083** @_**|119031** @_**|232957**
    - no pending concerns
  - merge: [Add encoding for `f16` and `f128` (rust#122106)](https://github.com/rust-lang/rust/pull/122106#issuecomment-1983030121)
    - @_**|119009** @_**|116083** @_**|125250** @_**|232957**
    - no pending concerns
- Things in FCP (make sure you're good with it)
  - "allow all command line flags to be passed multiple times, overwriting previous usages" [compiler-team#731](https://github.com/rust-lang/compiler-team/issues/731)
  - "Stabilize Wasm target features that are in phase 4 and 5" [rust#117457](https://github.com/rust-lang/rust/pull/117457#issuecomment-1789204219)
- Accepted MCPs
  - "Dist rustc with overflow checks" [compiler-team#724](https://github.com/rust-lang/compiler-team/issues/724) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Dist.20rustc.20with.20overflow.20checks.20compiler-team.23724))
- MCPs blocked on unresolved concerns
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 2 months ago)
    - concern: [added-complexity-to-frontend](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-1845169318)
  - merge: [Add a new `--build-id` flag to rustc (compiler-team#635)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1777545767)
    - @_**|125250** @_**|116107** @_**|125294** @_**|123856**
    - [other-existing-options (by petrochenkov)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1779597156) [option-name (by wesleywiser)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1785349936)
  - merge: [Retire the mailing list and make all decisions on zulip (compiler-team#649)](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618781780)
    - no pending checkboxs
    - [automatic-sync (by compiler-errors)](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660) [single-point-of-failure-via-stream-archival (by pnkfelix)](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1664056989)
  - merge: [Stabilize `--env-set` option (rust#119926)](https://github.com/rust-lang/rust/pull/119926#issuecomment-1898766442)
    - @_**|119009** @_**|116083** @_**|124288** @_**|123586** @_**|125250** @_**|119031** @_**|124287** @_**|116118**
    - [other-rustc-vars (by petrochenkov)](https://github.com/rust-lang/rust/pull/119926#issuecomment-1900703005)
- Finalized FCPs (disposition merge)
  - "rework opaque type region inference" [rust#116891](https://github.com/rust-lang/rust/pull/116891)
  - "Normalize trait ref before orphan check & consider ty params in alias types to be uncovered" [rust#117164](https://github.com/rust-lang/rust/pull/117164)
  - "instantiate higher ranked goals outside of candidate selection" [rust#119820](https://github.com/rust-lang/rust/pull/119820)
  - "Eagerly instantiate closure/coroutine-like bounds with placeholders to deal with binders correctly" [rust#122267](https://github.com/rust-lang/rust/pull/122267)
  - "transmute: caution against int2ptr transmutation" [rust#122379](https://github.com/rust-lang/rust/pull/122379)
  - "Make inductive cycles always ambiguous" [rust#122791](https://github.com/rust-lang/rust/pull/122791)
- Other teams finalized FCPs
  - "Tracking issue for Allow a re-export for `main` (RFC 1260)" [rust#28937](https://github.com/rust-lang/rust/issues/28937)
  - "`c_unwind` full stabilization request: change in `extern "C"` behavior" [rust#115285](https://github.com/rust-lang/rust/issues/115285)
  - "rework opaque type region inference" [rust#116891](https://github.com/rust-lang/rust/pull/116891)
  - "Prevent opaque types being instantiated twice with different regions within the same function" [rust#116935](https://github.com/rust-lang/rust/pull/116935)
  - "Normalize trait ref before orphan check & consider ty params in alias types to be uncovered" [rust#117164](https://github.com/rust-lang/rust/pull/117164)
  - "Add `REDUNDANT_LIFETIMES` lint to detect lifetimes which are semantically redundant" [rust#118391](https://github.com/rust-lang/rust/pull/118391)
  - "instantiate higher ranked goals outside of candidate selection" [rust#119820](https://github.com/rust-lang/rust/pull/119820)
  - "Split refining_impl_trait lint into _reachable, _internal variants" [rust#121720](https://github.com/rust-lang/rust/pull/121720)
  - "Stabilize associated type bounds (RFC 2289)" [rust#122055](https://github.com/rust-lang/rust/pull/122055)
  - "Eagerly instantiate closure/coroutine-like bounds with placeholders to deal with binders correctly" [rust#122267](https://github.com/rust-lang/rust/pull/122267)
  - "transmute: caution against int2ptr transmutation" [rust#122379](https://github.com/rust-lang/rust/pull/122379)
  - "Make inductive cycles always ambiguous" [rust#122791](https://github.com/rust-lang/rust/pull/122791)

### WG checkins

@*T-Types* checkin by @**Jack Huey**:
  > - Associated type bounds stabilized: rust#122055
  > - Ongoing stabilization of `-Znext-solver=coherence`: rust#121848
  > - Ongoing stabilization of associated type position `impl Trait`: rust#120700
  > - The team is rotating out one lead: https://rust-lang.zulipchat.com/#narrow/stream/144729-t-types/topic/Team.20lead.20nominations/near/430249172
  > - As usual, lots of progress on cleaning up type system bugs/corner cases: https://github.com/rust-lang/rust/pulls?q=is%3Apr+label%3AT-types+label%3Afinished-final-comment-period

## Backport nominations

Note: many of these regressions were marked at P-high/P-critical since discovered by a crater run (thus impacting one of more crates we use as canary). Also: credit to @**Michael Goulet (compiler-errors)** for authoring many of PRs fixing them :thank_you:

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Fix some unsoundness with PassMode::Cast ABI" [rust#122619](https://github.com/rust-lang/rust/pull/122619)
  - Fixes #122617, P-high unsoundness in LLVM IR
  - authored by @_**erikdesjardins**
<!--
/poll Approve beta backport of #122619?
approve
decline
don't know
-->
- :beta: "Update to LLVM 18.1.2" [rust#122772](https://github.com/rust-lang/rust/pull/122772)
  - Fixes #122476 (thread sanitizer on x86 caused a compilation abort), upstream issue was [llvm-project#85226](https://github.com/llvm/llvm-project/issues/85226)
  - authored by @_**Nikita Popov**
<!--
/poll Approve beta backport of #122772?
approve
decline
don't know
-->
- :beta: "Encode implied predicates for traits" [rust#122891](https://github.com/rust-lang/rust/pull/122891)
  - Fixes #122859 (not marked as regression). Rationale explained at [this comment](https://github.com/rust-lang/rust/pull/122891#issue-2202971249)
  - authored by @_**Michael Goulet (compiler-errors)**
<!--
/poll Approve beta backport of #122891?
approve
decline
don't know
-->
- :beta: "Make sure to insert `Sized` bound first into clauses list" [rust#123302](https://github.com/rust-lang/rust/pull/123302)
  - Fixes #123279 (rationale at [this comment](https://github.com/rust-lang/rust/pull/123302#issue-2217213425))
  - authored by @_**Michael Goulet (compiler-errors)**
<!--
/poll Approve beta backport of #123302?
approve
decline
don't know
-->
- :beta: "Don't inherit codegen attrs from parent static" [rust#123310](https://github.com/rust-lang/rust/pull/123310)
  - Fixes 2 ICEs: #123274 (found in beta crater run) and #123243
  - Caused by #121644 (the static allocations inherit the codegen flags from their parent statics. In this case we have a static allocation who inherits the `#[no_mangle]` flag from the parent; however, the allocation doesn't actually have an item name to use for `#[no_mangle]`)
  - authored by @_**Michael Goulet (compiler-errors)**
<!--
/poll Approve beta backport of #123310?
approve
decline
don't know
-->
- :beta: "Only inspect user-written predicates for privacy concerns" [rust#123377](https://github.com/rust-lang/rust/pull/123377)
  - Fixes #123288 (P-high regression discovered in crater run): "Previously we looked at the elaborated predicates, which, due to adding various bounds on fields, end up requiring trivially true bounds. But these bounds can contain private types, which the privacy visitor then found and errored about."
  - authored by @_**oli**
  - being reviewed
<!--
/poll Approve beta backport of #123377?
approve
decline
don't know
-->
- :beta: "[beta] Fix the `f16` and `f128` feature gate regression" [rust#123445](https://github.com/rust-lang/rust/pull/123445)
  - Fixes #123282 (P-high regression discovered in crater run)
  - Fix authored by @_**Trevor Gross**
  - waiting on review
<!--
/poll Approve beta backport of #123445?
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
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [2 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [65 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [34 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 4 P-high, 3 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [2 P-critical, 1 P-high, 5 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 35 P-high, 100 P-medium, 14 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "No backtrace on windows with current rustc stable" [rust#122857](https://github.com/rust-lang/rust/issues/122857)
  - Fix released in 1.77.1
- "regression: unwrap on None in ast lowering" [rust#123287](https://github.com/rust-lang/rust/issues/123287)
  - Found in beta crater run
  - Crate affected, fails to build docs on docs.rs ([downstream issue](https://github.com/rust-amplify/io-reactor/issues/27))

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- "regression when relating two opaque types in canonical queries" [rust#116877](https://github.com/rust-lang/rust/issues/116877)
  - filed in Oct 2023, classified as P-critical
  - was fixed, regressed last week ([comment](https://github.com/rust-lang/rust/issues/116877#issuecomment-2027810202))
  - Fixed by #122077, authored by @_**oli**. RFC [approved](https://github.com/rust-lang/rust/pull/122077#issuecomment-2017673404), PR being reviewed

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "regression: ICE failed to get output type of async function" [rust#123273](https://github.com/rust-lang/rust/issues/123273)
  - Found in crater run, @_**Michael Goulet (compiler-errors)** self-assigned
- "regression: unexpected unsized tail ICE" [rust#123275](https://github.com/rust-lang/rust/issues/123275)
  - Found in beta crater run, new occurrence of #108721 (was fixed by #108754)
  - @_**lcnr** suggests reverting #120463 ([comment](https://github.com/rust-lang/rust/issues/123275#issuecomment-2031885563))?
  - Issue needs an MCVE: hard to make due to the crates involved (Warp and Hyper)
- "regression: trait bound is not satisfied" [rust#123279](https://github.com/rust-lang/rust/issues/123279)
  - Fixed by #123302
- "regression: type is now private?" [rust#123288](https://github.com/rust-lang/rust/issues/123288)
  - Fixed by #123377

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2024-04-01](https://github.com/rust-lang/rustc-perf/blob/master/triage/2024-04-01.md)

A pretty quiet week, with most changes (dropped from the report below) being
due to continuing bimodality in the performance data. No particularly notable
changes landed.

Triage done by **@simulacrum**.
Revision range: [73476d49904751f8d90ce904e16dfbc278083d2c..3d5528c287860b918e178a34f04ff903325571b3](https://perf.rust-lang.org/?start=73476d49904751f8d90ce904e16dfbc278083d2c&end=3d5528c287860b918e178a34f04ff903325571b3&absolute=false&stat=instructions%3Au)

Skipping details for brevity. Feel free to have a look at the report after the meeting.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Fallout from expansion of redundant import checking" [rust#121708](https://github.com/rust-lang/rust/issues/121708)
  - Issue opened last month, caused by #117772 (issues when expanding redundant import checking)
  - Nominated by @**Josh Triplett** ([comment](https://github.com/rust-lang/rust/issues/121708#issuecomment-2032578032)): points out that linting this will very likely impact libs-api policy on additions to the prelude
  - reverting the change to avoid the issue reach stable seems complicated ([comment](https://github.com/rust-lang/rust/issues/121708#issuecomment-2034339473))
- "Consider using `llvm-strip`" [rust#123151](https://github.com/rust-lang/rust/issues/123151)
  - nominated by @**Jubilee**
  - > on various systems, we are encountering reports of people having inadequately-built strip binaries in their PATH that cannot support all Rust compiler use-cases (...) `llvm-strip` gets everything right, as far as we are concerned
  - Related [Zulip topic](https://rust-lang.zulipchat.com/#narrow/stream/241545-t-release/topic/Moving.20llvm-strip.20to.20a.20mandatory.20component.3F/near/431716646)
- "regression: compiler had non-unwinding abort" [rust#123286](https://github.com/rust-lang/rust/issues/123286)
  - another beta crater run regression. Actually we fixed a UB (comment): "People were executing UB, we now prevent that and try to tell them about it"
  - @**Ben Kimock (Saethlin)** suggests a possible quick fix for a beta backport ([comment](https://github.com/rust-lang/rust/issues/123286#issuecomment-2030344815))

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

Skipping today

## Next week's WG checkins

- @_*T-rust-analyzer* by @**Lukas Wirth**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/apkP_NKkQFyezgpc2HH3xA)
