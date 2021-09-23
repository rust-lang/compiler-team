---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2020-09-24

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Tomorrow we have our [planning meeting](https://forge.rust-lang.org/compiler/steering-meeting.html) at <time:2020-09-25T14:00:00+00:00>
- New MCPs (take a look, see if you like them!)
  - "Add 32-bit and 64-bit stderr/stdout files for ui tests" [compiler-team#365](https://github.com/rust-lang/compiler-team/issues/365)
- Old MCPs (not seconded, take a look)
  - "Integration of the Cranelift backend with rustc" [compiler-team#270](https://github.com/rust-lang/compiler-team/issues/270)
  - "Decentralize queries" [compiler-team#277](https://github.com/rust-lang/compiler-team/issues/277)
  - "Infer hidden types without replacing with an inference variable" [compiler-team#325](https://github.com/rust-lang/compiler-team/issues/325)
  - "Require users to confirm they know RUSTC_BOOTSTRAP is unsupported before using it" [compiler-team#350](https://github.com/rust-lang/compiler-team/issues/350)
  - "MCP: move compiler/ crates to stable Rust" [compiler-team#358](https://github.com/rust-lang/compiler-team/issues/358)
  - "`ty.kind()` -> `ty.data()`" [compiler-team#359](https://github.com/rust-lang/compiler-team/issues/359)
- Pending FCP requests (check your boxes!)
  - "Accept RFC 2951 "Linking modifiers for native libraries"" [compiler-team#356](https://github.com/rust-lang/compiler-team/issues/356)
  - "Promote aarch64-pc-windows-msvc to Tier 2 Development Platform" [rust#75914](https://github.com/rust-lang/rust/pull/75914)
- Things in FCP (make sure you're good with it)
  - "Uplift `temporary-cstring-as-ptr` lint from `clippy` into rustc" [compiler-team#346](https://github.com/rust-lang/compiler-team/issues/346)
  - "Uplift `drop-bounds` lint from clippy into rustc" [compiler-team#347](https://github.com/rust-lang/compiler-team/issues/347)
  - "Add StatementKind::Intrinsic to MIR" [compiler-team#348](https://github.com/rust-lang/compiler-team/issues/348)
  - "Make TyKind Copy and change ty.kind() to return TyKind instead of &TyKind" [compiler-team#363](https://github.com/rust-lang/compiler-team/issues/363)
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - [T-rustdoc] "Stabilize intra-doc links" [rust#74430](https://github.com/rust-lang/rust/pull/74430)

### WG checkins

@*WG-prioritization* checkin by @**Santiago Pastorino**:
>- We published last week a [Call for new contributors](https://blog.rust-lang.org/2020/09/14/wg-prio-call-for-contributors.html). The answer was above our expectations, to this day we have received 13 new applications and we are therefore encouraging new volunteers showing up to also join the [Cleanup crew group](https://rustc-dev-guide.rust-lang.org/notification-groups/cleanup-crew.html).
>- Most of our procedures and work have settled now and not many huge things are happening other than our day to day work.

@*WG-rfc-2229* checkin by @**Aman Arora** and @**nikomatsakis**:
> - Most of the infrastructure to capture Places is in now
> - Work resumed after the break, all existing branches revived.
> - Progress on updating how closures are printed (for non-verbose just removing upvar types)
> - New capture analysis verified to not break existing functionality (all tests up to stage1 tests pass).

## Beta-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler)
- "Issue 72408 nested closures exponential" [rust#72412](https://github.com/rust-lang/rust/pull/72412)
  - Fixes [rust#72408](https://github.com/rust-lang/rust/issues/72408) an exponential compilation time increase
- "[mir-opt] Disable the `ConsideredEqual` logic in SimplifyBranchSame opt" [rust#76837](https://github.com/rust-lang/rust/pull/76837)
  - Fixes [rust#76803](https://github.com/rust-lang/rust/issues/76803) a `P-critical` unsound beta regression
  - The PR just disables the logic
- "Rebase LLVM onto 11.0.0-rc3" [rust#77063](https://github.com/rust-lang/rust/pull/77063)
  - Needed to fix some LLVM 11 regressions, like [rust#76042](https://github.com/rust-lang/rust/issues/76042)

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3Alibs-impl)
- No beta nominations for `libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## Stable-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No stable nominations for `T-compiler` this time.

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3Alibs-impl)
- No stable nominations for `libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Uplift drop-bounds lint from clippy" [rust#75699](https://github.com/rust-lang/rust/pull/75699)
  - This is waiting on MCP [compiler-team#347](https://github.com/rust-lang/compiler-team/issues/347), which was seconded 7 days ago.

[libs-impl](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3Alibs-impl)
- No PRs waiting on `libs-impl` this time.

## Issues of Note

### Short Summary

- [4 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [55 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+)
  - [33 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [3 P-critical, 1 P-high, 4 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 5 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 20 P-high, 59 P-medium, 6 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "incorrect code generation for i686 release build for 1.47 beta and nightly" [rust#76042](https://github.com/rust-lang/rust/issues/76042)
  - This was discussed last week
  - Assigned to @**pnkfelix**
  - `I-unsound` issue and beta regression
  - The [LLVM bug](https://bugs.llvm.org/show_bug.cgi?id=47278) was fixed and included in the 11.x branch of LLVM
  - [Rebasing on top of LLVM 11.0.0-rc3 will fix the issue](https://github.com/rust-lang/rust/pull/77063#issuecomment-696895601)
  - Issue is fixed with [rust#77063](https://github.com/rust-lang/rust/pull/77063) backport
- "Optimisation-caused UB during cross-crate compilation" [rust#76387](https://github.com/rust-lang/rust/issues/76387)
  - This was discussed last week
  - Assigned to @**Aaron Hill**
  - Also nominated for discussion
  - Is not a regression, this never worked so it was also discussed if this was `P-critical` or `P-high`
  - [It's an LLVM bug](https://bugs.llvm.org/show_bug.cgi?id=47444)
  - @**Aaron Hill** is [left a patch up for review upstream and can be cherry picked if needed](https://github.com/rust-lang/rust/issues/76387#issuecomment-690610859)
- "regression: get_unchecked resolves to unstable feature use" [rust#76479](https://github.com/rust-lang/rust/issues/76479)
  - This was discussed last week
  - Assigned to @**pnkfelix**
  - Opened by @**simulacrum** after hitting the issue on a crater run
  - @**simulacrum** suggested that is expected breakage (before the MCVE was built)
  - Beta regression that started on PR [rust#73565](https://github.com/rust-lang/rust/pull/73565) cc @**Matthew Jasper** @**nagisa**
- "starting from nightly-2020-08-18 rustls can't connect to some websites" [rust#76803](https://github.com/rust-lang/rust/issues/76803)
  - Unassigned
  - Opened by @**Paolo Barbolini**
  - Beta regression that started on PR [rust#74748](https://github.com/rust-lang/rust/pull/74748) cc @**Simon Vandel Sillesen** @**oli** 
  - [Mir optimization bug](https://github.com/rust-lang/rust/issues/76803#issuecomment-693999586)
  - [Fix by @**wesleywiser** is in master already](https://github.com/rust-lang/rust/pull/76837) but it's still pending beta backport.

[libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3Alibs-impl)
- No `P-critical` issues for `libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### Unassigned P-high regressions

[Beta regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-beta+P-high+no%3Aassignee)
- "Build hang on Linux with nightly and beta toolchains" [rust#76980](https://github.com/rust-lang/rust/issues/76980)
  - Unassigned
  - It's also nominated
  - Build hangs on beta
  - @**Eric Huss** bisected it to [rust#73526](https://github.com/rust-lang/rust/pull/73526)
  - @**cuviper** [is not aware of any LLVM 11 issue like that ](https://github.com/rust-lang/rust/issues/76980#issuecomment-695805807)
  - Assigned `P-high` and requested an MCVE, we probably need to get more context about this issue

[Nightly regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-nightly+P-high+no%3Aassignee)
- "Linker error with wasm target with spaces in install path" [rust#76466](https://github.com/rust-lang/rust/issues/76466)
  - Unassigned
  - Reported by @**Jordan Miner** 
  - Nightly regression
  - [Probably an LLVM 11 regression](https://github.com/rust-lang/rust/issues/76466#issuecomment-688686973)
  - Reporter ran into the issues on a **Win10 64bit** and suggests a possible range of [culprit commits](https://github.com/rust-lang/rust/issues/76466#issuecomment-688686973) 
  - @**Mason Stallmo** could not reproduce on both Windows or Linux 64bit, therefore suggests a possible [Windows 32bit only regression](https://github.com/rust-lang/rust/issues/76466#issuecomment-693805846)
  - @**retep007** [suggests that it may be an lld issue](https://github.com/rust-lang/rust/issues/76466#issuecomment-697130900)

## Performance logs

This was the first week of semi-automated perf triage, and thank goodness:
There was a lot going on. Most regressions are either quite small or already
have a fix published.

[#72412](https://github.com/rust-lang/rust/issues/72412) is probably the most
interesting case. It fixes a pathological problem involving nested closures by
adding cycle detection to what seems to be a relatively hot part of the code.
As a result, most users will see a slight [compile-time
regression](https://perf.rust-lang.org/compare.html?start=2c69266c0697b0c0b34abea62cba1a1d3c59c90c&end=fdc3405c20122fd0f077f5a77addabc873f20e4c&stat=task-clock)
for their crates.

Triage done by **@ecstaticmorse**.
Revision range: [dbb73f8f79ab176a897d5a95e696adb71b957cbe..b01326ab033e41986d4a5c8b96ce4f40f3b38e30](https://perf.rust-lang.org/?start=dbb73f8f79ab176a897d5a95e696adb71b957cbe&end=b01326ab033e41986d4a5c8b96ce4f40f3b38e30&absolute=false&stat=instructions%3Au)

2 Regressions, 5 Improvements, 4 Mixed,
1 of them in rollups

### Regressions

[#76575](https://github.com/rust-lang/rust/issues/76575) compare generic constants using `AbstractConst`s
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=fdc3405c20122fd0f077f5a77addabc873f20e4c&end=9f8ac718f44e280edb1a7b3266f2c26106ec11a0&stat=instructions:u)
 (up to 2.4% on `full` builds of `inflate-check`)

[#74040](https://github.com/rust-lang/rust/issues/74040) fix unification of const variables
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=956e06c6c85e918524b67503c4d65c7baf539585&end=e0bf356f9e5f6a8cca1eb656e900ffba79340fa1&stat=instructions:u)
  (up to 3.3% on `incr-full` builds of `coercions-debug`)

### Improvements

[#76656](https://github.com/rust-lang/rust/issues/76656) Don't query stability data when `staged_api` is off
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=f9a322a6fdd1e12fbe30441feaa4402e23efe303&end=1eb00abf35b9bb59825edf81d05c2fa2f17cefca&stat=instructions:u)
  (up to -1.5% on `incr-unchanged` builds of `many-assoc-items-check`)

[#76311](https://github.com/rust-lang/rust/issues/76311) Split `core::slice` to smaller mods
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=90b1f5ae59291dd69d72fad41a22277df19dc953&end=4c1966f97e192d6282be935baa163fb58f9b8b27&stat=instructions:u)
  (up to -1.9% on `full` builds of `html5ever-opt`)
- Very odd, since this just split up a file.

[#76880](https://github.com/rust-lang/rust/issues/76880) Update cc crate to 1.0.60 to understand aarch64-apple-darwin with clang
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=8e9d5db8392c44a2e94008168fa3506ecddaa357&end=b3aae050cd7e0c9a9eb6085bd49b02f67dc1396f&stat=instructions:u)
(up to -1.0% on `incr-patched: Compiler new` builds of `regex-opt`)

[#76975](https://github.com/rust-lang/rust/issues/76975) Rollup of 15 pull requests
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=b873fa6d42cf305131d2583d03b84686e5e40f2e&end=81e02708f1f4760244756548981277d5199baa9a&stat=instructions:u)
on exactly `encoding-check` (-2.0% on `incr-full` builds)

[#76680](https://github.com/rust-lang/rust/issues/76680) Make `ensure_sufficient_stack()` non-generic, using cargo-llvm-lines
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=4eff9b0b29a8898c839d46f3c66526710afed68a&end=b01326ab033e41986d4a5c8b96ce4f40f3b38e30&stat=instructions:u)
(up to -3.2% on `incr-full` builds of `coercions-debug`)

### Mixed

[#76244](https://github.com/rust-lang/rust/issues/76244) Removing the `def_id` field from hot `ParamEnv` to make it smaller
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=a055c5a1bd95e029e9b31891db63b6dc8258b472&end=7402a394471a6738a40fea7d4f1891666e5a80c5&stat=instructions:u)
  (up to 3.3% on `full` builds of `unicode_normalization-check`)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=a055c5a1bd95e029e9b31891db63b6dc8258b472&end=7402a394471a6738a40fea7d4f1891666e5a80c5&stat=instructions:u)
  (up to -1.8% on `full` builds of `ctfe-stress-4-check`)
- A fix has been published as [#76913](https://github.com/rust-lang/rust/pull/76913).

[#72412](https://github.com/rust-lang/rust/issues/72412) Issue 72408 nested closures exponential
- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=2c69266c0697b0c0b34abea62cba1a1d3c59c90c&end=fdc3405c20122fd0f077f5a77addabc873f20e4c&stat=instructions:u)
  (up to -99.9% on `incr-unchanged` builds of `deeply-nested-closures-opt`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=2c69266c0697b0c0b34abea62cba1a1d3c59c90c&end=fdc3405c20122fd0f077f5a77addabc873f20e4c&stat=instructions:u)
  (up to 1.5% on `full` builds of `coercions-check`)
- Fixes a pathological case, but slows down normal builds slightly.
- Might be worth investigating to see if we can do better, although the author seems to have done a pretty thorough job.

[#74949](https://github.com/rust-lang/rust/issues/74949) Validate constants during `const_eval_raw`
- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=10b3595ba6a4c658c9dea105488fc562c815e434&end=5e449b9adff463455743291b0c1f76feec092992&stat=instructions:u)
  (up to 515.8% on `incr-unchanged` builds of `ctfe-stress-4-check`)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=10b3595ba6a4c658c9dea105488fc562c815e434&end=5e449b9adff463455743291b0c1f76feec092992&stat=instructions:u)
  (up to -2.7% on `incr-patched: add static arr item` builds of `coercions-check`)
- A fix has been published as [#77006](https://github.com/rust-lang/rust/pull/77006).

[#75119](https://github.com/rust-lang/rust/issues/75119)  New MIR optimization pass to reduce branches on match of tuples of enums
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=81e02708f1f4760244756548981277d5199baa9a&end=2e0edc0f28c5647141bedba02e7a222d3a5dc9c3&stat=instructions:u)
  (up to -1.6% on `full` builds of `style-servo-opt`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=81e02708f1f4760244756548981277d5199baa9a&end=2e0edc0f28c5647141bedba02e7a222d3a5dc9c3&stat=instructions:u)
  (up to 1.3% on `full` builds of `wf-projection-stress-65510-check`)
- Seems to have been a regression overall. If there's no improvment in the generated code, we should disable this.

### Nags requiring follow up

- [#75119](https://github.com/rust-lang/rust/issues/75119)
- [#76575](https://github.com/rust-lang/rust/issues/76575)

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "Widen TypeId from 64 bits to 128." [rust#75923](https://github.com/rust-lang/rust/pull/75923)
  - Opened by @**eddyb**
  - @**simulacrum** [nominated it to talk about @**eddyb**'s concern wrt to typeid stabilization; it might be a T-lang question too](https://github.com/rust-lang/rust/pull/75923#issuecomment-684051064).
  - @**eddyb** @**RalfJ** and `KodrAus` [have agreed on reverting `TypeId` stabilization](https://github.com/rust-lang/rust/pull/75923#issuecomment-696696433) before it hits stable, [until we get a chance to settle this entirely](https://github.com/rust-lang/rust/pull/75923#issuecomment-696604147).
- "Set up CI for aarch64-apple-darwin" [rust#75991](https://github.com/rust-lang/rust/pull/75991)
  - Nominated by @**Pietro Albini** for compiler approval
  - This PR is promoting the aarch64-apple-darwin target from Tier 3 to a Tier 2 development platform
- "Macro hygiene change breaks Firefox builds." [rust#76480](https://github.com/rust-lang/rust/issues/76480)
  - Breaking change
  - Nominated for discussion about how can we do better here
  - cc @**Esteban Küber** @**Aaron Hill**
- "Build hang on Linux with nightly and beta toolchains" [rust#76980](https://github.com/rust-lang/rust/issues/76980)
  - Unassigned
  - It's also an unassigned beta regression
  - Build hangs on beta
  - @**Eric Huss** bisected it to [rust#73526](https://github.com/rust-lang/rust/pull/73526)
  - @**cuviper** [is not aware of any LLVM 11 issue like that ](https://github.com/rust-lang/rust/issues/76980#issuecomment-695805807)
  - Assigned `P-high` and requested an MCVE, we probably need to get more context about this issue

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3Alibs-impl)
- No nominated issues for `libs-impl` this time.