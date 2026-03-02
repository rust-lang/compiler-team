---
tags: weekly, rustc
type: docs
note_id: PlVsh_eMSluYBCXJ-MDhiQ
---

# T-compiler Meeting Agenda 2026-02-26

## Announcements

- Heads-up: release of 1.94.0 is next week
- New! Backports can now be accepted/declined directly from Zulip, example:
  ```
  @triagebot backport stable accept 123456
  @triagebot backport beta decline 123456
  ```
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

## MCPs/FCPs

(sorry the list could not be fully generated)

- New MCPs (take a look, see if you like them!)
  - [Remove soft_unstable](https://github.com/rust-lang/compiler-team/issues/972)
  - [Remove -Csoft-float](https://github.com/rust-lang/compiler-team/issues/971)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- None

[T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Apr+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- None

## PRs S-waiting-on-t-compiler

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-t-compiler)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - None
- [60 P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [42 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 3 P-high, 3 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 35 P-high, 121 P-medium, 29 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### Stable regression

- "`#[no_link]` attribute does not prevent crate linking" [rust#152854](https://github.com/rust-lang/rust/issues/152854)
  - doesn't seem super urgent, @_**bjorn3** opened #152856 to investigate removing the attribute. Possibly it should go through a T-lang FCP first ([comment](https://github.com/rust-lang/rust/pull/152856#issuecomment-3945510463))
  - (FIY in case anyone has opinions)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- None

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- None

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc)
- "Regression: "rust-lld: error: undefined symbol: Rlog1p" · [rust#150663](https://github.com/rust-lang/rust/issues/150663)
  - Failed a crater run a while ago. Seems a flaky build or something. We tried to reproduce to no avail. Unsure what we can do here.
- "Chromium hitting SIGILL crashes on aarch64 after #144938 enabled outlined atomics by default" [rust#151486](https://github.com/rust-lang/rust/issues/151486)
  - Should be fixed by #151896
- "regression: undefined symbol: __gxx_personality_v0" [rust#152353](https://github.com/rust-lang/rust/issues/152353)
  - Another crate that failed a crate run a while ago, still unclear but possibly a flaky build

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc)
- None

## Performance logs

> [Triage logs for 2026-02-17](https://github.com/rust-lang/rustc-perf/blob/master/triage/2026/2026-02-17.md)

Several pull requests introduced (usually very small) regressions across the board this week. On the
other hand, [#151380](https://github.com/rust-lang/rust/pull/151380) provided a nice performance win in the inference engine.
I would also like to bring attention to [#152375](https://github.com/rust-lang/rust/pull/152375),
which improved the parallel frontend. It is not shown in this report, because we don't yet have
many benchmarks for the parallel frontend, but this PR seemingly improved the `check` (wall-time)
performance with multiple frontend threads on several real-world crates by 5-10%!

Triage done by **@kobzol**.
Revision range: [39219ceb..3c9faa0d](https://perf.rust-lang.org/?start=39219ceb97d1b37dda72517daa9ebe8364ffe186&end=3c9faa0d037b9eecda4a440cc482ff7f960fb8a5&absolute=false&stat=instructions%3Au)

**Summary**:

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.7%  |  [0.2%, 3.1%]  |  96   |
| Regressions (secondary)  | 1.1%  |  [0.0%, 5.7%]  |  62   |
|  Improvements (primary)  | -0.4% | [-0.9%, -0.2%] |   8   |
| Improvements (secondary) | -2.6% | [-7.0%, -0.0%] |  45   |
|      All  (primary)      | 0.6%  | [-0.9%, 3.1%]  |  104  |


2 Regressions, 0 Improvements, 9 Mixed; 4 of them in rollups
36 artifact comparisons made in total

#### Regressions

Rollup of 17 pull requests [#152562](https://github.com/rust-lang/rust/pull/152562) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=47611e16044c68ef27bac31c35fda2ba1dc20b73&end=d7daac06d87e1252d10eaa44960164faac46beff&stat=instructions:u)

|     (instructions:u)     | mean |    range     | count |
|:------------------------:|:----:|:------------:|:-----:|
|  Regressions (primary)   |  -   |      -       |   0   |
| Regressions (secondary)  | 0.3% | [0.2%, 0.5%] |  11   |
|  Improvements (primary)  |  -   |      -       |   0   |
| Improvements (secondary) |  -   |      -       |   0   |
|      All  (primary)      |  -   |      -       |   0   |

- Noise that got reverted in a follow-up PR.
- Already marked as triaged.

replace box_new with lower-level intrinsics [#148190](https://github.com/rust-lang/rust/pull/148190) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=71e00273c0921e1bc850ae8cc4161fbb44cfa848&end=3c9faa0d037b9eecda4a440cc482ff7f960fb8a5&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.8%  |  [0.5%, 1.9%]  |   8   |
| Regressions (secondary)  | 1.8%  |  [0.4%, 5.5%]  |  24   |
|  Improvements (primary)  | -0.8% | [-0.8%, -0.8%] |   1   |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] |   1   |
|      All  (primary)      | 0.6%  | [-0.8%, 1.9%]  |   9   |

- Small performance hit across the board caused by refactoring how Box works internally.
- Was deemed acceptable pre-merge.
- Marked as triaged.

#### Mixed

Rollup of 12 pull requests [#152399](https://github.com/rust-lang/rust/pull/152399) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=71dc761bfe791895c5997dda654dca1dad817413&end=18d13b5332916ffca8eadb9106d54b5b434e9978&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.2%  |  [0.2%, 0.2%]  |   3   |
| Regressions (secondary)  | 0.8%  |  [0.1%, 1.4%]  |  26   |
|  Improvements (primary)  |   -   |       -        |   0   |
| Improvements (secondary) | -0.2% | [-0.3%, -0.1%] |   8   |
|      All  (primary)      | 0.2%  |  [0.2%, 0.2%]  |   3   |

- The largest regressions seem to be caused by [#152327](https://github.com/rust-lang/rust/pull/152327).
- That PR fixed some compiler bugs, so the regression on a secondary benchmarks seems justifiable.
- Marked as triaged.

Update mgca to use `type const` syntax instead of the `#[type_const]` attribute.  [#152324](https://github.com/rust-lang/rust/pull/152324) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=18d13b5332916ffca8eadb9106d54b5b434e9978&end=381e9ef09effbed5f1378a24dc6e461fea35a0e1&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.4%  |  [0.1%, 0.7%]  |  18   |
| Regressions (secondary)  | 0.5%  |  [0.0%, 1.7%]  |  13   |
|  Improvements (primary)  |   -   |       -        |   0   |
| Improvements (secondary) | -0.2% | [-0.3%, -0.0%] |   4   |
|      All  (primary)      | 0.4%  |  [0.1%, 0.7%]  |  18   |

- It is unclear whether the regressions were expected or not.
- Asked the reviewer to follow up.
- Not marking as triaged yet.

Update to LLVM 22.1.0-rc3 [#152428](https://github.com/rust-lang/rust/pull/152428) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7dc2e92b83be02dc07f87be7e94266d6e48e5ca5&end=7057231bd78d6c7893f905ea1832365d4c5efe17&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.2%  |  [0.2%, 0.2%]  |   1   |
| Regressions (secondary)  | 0.1%  |  [0.0%, 0.2%]  |   4   |
|  Improvements (primary)  |   -   |       -        |   0   |
| Improvements (secondary) | -0.3% | [-0.5%, -0.1%] |  10   |
|      All  (primary)      | 0.2%  |  [0.2%, 0.2%]  |   1   |

- A few tiny changes that got over the noise threshold, but overall a wash.
- Marked as triaged.

Rollup of 7 pull requests [#152506](https://github.com/rust-lang/rust/pull/152506) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5fdff787e6ef7cd4458f81e69cbb4d2a39439a98&end=605f49b27444a738ea4032cb77e3bdc4eb811bab&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.2%  |  [0.2%, 0.2%]  |   1   |
| Regressions (secondary)  | 0.2%  |  [0.1%, 0.2%]  |   3   |
|  Improvements (primary)  |   -   |       -        |   0   |
| Improvements (secondary) | -0.1% | [-0.2%, -0.1%] |   2   |
|      All  (primary)      | 0.2%  |  [0.2%, 0.2%]  |   1   |

- Very small regressions across the board, but I don't think it's worth it to dig deeper.
- Marked as triaged.

Start using pattern types in libcore (NonZero and friends) [#148537](https://github.com/rust-lang/rust/pull/148537) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7ad4e69ad585d8ff214f7b42d01f1959eda08f40&end=bb8b30a5fce59f5d3d17a8f010601c59f0f19d79&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 1.9%  |  [0.1%, 3.8%]  |  12   |
| Regressions (secondary)  | 2.2%  |  [0.1%, 3.6%]  |   4   |
|  Improvements (primary)  |   -   |       -        |   0   |
| Improvements (secondary) | -0.1% | [-0.1%, -0.1%] |   2   |
|      All  (primary)      | 1.9%  |  [0.1%, 3.8%]  |  12   |

- The regression was deemed [acceptable](https://github.com/rust-lang/rust/pull/148537#issuecomment-3883425825) pre-merge, and the post-merge results correspond to the previous perf. runs.
- Marked as triaged.

Make operational semantics of pattern matching independent of crate and module [#150681](https://github.com/rust-lang/rust/pull/150681) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5d04477ea8118ba54d9ce402848dda19a41d61eb&end=f8463896a9b36a04899c013bd8825a7fd29dd7a4&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.6%  |  [0.1%, 1.1%]  |   7   |
| Regressions (secondary)  | 0.2%  |  [0.1%, 0.2%]  |  12   |
|  Improvements (primary)  | -2.6% | [-2.6%, -2.6%] |   1   |
| Improvements (secondary) | -2.3% | [-2.3%, -2.3%] |   1   |
|      All  (primary)      | 0.2%  | [-2.6%, 1.1%]  |   8   |

- A few small regressions across the board, mainly in `doc` builds, the rest of the profiles are a wash. Given the change made here, I suppose the perf. regression is expected.
- Marked as triaged.

Rollup of 7 pull requests [#152632](https://github.com/rust-lang/rust/pull/152632) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a33907a7a5381473eec8bcfa0c56e05a856a911c&end=7bee525095c0872e87c038c412c781b9bbb3f5dc&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.4%  |  [0.1%, 0.8%]  |   6   |
| Regressions (secondary)  | 0.4%  |  [0.1%, 0.8%]  |   3   |
|  Improvements (primary)  | -0.5% | [-1.0%, -0.2%] |   3   |
| Improvements (secondary) | -1.0% | [-2.0%, -0.5%] |   5   |
|      All  (primary)      | 0.1%  | [-1.0%, 0.8%]  |   9   |

- Performance-wise it's a wash.
- Marked as triaged.

Shallow resolve ty and const vars to their root vars [#151380](https://github.com/rust-lang/rust/pull/151380) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7bee525095c0872e87c038c412c781b9bbb3f5dc&end=75b9d89c68a4a92758349272aa4e35a8eb7a6708&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   |   -   |       -        |   0   |
| Regressions (secondary)  | 0.3%  |  [0.2%, 0.4%]  |   4   |
|  Improvements (primary)  | -0.3% | [-0.4%, -0.1%] |  14   |
| Improvements (secondary) | -2.7% | [-7.1%, -0.1%] |  50   |
|      All  (primary)      | -0.3% | [-0.4%, -0.1%] |  14   |

- Many more wins than losses.
- Marked as triaged.

Big query system cleanups [#152636](https://github.com/rust-lang/rust/pull/152636) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=139651428df86cf88443295542c12ea617cbb587&end=fef627b1ebdc7369ddf8a4031a5d25733ac1fb34&stat=instructions:u)

|     (instructions:u)     | mean  |     range      | count |
|:------------------------:|:-----:|:--------------:|:-----:|
|  Regressions (primary)   | 0.3%  |  [0.2%, 0.4%]  |  10   |
| Regressions (secondary)  | 0.2%  |  [0.1%, 0.3%]  |   9   |
|  Improvements (primary)  |   -   |       -        |   0   |
| Improvements (secondary) | -0.4% | [-0.4%, -0.3%] |   4   |
|      All  (primary)      | 0.3%  |  [0.2%, 0.4%]  |  10   |

- The small performance regressions were investigated and deemed to be caused mostly by inlining perturbations.
- Already marked as triaged.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- None

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- None

### Oldest PRs waiting for review

- None this week

Next meeting's agenda draft: [hackmd link](https://hackmd.io/Bf6Z0BusSmGwaBr04mP53A)
