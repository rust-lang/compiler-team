---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2021-02-11

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- 🎉 Today, release stable 1.50 🎉  [blog link](https://blog.rust-lang.org/2021/02/11/Rust-1.50.0.html)
-  @**rylev** and @**pnkfelix** met regarding perf triage and perf.rust-lang.org. @**pnkfelix** wants to suggest that for any PR that touches something under `compiler/`, have rustbot post comment suggesting that they consider a rust-timer run (and include the syntax for the invocation). Feedback?

### MCP status
- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "MCP: More Cranelift-friendly portable SIMD intrinsics" [compiler-team#381](https://github.com/rust-lang/compiler-team/issues/381)
  - "Debuggable Macro Expansions" [compiler-team#386](https://github.com/rust-lang/compiler-team/issues/386)
  - "Move query implementation outside rustc_middle" [compiler-team#388](https://github.com/rust-lang/compiler-team/issues/388)
  - "Uplift the `invalid_atomic_ordering` lint from clippy to rustc" [compiler-team#390](https://github.com/rust-lang/compiler-team/issues/390)
  - "Staged queries" [compiler-team#391](https://github.com/rust-lang/compiler-team/issues/391)
  - "Do not traverse the HIR to generate metadata" [compiler-team#392](https://github.com/rust-lang/compiler-team/issues/392)
  - "Embed version numbers in backport nominations and regression labels" [compiler-team#393](https://github.com/rust-lang/compiler-team/issues/393)
  - "Add different entry points for x.py" [compiler-team#396](https://github.com/rust-lang/compiler-team/issues/396)
  - "rustdoc is using rustc_ast_pretty, would it be possible to make it somewhat "stable"?" [compiler-team#403](https://github.com/rust-lang/compiler-team/issues/403)
- Pending FCP requests (check your boxes!)
  - "Demote x86_64-rumprun-netbsd target" [rust#81514](https://github.com/rust-lang/rust/issues/81514)
- Things in FCP (make sure you're good with it)
  - "Distribute rustc_codegen_cranelift as rustup component" [compiler-team#405](https://github.com/rust-lang/compiler-team/issues/405)
- Accepted MCPs
  - "Add a `NOOP_METHOD_CALL` lint for methods which should never be directly called" [compiler-team#375](https://github.com/rust-lang/compiler-team/issues/375)
  - "refactor the unsafe checking to work on the THIR" [compiler-team#402](https://github.com/rust-lang/compiler-team/issues/402)
- Finalized FCPs (disposition merge)
  - "Tracking Issue for `partition_point`" [rust#73831](https://github.com/rust-lang/rust/issues/73831)
  - "Tracking Issue for fmt::Arguments::as_str()" [rust#74442](https://github.com/rust-lang/rust/issues/74442)
  - "Tracking Issue for feature(int_bits_const): <integer>::BITS" [rust#76904](https://github.com/rust-lang/rust/issues/76904)
  - "Implement io::Seek for io::Empty" [rust#78044](https://github.com/rust-lang/rust/pull/78044)
  - "Stabilize Arc::{increment,decrement}_strong_count" [rust#79285](https://github.com/rust-lang/rust/pull/79285)
  - "Rename Iterator::fold_first to reduce and stabilize it" [rust#79805](https://github.com/rust-lang/rust/pull/79805)
  - "Stabilize `peekable_next_if`" [rust#80011](https://github.com/rust-lang/rust/pull/80011)
  - "stabilise `cargo test -- --include-ignored`" [rust#80053](https://github.com/rust-lang/rust/pull/80053)
  - "Implement missing `AsMut<str>` for `str`" [rust#80279](https://github.com/rust-lang/rust/pull/80279)
  - "Stabilize by-value `[T; N]` iterator `core::array::IntoIter`" [rust#80470](https://github.com/rust-lang/rust/pull/80470)
  - "Add Box::downcast() for dyn Any + Send + Sync" [rust#80945](https://github.com/rust-lang/rust/pull/80945)
  - "Stabilize remaining integer methods as `const fn`" [rust#80962](https://github.com/rust-lang/rust/pull/80962)
  - "Stabilize `core::slice::fill_with`" [rust#81048](https://github.com/rust-lang/rust/pull/81048)
  - "Remove requirement that forces symmetric and transitive PartialEq impls to exist" [rust#81198](https://github.com/rust-lang/rust/pull/81198)
  - "libtest: allow multiple filters" [rust#81356](https://github.com/rust-lang/rust/pull/81356)

### WG checkins

@*WG-llvm* by @**nagisa** and @**Nikita Popov**:

> There has been a bit of movement on the LLVM side:
> * LLVM no longer assumes forward progress by default. This means that infinite loops, and more importantly, calls to functions with infinite loops, are no longer optimized away. This will fix [#28728](https://github.com/rust-lang/rust/issues/28728).
>  * Known `noalias` related miscompiles have been fixed by the introduction of `@llvm.experimental.noalias.scope.decl` intrinsics. There might be more issues lurking here, but at least the previous blocker is resolved now. This will fix [#54878](https://github.com/rust-lang/rust/issues/54878).
> * Incorrect nowrap flags in LSR have been fixed. This will fix [#74498](https://github.com/rust-lang/rust/issues/74498).
> * fptoui.sat/fptosi.sat intrinsics for saturating float to int conversions have landed. However currently only X86 has optimized codegen. We may switch to these sometime in the future.
> * MemorySSA-based MemCpyOpt is not enabled by default yet. We can test it under a flag, but due to current pipeline positioning it will have a compile-time cost.
> * LLVM has switched to the new pass manager by default just after the LLVM 12 cut. This means that we should probably make a serious effort towards making the switch as well, as upstream now only does minimal testing of the legacy pass manager.
> * There's a PR to [upgrade to LLVM 12](https://github.com/rust-lang/rust/pull/81451). Nikita managed to resolve the issues that came up. There seem to be performance implications in this upgrade (see the task for timing runs).

@*T-compiler/WG-meta* by @**nikomatsakis** , @**davidtwco** and @**Santiago Pastorino** 
> Checkin text

## Beta-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler)
- "parser: Fix panic in 'const impl' recovery" [rust#81876](https://github.com/rust-lang/rust/pull/81876)
  - opened by @**osa1**
  - reviewed by @**Matthew Jasper** 
  - fixes [rust#81806](https://github.com/rust-lang/rust/issues/81806), a `P-medium` ICE on an invalid 'const' keyword parsing 

[T-libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-libs-impl)
- No beta nominations for `T-libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## Stable-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No stable nominations for `T-compiler` this time.

[T-libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-libs-impl)
- No stable nominations for `T-libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- No PRs waiting on `T-compiler` this time.

[T-libs-impl](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-libs-impl)
- No PRs waiting on `T-libs-impl` this time.

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [66 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [41 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 2 P-high, 1 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 3 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 38 P-high, 88 P-medium, 10 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-libs-impl)
- "File implementation on Windows has unsound methods" [rust#81357](https://github.com/rust-lang/rust/issues/81357)
  - assigned to @**Arlie Davis**
  - Note: following @**pnkfelix** [suggestion](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.20meeting.5D.202020-12-31.20.2354818/near/221297038), this issue has been downgraded to `P-high`

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high)
- "Cross-compiling Rust to s390x yields a faulty toolchain" [rust#80810](https://github.com/rust-lang/rust/issues/80810)
  - Opened by [Jakob-Naucke](https://github.com/Jakob-Naucke)
  - previously discussed, assigned to @**pnkfelix**
  - Note: this issue is up for grab for anyone willing to follow it up
  - seems to affect specifically s390x or to be related to endianess
  - Issue not yet completely clear, could be checked against PR [#80732](https://github.com/rust-lang/rust/pull/80732) (not ready for merge yet)
  - @**cuviper** comments that this issue [could also be unrelated to endianess](https://github.com/rust-lang/rust/issues/80810#issuecomment-761253970)
- "regression 1.50: Duplicate symbol linker error" [rust#80951](https://github.com/rust-lang/rust/issues/80951)
  - opened by @**rylev** 
  - regression on crate [utxo-oracle](https://github.com/devrandom/utxo-oracle) that compiled on 1.49 (see [logs](https://crater-reports.s3.amazonaws.com/beta-1.50-1/beta-2021-01-01/gh/devrandom.utxo-oracle/log.txt))
  - @**Frank Steffahn** adds that [doesn't look like a genuine regression](https://github.com/rust-lang/rust/issues/80951#issuecomment-768602173)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [2021-02-09 full triage logs](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-02-09.md)

A week of more regressions than improvements with one fairly large regression in `incr-patched` benchmarks introduced in a rollup. Performance regressions introduced in rollups have been a source of headache lately and something the performance team is looking to improve in the future. 

Triage done by **@rylev**.

5 Regressions, 2 Improvements, 1 Mixed
2 of them in rollups

#### Regressions

Rollup of 11 pull requests [#81660](https://github.com/rust-lang/rust/issues/81660)
- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=f6cb45ad01a4518f615926f39801996622f46179&end=a3ed564c130ec3f19e933a9ea31faca5a717ce91&stat=instructions:u) (up to 33.1% on `incr-patched: println` builds of `cargo-check`)
- A huge performance regression in a rollup which should not happen. This seems to be happening in `incr-patched` benchmarks in the `typeck` and `evaluate_obligation`.
- This points towards to [#80629](https://github.com/rust-lang/rust/pull/80629) as being the most likely culprit.

Add a new ABI to support cmse_nonsecure_call [#81346](https://github.com/rust-lang/rust/issues/81346)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=e6a0f3cdf3801394a53ffa42683385d94b02c772&end=b593389edbaa9ea0c90f0ed419283842f534e50a&stat=instructions:u) (up to 1.9% on `full` builds of `deeply-nested-async-check`)
- Adding support for an additional ABI shouldn't have performance implications on rustc. Perhaps this just happens to be noise, but it's hard to tell.

Identify unreachable subpatterns more reliably [#80632](https://github.com/rust-lang/rust/issues/80632)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=5a5f3a980c0d2afd55f2162300339471378e341f&end=36ecbc94eb6be90bc38b2d0fdd4bfac3f34d9923&stat=instructions:u) (up to 1.2% on `full` builds of `match-stress-enum-check`)
- This is a regression in a benchmark specifically for pattern match which is impacted by this change. The [`check match`](https://perf.rust-lang.org/detailed-query.html?commit=36ecbc94eb6be90bc38b2d0fdd4bfac3f34d9923&base_commit=5a5f3a980c0d2afd55f2162300339471378e341f&benchmark=match-stress-enum-check&run_name=full) query was responsible for the regression.
- Interestingly, a [performance run](https://perf.rust-lang.org/compare.html?start=fde692739576089729885b7f79aa2232cb9778c5&end=6e126cb311d93b2142d8eae09719d614926e04b7) was done on this change during review which did not show the regressions seen here.

expand/resolve: Turn `#[derive]` into a regular macro attribute [#79078](https://github.com/rust-lang/rust/issues/79078)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=36ecbc94eb6be90bc38b2d0fdd4bfac3f34d9923&end=9778068cbc1e06cc3685422323ff38a2f397de26&stat=instructions:u) (up to 1.3% on `incr-unchanged` builds of `derive-check`)
- This largely seems to be impacting `incr-unchanged` benchmarks particularly in the `expand_crate` and `late_resolve_crate` queries, and it's happening mostly in stress benchmarks. The only "real" code base impacted this is `style-servo-check` at 1.0% for `incr-unchanged`.

Use ufcs in derive(Debug) [#81294](https://github.com/rust-lang/rust/issues/81294)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=6ad11e2e25919b75ebbc36d7910f2a1126a7e873&end=186f7ae5b04d31d8ccd1746ac63cdf1ab4bc2354&stat=instructions:u) (up to -3.3% on `incr-patched: println` builds of `cargo-opt`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=6ad11e2e25919b75ebbc36d7910f2a1126a7e873&end=186f7ae5b04d31d8ccd1746ac63cdf1ab4bc2354&stat=instructions:u) (up to 3.3% on `full` builds of `style-servo-check`)
- This was originally labeled as a "mixed" result, but this is largely a perf regression with only a few improvements. 
- This is a correctness fix so it's possible that we'll need to eat any performance regressions.
- There is a PR [open](https://github.com/rust-lang/rust/pull/81760) to try to address the fact that more MIR is produced, but this doesn't seem to have a positive impact on [perf](https://perf.rust-lang.org/compare.html?start=822ebfd2c43fbe466da8ae34ffe3ce6cba2e8336&end=d589fc7d554c7ecdab26eb7ae07fd6dc7e8280f7).

#### Improvements

- Rollup of 14 pull requests [#81678](https://github.com/rust-lang/rust/issues/81678)
- Revert 78373 ("dont leak return value after panic in drop") [#81257](https://github.com/rust-lang/rust/issues/81257)

#### Mixed

- Fix derived PartialOrd operators  [#81384](https://github.com/rust-lang/rust/issues/81384)

#### Nags requiring follow up

- Waiting on more investigation in [#81476](https://github.com/rust-lang/rust/issues/81476).
- Need to follow up on the regressions reported this week.


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated issues for `T-compiler` this time.

[T-libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-libs-impl)
- No nominated issues for `T-libs-impl` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "RFC: Checking conditional compilation at compile time" [rfcs#3013](https://github.com/rust-lang/rfcs/pull/3013)
  - [review by](https://github.com/rust-lang/rfcs/pull/3013#pullrequestreview-568757930) by @**Wesley Wiser** 
  - RFC author implemented suggestions, waiting for feedback