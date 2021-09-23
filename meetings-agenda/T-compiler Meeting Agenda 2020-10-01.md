---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2020-10-01

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Rust 1.47 is going to be released next Thursday, October 8th.
- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "Integration of the Cranelift backend with rustc" [compiler-team#270](https://github.com/rust-lang/compiler-team/issues/270)
  - "Decentralize queries" [compiler-team#277](https://github.com/rust-lang/compiler-team/issues/277)
  - "Infer hidden types without replacing with an inference variable" [compiler-team#325](https://github.com/rust-lang/compiler-team/issues/325)
  - "Require users to confirm they know RUSTC_BOOTSTRAP is unsupported before using it" [compiler-team#350](https://github.com/rust-lang/compiler-team/issues/350)
  - "MCP: move compiler/ crates to stable Rust" [compiler-team#358](https://github.com/rust-lang/compiler-team/issues/358)
  - "`ty.kind()` -> `ty.data()`" [compiler-team#359](https://github.com/rust-lang/compiler-team/issues/359)
  - "Add 32-bit and 64-bit stderr/stdout files for ui tests" [compiler-team#365](https://github.com/rust-lang/compiler-team/issues/365)
- Pending FCP requests (check your boxes!)
  - "Accept RFC 2951 "Linking modifiers for native libraries"" [compiler-team#356](https://github.com/rust-lang/compiler-team/issues/356)
  - "Promote aarch64-pc-windows-msvc to Tier 2 Development Platform" [rust#75914](https://github.com/rust-lang/rust/pull/75914)
  - "Set up CI for aarch64-apple-darwin" [rust#75991](https://github.com/rust-lang/rust/pull/75991)
- Things in FCP (make sure you're good with it)
  - No FCP requests this time.
- Accepted MCPs
  - "Uplift `temporary-cstring-as-ptr` lint from `clippy` into rustc" [compiler-team#346](https://github.com/rust-lang/compiler-team/issues/346)
  - "Uplift `drop-bounds` lint from clippy into rustc" [compiler-team#347](https://github.com/rust-lang/compiler-team/issues/347)
  - "Add StatementKind::Intrinsic to MIR" [compiler-team#348](https://github.com/rust-lang/compiler-team/issues/348)
  - "Make TyKind Copy and change ty.kind() to return TyKind instead of &TyKind" [compiler-team#363](https://github.com/rust-lang/compiler-team/issues/363)
- Finalized FCPs (disposition merge)
  - [T-lang] "might_permit_raw_init: also check aggregate fields" [rust#71274](https://github.com/rust-lang/rust/pull/71274)
  - [T-lang] "target-feature 1.1: should closures inherit target-feature annotations?" [rust#73631](https://github.com/rust-lang/rust/issues/73631)
  - [T-libs] "Add PartialEq impls for Vec <-> slice" [rust#74194](https://github.com/rust-lang/rust/pull/74194)
  - [T-lang] "Explicitly document the size guarantees that Option makes." [rust#75454](https://github.com/rust-lang/rust/pull/75454)
  - [T-release] "Write manifest for MAJOR.MINOR channel to enable rustup convenience" [rust#76107](https://github.com/rust-lang/rust/pull/76107)
  - [T-lang] "Stabilize move_ref_pattern" [rust#76119](https://github.com/rust-lang/rust/pull/76119)
  - [T-lang] "Permit uninhabited enums to cast into ints" [rust#76199](https://github.com/rust-lang/rust/pull/76199)

### WG checkins

@*WG-rls2.0* checkin by @**matklad**:
> Checkin text

@*WG-self-profile* checkin by @**Wesley Wiser**:
> We've had quite a lot of activity recently!
> - We released `measureme` 0.8 today :tada:
>   - Release highlights:
>     - We have a new storage format contributed by @**mw** that records all of our data in one file instead of three
>     - @**wesleywiser** made some UI tweaks to the `summarize` tool so it's a bit nicer to use. The main one is that we no longer show columns for data that isn't applicable like parallel query blocking time if the compiler wasn't built with parallel support. 
>     - @**simulacrum** made it possible to run the analysis tools from perf.rlo without writing profile data to disk.
    >     - Several contributors (@**workingjubilee**, @**Aaron1011**, @**wesleywiser**) updated and removed unneeded dependencies :medal: 
> - @**mw** has been working on additional improvements so that we can record query keys when building `rustc_middle`. Currently, `rustc_middle` is so large, it exhausts the address space we use for recording string data. [rust-lang/measureme#137](https://github.com/rust-lang/measureme/pull/137) will resolve that and allow us to profile even extremely large crates with query keys enabled. This is a breaking change so `0.9.0` (or perhaps `9.0`) is likely going to ship soon.
> - @**eddyb** continues to work on adding support for reading hardware performance counters like `perf` does instead of using `std::time::Instant` for much more precise timings. 

## Beta-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler)
- "Rename Iterator::get_unchecked" [rust#77201](https://github.com/rust-lang/rust/pull/77201)
  - Closes `P-critical` [rust#76479](https://github.com/rust-lang/rust/issues/76479)

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
- No PRs waiting on `T-compiler` this time.

[libs-impl](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3Alibs-impl)
- No PRs waiting on `libs-impl` this time.

## Issues of Note

### Short Summary

- [4 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [54 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+)
  - [33 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 1 P-high, 5 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 3 P-high, 4 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 20 P-high, 59 P-medium, 6 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Optimisation-caused UB during cross-crate compilation" [rust#76387](https://github.com/rust-lang/rust/issues/76387)
  - This was discussed last week
  - Assigned to @**Aaron Hill**
  - Is not a regression, this never worked so it was also discussed if this was `P-critical` or `P-high`
  - [It's an LLVM bug](https://bugs.llvm.org/show_bug.cgi?id=47444)
  - @**Aaron Hill** [left a patch up for review upstream and can be cherry picked if needed](https://github.com/rust-lang/rust/issues/76387#issuecomment-690610859)
  - [A possibly "nicer" solution was posted on LLVM issue](https://reviews.llvm.org/D87474#2302407)
- "regression: get_unchecked resolves to unstable feature use" [rust#76479](https://github.com/rust-lang/rust/issues/76479)
  - This was discussed last week
  - Assigned to @**matthewjasper**
  - Opened by @**simulacrum** after hitting the issue on a crater run
  - @**simulacrum** suggested that is expected breakage (before the MCVE was built)
  - Beta regression that started on PR [rust#73565](https://github.com/rust-lang/rust/pull/73565) cc @**Matthew Jasper** @**nagisa**
  - This is waiting for [rust#77201](https://github.com/rust-lang/rust/pull/77201) backport
- "Segfaults/corruption when reading an enum in release mode" [rust#77359](https://github.com/rust-lang/rust/issues/77359)
  - Assigned to @**Wesley Wiser**
  - [There's an MCVE](https://github.com/rust-lang/rust/issues/77359#issuecomment-701433566)
  - [SimplifyArmIdentity moves an assignment to a local before StorageLive](https://github.com/rust-lang/rust/issues/77359#issuecomment-701423281)
  - [@**Wesley Wiser** offered to disable the optimization so this doesn't hit beta](https://github.com/rust-lang/rust/issues/77359#issuecomment-701433566)
- "coreos-installer test segfaults on s390x-unknown-linux-gnu" [rust#77382](https://github.com/rust-lang/rust/issues/77382)
    - Opened by @**cuviper**
    - @**ecstatic-morse** points to this issue as duplicate of [rust#74551](https://github.com/rust-lang/rust/issues/74551)
    - Seems like a mir-opt misoptimization
    - Crossreferenced in Bugzilla issue [#1883457](https://bugzilla.redhat.com/show_bug.cgi?id=1883457)

[libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3Alibs-impl)
- No `P-critical` issues for `libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high)
- "Build hang on Linux with nightly and beta toolchains" [rust#76980](https://github.com/rust-lang/rust/issues/76980)
  - Unassigned
  - Build hangs on beta
  - @**Eric Huss** bisected it to [rust#73526](https://github.com/rust-lang/rust/pull/73526)
  - @**cuviper** [is not aware of any LLVM 11 issue like that ](https://github.com/rust-lang/rust/issues/76980#issuecomment-695805807)
  - Assigned `P-high` and requested an MCVE, we probably need to get more context about this issue

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee)
- "Linker error with wasm target with spaces in install path" [rust#76466](https://github.com/rust-lang/rust/issues/76466)
  - Unassigned
  - Reported by @**Jordan Miner** 
  - Nightly regression
  - [Probably an LLVM 11 regression](https://github.com/rust-lang/rust/issues/76466#issuecomment-688686973)
  - Reporter ran into the issues on a **Win10 64bit** and suggests a possible range of [culprit commits](https://github.com/rust-lang/rust/issues/76466#issuecomment-688686973) 
  - @**Mason Stallmo** could not reproduce on both Windows or Linux 64bit, therefore suggests a possible [Windows 32bit only regression](https://github.com/rust-lang/rust/issues/76466#issuecomment-693805846)
  - @**retep007** [suggests that it may be an lld issue](https://github.com/rust-lang/rust/issues/76466#issuecomment-697130900)
  - @**eddyb** points to [this commit](https://github.com/llvm/llvm-project/commit/928e9e172305752583a75a8174ab5a87b4e09d80) as possible culprit

## Performance logs

Most significant changes this week came in response to regressions discussed in
last week's triage report. Curious readers may be interested in
[#77058](https://github.com/rust-lang/rust/issues/77058), in which the removal
of a single field from a struct caused a 25% decrease in wall-times for one
seemingly unrelated benchmark, or
[#76986](https://github.com/rust-lang/rust/issues/76986), an ABI change that
should be a pretty clear win but seems to have mixed results.

Triage done by **@ecstaticmorse**.
Revision range: [b01326ab033e41986d4a5c8b96ce4f40f3b38e30..6369a98ebdee8ce01510f5d4307ddb771c8cb0e5](https://perf.rust-lang.org/?start=b01326ab033e41986d4a5c8b96ce4f40f3b38e30&end=6369a98ebdee8ce01510f5d4307ddb771c8cb0e5&absolute=false&stat=instructions%3Au)

0 Regressions, 1 Improvements, 3 Mixed

0 of them in rollups

### Improvements

[#77041](https://github.com/rust-lang/rust/issues/77041) perf: move cold path of `process_obligations` into a separate function
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=fadf0257235ddb8a464befc02e50b35652174689&end=521d8d8a2236a239e3327336844ed5948857ea31&stat=instructions:u) (up to -4.8% on `full` builds of `inflate-check`)
- Fixes a regression introduced in [#76575](https://github.com/rust-lang/rust/issues/76575).

### Mixed

[#77006](https://github.com/rust-lang/rust/issues/77006)  Cache `eval_to_allocation_raw` on disk
- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=893fadd11a52aa26fc19c67ee1b79f03d6a1bed3&end=87d262acb50200d767baa7115f30c650a13672ee&stat=instructions:u) (up to -83.9% on `incr-unchanged` builds of `ctfe-stress-4-check`)
- Large regression in [task clock](https://perf.rust-lang.org/compare.html?start=893fadd11a52aa26fc19c67ee1b79f03d6a1bed3&end=87d262acb50200d767baa7115f30c650a13672ee&stat=task-clock) (up to 14.5% on `incr-full` builds of `ctfe-stress-4-check`),
- Fixes a regression introduced in [#74949](https://github.com/rust-lang/rust/issues/74949).
- `incr-full` builds of `ctfe-stress-4` also have significantly increased [`max-rss`](https://perf.rust-lang.org/?start=b01326ab033e41986d4a5c8b96ce4f40f3b38e30&end=6369a98ebdee8ce01510f5d4307ddb771c8cb0e5&absolute=false&stat=instructions%3Au).
- Real-world benchmarks seem to have mostly improved, however.

[#76913](https://github.com/rust-lang/rust/issues/76913)  Fixing the performance regression of #76244
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=f47df31ae5d7d9795399dca3a0003c1856900361&end=45198456be60a6906d24abdc3c67a31b9206188e&stat=instructions:u) (up to -3.1% on `full` builds of `unicode_normalization-check`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=f47df31ae5d7d9795399dca3a0003c1856900361&end=45198456be60a6906d24abdc3c67a31b9206188e&stat=instructions:u) (up to 2.7% on `incr-unchanged` builds of `ctfe-stress-4-check`)
- A temporary revert of [#76244](https://github.com/rust-lang/rust/issues/76244) to fix a rather large wall time regression in `unicode-normalization`.
- Gains will reappear as part of [#77257](https://github.com/rust-lang/rust/issues/77257) with the losses mitigated.

[#76986](https://github.com/rust-lang/rust/issues/76986) Return values up to 128 bits in registers
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=1ec980d225fff2346a1a631a7ffc88b37e9e18af&end=62fe055aba3ddac5e5d113920cf5fd80522104e2&stat=instructions:u) (up to 2.3% on `full` builds of `deeply-nested-debug`)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=1ec980d225fff2346a1a631a7ffc88b37e9e18af&end=62fe055aba3ddac5e5d113920cf5fd80522104e2&stat=instructions:u) (up to -1.9% on `full` builds of `piston-image-opt`)
- Seems to be a slight regression overall, even looking at [`task-clock`](https://perf.rust-lang.org/compare.html?start=1ec980d225fff2346a1a631a7ffc88b37e9e18af&end=62fe055aba3ddac5e5d113920cf5fd80522104e2&stat=task-clock) measurements.

### Nags requiring follow up

- [#76986](https://github.com/rust-lang/rust/issues/76986)

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "Widen TypeId from 64 bits to 128." [rust#75923](https://github.com/rust-lang/rust/pull/75923)
  - Opened by @**eddyb**
  - @**simulacrum** [nominated it to talk about @**eddyb**'s concern wrt to typeid stabilization; it might be a T-lang question too](https://github.com/rust-lang/rust/pull/75923#issuecomment-684051064).
  - @**eddyb** @**RalfJ** and `KodrAus` [have agreed on reverting `TypeId` stabilization](https://github.com/rust-lang/rust/pull/75923#issuecomment-696696433) before it hits stable, [until we get a chance to settle this entirely](https://github.com/rust-lang/rust/pull/75923#issuecomment-696604147).
  - [Changes to `TypeId` could easily break Firefox](https://github.com/rust-lang/rust/pull/75923#issuecomment-699096904)
- "Set up CI for aarch64-apple-darwin" [rust#75991](https://github.com/rust-lang/rust/pull/75991)
  - Nominated by @**Pietro Albini** for compiler approval
  - This PR is promoting the aarch64-apple-darwin target from Tier 3 to a Tier 2 development platform
- "Macro hygiene change breaks Firefox builds." [rust#76480](https://github.com/rust-lang/rust/issues/76480)
  - Breaking change
  - Nominated for discussion about how can we do better here
  - cc @**Esteban Küber** @**Aaron Hill**

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3Alibs-impl)
- No nominated issues for `libs-impl` this time.