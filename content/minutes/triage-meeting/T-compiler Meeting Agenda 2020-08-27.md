---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2020-08-27

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Rust 1.46 is being released today! :tada: :tada: :tada:
- Crater run for 1.46 [rust#75142](https://github.com/rust-lang/rust/issues/75142) came back clear. In particular we wanted to check if [rust#75494](https://github.com/rust-lang/rust/issues/75494) was ok.
- Tomorrow (friday 28th) we have [our planning meeting](https://forge.rust-lang.org/compiler/steering-meeting.html)
- New MCPs (take a look, see if you like them!)
  - "Add StatementKind::Call to MIR" [compiler-team#348](https://github.com/rust-lang/compiler-team/issues/348)
  - "Require users to confirm they know RUSTC_BOOTSTRAP is unsupported before using it" [compiler-team#350](https://github.com/rust-lang/compiler-team/issues/350)
- Old MCPs (not seconded, take a look)
  - "Integration of the Cranelift backend with rustc" [compiler-team#270](https://github.com/rust-lang/compiler-team/issues/270)
  - "Decentralize queries" [compiler-team#277](https://github.com/rust-lang/compiler-team/issues/277)
  - "Infer hidden types without replacing with an inference variable" [compiler-team#325](https://github.com/rust-lang/compiler-team/issues/325)
  - "Uplift `temporary-cstring-as-ptr` lint from `clippy` into rustc" [compiler-team#346](https://github.com/rust-lang/compiler-team/issues/346)
  - "Uplift `drop-bounds` lint from clippy into rustc" [compiler-team#347](https://github.com/rust-lang/compiler-team/issues/347)
- Pending FCP requests (check your boxes!)
  - No pending FCP requests this time.
- Things in FCP (make sure you're good with it)
  - "Auto-generate lint documentation" [compiler-team#349](https://github.com/rust-lang/compiler-team/issues/349)
  - "Don't build tools by default with `x.py build`" [compiler-team#351](https://github.com/rust-lang/compiler-team/issues/351)
- Accepted MCPs
  - "Move the compiler to a new `compiler/` directory" [compiler-team#336](https://github.com/rust-lang/compiler-team/issues/336)
  - "Form t-compiler/wg-parser-library" [compiler-team#338](https://github.com/rust-lang/compiler-team/issues/338)
  - "Stabilise `link-self-contained` option" [compiler-team#343](https://github.com/rust-lang/compiler-team/issues/343)
  - "Moving `#[cfg(test)]` modules into a separate files to save recompiling the `std` crate" [compiler-team#344](https://github.com/rust-lang/compiler-team/issues/344)
  - "Add a lint for attempting to mutate a `const` item" [compiler-team#345](https://github.com/rust-lang/compiler-team/issues/345)
- Finalized FCPs (disposition merge)
  - "stabilize ptr_offset_from" [rust#74238](https://github.com/rust-lang/rust/pull/74238)
  - "Stabilize Range[Inclusive]::is_empty" [rust#75132](https://github.com/rust-lang/rust/pull/75132)

### WG checkins

@*WG-diagnostics* checkin by @**Esteban Küber** 
>- More gracefully handle patterns used in an incorrect manner (all combinations of struct variant/enum variant/unit variant that do not correspond to their declaration) with structured suggestions and pointing at definitions
>- From fasterthanli.me (amos)'s last two articles we've gotten 3 diagnostics improvements
cleaning up parser errors (regression from a refactor some time back, reduced amount of parse errors inside struct definitions significantly)
    - structured suggestions for methods missing `self` receiver
    - more structured suggestions for boxed trait objects instead of impl Trait on non-coerceable tail expressions
>- Fix parser regression: `{block} &&true` is a valid tail expression in an `fn foo() -> &&bool`. This was introduced a couple of releases back, will be fixed in 1.47.
>- We detect `===/!==` and `for foo of bar` (JS syntax) and suggest correct syntax
>- Various clean ups, rewordings, fixing of ICEs and silencing of redundant errors
>- Further various cleanups of `::` -> `:` typos (continue to hate the type ascription syntax, but I'll cope)
>- Removal of type path string comparisons from diagnostics code and instead use "diagnostic_item"s.
>- Further work on lifetime errors caused by implicit`'static` lifetimes with targeted diagnostics
>- Tweak errors on arguments caused by Sized requirements and suggest to borrow
>- Detect `foo.collect::Vec<_>();` and suggest `foo.collect::<Vec<_>>();`
>- Provide suggestions for some moved value errors
>
>Changes requiring to be signed off (or closed)
>
>- [rust#74130](https://github.com/rust-lang/rust/pull/74130)
>- [rust#71481](https://github.com/rust-lang/rust/pull/71481)
>
>Feeling fancy and wanting to highlight still unmerged change that I'm proud of:
>
>- [rust#75931](https://github.com/rust-lang/rust/pull/75931) Suggest `if let x = y` when encountering `if x = y`
>
>Kind of major change announcement:
>
>- [rust#75138](https://github.com/rust-lang/rust/pull/75138) moves a lot of the error handling logic "out of the happy path"
  by using structs to describe the error situation and having a scheme for rendering said structs.

@*WG-async-foundations* checkin by @**nikomatsakis** and @**tmandry**
> Work on the compiler has, I believe, been slow lately. There has been progress towards an RFC for the `Stream` trait and experiments for a lint around values that should be live over yields. -- nikomatsakis, who may be a bit behindCheckin text

## Beta-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler)
- "Account for async functions when suggesting new named lifetime" [rust#75867](https://github.com/rust-lang/rust/pull/75867)
  - Opened by @**Esteban Küber**, reviewed by @**pickfire**
  - Fixes [rust#75850](https://github.com/rust-lang/rust/issues/75850)
  - Nominating for beta backport simply because it is already in stable, but there's no harm on letting this ride the train.
  - Assigned P-low
- "Fix another clashing_extern_declarations false positive." [rust#75885](https://github.com/rust-lang/rust/pull/75885)
  - Opened by @**jumbatm**, reviewed by @**nagisa** and @**lcnr** 
  - Fixes [rust#75739](https://github.com/rust-lang/rust/issues/75739)
  - [Backport reasons](https://github.com/rust-lang/rust/pull/75885#issuecomment-679270849)

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

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [50 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+)
  - [30 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 2 P-high, 1 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 6 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 16 P-high, 54 P-medium, 6 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

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
- "diagnostics: "one type is more general" for two identical types?" [rust#75791](https://github.com/rust-lang/rust/issues/75791)
  - Very confusing error message
  - @**matthiaskrgr** suggested that it may have regressed on [rust#73643](https://github.com/rust-lang/rust/pull/73643) which is a rollup.

[Nightly regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-nightly+P-high+no%3Aassignee)
- "Type mismatch in function arguments E0631, E0271 are falsely recognized as E0308 mismatched types" [rust#74400](https://github.com/rust-lang/rust/issues/74400)
  - Discussed last week
  - Regressed on [rust#73643](https://github.com/rust-lang/rust/pull/73643) which is a rollup, likely to be [rust#72493](https://github.com/rust-lang/rust/pull/72493)

## Performance logs

This week saw an upgrade to LLVM 11, which resulted in large speedups to
optimized builds. This offsets the slowdown we observed as part of the [upgrade
to LLVM 10][llvm-10-results]. Many thanks to rust-lang and LLVM contributor
[@nikic](https://github.com/nikic) for their work to measure [LLVM
performance][llvm-fast]. That upgrade did cause slight regressions to check and
debug builds, but on the whole it is a significant win for compile times.

Triage done by @ecstaticmorse.
Revision range: [67e7b9b8cf776222825dbbd4cb1e39b7765ef27c..03017003c77d782cf7ed841a05d7c628a9b93f25][range]

[llvm-10-results]: https://perf.rust-lang.org/compare.html?start=0aa6751c19d3ba80df5b0b02c00bf44e13c97e80&end=82911b3bba76e73afe2881b732fe6b0edb35d5d3&stat=instructions:u
[llvm-fast]: https://nikic.github.io/2020/05/10/Make-LLVM-fast-again.html
[range]: https://perf.rust-lang.org/?start=67e7b9b8cf776222825dbbd4cb1e39b7765ef27c&end=03017003c77d782cf7ed841a05d7c628a9b93f25&absolute=false&stat=instructions%3Au

1 Regression, 4 Improvements, 0 of them in rollups.

#### Regressions

[#75555](https://github.com/rust-lang/rust/pull/75555) Cargo update (almost) all the things! 
- [A very small regression](https://perf.rust-lang.org/compare.html?start=30f0a07684f6c1f5df62d69e9519d82e13d6bf2d&end=1656582822a80139d725e56f00c564f4f58f2883&stat=instructions:u)

#### Improvements

[#75145](https://github.com/rust-lang/rust/pull/75145) Reference lang items during AST lowering 
- [An improvement of ~3% on `await-call-tree`](https://perf.rust-lang.org/compare.html?start=33c96b4d9782cf6364e47cb2c904e66b06c22bb4&end=792c645ca7d11a8d254df307d019c5bf01445c37&stat=instructions:u)
- Coupled with small improvements across the board 

[#75590](https://github.com/rust-lang/rust/pull/75590) Add a packed/tagged pointer abstraction and utilize it for ParamEnv 
- [A small improvement on `keccak`/`inflate`](https://perf.rust-lang.org/compare.html?start=9900178cba95369cd5822c8ce579edcc89ffeb76&end=32c654a9795b0d88541e56ba9da4150e34f1d5f9&stat=instructions:u)

[#73526](https://github.com/rust-lang/rust/pull/73526) Upgrade to LLVM 11 (rc2) 
- [An improvement on optimized builds](https://perf.rust-lang.org/compare.html?start=e482c86b9de32c6392cb83aa97d72e22425163f9&end=7ce71c362be9a89e7897ac066aba6e3e6f747800&stat=instructions:u)
- Tempered by a small regression on debug and check builds.

[#75813](https://github.com/rust-lang/rust/pull/75813) Lazy decoding of DefPathTable from crate metadata (non-incremental case) 
- [A major improvement on small crates, especially on check builds](https://perf.rust-lang.org/compare.html?start=7ce71c362be9a89e7897ac066aba6e3e6f747800&end=d5abc8d3b2e14c8793182b427520497a90b6de83&stat=instructions:u)

#### Nags requiring follow up

None

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "Unsizing coercion does not normalize associated types in structs." [rust#75899](https://github.com/rust-lang/rust/issues/75899)
  - Opened and nominated by @**eddyb** 
- "Add aarch64-pc-windows-msvc to CI" [rust#75914](https://github.com/rust-lang/rust/pull/75914)
  - PR by @**arlosi**, reviewed by @**Ryan Levick**
  - This one seems more a T-infra nomination
  - @**Pietro Albini** may have wanted to notify the compiler team about this
  - The infrastructure team approved allocating a dedicated builder for this!

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3Alibs-impl)
- No nominated issues for `libs-impl` this time.
