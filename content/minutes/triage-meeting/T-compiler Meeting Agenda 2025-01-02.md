---
tags: weekly, rustc
type: docs
note_id: OYXFrqEcTiuIRyZA0mjU-Q
---

# T-compiler Meeting Agenda 2025-01-02

## Announcements

- Next week release of rustc stable 1.84

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "regression: ICE: `tcx.extern_crate(LocalCrate)` is not supported for this key" [rust#134705](https://github.com/rust-lang/rust/issues/134705)
  - Regression found in latest beta crater run, solved by #133585 ([beta-backport approved](https://rust-lang.zulipchat.com/#narrow/channel/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202024-12-26/near/490872595))

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2024-12-30](https://github.com/rust-lang/rustc-perf/blob/master/triage/2024-12-30.md)

A pretty quiet week, with the exception of a significant improvement due to
landing LTO for C / C++ programs compiled as part of the build.

Triage done by **@simulacrum**.
Revision range: [0eca4dd3..93722f7e](https://perf.rust-lang.org/?start=0eca4dd3205a01dba4bd7b7c140ec370aff03440&end=93722f7ed56bcf27839a6355074095c4320b7d37&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.6% | [-5.6%, -0.2%] | 265   |
| Improvements (secondary) | -0.7% | [-1.8%, -0.2%] | 187   |
| All  (primary)           | -0.6% | [-5.6%, -0.2%] | 265   |

0 Regressions, 1 Improvements, 1 Mixed; 0 of them in rollups
53 artifact comparisons made in total

#### Regressions

No meaningful regressions this week.

#### Improvements

CI: Add LTO support to clang in dist-x86_64-linux [#134690](https://github.com/rust-lang/rust/pull/134690) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=dd84b7d5eec3c20d7fcd13e6450af029d3cece9d&end=ecc189922dac830ff866f4609311e6afcc4a91f6&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-5.5%, -0.3%] | 275   |
| Improvements (secondary) | -0.9% | [-2.6%, -0.2%] | 235   |
| All  (primary)                 | -0.7% | [-5.5%, -0.3%] | 275   |

#### Mixed

Consider empty-unreachable otherwise branches in MatchBranchSimplification [#131244](https://github.com/rust-lang/rust/pull/131244) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8b3f7ac5262531aefa227f90387cf2eb34aae800&end=4e0bc490c60d3588f3ec0aa2eee2cf0696c7c333&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 1     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.3%]   | 4     |
| Improvements (primary)   | -0.6% | [-0.7%, -0.5%] | 2     |
| Improvements (secondary) | -0.2% | [-0.3%, -0.1%] | 2     |
| All  (primary)                 | -0.3% | [-0.7%, 0.2%]  | 3     |

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Built-in attributes are treated differently vs prelude attributes, unstable built-in attributes can name-collide with stable macro, and built-in attributes can break back-compat" [rust#134963](https://github.com/rust-lang/rust/issues/134963)
  - Nominated by @**Jieyou Xu**, suggests not requiring immediate attention, can be postponed to next week

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

Next meetings' agenda draft: [hackmd link](https://hackmd.io/EA9mhXkIR8muLGlnLyQ8Ug)
