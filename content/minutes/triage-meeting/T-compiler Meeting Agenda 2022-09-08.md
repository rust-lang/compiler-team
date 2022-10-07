---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-09-08

## Announcements

- [wg-async weekly](https://www.google.com/calendar/event?eid=NThidjZydmxhMmcyb25uYzNqMHY5czgyZjFfMjAyMjA5MDhUMTYwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-09-08T12:00:00-04:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- [Types Team: Projection Equality Deep Dive](https://www.google.com/calendar/event?eid=M3JsYmdkN2F0cjdtYXE0Z2ljYzM4Nm42NTRfMjAyMjA5MDlUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-09-09T09:00:00-04:00>
- [wg-rls-2.0 weekly sync-up](https://www.google.com/calendar/event?eid=MXJnbzBscDExNHJjNmVsdGhsaW8xcDljMmdfMjAyMjA5MTJUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-09-12T11:00:00-04:00>
- [Async WG triage meeting](https://www.google.com/calendar/event?eid=cXZ1NGZncDF1dXA1NnVnMnA1M2Mzb2lvdWVfMjAyMjA5MTJUMTUzMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-09-12T11:30:00-04:00>
- [[wg-traits] GATs Sync](https://www.google.com/calendar/event?eid=Y3VpY2NkbXBoZTJkMHJmcmZxZmU4MjhodDBfMjAyMjA5MTJUMjAwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-09-12T16:00:00-04:00>
- [[Types team] Hack session: Advanced subtyping](https://www.google.com/calendar/event?eid=MDkxcnJqbGpwNm9sNWVqazB0b3U4azZkN2FfMjAyMjA5MTRUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-09-14T09:00:00-04:00>
- [wg-async weekly](https://www.google.com/calendar/event?eid=NThidjZydmxhMmcyb25uYzNqMHY5czgyZjFfMjAyMjA5MTVUMTYwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-09-15T12:00:00-04:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "MCP: Raise UEFI Targets to Tier-2" [compiler-team#555](https://github.com/rust-lang/compiler-team/issues/555) 
  - "Raise minimum supported macOS and iOS versions" [compiler-team#556](https://github.com/rust-lang/compiler-team/issues/556) 
- Old MCPs (not seconded, take a look)
  - "Arbitrary annotations in compiletest" [compiler-team#513](https://github.com/rust-lang/compiler-team/issues/513) (last review activity: 4 months ago)
    - any comment on this one? Maybe drop it? Seems to have attracted very few comments
  - "Add `#[alias]` attribute to allow symbol aliasing" [compiler-team#526](https://github.com/rust-lang/compiler-team/issues/526) (last review activity: about 48 days ago)
  - "Use RangeInclusive in SpanData instead of lo/hi" [compiler-team#534](https://github.com/rust-lang/compiler-team/issues/534) (last review activity: about 13 days ago)
  - "Allow informational -Z flags on stable compiler" [compiler-team#542](https://github.com/rust-lang/compiler-team/issues/542) (last review activity: about 13 days ago)
  - " Promote `i586-unknown-linux-gnu` to Tier 2 with Host Tools " [compiler-team#543](https://github.com/rust-lang/compiler-team/issues/543) (last review activity: about 13 days ago)
  - "Lower baseline expectations for i686 unix-like targets" [compiler-team#548](https://github.com/rust-lang/compiler-team/issues/548) (last review activity: about 0 days ago)
  - "MCP: Flag to disable extended error info." [compiler-team#550](https://github.com/rust-lang/compiler-team/issues/550) (last review activity: about 0 days ago)
  - "New Tier-3 target proposal: powerpc64-ibm-aix" [compiler-team#553](https://github.com/rust-lang/compiler-team/issues/553) (last review activity: about 0 days ago)
  - "configurable rustc timeout for compiletest tests" [compiler-team#554](https://github.com/rust-lang/compiler-team/issues/554) (last review activity: about 0 days ago)
- Pending FCP requests (check your boxes!)
  - No pending FCP requests this time.
- Things in FCP (make sure you're good with it)
  - "Consider `#[must_use]` annotation on `async fn` as also affecting the `Future::Output`" [rust#100633](https://github.com/rust-lang/rust/pull/100633) 
- Accepted MCPs
  - "Add support for the LoongArch architecture" [compiler-team#518](https://github.com/rust-lang/compiler-team/issues/518) 
  - "Rewrite compiletest out of tree" [compiler-team#536](https://github.com/rust-lang/compiler-team/issues/536) 
  - "Make format_args!() its own AST node (ast::ExprKind::FormatArgs)" [compiler-team#541](https://github.com/rust-lang/compiler-team/issues/541) 
  - "Exploit Mitigations Project Group Proposal" [compiler-team#545](https://github.com/rust-lang/compiler-team/issues/545) 
  - "Add `#[rustc_safe_intrinsic]` attribute" [compiler-team#546](https://github.com/rust-lang/compiler-team/issues/546) 
- Finalized FCPs (disposition merge)
  - "Tracking issue for RFC 2046, label-break-value" [rust#48594](https://github.com/rust-lang/rust/issues/48594) 
  - "Tracking Issue for "unsafe blocks in unsafe fn" (RFC #2585)" [rust#71668](https://github.com/rust-lang/rust/issues/71668) 
  - "Remove migrate borrowck mode" [rust#95565](https://github.com/rust-lang/rust/pull/95565) 
  - "Modify MIR building to drop repeat expressions with length zero" [rust#95953](https://github.com/rust-lang/rust/pull/95953) 
  - "Lang: Stabilize usage of rustc_nonnull_optimization_guaranteed on -1" [rust#97122](https://github.com/rust-lang/rust/issues/97122) 
  - "Remove a back-compat hack on lazy TAIT" [rust#97346](https://github.com/rust-lang/rust/pull/97346) 
  - "Make outlives::{components,verify} agree" [rust#97406](https://github.com/rust-lang/rust/pull/97406) 
  - "make cenum_impl_drop_cast deny-by-default" [rust#97652](https://github.com/rust-lang/rust/pull/97652) 
  - "make const_err show up in future breakage reports" [rust#97743](https://github.com/rust-lang/rust/pull/97743) 
  - "lub: don't bail out due to empty binders" [rust#97867](https://github.com/rust-lang/rust/pull/97867) 
  - "allow unions with mutable references and tuples of allowed types" [rust#97995](https://github.com/rust-lang/rust/pull/97995) 
  - "do not mark interior mutable shared refs as dereferenceable" [rust#98017](https://github.com/rust-lang/rust/pull/98017) 
  - "relate `closure_substs.parent_substs()` to parent fn in NLL" [rust#98835](https://github.com/rust-lang/rust/pull/98835) 
  - "Strengthen invalid_value lint to forbid uninit primitives, adjust docs to say that's UB" [rust#98919](https://github.com/rust-lang/rust/pull/98919) 
  - "Make forward compatibility lint deprecated_cfg_attr_crate_type_name deny by default" [rust#99784](https://github.com/rust-lang/rust/pull/99784) 
  - "Stabilize raw-dylib for non-x86" [rust#99916](https://github.com/rust-lang/rust/pull/99916) 
  - "Register wf obligation before normalizing in wfcheck " [rust#100046](https://github.com/rust-lang/rust/pull/100046)

### WG checkins

- @_*WG-self-profile* @**mw** and @**Wesley Wiser** ([previous checkin](https://hackmd.io/7G80yGgQQjeW-TJCMrOSMA#WG-checkins)):
  > Nothing to report this cycle.

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "fix RPIT ICE for implicit HRTB when missing dyn" [rust#101468](https://github.com/rust-lang/rust/pull/101468)
  - nominated by @**spastorino**, fixes a beta regression
- No stable nominations for `T-compiler` this time.

[T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Tracking issue for dyn upcasting coercion" [rust#65991](https://github.com/rust-lang/rust/issues/65991)
  - waiting on T-lang, PR [rust-lang#1259](https://github.com/rust-lang/reference/pull/1259) for stabilization 
- "Warn when casting an enum that is fieldless but not C-like" [rust#92700](https://github.com/rust-lang/rust/pull/92700)
  - waiting on t-lang
- "panic-on-uninit: relax checks due to 0x01-filling" [rust#101061](https://github.com/rust-lang/rust/pull/101061)
  - waiting on T-libs

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- "Use only ty::Unevaluated<'tcx, ()> in type system" [rust#98588](https://github.com/rust-lang/rust/pull/98588) (last review activity: 2 months ago)
  - ready for another round of review? commits stopped 1 month ago cc @**lcnr** 
- "Resolve $crate at the expansion-local crate" [rust#99445](https://github.com/rust-lang/rust/pull/99445) (last review activity: about 45 days ago)
  - maybe cc @**Vadim Petrochenkov** ?
- "Add `kernel-address` sanitizer support for freestanding targets" [rust#99679](https://github.com/rust-lang/rust/pull/99679) (last review activity: about 41 days ago)
  - maybe cc: @**cuviper** 
- "a fn pointer doesn't implement `Fn`/`FnMut`/`FnOnce` if its return type isn't sized" [rust#100096](https://github.com/rust-lang/rust/pull/100096) (last review activity: about 35 days ago)
  - cc @**nikomatsakis** 

## Issues of Note

### Short Summary

- [3 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [2 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [60 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [40 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 2 P-high, 1 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 39 P-high, 84 P-medium, 7 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Regression in consteval: error[E0080]: could not evaluate static initializer (unable to turn pointer into raw bytes)" [rust#99923](https://github.com/rust-lang/rust/issues/99923)
  - relevant PR from @**RalfJ** [rust#101320](https://github.com/rust-lang/rust/pull/101320). Needs r+ and perhaps beta-backport nomination?
  - blog post points were mentioned in [steering meeting](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bsteering.20meeting.5D.202022-09-02.20const-eval.20and.20future-compa.2E.2E.2E/near/296838811)
- "Potential miscompilation on i686 of chacha20" [rust#101346](https://github.com/rust-lang/rust/issues/101346)
  - unsoundness due to LLVM bug [llvm#57550](https://github.com/llvm/llvm-project/issues/57550)
  - ongoing discussion in PR [rust-lang/stdarch#1329](https://github.com/rust-lang/stdarch/pull/1329), but @**Amanieu** suggests bug should probably be fixed upstream
- "Wrong cast of u16 to usize on aarch64" [rust#97463](https://github.com/rust-lang/rust/issues/97463)
  - linking PR [#97800](https://github.com/rust-lang/rust/pull/97800)

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "Anon lifetime in `impl Trait` no longer suggests adding a lifetime parameter" [rust#100615](https://github.com/rust-lang/rust/issues/100615) 
  - author of original PR @_**cjgillot** is aware and left a comment
  - (is P-high too harsh?)
- "Borrow checking for static methods became more strict" [rust#100725](https://github.com/rust-lang/rust/issues/100725)
  - should be closed by [rust#100976](https://github.com/rust-lang/rust/pull/100976)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "codegen regression for bool" [rust#101048](https://github.com/rust-lang/rust/issues/101048)
  - reported upstream LLVM issue [llvm-project#57448](https://github.com/llvm/llvm-project/issues/57448)

## Performance logs

> [triage logs for 2022-09-06](https://github.com/rust-lang/rustc-perf/blob/master/triage/2022-09-06.md)

A relatively quiet week where regressions unfortunately outweighed improvements. What's more, many of the regressions that were found seemed somewhat mysterious requiring some deeper investigations.

Triage done by **@rylev**.
Revision range: [0631ea5d73..09fb0bc6e](https://perf.rust-lang.org/?start=0631ea5d73f4a3199c776687b12c20c50a91f0d2&end=09fb0bc6ecef62201d7c662db24b984d03245ac6&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.2%, 4.5%]   | 85    |
| Regressions (secondary)  | 1.0%  | [0.3%, 5.4%]   | 87    |
| Improvements (primary)   | -0.7% | [-1.0%, -0.5%] | 9     |
| Improvements (secondary) | -1.4% | [-2.7%, -0.5%] | 22    |
| All  (primary)           | 0.5%  | [-1.0%, 4.5%]  | 94    |


2 Regressions, 3 Improvements, 2 Mixed; 3 of them in rollups
40 artifact comparisons made in total

#### Regressions

Replace `rustc_data_structures::thin_vec::ThinVec` with `thin_vec::ThinVec` [#100869](https://github.com/rust-lang/rust/pull/100869) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b32223fec10743af93913c41ec60645d741b0cb6&end=eac6c33bc6338f40e66975dd6f65dab27765067b&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.5%]   | 37    |
| Regressions (secondary)  | 0.5%  | [0.2%, 0.9%]   | 12    |
| Improvements (primary)   | -0.5% | [-0.6%, -0.4%] | 4     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 0.2%  | [-0.6%, 0.5%]  | 41    |
- [Pre-merge results](https://github.com/rust-lang/rust/pull/100869#issuecomment-1230363162) looked much more performance neutral than this ended up being.
- [The author is looking into](https://github.com/rust-lang/rust/pull/100869#issuecomment-1234861103) whether there are any obvious follow-ups.


Rollup of 14 pull requests [#101295](https://github.com/rust-lang/rust/pull/101295) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2e35f954ada0f0c777844dc4fa66684efe90a035&end=10706d62da83c4ec215165bc72df46219536648f&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.5% | [0.4%, 4.2%] | 6     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 1.5% | [0.4%, 4.2%] | 6     |
- [#101279](https://github.com/rust-lang/rust/pull/101279) is responsible for these regressions.
- This was a bug fix and the [performance impact was not too surprising](https://github.com/rust-lang/rust/pull/101295#issuecomment-1235570451).


#### Improvements

Rollup of 7 pull requests [#101238](https://github.com/rust-lang/rust/pull/101238) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=12e4fd0755d7d976d4ee0f2004dc938290752ff7&end=4fd4de7ea358ad6fc28c5780533ea8ccc09e1006&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.4%, -0.3%] | 3     |
| Improvements (secondary) | -0.4% | [-0.4%, -0.4%] | 1     |
| All  (primary)           | -0.4% | [-0.4%, -0.3%] | 3     |


interpret: fix unnecessary allocation in validation visitor [#101154](https://github.com/rust-lang/rust/pull/101154) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=92086258e30ae59610a1b1097d97227377db0ada&end=06b72b06a2734a3997abe12dded7c19d49a18cc2&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.5% | [-0.5%, -0.5%] | 1     |
| Improvements (secondary) | -1.6% | [-3.3%, -0.6%] | 13    |
| All  (primary)           | -0.5% | [-0.5%, -0.5%] | 1     |


Revert "Remove deferred sized checks" [#100966](https://github.com/rust-lang/rust/pull/100966) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8c6ce6b91b172f77c795a74bfeaf74b865146b3f&end=0209485578807b8084127f12d57771300edff87a&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.9%  | [0.6%, 2.4%]   | 7     |
| Improvements (primary)   | -1.2% | [-1.3%, -1.1%] | 2     |
| Improvements (secondary) | -1.7% | [-1.7%, -1.6%] | 2     |
| All  (primary)           | -1.2% | [-1.3%, -1.1%] | 2     |
- The regressions listed here are just noise.


#### Mixed

Rework definition of MIR phases to more closely reflect semantic concerns [#99102](https://github.com/rust-lang/rust/pull/99102) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=02654a0844f5c8d29bac318c3c6c666da3d8543d&end=f07d6e8c0a90a6b03dcf96366d0462c7c25962bd&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.3%, 1.7%]   | 33    |
| Regressions (secondary)  | 1.4%  | [0.5%, 2.0%]   | 11    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.5% | [-0.5%, -0.5%] | 4     |
| All  (primary)           | 0.7%  | [0.3%, 1.7%]   | 33    |
- A late addition to the PR to simplify some passes has [caused the regression](https://github.com/rust-lang/rust/pull/99102#issuecomment-1232458445).
- [Pinged the author](https://github.com/rust-lang/rust/pull/99102#issuecomment-1238129477) to see if there is any additional follow-up.


Rollup of 9 pull requests [#101318](https://github.com/rust-lang/rust/pull/101318) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e21d771b9c76056d20db310ce8655539045b3af5&end=9353538c7bea6edb245457712cec720305c4576e&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 3     |
| Regressions (secondary)  | 1.0%  | [0.3%, 3.9%]   | 5     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.8% | [-0.8%, -0.8%] | 1     |
| All  (primary)           | 0.2%  | [0.2%, 0.2%]   | 3     |
- There doesn't seem to be a clear cause so running a few of the PRs through performance runs to see what happens.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- "Enable eager checks for memory sanitizer" [rust#99207](https://github.com/rust-lang/rust/pull/99207) 
  - nominated by @**Jack Huey** for discussion (see [comment](https://github.com/rust-lang/rust/pull/99207#issuecomment-1237470317))
- "Add default trait implementations for "c-unwind" ABI function pointers" [rust#101263](https://github.com/rust-lang/rust/pull/101263)
  - RFC: [rust-lang/rfcs#2945](https://github.com/rust-lang/rfcs/pull/2945)
  - Tracking Issue: [#74990](https://github.com/rust-lang/rust/issues/74990)
  - nominated by @**RalfJ** to evaluate cost/benefit of the perf regression (see [comment](https://github.com/rust-lang/rust/pull/101263#issuecomment-1234462062))

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.

## Next week's WG checkins

- Generic Associated Types initiative by @**Jack Huey**
- @_*WG-diagnostics* Diagnostics by @**Esteban Küber** and @**oli**
