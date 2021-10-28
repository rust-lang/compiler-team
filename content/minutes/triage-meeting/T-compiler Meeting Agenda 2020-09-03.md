---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2020-09-03

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Tomorrow (Friday 4th at <time:2020-09-04T14:00:00+00:00>) we are going to [discuss results of 2020 Contributor Survey](https://github.com/rust-lang/compiler-team/issues/318)
- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "Integration of the Cranelift backend with rustc" [compiler-team#270](https://github.com/rust-lang/compiler-team/issues/270)
  - "Decentralize queries" [compiler-team#277](https://github.com/rust-lang/compiler-team/issues/277)
  - "Infer hidden types without replacing with an inference variable" [compiler-team#325](https://github.com/rust-lang/compiler-team/issues/325)
  - "Uplift `temporary-cstring-as-ptr` lint from `clippy` into rustc" [compiler-team#346](https://github.com/rust-lang/compiler-team/issues/346)
  - "Uplift `drop-bounds` lint from clippy into rustc" [compiler-team#347](https://github.com/rust-lang/compiler-team/issues/347)
  - "Add StatementKind::Call to MIR" [compiler-team#348](https://github.com/rust-lang/compiler-team/issues/348)
  - "Require users to confirm they know RUSTC_BOOTSTRAP is unsupported before using it" [compiler-team#350](https://github.com/rust-lang/compiler-team/issues/350)
- Pending FCP requests (check your boxes!)
  - No pending FCP requests this time.
- Things in FCP (make sure you're good with it)
  - "Don't build tools by default with `x.py build`" [compiler-team#351](https://github.com/rust-lang/compiler-team/issues/351)
- Accepted MCPs
  - "Auto-generate lint documentation" [compiler-team#349](https://github.com/rust-lang/compiler-team/issues/349)
- Finalized FCPs (disposition merge)
  - "Tracking issue for hint::spin_loop (renamed sync::atomic::spin_loop_hint)" [rust#55002](https://github.com/rust-lang/rust/issues/55002)
  - "Stabilize deque_make_contiguous" [rust#74559](https://github.com/rust-lang/rust/pull/74559)

### WG checkins

@*WG-rustc-dev-guide* checkin by @**Santiago Pastorino**:
>- Rewrite/update compiler source code chapter [#765](https://github.com/rust-lang/rustc-dev-guide/pull/765)
>- Document serialization in rustc [#785](https://github.com/rust-lang/rustc-dev-guide/pull/785)
>- Expand on the documentation for polymorphization. [#803](https://github.com/rust-lang/rustc-dev-guide/pull/803)
>- Add basic steps for a new target [#805](https://github.com/rust-lang/rustc-dev-guide/pull/805)
>- Fix misguided suggestions in config.toml [#840](https://github.com/rust-lang/rustc-dev-guide/pull/840)
>- Adds documentation to cover spanview output [#844](https://github.com/rust-lang/rustc-dev-guide/pull/844)
>- @**mark-i-am**, formerly one of the working group leads, [has stepped down](https://internals.rust-lang.org/t/until-we-meet-again/12985) on their Rust involvement. @**mark-i-am** was a great co-lead with me and an awesome person to hang with. The work they've done is invaluable and it will be hugely missed.
>
>#### Changes in progress
>
>- Explain stages (take N) [#843](https://github.com/rust-lang/rustc-dev-guide/pull/843). This is an attempt by @jynelson to explain stages better for new contributors. However, after some discussion on the PR, it's not clear that the new explanation is better than the existing '`--stage N` runs `stageN/rustc`'. Opinions welcome!
>- Name `rustbuild` instead of saying 'the bootstrap binary' [#808](https://github.com/rust-lang/rustc-dev-guide/pull/808). This needs a consensus that it's actually useful terminology.
>- Fix dep-graph-caller-callee test location [#845](https://github.com/rust-lang/rustc-dev-guide/pull/845)
>- Update error codes to match the current implementation [#841](https://github.com/rust-lang/rustc-dev-guide/pull/841)

@*WG-llvm* checkin by @**nagisa** 
> no updates from me, but its more like I didn’t spend too much time looking for things rather than there not being any activity.

## Beta-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler)
- "Fix loading pretty-printers in rust-lldb script" [rust#76015](https://github.com/rust-lang/rust/pull/76015)
  - Opened by @ortem and reviewed by @**Eric Huss** and @**simulacrum**  
  - Fixes a [stable regression](https://github.com/rust-lang/rust/issues/76006)
- "[beta] Clippy backport for stabilization of range_is_empty feature" [rust#76051](https://github.com/rust-lang/rust/pull/76051)
  - Opened by @flip1995 and assigned to @**simulacrum**
  - This is not merged on master
  - Nominated because @**scottmcm** asked about it in [rust-clippy#5956](https://github.com/rust-lang/rust-clippy/issues/5956) but they have [no strong opinion on this](https://github.com/rust-lang/rust/pull/76051#issuecomment-685461529)

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

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [52 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+)
  - [32 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 1 P-high, 3 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 2 P-high, 6 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 18 P-high, 56 P-medium, 6 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "incorrect code generation for i686 release build for 1.47 beta and nightly" [rust#76042](https://github.com/rust-lang/rust/issues/76042)
  - Unassigned
  - `I-unsound` issue and beta regression
  - It seems to be [a bug in LLVM](https://bugs.llvm.org/show_bug.cgi?id=47278), triggered by compiler flag `-Copt-level=0`
- "Regression in proc macro panics being reported as compiler bugs" [rust#76270](https://github.com/rust-lang/rust/issues/76270)
  - Fresh issue, prioritized 1 minute before the meeting
  - Assigned to @**Aaron Hill** who seems that will provide a PR soon
  - Nightly regression [rust#75082](https://github.com/rust-lang/rust/pull/75082)
  - Looks like it breaks `syn` and `quote`

[libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3Alibs-impl)
- No `P-critical` issues for `libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### Unassigned P-high regressions

[Beta regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-beta+P-high+no%3Aassignee)
- "diagnostics: "one type is more general" for two identical types?" [rust#75791](https://github.com/rust-lang/rust/issues/75791)
  - Discussed last week
  - Opened by @**matthiaskrgr**, unassigned
  - Confusing suggestion by the diagnostics
  - Niko [comments](https://github.com/rust-lang/rust/issues/75791#issuecomment-681997605) likely the culprit to be PR [rust#72493](https://github.com/rust-lang/rust/pull/72493), points to this [Zulip discussion](https://zulip-archive.rust-lang.org/238009tcompilermeetings/49871weeklymeeting2020082754818.html#208226050)

[Nightly regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-nightly+P-high+no%3Aassignee)
- "Type mismatch in function arguments E0631, E0271 are falsely recognized as E0308 mismatched types" [rust#74400](https://github.com/rust-lang/rust/issues/74400)
  - Discussed last week
  - Very confusing error message
  - [Comment suggesting a likely culprit](https://github.com/rust-lang/rust/issues/74400#issuecomment-661860117)
  - [@**nikomatsakis** suggests to improve the error reporting for the new point where the error occurs](https://github.com/rust-lang/rust/issues/74400#issuecomment-664526040)

## Performance logs

A quiet week for the most part with the exception of two PRs. The first,
[#76027](https://github.com/rust-lang/rust/pull/76027), was a rather large regression that was soon fixed by [#76030](https://github.com/rust-lang/rust/pull/76030). The net result seems to be a small improvement overall on optimized and debug builds.

Triage done by @**ecstatic-morse**.
Revision range: [03017003c77d782cf7ed841a05d7c628a9b93f25..d927e5a655809b6b20501889e093c085d6ffe6f7][range]

[range]: https://perf.rust-lang.org/?start=03017003c77d782cf7ed841a05d7c628a9b93f25&end=d927e5a655809b6b20501889e093c085d6ffe6f7&absolute=false&stat=instructions%3Au

1 Regression, 2 Improvements, 0 of them in rollups.

#### Regressions

[#76027](https://github.com/rust-lang/rust/pull/76027) ty: remove obsolete pretty printer
- [A major regression on some `incr-patched` benchmarks](https://perf.rust-lang.org/compare.html?start=e98f0632bbec24b196dbd6fc820537f6f3724807&end=8ed5cb56b5e5cc216eb6820a44dd4f7ef65107b0&stat=instructions:u)
- Very small regressions on full builds of other benchmarks along with a major one on `await-call-tree`
- Seems to have been solved by #76030 (see below).

#### Improvements

[#75754](https://github.com/rust-lang/rust/pull/75754) Switch to Snappy compression for metadata
- [A small improvement across the board](https://perf.rust-lang.org/compare.html?start=fe8ab8a530fc2369e2748421a319444383363340&end=7fc048f0712ba515ca11fac204921b9ad8a0c5a3&stat=instructions:u)

[#76030](https://github.com/rust-lang/rust/pull/76030) cg\_llvm: `fewer_names` in `uncached_llvm_type`
- [A major improvement on some `incr-patched` benchmarks](https://perf.rust-lang.org/compare.html?start=897ef3a0ec001b89fffe7125c20d6a6bb12fee6c&end=1d22f75c9f75cad2e408a145861904898ac982dd&stat=instructions:u)
- Small improvements on full builds of other benchmarks along with a major one on `await-call-tree`

#### Nags requiring follow up

None

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "Unsizing coercion does not normalize associated types in structs." [rust#75899](https://github.com/rust-lang/rust/issues/75899)
  - Opened and nominated by @**eddyb**
  - [Nomination reason](https://github.com/rust-lang/rust/issues/75899#issue-685378672)
  - @**eddyb** was unsure if nominating this for `T-lang` first or `T-compiler` but decided to try with `T-compiler` first
- "Widen TypeId from 64 bits to 128." [rust#75923](https://github.com/rust-lang/rust/pull/75923)
  - Opened by @**eddyb**
  - @**simulacrum** [nominated it to talk about @**eddyb**'s concern wrt to typeid stabilization; it might be a T-lang question too](https://github.com/rust-lang/rust/pull/75923#issuecomment-684051064).
- "Large performance drop in compiled binary in stable rust 1.45.2 vs 1.44.0 on x86_64 linux" [rust#76247](https://github.com/rust-lang/rust/issues/76247)
  - Nominated by @*WG-prioritization* to raise awareness of a runtime performance regression that seems to have started when we upgraded to LLVM 10 and LLVM 11rc2 doesn't fix.
  - Unsure if it's a known LLVM issue but [it doesn't seem to be part of the issues that block the LLVM 11 release](https://bugs.llvm.org/show_bug.cgi?id=46725)
  - [It seems like LLVM is struggling with the conversion between boolean vectors and integer vectors.](https://github.com/rust-lang/rust/issues/76247#issuecomment-686451846)

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3Alibs-impl)
- No nominated issues for `libs-impl` this time.
