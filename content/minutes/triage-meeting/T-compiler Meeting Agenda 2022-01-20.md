---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-01-20

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).
- New template for rustc targets (see [rust#90498](https://github.com/rust-lang/rust/pull/90498)), new targets should use this to document their requirements.

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Dealing with type/const ambiguities" [compiler-team#480](https://github.com/rust-lang/compiler-team/issues/480) 
- Old MCPs (not seconded, take a look)
  - "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441) (last review activity: 6 months ago)
  - "Make `-Z binary-dep-depinfo` the default behavior" [compiler-team#464](https://github.com/rust-lang/compiler-team/issues/464) (last review activity: 3 months ago)
  - "Tier 3 target proposal: riscv64gc-linux-android (Android target for `riscv64gc`)" [compiler-team#472](https://github.com/rust-lang/compiler-team/issues/472) (last review activity: about 41 days ago)
  - "`-Dwarnings` to cover all warnings" [compiler-team#473](https://github.com/rust-lang/compiler-team/issues/473) (last review activity: about 41 days ago)
  - "Build-time execution sandboxing" [compiler-team#475](https://github.com/rust-lang/compiler-team/issues/475) (last review activity: about 23 days ago)
- Pending FCP requests (check your boxes!)
  - No pending FCP requests this time.
- Things in FCP (make sure you're good with it)
  - "CI should exercise (subset of) tests under --stage 1" [compiler-team#439](https://github.com/rust-lang/compiler-team/issues/439) 
  - "Adding known bugs to test cases" [compiler-team#476](https://github.com/rust-lang/compiler-team/issues/476) 
  - "Introduce a new linter for diagnostic meesages" [compiler-team#478](https://github.com/rust-lang/compiler-team/issues/478) 
  - "Change location of where clause on GATs" [rust#90076](https://github.com/rust-lang/rust/pull/90076) 
  - "Stabilize `-Z instrument-coverage` as `-C instrument-coverage`" [rust#90132](https://github.com/rust-lang/rust/pull/90132) 
  - "Stabilize `-Z print-link-args` as `--print link-args`" [rust#91606](https://github.com/rust-lang/rust/pull/91606) 
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - No new finished FCP (disposition merge) this time.

### WG checkins

@_*WG-mir-opt* by @**oli** ([previous checkin](https://hackmd.io/kDUJQbY8SGqPMTTecCl9hg#WG-checkins))
* We may finally have a fix for the `early_otherwise_branch` mir optimization. [rust#91840]
* We now have much better infrastructure for ordering and managing all our mir opts [rust#91475]

@_WG-polymorphization_ checkin by @**davidtwco** ([previous checkin](https://hackmd.io/kDUJQbY8SGqPMTTecCl9hg#WG-checkins))
> from @**lcnr**: wg-polymorphization isn't doing too much rn, I am still - since 2 updates ago iirc - working on a change which should fix the remaining blocker to reenable it and have to fix some last remaining issues, and then do a lot of perf work. I think that [rust#89514](https://github.com/rust-lang/rust/pull/89514) is the last polymorphization pr that's gotten merged

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Revert "Do not hash leading zero bytes of i64 numbers in Sip128 hasher"" [rust#93014](https://github.com/rust-lang/rust/pull/93014) 
  - PR reverts [92103](https://github.com/rust-lang/rust/pull/92103)
  - not yet merged
  - reviewer @**The 8472|330154** nominated for backport
  - mentions that perf regressions are expected and triaged (see [comment](https://github.com/rust-lang/rust/pull/93014#issuecomment-1014867654)) and that should a fairly low impact backport
- No stable nominations for `T-compiler` this time.

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- :beta: "Fix rust logo style" [rust#92764](https://github.com/rust-lang/rust/pull/92764) 
  - a nice fix for the Rust logo when setting a dark theme
- :beta: "rustdoc: fix intra-link for generic trait impls" [rust#92792](https://github.com/rust-lang/rust/pull/92792)
  - fixes [rust#92662](https://github.com/rust-lang/rust/issues/92662) a `P-high` regression that breaks compiling documentation
  - no concerns, seems fine for backport
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Stabilize `-Z print-link-args` as `--print link-args`" [rust#91606](https://github.com/rust-lang/rust/pull/91606) 
  - Entered last week in `final-comment-period`
  - Can `S-waiting-on-team` label be removed now?

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)

- "Automatically implement AsRepr and allow deriving FromRepr for fieldless enums" [rust#81642](https://github.com/rust-lang/rust/pull/81642) (last review activity: 3 months ago)
  - assigned to @**estebank**
- "Support #[global_allocator] without the allocator shim" [rust#86844](https://github.com/rust-lang/rust/pull/86844) (last review activity: 2 months ago)
  - @**pnkfelix** self-assigned
- "make memcmp return a value of c_int_width instead of i32" [rust#90791](https://github.com/rust-lang/rust/pull/90791) (last activity: 24 days ago)
  - assigned to @**joshtriplett**
- "Fix variant index / discriminant confusion in uninhabited enum branching" [rust#89764](https://github.com/rust-lang/rust/pull/89764) (last review activity: 2 months ago)
  - assigned to @**wesley wiser**, also reviewed from @**RalfJ**
- "remove some indirection from proc_macro_server" [rust#90876](https://github.com/rust-lang/rust/pull/90876) (last review activity: 2 months ago)
  - assigned to @**oli**
  - perf improvements are the goal for this PR, results [are mixed](https://github.com/rust-lang/rust/pull/90876#issuecomment-971479243), is the author waiting for a feedback?
 
## Issues of Note

### Short Summary

- [3 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [79 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [52 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 0 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [3 P-critical, 51 P-high, 81 P-medium, 12 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Miscompilation in unoptimized builds on aarch64 with 1.57.0" [rust#92786](https://github.com/rust-lang/rust/issues/92786)
  - opened by @**Ben Kimock (Saethlin)**
  - @**Nikita Popov** filed the issue on LLVM (https://github.com/llvm/llvm-project/issues/53162)
  - Opened PR [rust#93081](https://github.com/rust-lang/rust/pull/93081) with the LLVM patch

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs](https://github.com/rust-lang/rustc-perf/blob/master/triage/2022-01-18.md)

Quiet week for regular rustc performance; incremental builds
(particularly ones with little recompilation to do) saw an average 1.5%
improvement. rustdoc also saw several notable optimizations land which improve
performance, particularly on larger benchmarks.

Triage done by **@simulacrum**.
Revision range: [72e74d7b9cf1a7901650227e74650f1fcc797600..7bc7be860f99f4a40d45b0f74e2d01b02e072357](https://perf.rust-lang.org/?start=72e74d7b9cf1a7901650227e74650f1fcc797600&end=7bc7be860f99f4a40d45b0f74e2d01b02e072357&absolute=false&stat=instructions%3Au)

3 Regressions, 5 Improvements, 2 Mixed; 2 of them in rollups
30 comparisons made in total

#### Regressions

Rollup of 9 pull requests [#92844](https://github.com/rust-lang/rust/issues/92844)
- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=22e491ac7ed454d34669151a8b6464cb643c9b41&end=f312a5e610d47601e9a3da828002f5e1ffeb272a&stat=instructions:u) (up to 8.2% on `full` builds of `keccak check`)
- Unknown cause, though suspected to be [#92006](https://github.com/rust-lang/rust/pull/92006).
  This may also be due to sensitivity in keccak and similar benchmarks to
  a particularly hot loop in the compiler, which sometimes is less nicely
  compiled by LLVM. (See [#92816 (comment)](https://github.com/rust-lang/rust/pull/92816#issuecomment-1014938273)
  for details).

Add {Add,Sub,Mul,Div,Rem,BitXor,BitOr,BitAnd}{,Assign}<$t> to Saturat… [#92356](https://github.com/rust-lang/rust/issues/92356)
- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=a0984b4e4c908d714cebd0f0786c00645ea4d79a&end=26c06cf8e27e5fa06b4894f14588c187510bae47&stat=instructions:u) (up to 2.8% on `full` builds of `helloworld doc`)
- Expected regression in documentation builds; there's just more to document.

Rollup of 10 pull requests [#92970](https://github.com/rust-lang/rust/issues/92970)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=48e89b00caa94829a5f07e0f1ecb33bf37431244&end=bd3cb52565faab2755ff1bdb54d88bc91f47b4b9&stat=instructions:u) (up to 0.9% on `incr-unchanged` builds of `externs opt`)
- Unclear cause, but regression is relatively small and limited to just one
  benchmark.

#### Improvements

- Migrate rustdoc from Tera to Askama [#92526](https://github.com/rust-lang/rust/issues/92526)
- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=124555a69e5f65173ec7840000eb8e953d046740&end=e916815d21e37af5cd85f9eb67cda155d7129fff&stat=instructions:u) (up to -30.7% on `full` builds of `externs doc`)
  - Major improvement in instruction counts for rustdoc; a less significant win on wall time for most benchmarks, though particularly heavy ones (e.g., stm32f4) do see a sizeable improvement of around 10% less wall time.
- Introduce new `TaskDepsRef` enum to track allow/ignore/forbid status [#92681](https://github.com/rust-lang/rust/issues/92681)
- rustdoc: avoid many `Symbol` to `String` conversions. [#91948](https://github.com/rust-lang/rust/issues/91948)
- Optimize `impl_read_unsigned_leb128` [#92604](https://github.com/rust-lang/rust/issues/92604)
- Reduce use of LocalDefId <-> HirId maps [#90146](https://github.com/rust-lang/rust/issues/90146)
- rustc_metadata: Switch all decoder methods from vectors to iterators [#92245](https://github.com/rust-lang/rust/issues/92245)

#### Mixed

partially revertish `lazily "compute" anon const default substs` [#92805](https://github.com/rust-lang/rust/issues/92805)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=42852d7857d2955f19ec333bec1ed107964db200&end=7be8693984d32d2f65ce9ded4f65b6b7340bddce&stat=instructions:u) (up to -1.4% on `full` builds of `deeply-nested-async check`)
- Small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=42852d7857d2955f19ec333bec1ed107964db200&end=7be8693984d32d2f65ce9ded4f65b6b7340bddce&stat=instructions:u) (up to 0.9% on `incr-unchanged` builds of `clap-rs check`)

Remove deprecated LLVM-style inline assembly [#92816](https://github.com/rust-lang/rust/issues/92816)
- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=128417f40f80ce585414bf5a017540447e6be775&end=a34c0797528172ede89480e3033f7a5e71ea4735&stat=instructions:u) (up to -7.5% on `full` builds of `keccak check`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=128417f40f80ce585414bf5a017540447e6be775&end=a34c0797528172ede89480e3033f7a5e71ea4735&stat=instructions:u) (up to 1.0% on `incr-unchanged` builds of `ctfe-stress-4 check`)


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated issues for `T-compiler` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.
