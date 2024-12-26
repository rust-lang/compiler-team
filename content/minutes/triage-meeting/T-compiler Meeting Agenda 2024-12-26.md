---
tags: weekly, rustc
type: docs
note_id: 2m_X4YoWTMKvWMHmKd3vqQ
---

# T-compiler Meeting Agenda 2024-12-26

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta:"Do not call `extern_crate` on current trait on crate mismatch errors" [rust#133585](https://github.com/rust-lang/rust/pull/133585)
  - Authored by estebank
  - Fixes a recent crater run regression #133585 p-high/p-critical (and #133563, reported on nightly)
<!--
/poll Approve beta backport of #133585?
approve
don't know
-->
- :beta:"Handle `DropKind::ForLint` in coroutines correctly" [rust#134575](https://github.com/rust-lang/rust/pull/134575)
  - Authored by compiler-errors
  - Fixes 2 recent ICEs (#134566 and #134541)
<!--
/poll Approve beta backport of #134575?
approve
don't know
-->
- No stable nominations for `T-compiler` this time.

## Performance logs

> [triage logs for 2024-12-23](https://github.com/rust-lang/rustc-perf/blob/master/triage/2024-12-23.md)

We missed triage last week due to some process issues, so this triage includes two weeks of data. The overall result is positive, due to parser optimizations ([#133793](https://github.com/rust-lang/rust/pull/133793)), trait solving optimizations ([#134501](https://github.com/rust-lang/rust/pull/134501), [#132325](https://github.com/rust-lang/rust/pull/132325)) and bumping the cc crate ([#134505](https://github.com/rust-lang/rust/pull/134505)), which [improved the performance](https://github.com/rust-lang/cc-rs/pull/1279) of C/C++ dependencies of the compiler.

Triage done by **@kobzol**.
Revision range: [1b3fb316..0eca4dd3](https://perf.rust-lang.org/?start=1b3fb316751227d30b1523ed0e3f00d83956d4d0&end=0eca4dd3205a01dba4bd7b7c140ec370aff03440&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u) | mean | range | count |
|:----------------:|:----:|:-----:|:-----:|
https://github.com/rust-lang/rustc-perf/blob/master/triage/2024-12-23.md| Regressions (primary)    | 0.5%  | [0.3%, 0.8%]   | 3     |
| Regressions (secondary)  | 1.0%  | [1.0%, 1.0%]   | 1     |
| Improvements (primary)   | -1.8% | [-7.5%, -0.3%] | 254   |
| Improvements (secondary) | -1.3% | [-5.4%, -0.3%] | 224   |
| All  (primary)                 | -1.8% | [-7.5%, 0.8%]  | 257   |

4 Regressions, 10 Improvements, 12 Mixed; 9 of them in rollups
90 artifact comparisons made in total

#### Regressions

Rollup of 6 pull requests [#134296](https://github.com/rust-lang/rust/pull/134296) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f5079d00e63718235f95353df38ebb0891bab5b4&end=f1ec5d64b301462323d7e1782551687cd3a351d0&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.2%, 0.4%] | 7     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.3% | [0.2%, 0.4%] | 7     |

- The regressions were caused by [#134081](https://github.com/rust-lang/rust/pull/134081).
- It was not deemed worthy to fix them, because of added maintenance burden.
- Marked as triaged.

Remove queries from the driver interface [#134302](https://github.com/rust-lang/rust/pull/134302) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=52f4785f80c1516ebece019ae4b69763ffb9a618&end=978c659b72ed7520332a74321dc8accf48b06d94&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.1%, 0.6%] | 11    |
| Regressions (secondary)  | 0.5% | [0.2%, 0.7%] | 18    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.3% | [0.1%, 0.6%] | 11    |

- A few tiny regressions in doc builds, caused by a cleanup of the compiler driver interface.
- Marked as triaged.

Rollup of 8 pull requests [#134582](https://github.com/rust-lang/rust/pull/134582) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=bad2aa47219ae54d51d353e145d33d0a1792327d&end=5f23ef7d3f7a8c3e0ca5c4e1978829c0448a3686&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.2% | [0.2%, 0.2%] | 6     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.2% | [0.2%, 0.2%] | 6     |

- Tiny regression on a single benchmark, I don't think that it's worthy to investigate further.
- Marked as triaged.

Asserts the maximum value that can be returned from `Vec::len` [#131193](https://github.com/rust-lang/rust/pull/131193) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b22856d192567a55a1d2788fbc3084e3f9cb220f&end=303e8bd768526a5812bb1776e798e829ddb7d3ca&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.2%, 1.2%] | 104   |
| Regressions (secondary)  | 0.3% | [0.1%, 0.8%] | 38    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.3% | [0.2%, 1.2%] | 104   |

- The post-merge regression seems to be much larger than originally expected.
- Asked the PR author about this.
- Not marking as triaged yet.

#### Improvements

Rollup of 9 pull requests [#134137](https://github.com/rust-lang/rust/pull/134137) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=33c245b9e98bc91e18ea1c5033824f4c6f92766f&end=5a6036a1802262f8cf02192b02026688d396f1d7&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.9% | [-0.9%, -0.9%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -0.9% | [-0.9%, -0.9%] | 1     |


Rollup of 4 pull requests [#134349](https://github.com/rust-lang/rust/pull/134349) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d18506299bfb20488aba466a69641a2bab6f7a4a&end=c26db435bf8aee2efc397aab50f3a21eb351d6e5&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.8%, -0.1%] | 4     |
| Improvements (secondary) | -0.2% | [-0.2%, -0.2%] | 4     |
| All  (primary)                 | -0.3% | [-0.8%, -0.1%] | 4     |


Rollup of 9 pull requests [#134395](https://github.com/rust-lang/rust/pull/134395) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=83ab648e00ecbdef415baba3cfbac6f5df263b1c&end=6d9f6ae36ae1299d6126ba40c15191f7aa3b79d8&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.7%, -0.2%] | 9     |
| All  (primary)                 | -     | -              | 0     |


rework winnowing to sensibly handle global where-bounds [#132325](https://github.com/rust-lang/rust/pull/132325) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=978c659b72ed7520332a74321dc8accf48b06d94&end=604d6691d9ee5c88a05569dd3f707b20afd76e97&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-1.0%, -0.2%] | 64    |
| Improvements (secondary) | -1.6% | [-2.1%, -0.7%] | 9     |
| All  (primary)                 | -0.4% | [-1.0%, -0.2%] | 64    |


Try to fix perf regression in rustdoc after hir attributes [#134376](https://github.com/rust-lang/rust/pull/134376) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a4cb3c831823d9baa56c3d90514b75b2660116fa&end=7e6bf003f396aeea510577b4e925d1d95c12ff53&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.6%, -0.2%] | 10    |
| Improvements (secondary) | -0.4% | [-0.6%, -0.2%] | 18    |
| All  (primary)                 | -0.3% | [-0.6%, -0.2%] | 10    |


Speed up `Parser::expected_tokens` [#133793](https://github.com/rust-lang/rust/pull/133793) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=11663cd3bfefef7d34e8f0892c250bf698049392&end=9e136a30a965bf4e63f03095c57df7257bf96fd6&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.9% | [-2.5%, -0.2%] | 213   |
| Improvements (secondary) | -0.8% | [-2.5%, -0.1%] | 105   |
| All  (primary)                 | -0.9% | [-2.5%, -0.2%] | 213   |


Rollup of 5 pull requests [#134559](https://github.com/rust-lang/rust/pull/134559) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8a1f8039a7ded79d3d4fe97b110016d89f2b11e2&end=fcc1615e47100b376d0a6166faccdd4a8253c314&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.5% | [-1.4%, -0.1%] | 17    |
| Improvements (secondary) | -3.1% | [-4.7%, -1.5%] | 3     |
| All  (primary)                 | -0.5% | [-1.4%, -0.1%] | 17    |


handle member constraints directly in the mir type checker [#134501](https://github.com/rust-lang/rust/pull/134501) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=54dcff104b0acf01716a94429717d364fe43f90d&end=9bd5f3387dd1e24e3493fd53c2f80e5991a155b6&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.5%, -0.2%] | 65    |
| Improvements (secondary) | -0.3% | [-0.6%, -0.0%] | 58    |
| All  (primary)                 | -0.4% | [-0.5%, -0.2%] | 65    |


Bump compiler `cc` to 1.2.5 [#134505](https://github.com/rust-lang/rust/pull/134505) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=387b245664a81f58260a6b565aa0b2fdf19752fb&end=4c40c89c26e9a6c761e2c6d44662028e33e9cb04&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-7.6%, -0.1%] | 244   |
| Improvements (secondary) | -0.7% | [-1.4%, -0.1%] | 196   |
| All  (primary)                 | -0.7% | [-7.6%, -0.1%] | 244   |

- The improvements were probably caused by https://github.com/rust-lang/cc-rs/pull/1279.

cleanup `TypeVerifier` [#134465](https://github.com/rust-lang/rust/pull/134465) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=908af5ba4ad921fec81d95c97411c867cdcb33fa&end=0eca4dd3205a01dba4bd7b7c140ec370aff03440&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.4%, -0.2%] | 6     |
| Improvements (secondary) | -0.4% | [-0.5%, -0.1%] | 16    |
| All  (primary)                 | -0.3% | [-0.4%, -0.2%] | 6     |


#### Mixed

Introduce `MixedBitSet` [#133891](https://github.com/rust-lang/rust/pull/133891) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1b3fb316751227d30b1523ed0e3f00d83956d4d0&end=f6cb952dc115fd1311b02b694933e31d8dc8b002&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.6%  | [0.2%, 1.0%]   | 8     |
| Improvements (primary)   | -0.6% | [-1.3%, -0.2%] | 67    |
| Improvements (secondary) | -0.7% | [-2.0%, -0.2%] | 28    |
| All  (primary)                 | -0.6% | [-1.3%, -0.2%] | 67    |

- More improvements than regressions, especially on primary benchmarks.
- Already marked as triaged.

Rollup of 10 pull requests [#134108](https://github.com/rust-lang/rust/pull/134108) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b597d2a099a1b5b79acef05175a9ac847047f8a1&end=499605271718bceaa629f0b954502c0040e4456b&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.8%]   | 9     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.3%]   | 7     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.4% | [-0.7%, -0.2%] | 6     |
| All  (primary)                 | 0.3%  | [0.2%, 0.8%]   | 9     |

- Perf. runs for the most suspect PRs in the rollup haven't shown anything, but the regression is tiny,
so it does not seem to be worthy of further investigation.
- Marked as triaged.

We don't need `NonNull::as_ptr` debuginfo [#133899](https://github.com/rust-lang/rust/pull/133899) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3da8bfb87f2bdcff56ed845383aa1c4fcd2c8705&end=dd436ae2a628c523c967a7876873a96c44b1e382&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.2%, 0.9%]   | 2     |
| Regressions (secondary)  | 0.5%  | [0.2%, 1.1%]   | 4     |
| Improvements (primary)   | -0.9% | [-2.1%, -0.3%] | 34    |
| Improvements (secondary) | -2.7% | [-3.0%, -2.5%] | 2     |
| All  (primary)                 | -0.9% | [-2.1%, 0.9%]  | 36    |

- More improvements than regressions, and in particular very nice binary size wins.
- Marked as triaged.

Switch inline(always) in core/src/fmt/rt.rs to plain inline [#134047](https://github.com/rust-lang/rust/pull/134047) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=dd436ae2a628c523c967a7876873a96c44b1e382&end=4847d6a9d07d4be9ba3196f6ad444af2d7bdde72&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.5%  | [0.5%, 0.5%]   | 1     |
| Improvements (primary)   | -0.4% | [-0.5%, -0.3%] | 6     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -0.4% | [-0.5%, -0.3%] | 6     |

- More improvements than regressions.
- Marked as triaged.

Move impl constness into impl trait header [#134122](https://github.com/rust-lang/rust/pull/134122) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4847d6a9d07d4be9ba3196f6ad444af2d7bdde72&end=e217f949179d7337d0cae303881449360937211f&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.8%  | [0.8%, 0.8%]   | 1     |
| Regressions (secondary)  | 1.7%  | [1.6%, 1.9%]   | 6     |
| Improvements (primary)   | -0.3% | [-1.1%, -0.1%] | 59    |
| Improvements (secondary) | -0.7% | [-2.5%, -0.2%] | 41    |
| All  (primary)                 | -0.3% | [-1.1%, 0.8%]  | 60    |

- More improvements than regressions.
- Marked as triaged.

Bounds-check with PtrMetadata instead of Len in MIR [#133734](https://github.com/rust-lang/rust/pull/133734) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0aeaa5eb22180fdf12a8489e63c4daa18da6f236&end=b57d93d8b9525fa261404b4cd9c0670eeb1264b8&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.3%]   | 2     |
| Improvements (primary)   | -1.4% | [-1.4%, -1.4%] | 1     |
| Improvements (secondary) | -0.6% | [-0.8%, -0.4%] | 6     |
| All  (primary)                 | -1.4% | [-1.4%, -1.4%] | 1     |

- Single tiny regression, otherwise tiny improvements.
- Marked as triaged.

Remove support for specializing ToString outside the standard library [#134258](https://github.com/rust-lang/rust/pull/134258) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7caf35b2e5401d7740fdc567fdc388059208150b&end=4790a435cbcb55c94ccdef51bf7a9b2e55824528&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.5%]   | 3     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.4%, -0.4%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | 0.1%  | [-0.4%, 0.5%]  | 4     |

- Tiny regression that was deemed acceptable.
- Marked as triaged.

Modifies the index instruction from `gep [0 x %Type]` to `gep %Type` [#134117](https://github.com/rust-lang/rust/pull/134117) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0894fb0fbf457916bb013168476d802852d9dd6a&end=a611773d80486c8511ed554400eab0681a8bb068&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.1%  | [0.1%, 0.2%]   | 2     |
| Regressions (secondary)  | 0.6%  | [0.2%, 1.1%]   | 17    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.3% | [-1.4%, -1.2%] | 4     |
| All  (primary)                 | 0.1%  | [0.1%, 0.2%]   | 2     |

- The post-merge perf. is very similar to the previous perf. runs, which were deemed acceptable during review.
- Marked as triaged.

Hir attributes [#131808](https://github.com/rust-lang/rust/pull/131808) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c26db435bf8aee2efc397aab50f3a21eb351d6e5&end=f2b91ccbc27cb06369aa2dd934ff219e156408a8&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 1.1%]   | 9     |
| Regressions (secondary)  | 0.4%  | [0.1%, 0.6%]   | 20    |
| Improvements (primary)   | -0.2% | [-0.4%, -0.2%] | 3     |
| Improvements (secondary) | -0.3% | [-0.7%, -0.2%] | 5     |
| All  (primary)                 | 0.3%  | [-0.4%, 1.1%]  | 12    |

- The regression was fixed in [#134376](https://github.com/rust-lang/rust/pull/134376).
- Marked as triaged.

Rollup of 11 pull requests [#134470](https://github.com/rust-lang/rust/pull/134470) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=057bdb37eccff6a2bd402509bbbadb9d73ad7bf5&end=a52085d9f6a6e596b0cbad4502cddf86bc878028&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.2%  | [0.1%, 0.4%]   | 7     |
| Improvements (primary)   | -0.2% | [-0.3%, -0.1%] | 3     |
| Improvements (secondary) | -0.5% | [-0.5%, -0.3%] | 5     |
| All  (primary)                 | -0.2% | [-0.3%, -0.1%] | 3     |

- Regressions seem to be balanced with improvements.
- Marked as triaged.

Rollup of 8 pull requests [#134492](https://github.com/rust-lang/rust/pull/134492) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=023521e6825edfa6df01e392520d7cb120eab158&end=bab18a542d95b5c76620d0a0d383d7ab683cc1b7&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 0.7%]   | 10    |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.1% | [-0.1%, -0.1%] | 1     |
| All  (primary)                 | 0.4%  | [0.2%, 0.7%]   | 10    |

- The regressions seem to have blipped back soon after
- Marked as triaged.

Delete `Rvalue::Len` 🎉 [#134330](https://github.com/rust-lang/rust/pull/134330) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=303e8bd768526a5812bb1776e798e829ddb7d3ca&end=e108481f74ff123ad98a63bd107a18d13035b275&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.3%, 0.4%]   | 2     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.8%, -0.2%] | 7     |
| Improvements (secondary) | -0.3% | [-0.4%, -0.2%] | 2     |
| All  (primary)                 | -0.2% | [-0.8%, 0.4%]  | 9     |

- More improvements than regressions.
- Marked as triaged.
