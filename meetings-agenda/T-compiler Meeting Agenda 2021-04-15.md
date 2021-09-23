---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2021-04-15

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Heads-up: meeting for [perf triage report construction](https://github.com/rust-lang/compiler-team/issues/400) is pushed to **April, 30th** at 10am EST (14:00 UTC) (originally scheduled for tomorrow April, 16th). 

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "Debuggable Macro Expansions" [compiler-team#386](https://github.com/rust-lang/compiler-team/issues/386)
  - "Staged queries" [compiler-team#391](https://github.com/rust-lang/compiler-team/issues/391)
  - "Do not traverse the HIR to generate metadata" [compiler-team#392](https://github.com/rust-lang/compiler-team/issues/392)
  - "Embed version numbers in backport nominations and regression labels" [compiler-team#393](https://github.com/rust-lang/compiler-team/issues/393)
  - "Add different entry points for x.py" [compiler-team#396](https://github.com/rust-lang/compiler-team/issues/396)
  - "rustdoc is using rustc_ast_pretty, would it be possible to make it somewhat "stable"?" [compiler-team#403](https://github.com/rust-lang/compiler-team/issues/403)
  - "Eagerly construct bodies of THIR" [compiler-team#409](https://github.com/rust-lang/compiler-team/issues/409)
  - "LLVM plugin support in Rust" [compiler-team#419](https://github.com/rust-lang/compiler-team/issues/419)
  - "Rename -Cllvm-args to something backend agnostic" [compiler-team#421](https://github.com/rust-lang/compiler-team/issues/421)
  - "A --temps-dir option for specifying where the intermediate files are written" [compiler-team#423](https://github.com/rust-lang/compiler-team/issues/423)
- Pending FCP requests (check your boxes!)
  - "Add default search path to `Target::search()`" [rust#83800](https://github.com/rust-lang/rust/pull/83800)
- Things in FCP (make sure you're good with it)
  - "MCP: More Cranelift-friendly portable SIMD intrinsics" [compiler-team#381](https://github.com/rust-lang/compiler-team/issues/381)
  - "Uplift the `invalid_atomic_ordering` lint from clippy to rustc" [compiler-team#390](https://github.com/rust-lang/compiler-team/issues/390)
  - "Update the existing musl targets to be dynamically linked." [compiler-team#422](https://github.com/rust-lang/compiler-team/issues/422)
- Accepted MCPs
  - "Lang Item for Transmutability" [compiler-team#411](https://github.com/rust-lang/compiler-team/issues/411)
  - "Switch JSON serialization from rustc_serialize to serde" [compiler-team#418](https://github.com/rust-lang/compiler-team/issues/418)
  - "Lint large assignments and locals" [compiler-team#420](https://github.com/rust-lang/compiler-team/issues/420)
- Closed MCPs for inactivity ([policy](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - Do not traverse the HIR to generate metadata [compiler-team#342](https://github.com/rust-lang/compiler-team/issues/392)
  - Embed version numbers in backport nominations and regression labels [compiler-team#393](https://github.com/rust-lang/compiler-team/issues/393)
  - Debuggable Macro Expansions [compiler-team#386](https://github.com/rust-lang/compiler-team/issues/386) 
- Finalized FCPs (disposition merge)
  - "Tracking Issue for `Duration::{zero, is_zero}` (`#![feature(duration_zero)]`)" [rust#73544](https://github.com/rust-lang/rust/issues/73544)
  - "Tracking Issue for `Duration` saturating operations" [rust#76416](https://github.com/rust-lang/rust/issues/76416)
  - "Tracking Issue for feature: "option_insert"" [rust#78271](https://github.com/rust-lang/rust/issues/78271)
  - "Tracking Issue for `atomic_fetch_update`" [rust#78639](https://github.com/rust-lang/rust/issues/78639)
  - "Tracking Issue for `#![feature(const_cell_into_inner)]`" [rust#78729](https://github.com/rust-lang/rust/issues/78729)
  - "Tracking Issue for {BTreeMap,BTreeSet}::retain" [rust#79025](https://github.com/rust-lang/rust/issues/79025)
  - "Tracking Issue for feature(nonzero_leading_trailing_zeros)" [rust#79143](https://github.com/rust-lang/rust/issues/79143)
  - "Tracking issue: fNN::is_subnormal" [rust#79288](https://github.com/rust-lang/rust/issues/79288)
  - "Stabilize `rustdoc::bare_urls` lint" [rust#81764](https://github.com/rust-lang/rust/pull/81764)
  - "Turn old edition lint (anonymous-parameters) into warn-by-default on 2015" [rust#82918](https://github.com/rust-lang/rust/pull/82918)
  - "Disallow octal format in Ipv4 string" [rust#83652](https://github.com/rust-lang/rust/pull/83652)
  - "Remove `T: Debug` bound on UnsafeCell Debug impl" [rust#83707](https://github.com/rust-lang/rust/pull/83707)

### WG checkins

- @*WG-rls2.0* checkin by @**matklad**
> * Conveniently, we just finished a six-week sprint
    * old sprint: https://github.com/rust-analyzer/rust-analyzer/issues/7838
    * new sprint: https://github.com/rust-analyzer/rust-analyzer/issues/8486
> * We now support derive and function-like proc macros by default
> * Supprot for attribute proc-macros is the last big bit until we have "feature parity" with rustc (
  well, was before min-const-generics were stabilized :-)
> * We switched to chalk's representation on types!
> * We significantly reduced memory usage of rust-analyzer (finally!)

> Overall, there's a feeling that rust-analyzer becomes less and less experimental, and more a dependable piece of Rust tooling. So, we want to focus on quality next: fixing glaring bugs, tidying up the internals, and, hopefully, moving forward with [RFC 2912](https://github.com/rust-lang/rfcs/blob/master/text/2912-rust-analyzer.md).

> Sadly, there's still not much concrete progress on sharing more code between rustc and rust-analyzer, besides the chalk work.
  

- @*WG-self-profile* checkin by @**Wesley Wiser** and `michaelwoerister`
> The working group has been quiet recently. Nothing to report. 

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "move new c abi abort behavior behind feature gate" [rust#84158](https://github.com/rust-lang/rust/pull/84158)
  - pnkfelix nominated. They're not sure where the regression to beta is being tracked, if at all.
  - the discussion on #**t-release>`"C"` unwind issue for release 1.52**  indicated that we would *either* backport this fix (PR #84158), or we would revert PR #76570 on beta. That is the choice before us.


[T-libs-impl stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-libs-impl) / [T-libs-impl beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-libs-impl)
- No backport nominations for `T-libs-impl` this time.

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No backport nominations for `T-rustdoc` this time.

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
- [63 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [39 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 2 P-high, 4 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 1 P-high, 4 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 38 P-high, 86 P-medium, 10 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-libs-impl)
- No `P-critical` issues for `T-libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high)
- "`probe-stack=inline-asm` generates wrong DWARF information" [rust#83139](https://github.com/rust-lang/rust/issues/83139)
  - partially mitigated by @**pnkfelix** in PR [#82412](https://github.com/rust-lang/rust/pull/83412), which reverts PR [#77885](https://github.com/rust-lang/rust/pull/77885)
  - backporting LLVM patch [D99579](https://reviews.llvm.org/D99579) as partial solution

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [2021-04-13 full triage logs](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-04-13.md)

A very quiet week overall. Triage done by **@simulacrum**.

1 Regressions, 0 Improvements, 0 Mixed, 0 of them in rollups

#### Regressions

Update stdarch submodule (to before it switched to const generics) [#83776](https://github.com/rust-lang/rust/issues/83776)
- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=1284da34da56a17ae368e4673920ec4120562cbd&end=d0695c9081b16077d0aed368bccaf437d77ff497&stat=instructions:u) (up to 6.3% on `incr-unchanged` builds of `deeply-nested-closures-debug`)
- Mostly a regression for doc benchmarks, but also a 1.5% regression in memory
  usage on check, debug, and opt builds across all benchmarks.

#### Improvements

- None

#### Mixed

- None

#### Nags requiring follow up

- The [issue](https://github.com/rust-lang/rust/pull/82964#issuecomment-800663588) from three weeks ago has stalled.
  Likely this needs someone to mentor the author, or to take over the
  investigation.


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "`undefined reference to` linker error when using dylibs" [rust#82151](https://github.com/rust-lang/rust/issues/82151)
  - (postponed from previous meetings)
- "no_std: binary size blowup using Result::unwrap since 1.49.0" [rustc#83925](https://github.com/rust-lang/rust/issues/83925)
  - size of final binary exceeding the limit for deployment on an embedded tier2 platform (`thumbv7em-none-eabi`)
  - unsure how to treat this
- "Disk usage 2-3x somewhere around 1.48" [rustc##84097](https://github.com/rust-lang/rust/issues/84097)
  - Debian maintainer reports substancial increasing disk space when building rustc, across recent stable releases, build config is unchanged.
  - issue reporter mentions that possibly debuginfo-related - the architectures using the least space have `debuginfo-level = 0 `due to [#45854](https://github.com/rust-lang/rust/issues/45854), generally the 32-bit.
  - disk space metrics are not really measured on [perf.rlo](https://perf.rust-lang.org/dashboard.html)
  - unsure how to treat this class of issues involving disk space usage

[T-libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-libs-impl)
- No nominated issues for `T-libs-impl` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.
