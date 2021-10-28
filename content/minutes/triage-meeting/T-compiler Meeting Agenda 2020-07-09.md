---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2020-07-09

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- We will be releasing Rust 1.45 next thursday!
- New MCPs (take a look, see if you like them!)
    - No new proposals this time.
- Old MCPs (not seconded, take a look)
    - "Integration of the Cranelift backend with rustc" [compiler-team#270](https://github.com/rust-lang/compiler-team/issues/270)
    - "Decentralize queries" [compiler-team#277](https://github.com/rust-lang/compiler-team/issues/277)
    - "Move Rust provided objects, libraries and binaries meant for self-contained linkage to separate directory" [compiler-team#310](https://github.com/rust-lang/compiler-team/issues/310)
    - "Add future-incompat entries to json diagnostic output" [compiler-team#315](https://github.com/rust-lang/compiler-team/issues/315)
    - "MCP: Reorganize the rust-lang/rust repo directory structure" [compiler-team#316](https://github.com/rust-lang/compiler-team/issues/316)
- Pending FCP requests (check your boxes!)
    - No pending FCP requests this time.
- Things in FCP (make sure you're good with it)
    - "--extern-location to specify where an --extern dependency is defined" [compiler-team#303](https://github.com/rust-lang/compiler-team/issues/303)
    - "Change `ty::Const` to an integer tree representation" [compiler-team#323](https://github.com/rust-lang/compiler-team/issues/323)
    - "Infer hidden types without replacing with an inference variable" [compiler-team#325](https://github.com/rust-lang/compiler-team/issues/325)
    - "Improve defaults in x.py" [compiler-team#326](https://github.com/rust-lang/compiler-team/issues/326)
    - "Rework rustc_serialize" [compiler-team#329](https://github.com/rust-lang/compiler-team/issues/329)
    - "mv std libs to std/" [rust#73265](https://github.com/rust-lang/rust/pull/73265)
    - "Stabilize control-flow-guard codegen option" [rust#73893](https://github.com/rust-lang/rust/pull/73893)
- Accepted MCPs
    - "illumos toolchain builds" [compiler-team#279](https://github.com/rust-lang/compiler-team/issues/279)
    - "RISC-V Linux Tier 2 Host support" [compiler-team#312](https://github.com/rust-lang/compiler-team/issues/312)
    - "Switch from libbacktrace to gimli" [compiler-team#313](https://github.com/rust-lang/compiler-team/issues/313)
    - "`#![deny(unsafe_op_in_unsafe_fn)]` in libcore and libstd" [compiler-team#317](https://github.com/rust-lang/compiler-team/issues/317)
    - "-Zmir-opt-level Reform" [compiler-team#319](https://github.com/rust-lang/compiler-team/issues/319)
    - "Move CONTRIBUTING.md to rustc-dev-guide and instead point to Getting Started" [compiler-team#320](https://github.com/rust-lang/compiler-team/issues/320)

### WG checkins

@*WG-async-foundations* checkin by @**tmandry** and @**nikomatsakis**:
> Checkin text

@*WG-diagnostics* checkin by @**Esteban Küber**:
> Checkin text

## Beta-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler)
- No beta nominations this time.

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3Alibs-impl)
- No beta nominations this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc)
- "rustdoc: Rename invalid_codeblock_attribute lint to be plural" [rust#74131](https://github.com/rust-lang/rust/pull/74131)
  - Renames a Lint name as [per lint naming conventions](https://github.com/rust-lang/rfcs/blob/master/text/0344-conventions-galore.md#lints)

:back: / :shrug: / :hand:

## Stable-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No stable nominations this time.

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3Alibs-impl)
- No stable nominations this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No stable nominations this time.

:back: / :shrug: / :hand:

## PR's S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- No PRs waiting on T-compiler this time.

[libs-impl](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3Alibs-impl)
- No PRs waiting on libs-impl this time.

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [47 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+)
  - [26 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 4 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 1 P-high, 7 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 13 P-high, 47 P-medium, 4 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=label%3AP-critical+label%3AT-compiler)
- "Nightly ICEs trying to normalize during a cast" [rust#73747](https://github.com/rust-lang/rust/issues/73747)
  - Assigned to @**pnkfelix**
  - nightly regression, ICEs on previously accepted code
  - Has MCVE
  - Regressed somewhere in [this rollup](https://github.com/rust-lang/rust/commit/25687caa2e4e35b31c29e28998710670e9d54ee9)
  - Current repro code uses WinRT and thus is only reproducible on Windows

[libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3Alibs-impl)
- No P-critical issues for libs-impl this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No P-critical issues for T-rustdoc this time.

### Unassigned P-high regressions

[Beta regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-beta+P-high+no%3Aassignee)
- No unassigned P-high beta regressions this time.

[Nightly regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-nightly+P-high+no%3Aassignee)
- No unassigned P-high nightly regressions this time.

## Performance logs

[Triage done by njn](https://github.com/rust-lang/rustc-perf/tree/master/triage#triage-logs).
Latest revision: 0c03aee8b81185d65b5821518661c30ecdb42de5.
One unimportant regression, on a rollup; six improvements, two on rollups.

Regressions
- [Rollup of 12 pull requests #74073](https://github.com/rust-lang/rust/pull/74073#issuecomment-654524169)
  ([instructions](https://perf.rust-lang.org/compare.html?start=2753fab7ce3647033146b07c8b6c9f4856a910b0&end=0c03aee8b81185d65b5821518661c30ecdb42de5&stat=instructions:u)):
  Up to 1.9% losses, but only on the synthetic `wf-projection-stress-65510`
  benchmark, which doesn't matter that much.

Improvements
- [Serialize all foreign `SourceFile`s into proc-macro crate metadata #73706](https://github.com/rust-lang/rust/pull/73706#issuecomment-653771986)
  ([instructions](https://perf.rust-lang.org/compare.html?start=16957bd4d3a5377263f76ed74c572aad8e4b7e59&end=d462551a8600e57d8b6f87e71ea56868bc5da6cf&stat=instructions:u)):
  Up to 7.5% wins across numerous benchmarks, mostly the shorter-running ones.
- [Handle inactive enum variants in `MaybeUninitializedPlaces` #73879](https://github.com/rust-lang/rust/pull/73879#issuecomment-651710137)
  ([instructions](https://perf.rust-lang.org/compare.html?start=0cd7ff7ddfb75a38dca81ad3e76b1e984129e939&end=2753fab7ce3647033146b07c8b6c9f4856a910b0&stat=instructions:u)):
  Up to 7.1% wins across numerous benchmarks, mostly on opt builds. (Plus one
  21% improvement, but that benchmark has high variability.)
- [Rollup of 16 pull requests #73950](https://github.com/rust-lang/rust/pull/73950#issuecomment-654520286)
  ([instructions](https://perf.rust-lang.org/compare.html?start=9491f18c5de3ff1c4bf9c3fdacf52d9859e26f7c&end=b7856f695d65a8ebc846754f97d15814bcb1c244&stat=instructions:u)):
  Up to 1.9% wins across numerous benchmarks.
- [Avoid `unwrap_or_else` in `RawVec::allocate_in`. #73882](https://github.com/rust-lang/rust/pull/73882#issue-441778949)
  ([instructions](https://perf.rust-lang.org/compare.html?start=5f4abc16e1b2cb035eee6a5079ce45ce924c1f33&end=cd1a46d644791c79433db934ad4e6131c577efcc&stat=instructions:u)):
  Up to 1.2% wins across a few benchmarks, mostly on debug builds. Maybe
  [#73345](https://github.com/rust-lang/rust/pull/73345) or
  [#73569](https://github.com/rust-lang/rust/pull/73569) is responsible?
- [Remove `TypeckTables::empty(None)` and make hir_owner non-optional. #73751](https://github.com/rust-lang/rust/pull/73751#issuecomment-654521841)
  ([instructions](https://perf.rust-lang.org/compare.html?start=8a6d4342be6a6acbade8e7ef65e73d27ee8c9144&end=3503f565e1fb7296983757d2716346f48a4a262b&stat=instructions:u)):
  Up to 3.8% wins, mostly on `unused-warnings`.
- [Rollup of 17 pull requests #73924](https://github.com/rust-lang/rust/pull/73924#issuecomment-654518483)
  ([instructions](https://perf.rust-lang.org/compare.html?start=d462551a8600e57d8b6f87e71ea56868bc5da6cf&end=f781babf87dea29c44f93842b7ac9eb809549d29&stat=instructions:u)):
  Up to 1.9% wins, mostly on `clap-rs`. Unclear which PR is responsible.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=label%3AI-nominated+label%3AT-compiler)
- "Inherit `#[stable(..)]` annotations in enum variants and fields from its item" [rust#71481](https://github.com/rust-lang/rust/pull/71481)
  - Assigned to: @**Matthew Jasper**
  - Is a PR to allow stability attributes flow down in enums to their variants and fields
  - Nominated because it's controversial
    - [@**Vadim Petrochenkov** believes is not a good idea](https://github.com/rust-lang/rust/pull/71481#issuecomment-625423500)
    - [@**nagisa** believes it's dangerous and also limits our possibilities in the future](https://github.com/rust-lang/rust/pull/71481#discussion_r436266259)
    - [@**nikomatsakis** expressed that we might accidentally stabilize struct fields without intending to](https://github.com/rust-lang/rust/pull/71481#discussion_r439594190)
- "A big regression in tokio-webpush-simple-opt" [rust#58368](https://github.com/rust-lang/rust/issues/58368)
  - Tokio webpush bench regressed 88.5% [in this commit](https://github.com/rust-lang/rust/commit/ff19a53ef07566aa30860023f6eac6e75ffaf900).
  - Nominated to raise awareness of such a big performance regression with no recent activity.
- PR's "Avoid "blacklist"" [rust#74150](https://github.com/rust-lang/rust/pull/74150) and "Avoid "whitelist"" [rust#74127](https://github.com/rust-lang/rust/pull/74127)
  - Felix nominated: these ended up being troll-magnets. Felix wants to establish that this kind of PR is in line with our values, for the reasons [posted by niko](https://github.com/rust-lang/rust/pull/74127#pullrequestreview-444766034).
      - Felix asks: Would others agree with this statement, taken from ["The light and dark of language"](https://www.grammarphobia.com/blog/2009/12/light-and-dark-2.html)? :
        > For what it’s worth, we don’t believe that metaphors identifying lightness as positive and darkness as negative are inherently racist. They certainly didn’t begin that way, though these negative connotations have certainly fed into and reinforced racism over the centuries. 
  - (Also, as previously established, the Core Team has publicly noted support for BLM in the [1.44.0 blog post](https://blog.rust-lang.org/2020/06/04/Rust-1.44.0.html))
  - ~~Assuming they both land, pnkfelix proposes we lock them both again after they land, because even now they continue to invite trolling or troll-like behavior.~~

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3Alibs-impl)
- No nominated issues for libs-impl this time.