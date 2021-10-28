---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2021-07-15

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Tomorrow July 16th at 10:00 ET steering meeting to discuss extensions to the review policy for Rust Compiler Pull Requests ([policy](https://github.com/rust-lang/compiler-team/issues/444))

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Non exhaustive reachable patterns lint" [compiler-team#445](https://github.com/rust-lang/compiler-team/issues/445) 
- Old MCPs (not seconded, take a look)
  - "Add different entry points for x.py" [compiler-team#396](https://github.com/rust-lang/compiler-team/issues/396) (last comment: 6 months ago)
  - "rustdoc is using rustc_ast_pretty, would it be possible to make it somewhat "stable"?" [compiler-team#403](https://github.com/rust-lang/compiler-team/issues/403) (last comment: 5 months ago)
  - "Don't steal the resolver when lowering HIR; instead store an immutable resolver in TyCtxt" [compiler-team#437](https://github.com/rust-lang/compiler-team/issues/437) (last comment: about 34 days ago)
  - "CI should exercise (subset of) tests under --stage 1" [compiler-team#439](https://github.com/rust-lang/compiler-team/issues/439) (last comment: about 13 days ago)
  - "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441) (last comment: about 13 days ago)
  - "Encode spans relative to the enclosing item" [compiler-team#443](https://github.com/rust-lang/compiler-team/issues/443) (last comment: about 13 days ago)
- Pending FCP requests (check your boxes!)
  - "Write text output files to stdout if options like `-o -` or `--emit asm=-` are provided" [compiler-team#431](https://github.com/rust-lang/compiler-team/issues/431) 
  - "Preserve, clarify, and extend debug information" [rust#83947](https://github.com/rust-lang/rust/pull/83947) 
- Things in FCP (make sure you're good with it)
  - No FCP requests this time.
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - "Tracking issue for `#![feature(maybe_uninit_extra,const_maybe_uninit_write)]`" [rust#63567](https://github.com/rust-lang/rust/issues/63567) 
  - "Tracking Issue for `array_map`" [rust#75243](https://github.com/rust-lang/rust/issues/75243) 
  - "Stabilize `impl From<[(K, V); N]> for HashMap` (and friends)" [rust#84111](https://github.com/rust-lang/rust/pull/84111) 
  - "Stabilize bindings_after_at" [rust#85305](https://github.com/rust-lang/rust/pull/85305)

### WG checkins

@*WG-async-foundations* by @**nikomatsakis** and @**tmandry** :
> Checkin text

@*WG-traits* by @**nikomatsakis** and @**Jack Huey** 
> We recently (last week) had an organizational meeting and reviewed various initiatives/projects that WG-traits is working on. These include: GATs, TAIT, rustc_type_ir, trait upcasting, salsa, Chalk, and fixing trait-related incremental bugs.
> We decided to no longer have a single weekly meeting, in favor of more targeted "1:1" meetings (as needed for each initiative). We will still be having a steering/organizational meeting once a month. We haven't decided if that'll take the same timeslot as the weekly meeting or change.
> Updates of individual initiatives:
> **GATs**
> We realized that in [#85499] (normalization under binders), we run into problems when we want to project but can't yet (i.e. `<T as Trait>::Foo<'a>`) and the associated type will *eventually* contain a bound var. So, for now, the plan is to fall back to no normalization when we don't have enough information to project. This still fixes the ICEs in [#62529], but results in some errors where we want to pass. Also split out [#86993] as a more minimal GATs-only change (which can be landed before, or skipped).
> **TAIT**
> We had a meeting and found that the implementation is still a bit wrong. There's a bit more work to do before stabilization of `min_type_alias_impl_trait`, including fixing a number of issues.
> **rustc_type_ir**
> There is an open PR [#86435] to begin moving major types (like `TyKind`) into `rustc_type_ir` and out of `rustc_middle`. Blocked on some lifetime variance (probably) issues that need to be looked into.
> **trait upcasting**
> There is an open PR [#86461] to refactor the vtable format and a bigger PR [#86264] that is being split out into smaller PRs.
> **salsa, Chalk**
> [chalk#708] got merged, which reworks the recursive solver to be prepare to use salsa for fixed-point iteration.
> **incremental ICEs trait work**
> There are [3 approaches](https://rust-lang.zulipchat.com/#narrow/stream/144729-wg-traits/topic/subobligations.20and.20ICEs.20.2385868/near/245066992) open to solve the `evaluate_obligation` incremental issue, but each have a moderate perf impact. They need to be reviewed to pick the best solution.

[#62529]: https://github.com/rust-lang/rust/issues/62529
[#85499]: https://github.com/rust-lang/rust/pull/85499
[#86264]: https://github.com/rust-lang/rust/pull/86264
[#86435]: https://github.com/rust-lang/rust/pull/86435
[#86461]: https://github.com/rust-lang/rust/pull/86461
[#86993]: https://github.com/rust-lang/rust/pull/86993
[chalk#708]: https://github.com/rust-lang/chalk/pull/708

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Don't use gc-sections with profile-generate." [rust#87004](https://github.com/rust-lang/rust/pull/87004) 
  - opened by @**Jamie Cunliffe** 
  - nomination proposed by @**simulacrum** as this should fix [rust#78226](https://github.com/rust-lang/rust/issues/78226), preferably to be shipped in 1.54 a `P-critical` regression on AArch64 target
  - Some PGO tests are failing on Windows (see [comment](https://github.com/rust-lang/rust/pull/87004#issuecomment-879157185))
- No stable nominations for `T-compiler` this time.

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Encode spans relative to the enclosing item" [rust#84373](https://github.com/rust-lang/rust/pull/84373) 
  - opened by @**cjgillot** 
  - @**Vadim Petrochenkov** called on team review as it may be interesting to be merged to move forward [rust#35148](https://github.com/rust-lang/rust/issues/35148#issuecomment-879839839)
- "Wrap libraries in linker groups, allowing backwards/circular references" [rust#85805](https://github.com/rust-lang/rust/pull/85805) 
  - opened by @**Josh Triplett** 
  - reviewed by @**bjorn3** 
  - @**Vadim Petrochenkov** self-assigned for review, expressed idea to reconsider this PR [in 6-12 months](https://github.com/rust-lang/rust/pull/85805#issuecomment-868825690)

## Issues of Note

### Short Summary

- [4 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [3 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [80 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [54 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [2 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 3 P-high, 2 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [2 P-critical, 45 P-high, 83 P-medium, 11 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "run-make-fulldeps/pgo-branch-weights fails on AArch64 Linux" [rust#78226](https://github.com/rust-lang/rust/issues/78226) 
  - only fails on aarch64 arm
  - discussed [last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-07-08.20.2354818/near/245320262)
  - @**simulacrum** [comments](https://github.com/rust-lang/rust/issues/78226#issuecomment-866299280) that tests for this are disabled but a fix for 1.54 would be good
  - being investigated by @**Jamie Cunliffe** [see comment](https://github.com/rust-lang/rust/issues/78226#issuecomment-868570487) 
  - @**simulacrum**has beta-nominated [rust#87004](https://github.com/rust-lang/rust/pull/87004) to fix this
- "Unstable fingerprints - what to do on beta (and stable)" [rust#84970](https://github.com/rust-lang/rust/issues/84970)
  - discussed [last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-07-08.20.2354818/near/245321885)
  - general feeling is to re-enable incr-comp again in 1.54
  - @**Aaron Hill** is working on some performance improvements to handling of projection predicates
  - @**nagisa** reported that errors are looking useful enough

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2021-07-13](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-07-13.md)

Mostly quiet week; improvements outweighed regressions.

Triage done by **@simulacrum**.
Revision range: [9a27044f42ace9eb652781b53f598e25d4e7e918..5aff6dd07a562a2cba3c57fc3460a72acb6bef46](https://perf.rust-lang.org/?start=9a27044f42ace9eb652781b53f598e25d4e7e918&end=5aff6dd07a562a2cba3c57fc3460a72acb6bef46&absolute=false&stat=instructions%3Au)

1 Regressions, 4 Improvements, 0 Mixed; 0 of them in rollups

#### Regressions

Support forwarding caller location through trait object method call [#81360](https://github.com/rust-lang/rust/issues/81360)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=a84d1b21aea9863f0fc5f436b4982d145dade646&end=3982eb35cabe3a99194d768d34a92347967c3fa2&stat=instructions:u) (up to 1.5% on `incr-full` builds of `unused-warnings-check`)
- Largely due to increased number of calls to the newly-made query
  should_inherit_track_caller. Mostly higher regressions on smaller benchmarks.

#### Improvements

- Reland "Merge CrateDisambiguator into StableCrateId" [#86143](https://github.com/rust-lang/rust/issues/86143)
- Stop generating `alloca`s & `memcmp` for simple short array equality [#85828](https://github.com/rust-lang/rust/issues/85828)
- Add support for raw-dylib with stdcall, fastcall functions [#86419](https://github.com/rust-lang/rust/issues/86419)
- Use clang 12.0.1 on dist-x86_64/i686-linux [#87019](https://github.com/rust-lang/rust/issues/87019)

#### Nags requiring follow up

- There are a number of [untriaged regressions](https://github.com/rust-lang/rust/issues?q=is%3Amerged+label%3Aperf-regression+-label%3Aperf-regression-triaged); as of this writing:
  - Include terminators in instance size estimate [#86777](https://github.com/rust-lang/rust/issues/86777)
  - Rollup of 8 pull requests [#86588](https://github.com/rust-lang/rust/issues/86588)
  - Change entry point to 🛡️ against 💥 💥-payloads [#86034](https://github.com/rust-lang/rust/issues/86034)
  - Inline Iterator as IntoIterator. [#84560](https://github.com/rust-lang/rust/issues/84560)

## Nominated Issues

T-rustdoc
- Generate links to definition in rustdoc source code pages [#84176](https://github.com/rust-lang/rust/pull/84176)
  - Authored by @**GuillaumeGomez**
  - approved by T-rustdoc, reviewed by @**Joshua Nelson** 
  - [mentioned last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-07-08.20.2354818/near/245326203)
  - needs a final look by T-compiler for merge (@**GuillaumeGomez** can't merge own PR)

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "`match` an `std::cmp::Ordering` generates less optimized code in nightly" [rust#86511](https://github.com/rust-lang/rust/issues/86511)
  - comment mentions these issues [#86391](https://github.com/rust-lang/rust/issues/86391) and [#86354](https://github.com/rust-lang/rust/issues/86354)
  - issue nominated for help in finding someone giving some context for an accurate priority to track the issue
- "Binary size is significant increased from `1.46.0` to `1.51.0`" [rust#86610](https://github.com/rust-lang/rust/issues/86610)
  - perhaps related to one or more issues about the same theme (see mentioned issues, ex. [rust#86431](https://github.com/rust-lang/rust/issues/86431) was mentioned)
  - issue nominated as FIY for T-compiler. Can this be tracked in perf?
[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.
