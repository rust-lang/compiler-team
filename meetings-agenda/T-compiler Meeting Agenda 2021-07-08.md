---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2021-07-08

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Friday meeting: Tomorrow at <time:2021-07-09T10:00:00-04:00> we will be having part III of our series of meetings on the fingerprint bug write-up, compiler-team#435 ([doc](https://hackmd.io/DhKzaRUgTVGSmhW8Mj0c8A?view) under discussion).

### MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  -  "Add different entry points for x.py" [compiler-team#396](https://github.com/rust-lang/compiler-team/issues/396) (last comment: 6 months ago)
  -  "rustdoc is using rustc_ast_pretty, would it be possible to make it somewhat "stable"?" [compiler-team#403](https://github.com/rust-lang/compiler-team/issues/403) (last comment: 5 months ago)
  -  "LLVM plugin support in Rust" [compiler-team#419](https://github.com/rust-lang/compiler-team/issues/419) (last comment: 3 months ago)
  -  "Don't steal the resolver when lowering HIR; instead store an immutable resolver in TyCtxt" [compiler-team#437](https://github.com/rust-lang/compiler-team/issues/437) (last comment: about 26 days ago)
  -  "CI should exercise (subset of) tests under --stage 1" [compiler-team#439](https://github.com/rust-lang/compiler-team/issues/439) (last comment: about 5 days ago)
  -  "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441) (last comment: about 5 days ago)
  -  "Encode spans relative to the enclosing item" [compiler-team#443](https://github.com/rust-lang/compiler-team/issues/443) (last comment: about 5 days ago)
- Pending FCP requests (check your boxes!)
  -  "Write text output files to stdout if options like `-o -` or `--emit asm=-` are provided" [compiler-team#431](https://github.com/rust-lang/compiler-team/issues/431) 
- Things in FCP (make sure you're good with it)
  - None at this time
- Accepted MCPs
  -  "Promote `aarch64-apple-ios-sim` to Tier 2" [compiler-team#428](https://github.com/rust-lang/compiler-team/issues/428) 
  -  "Merge rustc_codegen_gcc backend as compiler/rustc_codegen_gcc" [compiler-team#442](https://github.com/rust-lang/compiler-team/issues/442)
- Finalized FCPs (disposition merge)
  -  "Tracking Issue for feature(string_drain_as_str) - string::Drain::as_str()" [rust#76905](https://github.com/rust-lang/rust/issues/76905) 
  -  "Tracking Issue for std::io::Seek::rewind()" [rust#85149](https://github.com/rust-lang/rust/issues/85149) 

### WG checkins

*WG-self-profile* checkin by @**mw** && @**Wesley Wiser**:
> Just a few small things to report here:
> - @**Aaron Hill** extended measureme's API to allow recording events in a more flexible way if needed.
> - @**rylev** is working with @**mw** on adding incr. comp. related measurements, starting with query results hashing timings.

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No beta nominations for `T-compiler` this time.
- No stable nominations for `T-compiler` this time.

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- None at this time

## Early Nominations

- "Allow reifying intrinsics to `fn` pointers." [rust#86699](https://github.com/rust-lang/rust/pull/86699)
  - opened by @**eddyb**, asking for a review ([comment](https://github.com/rust-lang/rust/pull/86699#issuecomment-870745885))

## Issues of Note

### Short Summary

- [4 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [3 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [79 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [53 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [2 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 2 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [2 P-critical, 47 P-high, 83 P-medium, 10 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "run-make-fulldeps/pgo-branch-weights fails on AArch64 Linux" [rust#78226](https://github.com/rust-lang/rust/issues/78226)
  - only fails on aarch64 arm
  - @**simulacrum** [comments](https://github.com/rust-lang/rust/issues/78226#issuecomment-866299280) that tests for this are disabled but a fix for 1.54 would be good
  - being investigated by @**Jamie Cunliffe** [see comment](https://github.com/rust-lang/rust/issues/78226#issuecomment-868570487) 
  - @**simulacrum** [suggests](https://github.com/rust-lang/rust/issues/78226#issuecomment-875011175) looking at [#85891](https://github.com/rust-lang/rust/pull/85891)
- "Unstable fingerprints - what to do on beta (and stable)" [rust#84970](https://github.com/rust-lang/rust/issues/84970)
  - discussed [last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-06-24.20.2354818/near/243797032)
  - @**Aaron Hill** comments about addressing the [sub-obligation](https://github.com/rust-lang/rust/issues/85360) and [the overflow](https://github.com/rust-lang/rust/issues/84963) issues, other than those all known issues are fixed
  - @**estebank** [offered to have a look](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-06-17.20.2354818/near/243025573)
  - there are [still occurrences of incr-comp ICEs](https://github.com/rust-lang/rust/issues/84970#issuecomment-873539084) (though possibly related to other issues? see [comment](https://github.com/rust-lang/rust/issues/84970#issuecomment-873624124)) 
  - general feeling is to re-enable incr-comp again in 1.54 
- "iter::Fuse is unsound with how specialization currently behaves around HRTB fn pointers" [rust#85863](https://github.com/rust-lang/rust/issues/85863)
  - @**cuviper** ([comment](https://github.com/rust-lang/rust/issues/85863#issuecomment-871797016)) opened pr [rust#86765](https://github.com/rust-lang/rust/pull/86765) and [rust#86766](https://github.com/rust-lang/rust/pull/86766)
  - also, discussed [last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-07-01.20.2354818/near/244577649) (issue needs an owner)
- "TrustedRandomAccess optimization for Zip containing vec::IntoIter is unsound with how specialization currently behaves around HRTB fn pointers" [rust#85873](https://github.com/rust-lang/rust/issues/85873)
  - @**Frank Steffahn** authored PR [rust#85874](https://github.com/rust-lang/rust/pull/85874) that should close this issue 
  - added the work from PR [steffahn/rust#1](https://github.com/steffahn/rust/pull/1)

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2021-07-06](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-07-06.md)

A fairly mixed week with improvements and regressions mostly balancing themselves out. The highlight of this week is the new performance triage process which will now label PRs that introduce performance regressions with the `perf-regression` label. Authors and/or reviewers are expected to justify their performance regression either by a short summary of why the change is worth it despite the regression or by creating an issue to follow-up on the regression.

Triage done by **@rylev**.
2 Regressions, 3 Improvements, 2 Mixed, 1 of them in rollups

#### Regressions

Rollup of 8 pull requests [#86588](https://github.com/rust-lang/rust/issues/86588)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=f1e691da2e640bb45fe18f8a5bd8f7afa65ce21d&end=964a81eb37db6ee33b8fc107582618bf2befe02d&stat=instructions:u) (up to 1.9% on `full` builds of `deeply-nested-async-check`)
- The regressions are worse in `deeply-nested-async`.
- Most of the rollup is documentation or tooling changes. The only real changes in code were in [MIR pretty printing](https://github.com/rust-lang/rust/pull/86566) and [checking spans to see if Rust 2021 closure capturing should be used](https://github.com/rust-lang/rust/pull/86536). Both seem rather benign. However, given the performance regression is async code (which may take more advantage of closures), perhaps the closure capture change should be investigated first.
- Follow-up comment: https://github.com/rust-lang/rust/pull/86588#issuecomment-874773229


Improve debug symbol names to avoid ambiguity and work better with MSVC's debugger [#85269](https://github.com/rust-lang/rust/issues/85269)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=851c82e88ade86bfe3b4ee785d5e5ab1d954b61c&end=2545459bff0aae43288e2e17bff0d332c49a6353&stat=instructions:u) (up to 1.5% on `incr-unchanged` builds of `unify-linearly-debug`)
- This might be the case of simply doing more work (including allocations) where there were comparatively few before.
- Unfortunately a perf run was not run before merging (due to the somewhat complication nature of it landing). This is another example where we'll probably want to invest more in ensuring our performance triage process does not lose track of such changes.
- @michaelwoerister already opened [#86431](https://github.com/rust-lang/rust/issues/86431) to investigate this area of the code. Given the regression isn't very bad, I suggest we let this change slide and try to address the performance of debug info generation wholistically.
-Follow-up comment: https://github.com/rust-lang/rust/pull/85269#issuecomment-874776341


#### Improvements

- Derive `Copy` for `VarianceDiagInfo` [#86670](https://github.com/rust-lang/rust/issues/86670)
- Add inflate to pgo [#86697](https://github.com/rust-lang/rust/issues/86697)
- Fix const-generics ICE related to binding [#86795](https://github.com/rust-lang/rust/issues/86795)

#### Mixed

Include terminators in instance size estimate [#86777](https://github.com/rust-lang/rust/issues/86777)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=56dee7c49ecdec4c2c9eccc6ff966cf58847bda6&end=7a9ff746fe20a38a3adc0ac65e1789f6e4b099ad&stat=instructions:u) (up to 4.4% on `incr-unchanged` builds of `deeply-nested-async-check`)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=56dee7c49ecdec4c2c9eccc6ff966cf58847bda6&end=7a9ff746fe20a38a3adc0ac65e1789f6e4b099ad&stat=instructions:u) (up to -1.9% on `full` builds of `ripgrep-opt`)
- This was identified as potentially being performance sensitive since it leads to changes in CGU partitioning, but unfortunately, @bors has already been invoked on the PR. Arguably, we should have run a performance test anyway.
- This seemed to impact the `deeply-nested-async` benchmark which has the tendency to be more sensitive to changes like this.
- Follow-up comment: https://github.com/rust-lang/rust/pull/86777#issuecomment-874779995

Inline Iterator as IntoIterator. [#84560](https://github.com/rust-lang/rust/issues/84560)
- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=5249414809d40fe22eca0c36105a2f71b9006e04&end=6e9b3696d494a32d493585f96f0671123066cd58&stat=instructions:u) (up to 6.2% on `incr-patched: println` builds of `webrender-opt`)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=5249414809d40fe22eca0c36105a2f71b9006e04&end=6e9b3696d494a32d493585f96f0671123066cd58&stat=instructions:u) (up to -3.2% on `full` builds of `deeply-nested-opt`)
- Performance run was run on the change which looks similar to results here. Given that this led to fairly significant regressions in some benchmarks, there should probably be some justification as to why the performance regressions are acceptable.
- Follow-up comment: https://github.com/rust-lang/rust/pull/84560#issuecomment-874781386

#### Nags requiring follow up

- Now that we are adding labels to performance regressions, it should hopefully be easier to follow up.
- Last week's follow up on max-rss regression in [#86034](https://github.com/rust-lang/rust/pull/86034#issuecomment-871488586) has not been addressed.

## Nominated Issues

T-rustdoc
- Generate links to definition in rustdoc source code pages [#84176](https://github.com/rust-lang/rust/pull/84176)
  - Authored by @**GuillaumeGomez**
  - approved by T-rustdoc
  - [mentioned in a past meeting](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-06-17.20.2354818/near/243029071)
  - needs a final look by T-compiler for merge (@**GuillaumeGomez** can't merge own PR)

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "`match` an `std::cmp::Ordering` generates less optimized code in nightly" [rust#86511](https://github.com/rust-lang/rust/issues/86511)
  - a comment mentions these issues [#86391](https://github.com/rust-lang/rust/issues/86391) and [#86354](https://github.com/rust-lang/rust/issues/86354)
  - issue nominated for help in finding someone giving some context for an accurate priority to track the issue
- "Binary size is significant increased from `1.46.0` to `1.51.0`" [rust#86610](https://github.com/rust-lang/rust/issues/86610)
  - perhaps related to one or more issues about the same theme (see mentioned issues, ex. [rust#86431](https://github.com/rust-lang/rust/issues/86431) was mentioned)
  - issue nominated as FIY for T-compiler. Can this be tracked in perf?


[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.