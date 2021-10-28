---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2021-06-24

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- June 25th, at <time:2021-06-25T10:00:00-04:00> 1.52 Fingerprint retrospective [compiler-team#435](https://github.com/rust-lang/compiler-team/issues/435)

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  -  "CI should exercise (subset of) tests under --stage 1" [compiler-team#439](https://github.com/rust-lang/compiler-team/issues/439)
  -  "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441)
- Old MCPs (not seconded, take a look)
  -  "Add different entry points for x.py" [compiler-team#396](https://github.com/rust-lang/compiler-team/issues/396)
  -  "rustdoc is using rustc_ast_pretty, would it be possible to make it somewhat "stable"?" [compiler-team#403](https://github.com/rust-lang/compiler-team/issues/403)
  -  "LLVM plugin support in Rust" [compiler-team#419](https://github.com/rust-lang/compiler-team/issues/419)
  -  "Promote `aarch64-apple-ios-sim` to Tier 2" [compiler-team#428](https://github.com/rust-lang/compiler-team/issues/428)
  -  "Don't steal the resolver when lowering HIR; instead store an immutable resolver in TyCtxt" [compiler-team#437](https://github.com/rust-lang/compiler-team/issues/437)
- Pending FCP requests (check your boxes!)
  -  "Write text output files to stdout if options like `-o -` or `--emit asm=-` are provided" [compiler-team#431](https://github.com/rust-lang/compiler-team/issues/431)
- Things in FCP (make sure you're good with it)
  -  "Allow changing the bug report url for the ice hook" [compiler-team#436](https://github.com/rust-lang/compiler-team/issues/436)
  -  "Transfer on-disk hash table implementation (odht crate) to rust-lang org" [compiler-team#438](https://github.com/rust-lang/compiler-team/issues/438)
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  -  "Ignore derived Clone and Debug implementations during dead code analysis" [rust#85200](https://github.com/rust-lang/rust/pull/85200)
  -  "Stabilize span_open() and span_close()." [rust#86136](https://github.com/rust-lang/rust/pull/86136)

### WG checkins

@*WG-polymorphization* by @**davidtwco**
> There's no update from the polymorphization working group. Everyone involved is working on other things.

@*WG-mir-opt* by @**oli**
> no update (oli is on leave)

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Disambiguate between SourceFiles from different crates even if they have the same path" [rust#86368](https://github.com/rust-lang/rust/pull/86368)
- :beta: "rustfmt: load nested out-of-line mods correctly" [rust#86424](https://github.com/rust-lang/rust/pull/86424)
  - opened by @**caleb**
  - nominated by @**simulacrum**, [seems safe for beta backport](https://github.com/rust-lang/rust/pull/86424#issuecomment-867140034), stable backport maybe needs more testing
  - fixes [rustfmt#4874](https://github.com/rust-lang/rustfmt/issues/4874) - rustfmt to no longer processed modules referenced in an inline mod
- No stable nominations for `T-compiler` this time.

[T-libs stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-libs) / [T-libs beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-libs)
- No nominations for `T-libs` this time.

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Build aarch64-apple-ios-sim as part of the full macOS build" [rust#85782](https://github.com/rust-lang/rust/pull/85782)
  - nominated by @**simulacrum** to indicate that MCP [compiler-team#428](https://github.com/rust-lang/compiler-team/issues/428) is waiting to be seconded

[T-libs](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-libs)
- "Show type for docs slice Chunks" [rust#77938](https://github.com/rust-lang/rust/pull/77938)
  - seems safe to merge?
  - mentioning T-libs to get their attention on this (cc: @**mara**)
- "core: add unstable no_floating_point to disable float formatting code" [rust#86048](https://github.com/rust-lang/rust/pull/86048)
  - A review from T-libs is in progress

## Issues of Note

### Short Summary

- [5 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [4 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [81 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [54 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 3 P-high, 2 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [2 P-critical, 49 P-high, 83 P-medium, 12 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "run-make-fulldeps/pgo-branch-weights fails on AArch64 Linux" [rust#78226](https://github.com/rust-lang/rust/issues/78226)
  - only fails on aarch64 arm
  - @**simulacrum** [comments](https://github.com/rust-lang/rust/issues/78226#issuecomment-866299280) that tests for this are disabled but a fix for 1.54 would be good
- "add back support for inner attributes on non-block expressions?" [rust#84879](https://github.com/rust-lang/rust/issues/84879)
  - addressed by PR [#85193](https://github.com/rust-lang/rust/pull/85193), can be closed as it is merged
  - so, can be closed now?
- "Unstable fingerprints - what to do on beta (and stable)" [rust#84970](https://github.com/rust-lang/rust/issues/84970)
  - discussed [last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-06-17.20.2354818/near/243024615)
  - @**Aaron Hill** comments about addressing the [sub-obligation](https://github.com/rust-lang/rust/issues/85360) and [the overflow](https://github.com/rust-lang/rust/issues/84963) issues, other than those all known issues are fixed
  - @**estebank** [offered to have a look](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-06-17.20.2354818/near/243025573) 
- "iter::Fuse is unsound with how specialization currently behaves around HRTB fn pointers" [rust#85863](https://github.com/rust-lang/rust/issues/85863)
  - updates about this one and the following one discussed [last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-06-17.20.2354818/near/243024615)
  - @**pnkfelix** mentioned updating these issues
- "TrustedRandomAccess optimization for Zip containing vec::IntoIter is unsound with how specialization currently behaves around HRTB fn pointers" [rust#85873](https://github.com/rust-lang/rust/issues/85873)
  - see previous one

[T-libs](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-libs)
- "iter::Fuse is unsound with how specialization currently behaves around HRTB fn pointers" [rust#85863](https://github.com/rust-lang/rust/issues/85863)
  - see above
- "TrustedRandomAccess optimization for Zip containing vec::IntoIter is unsound with how specialization currently behaves around HRTB fn pointers" [rust#85873](https://github.com/rust-lang/rust/issues/85873)
  - see above

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "Apple platforms: Disabled frame pointer elimination causes perf issues and is not in line with what clang does" [rust#86196](https://github.com/rust-lang/rust/issues/86196)
  - opened by @**Hans Kratz** 
  - [mild perf regression](https://github.com/rust-lang/rust/issues/86196#issuecomment-860443448) on target Apple with disabled frame pointer elimination (clang default on macOS: `frame-pointer="no-leaf""`, in Rust nightly became `frame-pointer="all"`) along with an increase in binary size
  - needs an owner but not so a pressing issue (see [comment](https://github.com/rust-lang/rust/issues/86196#issuecomment-860443448): "while using `"frame-pointer"="non-leaf"` on Macos is generally a good idea since it has the potential to affect performance in rare cases it is not as urgent.")
  
## Performance logs

> [triage logs for 2021-06-23](https://github.com/rust-lang/rustc-perf/tree/master/triage#triage-logs)

A few small regressions on smaller benchmarks (e.g., helloworld), likely centered around more IR being generated in a few cases.

Triage done by **@simulacrum**. 2 Regressions, 1 Improvements, 0 Mixed, 1 of them in rollups

#### Regressions

Rollup of 6 pull requests [#86417](https://github.com/rust-lang/rust/issues/86417)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=149f4836dd6d9e789a26dca16dc034588866894e&end=a6bc43ea846ee568ef4e890d4ac2a4cc03475bfc&stat=instructions:u) (up to 2.0% on `incr-unchanged` builds of `helloworld-opt`)
- Not really clear what the cause here is, but the regression is concentrated on
  small benchmarks.

Change entry point to 🛡️ against 💥 💥-payloads [#86034](https://github.com/rust-lang/rust/issues/86034)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=29cd70d40722930e66a8b726fe58a7bd1d64a22b&end=6b354a13820a444f834a33365ae4a8d97d7d27ce&stat=instructions:u) (up to 4.5% on `incr-full` builds of `helloworld-opt`)
- Seems to be more code getting generated into binaries, leading to
  regressions on the smaller benchmarks.

#### Improvements

- optimize Eq implementation for paths [#86179](https://github.com/rust-lang/rust/issues/86179)

#### Nags requiring follow up

Backlog:

* Follow up on regression in [#85343](https://github.com/rust-lang/rust/pull/85343#issuecomment-856819536)

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No `I-nominated` for `T-compiler` this time.

[T-libs](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AI-nominated+-label%3AT-compiler+-label%3AT-lang+-label%3AT-rustdoc)
- "Remove P: Unpin bound on impl Future for Pin" [rust#81363](https://github.com/rust-lang/rust/pull/81363)
  - reviewed by @**RalfJ** 
  - nominated by @**Jane Lusby**
- "core: add unstable no_floating_point to disable float formatting code" [rust#86048](https://github.com/rust-lang/rust/pull/86048)
  - see `S-waiting-on-team`

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.
