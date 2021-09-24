---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2020-08-20

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Next Thursday 27th we will be releasing Rust 1.46!
- [Virtual RustConf](https://rustconf.com/) is starting in 2hs 
- New MCPs (take a look, see if you like them!)
  - "Uplift `temporary-cstring-as-ptr` lint from `clippy` into rustc" [compiler-team#346](https://github.com/rust-lang/compiler-team/issues/346)
  - "Uplift `drop-bounds` lint from clippy into rustc" [compiler-team#347](https://github.com/rust-lang/compiler-team/issues/347)
- Old MCPs (not seconded, take a look)
  - "Integration of the Cranelift backend with rustc" [compiler-team#270](https://github.com/rust-lang/compiler-team/issues/270)
  - "Decentralize queries" [compiler-team#277](https://github.com/rust-lang/compiler-team/issues/277)
  - "Infer hidden types without replacing with an inference variable" [compiler-team#325](https://github.com/rust-lang/compiler-team/issues/325)
- Pending FCP requests (check your boxes!)
  - No pending FCP requests this time.
- Things in FCP (make sure you're good with it)
  - "Move the compiler to a new `compiler/` directory" [compiler-team#336](https://github.com/rust-lang/compiler-team/issues/336)
  - "Form t-compiler/wg-parser-library" [compiler-team#338](https://github.com/rust-lang/compiler-team/issues/338)
  - "Stabilise `link-self-contained` option" [compiler-team#343](https://github.com/rust-lang/compiler-team/issues/343)
  - "Moving `#[cfg(test)]` modules into a separate files to save recompiling the `std` crate" [compiler-team#344](https://github.com/rust-lang/compiler-team/issues/344)
  - "Add a lint for attempting to mutate a `const` item" [compiler-team#345](https://github.com/rust-lang/compiler-team/issues/345)
- Accepted MCPs
  - "refactor types to fit the chalk-ty generic plan" [compiler-team#341](https://github.com/rust-lang/compiler-team/issues/341)
- Finalized FCPs (disposition merge)
  - "Upgrade the FreeBSD toolchain to version 11.4" [rust#75204](https://github.com/rust-lang/rust/pull/75204)
  - "Stabilizable subset of const generics" [compiler-team#332](https://github.com/rust-lang/compiler-team/issues/332)
- "allow escaping bound vars when normalizing `ty::Opaque`" [rust#75443](https://github.com/rust-lang/rust/pull/75443) has been unilaterally beta-accepted (by @**pnkfelix**)


### WG checkins

@*WG-traits* checkin by @**nikomatsakis** and @**Jack Huey**:
> WG-traits has been on vacation/break

## Beta-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler)

- "Don't immediately error for cycles during normalization" [rust#75494](https://github.com/rust-lang/rust/pull/75494)
  - PR by @**Matthew Jasper**, assigned to @**nikomatsakis**
  - Not yet merged to master
  - Fixes a `P-critical` beta regression [rust#74868](https://github.com/rust-lang/rust/issues/74868)
  - [Code that should compile](https://github.com/weiznich/wundergraph/tree/ffbb883eea169d1750659e038d7051a84b21f6e7/wundergraph_example) now ICEs

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
No PRs waiting on `T-compiler` this time.

[libs-impl](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3Alibs-impl)
No PRs waiting on `libs-impl` this time.

## Issues of Note

### Short Summary

- [3 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [51 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+)
  - [30 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [2 P-critical, 2 P-high, 4 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 6 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 15 P-high, 50 P-medium, 5 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=label%3AP-critical+label%3AT-compiler)
- "LTO triggers apparent miscompilation on Windows 10 x64" [rust#74498](https://github.com/rust-lang/rust/issues/74498)
  - Discussed last week
  - Assigned to @**pnkfelix**
  - I-unsound stable regression, started failing when we updated to LLVM 9.0
  - [LLVM issue reproduced on LLVM master](https://github.com/rust-lang/rust/issues/74498#issuecomment-661950983)
  - Rust started to trigger this misbehavior more frequent since the introduction of [rust#69659](https://github.com/rust-lang/rust/pull/69659) that happened in 1.45+.
  - @**pnkfelix** [filled a bug with LLVM upstream](https://bugs.llvm.org/show_bug.cgi?id=46943)
  - [According to @**pnkfelix**](https://github.com/rust-lang/rust/issues/74498#issuecomment-667452406) the remaining question is if we should, for the short term, change that `range.rs` code to not used an `unchecked_add`, in order to (hopefully) bypass the misoptimization here or patch LLVM.
  - @**pnkfelix** [also discusses](https://github.com/rust-lang/rust/issues/74498#issuecomment-668598776) if this generates an overflow or not.
- "Unexpected trait resolution overflow error" [rust#74868](https://github.com/rust-lang/rust/issues/74868)
  - Assigned to @**pnkfelix** and @**Matthew Jasper**
  - Needs MCVE and bisection
  - Regressed on [rust#73452](https://github.com/rust-lang/rust/pull/73452)
  - PR pending for review by @**Matthew Jasper** [rust#75494](https://github.com/rust-lang/rust/pull/75494)
- "Panic when compiling gluon on 1.46" [rust#75313](https://github.com/rust-lang/rust/issues/75313)
  - Assigned to @**lcnr** 
  - It's a beta regression, regressed in [rust#72796](https://github.com/rust-lang/rust/issues/72796)
  - Fixed by [rust#75443](https://github.com/rust-lang/rust/pull/75443), issue still open waiting for backport
      - (was unilaterally accepted for beta backport; see earlier announcement)

[libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3Alibs-impl)
- No `P-critical` issues for `libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### Unassigned P-high regressions

[Beta regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-beta+P-high+no%3Aassignee)
- "libtest panics when running `should_panic` tests under QEMU armv7 " [rust#74820](https://github.com/rust-lang/rust/issues/74820)
  - Discussed last week
  - Cargo lib skeleton + should_panic test code fails on QEMU armv7
  - It seems to be caused by [rust#72746](https://github.com/rust-lang/rust/pull/72746) by @**tmandry**
  - Seems to be specific to QEMU, [see comment](https://github.com/rust-lang/rust/issues/74820#issuecomment-673977399)

[Nightly regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-nightly+P-high+no%3Aassignee)
- "Type mismatch in function arguments E0631, E0271 are falsely recognized as E0308 mismatched types" [rust#74400](https://github.com/rust-lang/rust/issues/74400)
  - Discussed last week
  - Regressed on [rust#73643](https://github.com/rust-lang/rust/pull/73643) which is a rollup, likely to be [rust#72493](https://github.com/rust-lang/rust/pull/72493)

## Performance logs

This week was quite noisy, with many small regressions and improvements.
Overall, instruction counts have increased somewhat, while max RSS remains the
same. There were several updates to core data structures (`HashMap`,
`IndexMap`), which contributed to some of the noise. 

Triage done by @ecstaticmorse.
Revision range: [8b84156c6ee2b4e707dc32f5a516e3143ab924d3..67e7b9b8cf776222825dbbd4cb1e39b7765ef27c](https://perf.rust-lang.org/?start=8b84156c6ee2b4e707dc32f5a516e3143ab924d3&end=67e7b9b8cf776222825dbbd4cb1e39b7765ef27c&absolute=false&stat=instructions%3Au)

4 Regressions, 3 Improvements, 4 Mixed, 0 of them in rollups.

#### 4 Regressions

[#73851](https://github.com/rust-lang/rust/pull/73851) Remove most specialization use in serialization
* [Very small regressions across the board](https://perf.rust-lang.org/compare.html?start=95879ad96104afa584e7aec7806cec1d0bd84116&end=668a34e0f438d4a950b9440239656d6755ad963c&stat=instructions:u)

[#75048](https://github.com/rust-lang/rust/pull/75048) Prevent `__rust_begin_short_backtrace` frames from being tail-call optimised away
* [Regressions in several benchmarks](https://perf.rust-lang.org/compare.html?start=c2d1b0d9800d922b0451921d2ce17e6ae665d5b4&end=f3a9de9b08659e20ce7c282ed77bc43ddd149107&stat=instructions:u)
* Mostly for crates with very little codegen

[#75306](https://github.com/rust-lang/rust/pull/75134) Hash parent ExpnData
* [Very small regressions across the board](https://perf.rust-lang.org/compare.html?start=8bc801b05019cd3e0ef19e6c4c028d55baa645d2&end=543f03d24118d3af784aa98c507c00e30c796a0e&stat=instructions:u)
* Necessary for correctness

[#73656](https://github.com/rust-lang/rust/pull/73656) move Deaggregate pass to post\_borrowck\_cleanup 
* [Very small regressions across the board](https://perf.rust-lang.org/compare.html?start=4b9ac5161781ca6a376daab3d3b2f2623d8f3789&end=cbe7c5ce705896d4e22bf6096590bc1f17993b78&stat=instructions:u)

#### 3 Improvements

[#74512](https://github.com/rust-lang/rust/pull/74512) Put panic code path from `copy_from_slice` into cold function
* [Small improvements across the board, albeit mostly for incremental builds](https://perf.rust-lang.org/compare.html?start=576d27c5a6c80cd39ef57d7398831d8e177573cc&end=847ba835ce411d47364a93ddf0b4a5c0f27928a9&stat=instructions:u)

[#74877](https://github.com/rust-lang/rust/pull/74877) Implement the `min_const_generics` feature gate
* [A small improvement on `wf-projection-stress`](https://perf.rust-lang.org/compare.html?start=f3a9de9b08659e20ce7c282ed77bc43ddd149107&end=f9c2177ddc605f9c75ca1a3e6ddb33835b8a178d&stat=instructions:u)

[#75121](https://github.com/rust-lang/rust/pull/75121)  Avoid `unwrap_or_else` in str indexing
* [A small improvement on `encoding-opt`](https://perf.rust-lang.org/compare.html?start=63e34422bbaf4ae4ed5ae7309183185aa2aa13a4&end=98922795f68e86b0bca5aea8cfc66499d58eba1a&stat=instructions:u)

#### 4 Mixed

[#70052](https://github.com/rust-lang/rust/pull/70052)  Update hashbrown to 0.8.1
* [Mixed results across the board](https://perf.rust-lang.org/compare.html?start=d4c940f0821754a98491b2d23fbb5323c14a2bf5&end=8b26609481c956a666f9189738f1ba611078e1ab&stat=instructions:u)

[#75278](https://github.com/rust-lang/rust/pull/75278)  Upgrade indexmap and use it more
* [Very small regressions for most builds, notably docs](https://perf.rust-lang.org/compare.html?start=39e593ab14c53fda63c3f2756716c5ad3cbb6465&end=18f3be7704a4ec7976fcd1272c728974243d29bd&stat=instructions:u)
* Offset by larger wins on a few benchmarks: `encoding`, `keccak`, `inflate`.
* Author cites improved CPU cycle counts.

[#75306](https://github.com/rust-lang/rust/pull/75306) Update hashbrown to 0.8.2 
* [Mixed results across the board](https://perf.rust-lang.org/compare.html?start=dcf107728c4e545b9fee6b0e6a929837429275cf&end=aced185592b6f99a21190965a7fecfcd72d954dc&stat=instructions:u)
* Mostly improvements, but `incr-patched: println` has taken a rather large hit.

[#75382](https://github.com/rust-lang/rust/pull/75382) First iteration of simplify match branches
* [Very small improvements across the board](https://perf.rust-lang.org/compare.html?start=b6396b75e782954acb085447fb836c4e0ff5281d&end=5e3f1b148db5bfa27fee52464ae1f5d34c49d77b&stat=instructions:u)
* However, a few moderate regressions on synthetic benchmarks

Nags requiring follow up

- [#73656](https://github.com/rust-lang/rust/pull/73656)
- [#73851](https://github.com/rust-lang/rust/pull/73851)
- [#75048](https://github.com/rust-lang/rust/pull/75048)

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "Disable zlib in LLVM on Haiku" [rust#75655](https://github.com/rust-lang/rust/pull/75655)
  - Assigned to @**simulacrum**
  - LLVM_ENABLE_ZLIB flag enabled in LLVM builds causes undefined symbols
  - @**simulacrum** this is just too many platforms which are broken when enabling zlib.
  - @**simulacrum** is leaning towards disabling zlib entirely until we can provide a workaround.
  - Nominated to discuss a possible solution to this problem.
  - Haiku is Tier 3 but issue shows up also on NetBSD and aarch64-apple-darwin
  - There are some proposed solutions [here](https://github.com/rust-lang/rust/pull/75655#issuecomment-675424522) and [here](https://github.com/rust-lang/rust/pull/75655#issuecomment-675475933) and [the one proposed by @**mati865** is reported to work](https://github.com/rust-lang/rust/pull/75655#issuecomment-677090444)

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3Alibs-impl)
- No nominated issues for `libs-impl` this time.