---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2021-11-24

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- :loudspeaker: next week December, 2nd, release of Rust stable 1.57
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copywrite/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  -  "Tier 3 target proposal: riscv64gc-linux-android (Android target for `riscv64gc`)" [compiler-team#472](https://github.com/rust-lang/compiler-team/issues/472) 
- Old MCPs (not seconded, take a look)
  -  "CI should exercise (subset of) tests under --stage 1" [compiler-team#439](https://github.com/rust-lang/compiler-team/issues/439) (last review activity: 3 months ago)
  -  "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441) (last review activity: 4 months ago)
  -  "Make `-Z binary-dep-depinfo` the default behavior" [compiler-team#464](https://github.com/rust-lang/compiler-team/issues/464) (last review activity: about 54 days ago)
- Pending FCP requests (check your boxes!)
  - No pending FCP requests this time.
- Things in FCP (make sure you're good with it)
  -  "Unstable lints should be considered unknown" [compiler-team#469](https://github.com/rust-lang/compiler-team/issues/469) 
  -  "Tracking Issue for cargo report future-incompat" [rust#71249](https://github.com/rust-lang/rust/issues/71249) 
  -  "Tracking Issue for inline assembly (`asm!`)" [rust#72016](https://github.com/rust-lang/rust/issues/72016) 
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - No new finished FCP (disposition merge) this time.

### WG checkins

- @_WG-diagnostics_ by @**Esteban Küber** and @**oli** ([previous checkin](https://hackmd.io/czhRhn0rSaib7Pnr5ZvDUg?view#WG-checkins)):
> nothing to report at this time

- @_*WG-rustc-dev-guide* by @**Santiago Pastorino** and @**Yuki Okushi|217081** ([previous checkin](https://hackmd.io/czhRhn0rSaib7Pnr5ZvDUg?view#WG-checkins)):
> #### Most notable changes
>
>- Make subtree docs an overview and add link to clippy docs for details [#1244](https://github.com/rust-lang/rustc-dev-guide/pull/1244)
>- Describe drop elaboration [#1240](https://github.com/rust-lang/rustc-dev-guide/pull/1240)
>- Edit bootstrapping chapter [#1239](https://github.com/rust-lang/rustc-dev-guide/pull/1239)
>- Add documentation for LLVM CFI support [#1234](https://github.com/rust-lang/rustc-dev-guide/pull/1234)
>
>#### Most notable WIPs
>
>- Document more compiletest headers. [#1249](https://github.com/rust-lang/rustc-dev-guide/pull/1249)
>- Added detail to codegen section [#1216](https://github.com/rust-lang/rustc-dev-guide/pull/1216)
>- Document inert vs active attributes [#1110](https://github.com/rust-lang/rustc-dev-guide/pull/1110)
>- Explain the new valtree system for type level constants. [#1097](https://github.com/rust-lang/rustc-dev-guide/pull/1097)

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "relate lifetime in `TypeOutlives` bounds on drop impls" [rust#90840](https://github.com/rust-lang/rust/pull/90840) 
  - fixes p-critical unsoundness [rust#90838](https://github.com/rust-lang/rust/issues/90838)
  - @**pnkfelix** has also produced a scope-limited backport in [rust#91136](https://github.com/rust-lang/rust/pull/91136)
  - @**Jack Huey** comments on [rust#91136](https://github.com/rust-lang/rust/pull/91136#issuecomment-976157727) on which of the two is better suited for a backport
- :stable: "relate lifetime in `TypeOutlives` bounds on drop impls" [rust#90840](https://github.com/rust-lang/rust/pull/90840) 
  - see beta nomination

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- No PRs waiting for T-compiler

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Add long explanation for E0726" [rust#87655](https://github.com/rust-lang/rust/pull/87655) (last review activity: 3 months ago)
- "Lint bare traits in AstConv." [rust#89090](https://github.com/rust-lang/rust/pull/89090) (last review activity: about 60 days ago)
- "Introduce linter for diagnostic messages" [rust#89455](https://github.com/rust-lang/rust/pull/89455) (last review activity: about 49 days ago)
- [Fix false positive for typoed crate or module suggestion](https://github.com/rust-lang/rust/pull/90125) (last activity: none)
  - opened 1 month ago, needs a reviewer
  - highfive bot assigned to @**Esteban Küber** 
- [Allow use of AddressSanitizer on Windows by linking to existing libraries](https://github.com/rust-lang/rust/pull/89369) (last activity: about 1 month ago)
  - previously discussed and reassigned to @**Wesley Wiser** for review
- [Introduce linter for diagnostic messages](https://github.com/rust-lang/rust/pull/89455) (last activity: about 40 days ago)
  - previously reviewed by @**Esteban Küber** and @**simulacrum** 
- "Support versioned dylibs" [rust#90260](https://github.com/rust-lang/rust/pull/90260) (last activity: 28 days ago)
  - last review from @**Wesley Wiser**, then more comments
  - Is this `S-waiting-on-author`?
- [Postpone the evaluation of constant expressions that depend on inference variables](https://github.com/rust-lang/rust/pull/90023) (last activity: about 17 days ago)
  - review from @**lcnr**, [left some comments](https://github.com/rust-lang/rust/pull/90023#issuecomment-953497106) about merging this PR later after some more thoughts

## Issues of Note

### Short Summary

- [4 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [2 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [79 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [55 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [2 P-critical, 4 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 2 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [4 P-critical, 46 P-high, 84 P-medium, 12 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Miscompilation where binding only some fields leaks the others" [rust#90752](https://github.com/rust-lang/rust/issues/90752)
  - Mentioned in [I-nominated issues](#Nominated-Issues)
- "Unsound drop due to imperfect lifetime checks" [rust#90838](https://github.com/rust-lang/rust/issues/90838)
  - Has two PR fixing this: [rust#90840](https://github.com/rust-lang/rust/pull/90840) and [rust#91136](https://github.com/rust-lang/rust/pull/91136) from @**pnkfelix** (see backports)
- "Implied bounds by associated types as function parameters are inconsistent in an unsound way." [rust#91068](https://github.com/rust-lang/rust/issues/91068)
  - opened by @**Frank Steffahn**, also bisected to PR [rust#88312](https://github.com/rust-lang/rust/pull/88312)
  - discussion about reverting [rust#88312](https://github.com/rust-lang/rust/issues/91068#issuecomment-975788073)
- "Huge compile-time regression in beta/nightly" [rust#91128](https://github.com/rust-lang/rust/issues/91128)
  - we have a [reproducible example](https://github.com/rust-lang/rust/issues/91128#issuecomment-977154873)
  - seems correlated to the new LLVM pass-manager (disabling it solves the issue)
  - (the new LLVM pass-manager will enter in stable and is enabled by default)

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "Compilation appears to loop indefinitely " [rust#89195](https://github.com/rust-lang/rust/issues/89195) 
  - discussed [last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bplanning.20meeting.5D.202021-11-19/near/262082635)
    - @**pnkfelix** self assigned as reminder to reach out to Kyle Huey and schedule chat with @**Aaron Hill**
- "regression: rustc suggests `.as_ref()` at incorrect location and other spans have regressed" [rust#90286](https://github.com/rust-lang/rust/issues/90286) 
  - @**Esteban Küber** [comments wrt to a revert](https://github.com/rust-lang/rust/issues/90286#issuecomment-974534925) that it would cause another bug to resurface, would try to prepare a fix before the next release
- "DWARF info for `static` vars in lib crates has stopped being produced reliably in LTO builds" [rust#90357](https://github.com/rust-lang/rust/issues/90357)
  - bisection seems to point to [rust#89041](https://github.com/rust-lang/rust/pull/89041) but **cuviper** suggests could be a dupe of [rust#90301](https://github.com/rust-lang/rust/issues/90301) and #89041 possibly just exacerbated the LLVM issue
  - also reproduces on nightly

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "Undefined reference to `getauxval` in function `init_have_lse_atomics`  when compiling to nightly `aarch64-unknown-linux-musl`" [rust#89626](https://github.com/rust-lang/rust/issues/89626)
  - Seems that it now [happens also on beta](https://github.com/rust-lang/rust/issues/89626#issuecomment-976374296), which will become stable in a week
  - @**Hans Kratz** suggest [as a workaround](https://github.com/rust-lang/rust/issues/89626#issuecomment-946434059)
  - [discussed previously](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-11-04.20.2354818/near/260281814)
  - [as a workaround](https://github.com/rust-lang/rust/issues/89626#issuecomment-975942202) `-Clinker=rust-lld` works
  - Issue should be fixed by [rust#90527](https://github.com/rust-lang/rust/pull/90527) + [libc#2272](https://github.com/rust-lang/libc/pull/2272) as soon as the fixed libc 0.2.107 is merged, see [rust#90681](https://github.com/rust-lang/rust/issues/90681)

## Performance logs

> [triage logs 2021-11-23](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-11-23.md)

This week, there were a number of cases where the `incr-unchanged` variants of `inflate` went up or down by 5% to 6%; we believe these are instances of increased noise in benchmarks documented on [rustc-perf#1105](https://github.com/rust-lang/rustc-perf/issues/1105). I was tempted to remove these from the report, but its non-trivial to re-construct the report "as if" some benchmark were omitted.

Otherwise, there were some nice wins for performance. For example, PR [#90996](https://github.com/rust-lang/rust/issues/90996) more than halved the compilation time for `full` builds of `diesel` by revising how we hash `ObligationCauseData`. If anyone is interested, it might be good to follow-up on the effects of PR [#90352](https://github.com/rust-lang/rust/issues/90352), "Simplify `for` loop desugar", where we have hypothesized that the increased compilation time is due to more LLVM optimizations being applied.

Triage done by **@pnkfelix**.
Revision range: [934624fe..22c2d9dd](https://perf.rust-lang.org/?start=934624fe5f66ce3fb8abf0597a6deb079783335f&end=22c2d9ddbf356bcdb718e88ca6ee3665e1e42690&absolute=false&stat=instructions%3Au)

1 Regressions, 3 Improvements, 8 Mixed; 3 of them in rollups, 30 Untriaged PRs
34 comparisons made in total

#### Regressions

rustdoc: Make two small cleanups [#91073](https://github.com/rust-lang/rust/issues/91073)
- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=5bc98076f37dd8c1476de4bbe0515c55a65332b7&end=02913c078849f940371eb9930754f2b0f1bc9fad&stat=instructions:u) (up to 5.3% on `incr-unchanged` builds of `inflate`)
- This was [previously triaged](https://github.com/rust-lang/rust/pull/91073#issuecomment-974880869) as spurious by the PR author.
- (*Only* inflate debug incr-unchanged was affected significantly.)

#### Improvements

- Rollup of 7 pull requests [#90966](https://github.com/rust-lang/rust/issues/90966)
- Optimize `impl Hash for ObligationCauseData` by not hashing `ObligationCauseCode` variant fields [#90996](https://github.com/rust-lang/rust/issues/90996)
- Avoid documenting top-level private imports [#91094](https://github.com/rust-lang/rust/issues/91094)
- rustdoc: Cleanup `DocFragment` [#91034](https://github.com/rust-lang/rust/issues/91034)
- libcore: assume the input of `next_code_point` and `next_code_point_reverse` is UTF-8-like [#89611](https://github.com/rust-lang/rust/issues/89611)

#### Mixed

Remove `DropArena`. [#90919](https://github.com/rust-lang/rust/issues/90919)
- Small improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=934624fe5f66ce3fb8abf0597a6deb079783335f&end=d914f17ca71a33a89b2dc3436fca51b1a091559e&stat=instructions:u) (up to -0.3% on `incr-patched: println` builds of `clap-rs`)
- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=934624fe5f66ce3fb8abf0597a6deb079783335f&end=d914f17ca71a33a89b2dc3436fca51b1a091559e&stat=instructions:u) (up to 6.1% on `incr-unchanged` builds of `inflate`)
- This was triaged as noise in the PR comments both [before it landed](https://github.com/rust-lang/rust/pull/90919/#issuecomment-968772257) and [after it landed](https://github.com/rust-lang/rust/pull/90919/#issuecomment-970656929).

std: Get the standard library compiling for wasm64 [#90382](https://github.com/rust-lang/rust/issues/90382)
- Large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=6414e0b5b308d3ae27da83c6a25098cc8aadc1a9&end=b6f580acc0ce233d5c4d1f9680d354fded88b824&stat=instructions:u) (up to -4.3% on `incr-unchanged` builds of `clap-rs`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=6414e0b5b308d3ae27da83c6a25098cc8aadc1a9&end=b6f580acc0ce233d5c4d1f9680d354fded88b824&stat=instructions:u) (up to 1.0% on `incr-unchanged` builds of `issue-88862`)
- There were a lot of various changes in this PR, such as updates to dependencies (`compiler_builtins` and `dlmalloc`). We probably shoud have done a pre-merge rust-timer run on this PR.
- The flagged regressions of magnitude greater than 0.5% are isolated to "issue-88862 check" and "style-servo check". The improvements tended to outweigh the regressions. For the most part almost all significant performance effects are isolated to check builds.

Rollup of 8 pull requests [#91019](https://github.com/rust-lang/rust/issues/91019)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=b6f580acc0ce233d5c4d1f9680d354fded88b824&end=cc946fcd326f7d85d4af096efdc73538622568e9&stat=instructions:u) (up to -0.6% on `incr-unchanged` builds of `style-servo`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=b6f580acc0ce233d5c4d1f9680d354fded88b824&end=cc946fcd326f7d85d4af096efdc73538622568e9&stat=instructions:u) (up to 0.8% on `full` builds of `await-call-tree`)
- The regression is entirely associated with doc builds, which led to the PR author to flag PR [#90750](https://github.com/rust-lang/rust/pull/90750) as the root cause.
- It seems to me like the extra work injected by PR [#90750](https://github.com/rust-lang/rust/pull/90750) may be unavoidable; but was it expected to be significant?

Implement `clone_from` for `State` [#90535](https://github.com/rust-lang/rust/issues/90535)
- Small improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=3b65165ab79f535792fc7c504b3fbadf29d7a877&end=50f2c292007f9364908e4b8344886797f0144648&stat=instructions:u) (up to -0.2% on `full` builds of `many-assoc-items`)
- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=3b65165ab79f535792fc7c504b3fbadf29d7a877&end=50f2c292007f9364908e4b8344886797f0144648&stat=instructions:u) (up to 6.1% on `incr-unchanged` builds of `inflate`)
- This was evaluated for its effect on performance [prior to merge](https://github.com/rust-lang/rust/pull/90535#issuecomment-973298904); that run returned no relevant changes.
- As noted elsewhere, for this report we should probably treat "inflate" as noisy.

Update stdarch [#91052](https://github.com/rust-lang/rust/issues/91052)
- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=50f2c292007f9364908e4b8344886797f0144648&end=6d48ee90f51dd5793b425c6593581fd108ead398&stat=instructions:u) (up to -5.8% on `incr-unchanged` builds of `inflate`)
- Small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=50f2c292007f9364908e4b8344886797f0144648&end=6d48ee90f51dd5793b425c6593581fd108ead398&stat=instructions:u) (up to 0.3% on `incr-patched: println` builds of `html5ever`)
- The only benchmark that regressed is "html5ever debug" ("incr-patched: println" and "incr-unchanged"), and only by a relatively small amount. This seems acceptable to me, compared to the effort involved in figuring out how this change could be related to that effect.

Point at source of trait bound obligations in more places [#89580](https://github.com/rust-lang/rust/issues/89580)
- Large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=02913c078849f940371eb9930754f2b0f1bc9fad&end=b8e5ab20ed7a7677a998a163ccf7853764b195e6&stat=instructions:u) (up to -5.0% on `incr-unchanged` builds of `inflate`)
- Small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=02913c078849f940371eb9930754f2b0f1bc9fad&end=b8e5ab20ed7a7677a998a163ccf7853764b195e6&stat=instructions:u) (up to 1.1% on `incr-unchanged` builds of `wg-grammar`)
- (Again, we can probably ignore the change to `inflate`.)
- Other than that, there were a broad set of small regressions. Putting aside the ones tagged with `?` ("noisy"), there are 19 benchmarks that regressed by 0.10% to 0.42%. This seems like an acceptable cost.

Simplify `for` loop desugar [#90352](https://github.com/rust-lang/rust/issues/90352)
- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=65f3f8b220f020e562c5dd848ff7319257a7ba45&end=cebd2dda1d9071f2209079370c412f4ef9ef2b82&stat=instructions:u) (up to -6.2% on `incr-full` builds of `clap-rs`)
- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=65f3f8b220f020e562c5dd848ff7319257a7ba45&end=cebd2dda1d9071f2209079370c412f4ef9ef2b82&stat=instructions:u) (up to 2.3% on `full` builds of `regex`)
- This was triaged in the PR comments both [before it landed](https://github.com/rust-lang/rust/pull/90352#issuecomment-972986518) and [after it landed](https://github.com/rust-lang/rust/pull/90352#issuecomment-975432954) with the justification "The regressions seem to all be in `-opt` builds and solely part of the time spent in LLVM, so I'm hoping it's that more optimizations apply now (and worst case some optimizations require more work but don't result in better code)."

Manually outline error on incremental_verify_ich [#89883](https://github.com/rust-lang/rust/issues/89883)
- Small improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=7c4be43b27993ab405beaa19738258fdd546d3db&end=22c2d9ddbf356bcdb718e88ca6ee3665e1e42690&stat=instructions:u) (up to -0.8% on `incr-unchanged` builds of `clap-rs`)
- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=7c4be43b27993ab405beaa19738258fdd546d3db&end=22c2d9ddbf356bcdb718e88ca6ee3665e1e42690&stat=instructions:u) (up to 1.1% on `incr-unchanged` builds of `coercions`)
- The [pre-merge rustc-timer run](https://github.com/rust-lang/rust/pull/89883#issuecomment-974927075) did not predict such a significant impact on `coercions`.
- The driving force for this change was to reduce the critical path in bootstrap time, so the most important thing to look at is the [bootstrap timing data](https://perf.rust-lang.org/compare.html?start=7c4be43b27993ab405beaa19738258fdd546d3db&end=22c2d9ddbf356bcdb718e88ca6ee3665e1e42690#bootstrap). Specifically: while there is a big mix of ups and downs on the percentages column, the crate that takes the longest to compile (`rustc_query_impl`, the laggard at over 80 seconds of compilation time).
- This PR brings the compilation time of `rustc_query_impl` from 87.1 seconds down to 85.6 seconds, a -1.8% improvement.
- That is consistent with the [predicted effect](https://github.com/rust-lang/rust/pull/89883#issue-758410955) of the PR, and justifies the isolated impact on instruction counts.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/labels/I-compiler-nominated)
- "Tracking issue for plugin stabilization (`plugin`, `plugin_registrar` features)" [rust#29597](https://github.com/rust-lang/rust/issues/29597) 
- "Change `char` type in debuginfo to DW_ATE_UTF" [rust#89887](https://github.com/rust-lang/rust/pull/89887) 
- "sess: default to v0 symbol mangling" [rust#89917](https://github.com/rust-lang/rust/pull/89917) 
- "implement aspect-oriented programming (AOP) for Rust" [rust#90721](https://github.com/rust-lang/rust/pull/90721) 
- "Miscompilation where binding only some fields leaks the others" [rust#90752](https://github.com/rust-lang/rust/issues/90752)
  - @**tmandry** nominated
  - [great writeup](https://github.com/rust-lang/rust/issues/90752#issuecomment-965822895) from @**Dylan MacKenzie (ecstatic-morse)**, suggests a quick fix
  - Opened PR [rust#90788](https://github.com/rust-lang/rust/pull/90788) that implements the quick fix suggested. PR is beiung reviewed.
  - wg-prio assigned `P-critical`, but being a regression from stable probably not a release blocker?


[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.
