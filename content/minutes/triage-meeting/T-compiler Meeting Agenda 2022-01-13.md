---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-01-13

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Today new stable release 1.58 is out :loudspeaker: :tada:
- Tomorrow at <time:2022-01-14T10:00:00-05:00> [Planning meeting](https://forge.rust-lang.org/compiler/steering-meeting.html)
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441) (last review activity: 6 months ago)
  - "Make `-Z binary-dep-depinfo` the default behavior" [compiler-team#464](https://github.com/rust-lang/compiler-team/issues/464) (last review activity: 3 months ago)
  - "Tier 3 target proposal: riscv64gc-linux-android (Android target for `riscv64gc`)" [compiler-team#472](https://github.com/rust-lang/compiler-team/issues/472) (last review activity: about 34 days ago)
  - "`-Dwarnings` to cover all warnings" [compiler-team#473](https://github.com/rust-lang/compiler-team/issues/473) (last review activity: about 34 days ago)
  - "Build-time execution sandboxing" [compiler-team#475](https://github.com/rust-lang/compiler-team/issues/475) (last review activity: about 17 days ago)
- Pending FCP requests (check your boxes!)
  - "Stabilize `-Z instrument-coverage` as `-C instrument-coverage`" [rust#90132](https://github.com/rust-lang/rust/pull/90132#issuecomment-992952031) 
  - "Stabilize `-Z print-link-args` as `--print link-args`" [rust#91606](https://github.com/rust-lang/rust/pull/91606#issuecomment-992960418) 
- Things in FCP (make sure you're good with it)
  - "CI should exercise (subset of) tests under --stage 1" [compiler-team#439](https://github.com/rust-lang/compiler-team/issues/439) 
  - "Adding known bugs to test cases" [compiler-team#476](https://github.com/rust-lang/compiler-team/issues/476) 
  - "Introduce a new linter for diagnostic meesages" [compiler-team#478](https://github.com/rust-lang/compiler-team/issues/478) 
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - "Remove effect of `#[no_link]` attribute on name resolution" [rust#92034](https://github.com/rust-lang/rust/pull/92034)

### WG checkins

- @_*wg-incr-comp* by @**pnkfelix** and @**Wesley Wiser** ([previous checkin](https://hackmd.io/R_-u5cmyQtmcPSL8sNtbuw?view#WG-checkins))
> We've had a bunch of fixes and improvements land recently from @Aaron Hill and @cjgillot which is great to see! The WG has been pretty dormant. It would be great to get that running again this year!

- @_*WG-llvm* by @**nagisa** ([previous checkin](https://hackmd.io/R_-u5cmyQtmcPSL8sNtbuw?view#WG-checkins))
> not much to share about `WG-llvm` happenings. The deferred inlining work is probably the highlight since the last check-in. But we're also seeing some fixes going upstream for debug info (e.g. codeview should now know its looking at Rust) and stack probing (CFI information fixes).

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No backport nominations for `T-compiler` this time.

[T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- No PRs waiting on `T-compiler` this time.

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)

- "Fix ICE with inferred type in `const` or `static` item" [rust#89161](https://github.com/rust-lang/rust/pull/89161) (last activity: 3 months ago)
  - waiting on @**nikomatsakis** (or perhaps reassign as he pointed out not being too familiar with the code)
- "Fix variant index / discriminant confusion in uninhabited enum branching" [rust#89764](https://github.com/rust-lang/rust/pull/89764) (last activity: 2 months ago)
  - opened by @**tm|352985** 
  - assigned to @**Wesley Wiser**, [last comment](https://github.com/rust-lang/rust/pull/89764#issuecomment-967755267)
  - Seems some concerns were addressed by [rust#91095](https://github.com/rust-lang/rust/issues/91095) and [rust#91088](https://github.com/rust-lang/rust/pull/91088)?
  - is `s-waiting-on-review` the current status?
- "Closure capture cleanup & refactor" [rust#89861](https://github.com/rust-lang/rust/pull/89861) (opened 3 months ago)
  - assigned to @**Wesley Wiser**
- "Improve terminology around 'after typeck'" [rust#90277](https://github.com/rust-lang/rust/pull/90277) (last activity: 1 month ago)
  - assigned to @**eddyb**
  - pr author left [some comments](https://github.com/rust-lang/rust/pull/90277#issuecomment-962541536) for review

## Issues of Note

### Short Summary

- [3 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [78 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [52 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 0 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 1 P-high, 1 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [3 P-critical, 51 P-high, 81 P-medium, 12 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Miscompilation where binding only some fields leaks the others" [rust#90752](https://github.com/rust-lang/rust/issues/90752)
  - addressed by [rustc#90788](https://github.com/rust-lang/rust/issues/90788) -> out in 1.58
- "Compile-time regression between 1.56.1 and 1.57.0 for deeply nested decorator types" [rust#91598](https://github.com/rust-lang/rust/issues/91598) 
  - addressed by [rustc#90423](https://github.com/rust-lang/rust/issues/90423) -> out in 1.58
- "no MIR available for DefId" [rust#92755](https://github.com/rust-lang/rust/issues/92755)
  - @**Lambinoo** is working on a fix ([rust#92781](https://github.com/rust-lang/rust/pull/92781))

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2022-01-12](https://github.com/rust-lang/rustc-perf/blob/master/triage/2022-01-12.md)

Improvements generally outweighed regressions with most regressions coming in the form of correctness fixes (where performance regressions are generally less of a concern). The biggest win was arguably a change to the Sip128 hasher implementation which seemed to have decent performance implications for many real world crates. 

Triage done by **@rylev**.
Revision range: [2b681ac06b1a6b7ea39525e59363ffee0d1a68e5..72e74d7b9cf1a7901650227e74650f1fcc797600](https://perf.rust-lang.org/?start=2b681ac06b1a6b7ea39525e59363ffee0d1a68e5&end=72e74d7b9cf1a7901650227e74650f1fcc797600&absolute=false&stat=instructions%3Au)

3 Regressions, 7 Improvements, 2 Mixed; 4 of them in rollups
28 comparisons made in total
28 Untriaged Pull Requests

#### Regressions

Hash `Ident` spans in all HIR structures [#92534](https://github.com/rust-lang/rust/issues/92534)
- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=f7bb8e3677ba4277914e85a3060e5d69151aed44&end=092e1c9d23158d81be27bb6f71bdd0c6282478fb&stat=instructions:u) (up to 1.6% on `incr-unchanged` builds of `derive`)
- A subset of of [#92210](https://github.com/rust-lang/rust/pull/92210) which has absolutely horrific performance regressions. This is a partial fix where the regressions are much less severe.
- This is a correctness fix so performance loss is typically much more acceptable. Without this fix, it was possible for incremental compilation [to be broken](https://github.com/rust-lang/rust/issues/92192) when a change to a span was misidentified as not being an actual change.


Ensure that `Fingerprint` caching respects hashing configuration [#92278](https://github.com/rust-lang/rust/issues/92278)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=092e1c9d23158d81be27bb6f71bdd0c6282478fb&end=d63a8d965e76f29a2b65c1f22a32613df1fe5c2c&stat=instructions:u) (up to 1.3% on `incr-unchanged` builds of `clap-rs`)
- Another fix in how we're doing hashing of certain structures. This is a correctness fix and as such, the relatively moderation regression [was deemed acceptable](https://github.com/rust-lang/rust/pull/92278#issuecomment-1001765797).


Actually instantiate the opaque type when checking bounds [#90948](https://github.com/rust-lang/rust/issues/90948)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=2e2c86eba21a08cf505cd67073736d03ff3887ad&end=1409c015b44a4d4d38bef2250b2a37c17b8b7463&stat=instructions:u) (up to 1.2% on `full` builds of `wg-grammar`)
- The regressions are mostly limited to a stress benchmark (`wg-grammar`) and as a correctness fix [were deemed acceptable](https://github.com/rust-lang/rust/pull/90948#issuecomment-984361673).


#### Improvements

- Do not hash leading zero bytes of i64 numbers in Sip128 hasher [#92103](https://github.com/rust-lang/rust/issues/92103)
- Rollup of 8 pull requests [#92627](https://github.com/rust-lang/rust/issues/92627)
- rustc_metadata: Optimize and document module children decoding [#92086](https://github.com/rust-lang/rust/issues/92086)
- Rollup of 8 pull requests [#92690](https://github.com/rust-lang/rust/issues/92690)
- Fixes wrong unreachable_pub lints on nested and glob public reexport [#87487](https://github.com/rust-lang/rust/issues/87487)
- Rollup of 7 pull requests [#92719](https://github.com/rust-lang/rust/issues/92719)
- Store a `Symbol` instead of an `Ident` in `VariantDef`/`FieldDef` [#92533](https://github.com/rust-lang/rust/issues/92533)

#### Mixed

Rollup of 7 pull requests [#92556](https://github.com/rust-lang/rust/issues/92556)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=2b681ac06b1a6b7ea39525e59363ffee0d1a68e5&end=7d6f948173ccb18822bab13d548c65632db5f0aa&stat=instructions:u) (up to -1.6% on `incr-full` builds of `issue-88862`)
- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=2b681ac06b1a6b7ea39525e59363ffee0d1a68e5&end=7d6f948173ccb18822bab13d548c65632db5f0aa&stat=instructions:u) (up to 6.6% on `full` builds of `tokio-webpush-simple`)


Switch all libraries to the 2021 edition [#92068](https://github.com/rust-lang/rust/issues/92068)
- Small improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=a7e2e33960e95d2eb1a2a2aeec169dba5f73de05&end=23ce5fc4655ed546f74a85fc8836e95bec0c64fd&stat=instructions:u) (up to -0.4% on `full` builds of `cranelift-codegen`)
- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=a7e2e33960e95d2eb1a2a2aeec169dba5f73de05&end=23ce5fc4655ed546f74a85fc8836e95bec0c64fd&stat=instructions:u) (up to 3.1% on `incr-patched: b9b3e592dd cherry picked` builds of `style-servo`)
- Seems like the panic infrastructure in the 2021 edition is ever so slightly more expensive to compile and run causing this issue. It was [deemed acceptable](https://github.com/rust-lang/rust/pull/92068#issuecomment-1008349995) to take the small performance hit.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "sess: default to v0 symbol mangling" [rust#89917](https://github.com/rust-lang/rust/pull/89917)
  - update: stabilize `-Z symbol-mangling-version=v0` as `-C symbol-mangling-version=v0` in [rust#90128](https://github.com/rust-lang/rust/pull/90128) (merged 10 days ago)

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.
