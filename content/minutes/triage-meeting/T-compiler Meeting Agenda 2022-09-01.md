---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-09-01

## Announcements
- [Types Team: Planning/Deep-Dive meeting](https://www.google.com/calendar/event?eid=M3JsYmdkN2F0cjdtYXE0Z2ljYzM4Nm42NTRfMjAyMjA5MDJUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-09-02T09:00:00-04:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings
- [wg-rls-2.0 weekly sync-up](https://www.google.com/calendar/event?eid=MXJnbzBscDExNHJjNmVsdGhsaW8xcDljMmdfMjAyMjA5MDVUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-09-05T11:00:00-04:00>
- [[wg-traits] GATs Sync](https://www.google.com/calendar/event?eid=Y3VpY2NkbXBoZTJkMHJmcmZxZmU4MjhodDBfMjAyMjA5MDVUMjAwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-09-05T16:00:00-04:00>
- [wg-debugging status & design meeting](https://www.google.com/calendar/event?eid=M2s4NXZiZ3N1ajRibWs2azE3dWNjcTFmaHIgNnU1cnJ0Y2U2bHJ0djA3cGZpM2RhbWdqdXNAZw) at <time:2022-09-06T12:00:00-04:00>
- [[Types team] Hack session: Advanced subtyping](https://www.google.com/calendar/event?eid=MDkxcnJqbGpwNm9sNWVqazB0b3U4azZkN2FfMjAyMjA5MDdUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2022-09-07T09:00:00-04:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Lower baseline expectations for i686 unix-like targets" [compiler-team#548](https://github.com/rust-lang/compiler-team/issues/548) 
  - "MCP: Flag to disable extended error info." [compiler-team#550](https://github.com/rust-lang/compiler-team/issues/550) 
  - "New Tier-3 target proposal: powerpc64-ibm-aix" [compiler-team#553](https://github.com/rust-lang/compiler-team/issues/553) 
  - "configurable rustc timeout for compiletest tests" [compiler-team#554](https://github.com/rust-lang/compiler-team/issues/554) 
- Old MCPs (not seconded, take a look)
  - "Arbitrary annotations in compiletest" [compiler-team#513](https://github.com/rust-lang/compiler-team/issues/513) (last review activity: 3 months ago)
  - "Add `#[alias]` attribute to allow symbol aliasing" [compiler-team#526](https://github.com/rust-lang/compiler-team/issues/526) (last review activity: about 41 days ago)
  - "Use RangeInclusive in SpanData instead of lo/hi" [compiler-team#534](https://github.com/rust-lang/compiler-team/issues/534) (last review activity: about 6 days ago)
  - "Allow informational -Z flags on stable compiler" [compiler-team#542](https://github.com/rust-lang/compiler-team/issues/542) (last review activity: about 6 days ago)
  - " Promote `i586-unknown-linux-gnu` to Tier 2 with Host Tools " [compiler-team#543](https://github.com/rust-lang/compiler-team/issues/543) (last review activity: about 6 days ago)
- Pending FCP requests (check your boxes!)
  - No pending FCP requests this time.
- Things in FCP (make sure you're good with it)
  - "Add support for the LoongArch architecture" [compiler-team#518](https://github.com/rust-lang/compiler-team/issues/518) 
  - "Make format_args!() its own AST node (ast::ExprKind::FormatArgs)" [compiler-team#541](https://github.com/rust-lang/compiler-team/issues/541) 
  - "Stabilize raw-dylib for non-x86" [rust#99916](https://github.com/rust-lang/rust/pull/99916) 
  - "Consider `#[must_use]` annotation on `async fn` as also affecting the `Future::Output`" [rust#100633](https://github.com/rust-lang/rust/pull/100633) 
- Accepted MCPs
  - "Rewrite compiletest out of tree" [compiler-team#536](https://github.com/rust-lang/compiler-team/issues/536) 
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
  - "Register wf obligation before normalizing in wfcheck " [rust#100046](https://github.com/rust-lang/rust/pull/100046)
  
### WG checkins

- @_*WG-polymorphization* by @**davidtwco** ([previous checkin](https://hackmd.io/Fv3TSalbT_CYVUEonihWzg#WG-checkins)):
  > Checkin text

- @_*WG-rls2.0* by @**matklad** ([previous checkin](https://hackmd.io/7G80yGgQQjeW-TJCMrOSMA#WG-checkins)):
  > Checkin report from @**Lukas Wirth** 
  > The main things that have happened since the last time is that r-a has been changed from a submodule to a subtree in the rust-lang/rust repo, we now ship a rust-analyzer proc-macro-server component in rustup, and use this component from the sysroot as our proc-macro server by default when possible which circumvents the frequent proc-macro abi breakage problems.
  > The coming sprint we are now looking into a way of getting rid of the RUSTC_WRAPPER hack in r-a in favor of a possible future command to build build-scripts and proc-macros only with cargo as well as trying to figure out a way to get analysis of crates.io dependencies of the standard library to work.

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No backport nominations for `T-compiler` this time.

[T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- (3 issues hidden since WIP or waiting on other teams)

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- "Rewrite LLVM's archive writer in Rust" [rust#97485](https://github.com/rust-lang/rust/pull/97485) (last review activity: 2 months ago)
  - rebased with additional changes from [rust#98100](https://github.com/rust-lang/rust/pull/98100). ~~@**bjorn3** can #97485 be closed?~~
- "const_generics: correctly deal with bound variables" [rust#98900](https://github.com/rust-lang/rust/pull/98900) (last review activity: about 49 days ago)
  - PR is ready again for comments on new perf. results cc @**lcnr** @**Jack Huey** 
- "rustc_error, rustc_private: Switch to stable hash containers" [rust#99334](https://github.com/rust-lang/rust/pull/99334) (last review activity: about 44 days ago)
  - @**oli** unsure about the status. Comments needed from PR author @_**Niklas Jonsson**?
- "Add support for MIPS VZ ISA extension" [rust#99443](https://github.com/rust-lang/rust/pull/99443) (last review activity: about 44 days ago)
  - rustbot assigned to @**Esteban Küber**. reroll?
- "Add `special_module_name` lint" [rust#94467](https://github.com/rust-lang/rust/pull/94467) (last review activity: about 41 days ago)
  - Felix approved when tests pass. Anything else to do? (cc @**bjorn3** )

## Issues of Note

### Short Summary

- [4 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [61 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [41 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 2 P-high, 1 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 3 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 39 P-high, 84 P-medium, 8 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Wrong cast of u16 to usize on aarch64" [rust#97463](https://github.com/rust-lang/rust/issues/97463) 
  - PR #97800 is making progress 
- "Regression in consteval: error[E0080]: could not evaluate static initializer (unable to turn pointer into raw bytes)" [rust#99923](https://github.com/rust-lang/rust/issues/99923)
  - PR #101101 has been merged
  - cc @**RalfJ** next step the blog post according to the plan [outlined here](https://github.com/rust-lang/rust/issues/99923#issuecomment-1205789521)?
- "disable MIR inlining on beta-1.64" [rust#101004](https://github.com/rust-lang/rust/issues/101004)
  - revert PR #101050 authored by Felix has been merged
  - issue can be closed?
- "Regression of "mismatched types" error on trait method call with multiple candidates" [rust#101066](https://github.com/rust-lang/rust/issues/101066)
  - PR to fix it [rust#100966](https://github.com/rust-lang/rust/pull/100966) waiting for review cc @**pnkfelix**  - author @**Michael Goulet (compiler-errors)** 

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "Anon lifetime in `impl Trait` no longer suggests adding a lifetime parameter" [rust#100615](https://github.com/rust-lang/rust/issues/100615)
  - (mentioned last week) @_**TaKO8Ki** self-assigned
- "Borrow checking for static methods became more strict" [rust#100725](https://github.com/rust-lang/rust/issues/100725)
  - [mentioned last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202022-08-25/near/295247914), this is accepted breakage
  - Will be closed by PR [rust#100976](https://github.com/rust-lang/rust/pull/100976) authored by @**aliemjay** (PR currently being reviewed)
  
[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- "codegen regression for bool" [rust#101048](https://github.com/rust-lang/rust/issues/101048)
  - @**Nikita Popov*** point to upstream issue [llvm/llvm-project#57448](https://github.com/llvm/llvm-project/issues/57448)

## Performance logs

> [triage logs for 2022-08-30](https://github.com/rust-lang/rustc-perf/blob/master/triage/2022-08-30.md)

A somewhat difficult week to triage due to the large amount of noise coming from two benchmarks. Hopefully this noise settles down in the future. Other than that, improvements much outweighed regressions with an average of 142 changes to instruction count averaging 0.7% improvement. There were no huge wins this week, however.

Triage done by **@rylev**.
Revision range: [4a24f08b..0631ea5d](https://perf.rust-lang.org/?start=4a24f08ba43166cfee86d868b3fe8612aec6faca&end=0631ea5d73f4a3199c776687b12c20c50a91f0d2&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.0%  | [0.2%, 2.6%]   | 4     |
| Regressions (secondary)  | 1.3%  | [0.3%, 2.6%]   | 23    |
| Improvements (primary)   | -0.7% | [-2.8%, -0.2%] | 138   |
| Improvements (secondary) | -1.3% | [-2.7%, -0.2%] | 71    |
| All  (primary)           | -0.7% | [-2.8%, 2.6%]  | 142   |


2 Regressions, 3 Improvements, 10 Mixed; 6 of them in rollups
40 artifact comparisons made in total

#### Regressions

add `depth_limit` in `QueryVTable` to avoid entering a new tcx in `layout_of` [#100748](https://github.com/rust-lang/rust/pull/100748) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7480389611f9d04bd34adf41a2b3029be4eb815e&end=cfb5ae26a4496b7d35180f15e47ada0f3897c7e8&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.5% | [0.3%, 0.7%] | 8     |
| Regressions (secondary)  | 0.7% | [0.3%, 1.3%] | 13    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.5% | [0.3%, 0.7%] | 8     |
- Most of the regressions are happening in `html5ever-0.26.0` and `deeply-nested-multi` which have been noisy lately. The regressions are small enough that it's likely that we're seeing that noise here too. Subsequent changes show improvements of the same magnitude reversing the regressions here. 
- However, there are some regressions that seem like they might be real, and they are all in `doc` profile test cases. The common query across the potentially real regressions is the `build_impl` query. This change seems like strictly less work, so I'm confused why this might be. 
- Left a [comment](https://github.com/rust-lang/rust/pull/100748#issuecomment-1231842964) asking if anyone had any good ideas despite the cachegrind run not revealing anything.


Don't catch overflow when running with cargo doc [#101039](https://github.com/rust-lang/rust/pull/101039) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=450e99f93795c81c1f2d10be27fb3a98be5b0cfc&end=c07a8b4e09f356c7468b69c50cac7fc5b5000b8a&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.6% | [0.6%, 0.8%] | 6     |
| Regressions (secondary)  | 0.9% | [0.2%, 1.3%] | 9     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.6% | [0.6%, 0.8%] | 6     |
- The primary regressions seem like noise (as they are reversed in the next perf run), but the secondary regressions seem like sustained regressions.
- This was a fix for an issue that broke some crates so the minor perf hit in secondary benchmarks is likely acceptable even if it is real. 


#### Improvements

Symbols: do not write string values of preinterned symbols into compiled artifacts [#100803](https://github.com/rust-lang/rust/pull/100803) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4a24f08ba43166cfee86d868b3fe8612aec6faca&end=ebfc7aa53185617f14e1e15bef8ef5b4505b5397&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.6% | [-2.5%, -0.2%] | 35    |
| Improvements (secondary) | -1.7% | [-2.6%, -0.3%] | 24    |
| All  (primary)           | -0.6% | [-2.5%, -0.2%] | 35    |


Elide superfluous storage markers [#99946](https://github.com/rust-lang/rust/pull/99946) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=addacb5878b9970ebc1665768a05cb601e7aea15&end=5462da52ba9edc77c2a7e4fc77aaf3b977d41ad1&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.9%  | [0.9%, 0.9%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.6% | [-1.9%, -0.2%] | 14    |
| Improvements (secondary) | -0.5% | [-1.5%, -0.3%] | 38    |
| All  (primary)           | -0.5% | [-1.9%, 0.9%]  | 15    |


Rollup of 13 pull requests [#101115](https://github.com/rust-lang/rust/pull/101115) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d5ef528bebbe0d8e350e547316fdc7d7476614d2&end=3fdd578d72a24d4efc2fe2ad18eec3b6ba72271e&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.6% | [-0.6%, -0.6%] | 1     |
| Improvements (secondary) | -1.1% | [-1.3%, -0.9%] | 8     |
| All  (primary)           | -0.6% | [-0.6%, -0.6%] | 1     |


#### Mixed

Rollup of 15 pull requests [#100963](https://github.com/rust-lang/rust/pull/100963) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ebfc7aa53185617f14e1e15bef8ef5b4505b5397&end=addacb5878b9970ebc1665768a05cb601e7aea15&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.3%]   | 5     |
| Regressions (secondary)  | 0.4%  | [0.2%, 0.6%]   | 17    |
| Improvements (primary)   | -0.6% | [-0.8%, -0.5%] | 6     |
| Improvements (secondary) | -0.4% | [-0.7%, -0.3%] | 6     |
| All  (primary)           | -0.2% | [-0.8%, 0.3%]  | 11    |
- I looked for something obvious that might be causing this, and I couldn't find anything promising. 
- It seems there are some PRs that are very likely *not* the cause. We can start by testing the others to see if they yield results. 


Check projection types before inlining MIR [#100571](https://github.com/rust-lang/rust/pull/100571) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=76531befc4b0352247ada67bd225e8cf71ee5686&end=4d45b0745ab227feb9000bc15713ade4b99241ea&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.9%  | [0.7%, 1.2%]   | 8     |
| Improvements (primary)   | -0.4% | [-1.1%, -0.2%] | 115   |
| Improvements (secondary) | -0.4% | [-1.3%, -0.1%] | 42    |
| All  (primary)           | -0.4% | [-1.1%, -0.2%] | 115   |
- All of the regressions are secondary, and many are in the recently noisy `deeply-nested-multi`. Additionally, the improvements far outweigh the regressions.
- Marked as triaged


Rollup of 8 pull requests [#101017](https://github.com/rust-lang/rust/pull/101017) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=76f3b891a0c48e128c5a43ef57e70d86735e1cf2&end=13a6aaffdf6bd6f1bce000b09aa390e93d6aca77&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.3%, 0.3%]   | 2     |
| Regressions (secondary)  | 1.5%  | [0.2%, 3.6%]   | 14    |
| Improvements (primary)   | -0.4% | [-0.6%, -0.3%] | 8     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.3% | [-0.6%, 0.3%]  | 10    |
- Looks like [#10034](https://github.com/rust-lang/rust/pull/100034) is the likely culprit for a large part of the regressions
- This is [tracked](https://github.com/rust-lang/rust/pull/101017#issuecomment-1228337691) by those working in the area.


Avoid reporting overflow in `is_impossible_method` [#100705](https://github.com/rust-lang/rust/pull/100705) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=13a6aaffdf6bd6f1bce000b09aa390e93d6aca77&end=983f4daddf238d114c4adc4751c5528fc6695a5a&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.6%, 0.8%]   | 6     |
| Regressions (secondary)  | 0.3%  | [0.3%, 0.3%]   | 1     |
| Improvements (primary)   | -0.5% | [-0.6%, -0.4%] | 2     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 0.4%  | [-0.6%, 0.8%]  | 8     |
- The primary perf regression on this PR seems to be reversed by #101039 
- Marked as triaged


Rollup of 8 pull requests [#101037](https://github.com/rust-lang/rust/pull/101037) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8a13871b69924b74cfa1d737f2894068b37ea7ea&end=42fa8ac7236f4f78a82aeea543bdd445a59f02e0&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.5%  | [0.3%, 3.8%]   | 3     |
| Regressions (secondary)  | 0.9%  | [0.5%, 1.2%]   | 7     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.3% | [-1.3%, -1.2%] | 2     |
| All  (primary)           | 1.5%  | [0.3%, 3.8%]   | 3     |
- Mostly a mixture of noisy and a small regression from [#101006](https://github.com/rust-lang/rust/pull/101006). 
- That PR is a correctness fix, so it seems likely that we'll be ok with this small regression.


session: stabilize split debuginfo on linux [#98051](https://github.com/rust-lang/rust/pull/98051) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=42fa8ac7236f4f78a82aeea543bdd445a59f02e0&end=450e99f93795c81c1f2d10be27fb3a98be5b0cfc&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.3%]   | 2     |
| Improvements (primary)   | -0.6% | [-0.7%, -0.5%] | 6     |
| Improvements (secondary) | -0.9% | [-1.1%, -0.6%] | 6     |
| All  (primary)           | -0.6% | [-0.7%, -0.5%] | 6     |
- It was determined that this was [just noise](https://github.com/rust-lang/rust/pull/98051#issuecomment-1229567245).


interpret: remove support for uninitialized scalars [#100043](https://github.com/rust-lang/rust/pull/100043) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c07a8b4e09f356c7468b69c50cac7fc5b5000b8a&end=2b443a8d97ff1f26c35e4bcf682bf9a89e8a66d2&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.8%  | [0.6%, 0.9%]   | 2     |
| Regressions (secondary)  | 1.3%  | [0.3%, 3.2%]   | 18    |
| Improvements (primary)   | -0.6% | [-0.7%, -0.5%] | 6     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.2% | [-0.7%, 0.9%]  | 8     |
- Looks like the primary regressions are due to noise.
- The regressions in secondary benchmarks seem to be more real though. Looks like the most impacted query is `eval_to_allocation_raw`. Seems possible that that might indeed be impacted by this change (just going off the usage of `eval_to_allocation_raw` in const eval)?
- Indeed, it was found that an unconditional `format!` was [causing this issue](https://github.com/rust-lang/rust/pull/100043#issuecomment-1230184985).
- This should be fixed by [#101154](https://github.com/rust-lang/rust/pull/101154).


Rollup of 9 pull requests [#101064](https://github.com/rust-lang/rust/pull/101064) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2b443a8d97ff1f26c35e4bcf682bf9a89e8a66d2&end=bb8a08f011ce481adc62e45150b642d1f160bd78&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.5%, 0.7%]   | 6     |
| Regressions (secondary)  | 1.0%  | [1.0%, 1.0%]   | 1     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.3% | [-1.5%, -1.3%] | 3     |
| All  (primary)           | 0.6%  | [0.5%, 0.7%]   | 6     |
- It was determined that this was [just noise](https://github.com/rust-lang/rust/pull/101064#issuecomment-1229570007).


Avoid cloning a collection only to iterate over it [#100497](https://github.com/rust-lang/rust/pull/100497) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=223d16ebbde1bd309c58e853b053e14318e56b0e&end=ce36e88256f09078519f8bc6b21e4dc88f88f523&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.5%, 0.6%]   | 6     |
| Regressions (secondary)  | 0.8%  | [0.5%, 1.1%]   | 10    |
| Improvements (primary)   | -0.6% | [-0.8%, -0.5%] | 3     |
| Improvements (secondary) | -1.0% | [-1.2%, -0.5%] | 4     |
| All  (primary)           | 0.2%  | [-0.8%, 0.6%]  | 9     |
- The regressions seem to just be noise. The improvements though seem real. [See here](https://github.com/rust-lang/rust/pull/100497#issuecomment-1229740623).


Rollup of 8 pull requests [#101152](https://github.com/rust-lang/rust/pull/101152) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=fcc2bddd262b26c3a4aeff2328e39b8e2b6d3254&end=bc4b39c271bbd36736cbf1c0a1ac23d5df38d365&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.5%, 0.7%]   | 10    |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.5%, -0.2%] | 24    |
| Improvements (secondary) | -0.7% | [-1.9%, -0.3%] | 34    |
| All  (primary)           | -0.0% | [-0.5%, 0.7%]  | 34    |
- [#99821](https://github.com/rust-lang/rust/pull/99821) is responsible for all the improvements *and* regressions for this rollup.
- Given that the improvements outweigh the regressions we mark this as triaged.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated issues for `T-compiler` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.

## Next week's WG checkins

- @_*WG-self-profile* @**mw** and @**Wesley Wiser**
