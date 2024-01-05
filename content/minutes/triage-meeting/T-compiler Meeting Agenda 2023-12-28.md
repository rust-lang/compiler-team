---
tags: weekly, rustc
type: docs
note_id: GFdlns3tRjaeF-u-k-1PlA
---

# T-compiler Meeting Agenda 2023-12-28

## Announcements

- Today release of Rust 1.75.0 ([blog post draft](https://github.com/rust-lang/blog.rust-lang.org/blob/8c59641a44a01220136ce63b50051b6c3175c8e5/posts/2023-12-28-Rust-1.75.0.md))
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- [Stable MIR Weekly Meeting](https://www.google.com/calendar/event?eid=N25kMTM2Z3NxbXJjNTE5ZWJpM2traHNpa21fMjAyMzEyMjlUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-12-29T10:00:00-05:00>
- [Types team meeting](https://www.google.com/calendar/event?eid=MTg3MDhpdTc3YXBqMGMzbnNxanUwdWZnazhfMjAyNDAxMDFUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2024-01-01T10:00:00-05:00>
- [[Types] Rotating new solver / formality / polonius deep dive](https://www.google.com/calendar/event?eid=N29vMXZqbGZ1MDIxbzllMDI3dGhocWhhZmNfMjAyNDAxMDFUMTYwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2024-01-01T11:00:00-05:00>
  - @**Jack Huey** are these  T-type meetings happening on New Year's Eve or it's just calendar repetition? :-)

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Add -Z direct-access-external-data" [compiler-team#707](https://github.com/rust-lang/compiler-team/issues/707) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20-Z.20direct-access-external-data.20compiler-team.23707))
- Old MCPs (not seconded, take a look)
  - "Require `--known-broken-llvm` flag for x.py to skip codegen tests on old LLVM" [compiler-team#687](https://github.com/rust-lang/compiler-team/issues/687) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Require.20.60--known-broken-llvm.60.20flag.20for.20x.2E.E2.80.A6.20compiler-team.23687)) (last review activity: about 15 days ago)
    - concern [codegen-tests-are-for-new-optimizations](https://github.com/rust-lang/compiler-team/issues/687#issuecomment-1809869102)
  - "Semantics of `-Cinstrument-coverage=all`" [compiler-team#690](https://github.com/rust-lang/compiler-team/issues/690) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Semantics.20of.20.60-Cinstrument-coverage.3Dall.60.20compiler-team.23690)) (last review activity: about 15 days ago)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: about 15 days ago)
    - concern: [added-complexity-to-frontend](https://rust-lang.zulipchat.com/#narrow/stream/233931-t-compiler.2Fmajor-changes/topic/Add.20hygiene.20attributes.20to.20compile.20expande.E2.80.A6.20compiler-team.23692/near/403245433)
  - "New Tier-3 target: `wasm32-wasi-preview2`" [compiler-team#694](https://github.com/rust-lang/compiler-team/issues/694) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/New.20Tier-3.20target.3A.20.60wasm32-wasi-preview2.60.20compiler-team.23694)) (last review activity: about 9 days ago)
  - "Smooth the renaming transition of `wasm32-wasi`" [compiler-team#695](https://github.com/rust-lang/compiler-team/issues/695) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Smooth.20the.20renaming.20transition.20of.20.60wasm32.E2.80.A6.20compiler-team.23695)) (last review activity: about 15 days ago)
  - "Introduce perma-unstable `wasm-c-abi` flag" [compiler-team#703](https://github.com/rust-lang/compiler-team/issues/703) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Introduce.20perma-unstable.20.60wasm-c-abi.60.20flag.20compiler-team.23703)) (last review activity: about 13 days ago)
  - "Support patchable-function-entry" [compiler-team#704](https://github.com/rust-lang/compiler-team/issues/704) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Support.20patchable-function-entry.20compiler-team.23704)) (last review activity: about 13 days ago)
- Pending FCP requests (check your boxes!)
  - "Add a new `--build-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20new.20.60--build-id.60.20flag.20to.20rustc.20compiler-team.23635))
    - concern [option-name](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1777545767)
    - concern [other-existing-options](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1777545767)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618781780)
    - concern [single-point-of-failure-via-stream-archival](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618781780)
  - "Stabilize `--json=unused-externs(-silent)`" [compiler-team#674](https://github.com/rust-lang/compiler-team/issues/674) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stabilize.20.60--json.3Dunused-externs.28-silent.29.60.20compiler-team.23674))
    - concern [lint-interactions](https://github.com/rust-lang/compiler-team/issues/674#issuecomment-1746696850)
  - "Support overriding `warnings` level for a specific lint via command line" [rust#113307](https://github.com/rust-lang/rust/pull/113307)
    - concern [nesting](https://github.com/rust-lang/rust/pull/113307#issuecomment-1621305927)
  - "Update Windows platform support" [rust#115141](https://github.com/rust-lang/rust/pull/115141)
  - "Stabilize Wasm target features that are in phase 4 and 5" [rust#117457](https://github.com/rust-lang/rust/pull/117457)
  - "Undeprecate lint `unstable_features` and make use of it in the compiler" [rust#118639](https://github.com/rust-lang/rust/pull/118639)
- Things in FCP (make sure you're good with it)
  - "Add a stable flag to enable/disable codegen UB checks" [compiler-team#625](https://github.com/rust-lang/compiler-team/issues/625) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20blanket.20flag.20to.20enable.2Fdisable.20code.E2.80.A6.20compiler-team.23625))
    - concern [needs-fcp](https://github.com/rust-lang/compiler-team/issues/625#issuecomment-1672919695), can someone from T-compiler start it?
  - "Report all lints, even if other errors already occurred." [compiler-team#633](https://github.com/rust-lang/compiler-team/issues/633) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Report.20all.20lints.2C.20even.20if.20other.20errors.20al.E2.80.A6.20compiler-team.23633))
  - "Stabilize `--json=unused-externs(-silent)`" [compiler-team#674](https://github.com/rust-lang/compiler-team/issues/674) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Stabilize.20.60--json.3Dunused-externs.28-silent.29.60.20compiler-team.23674))
  - "Provide option to shorten symbol names by replacing them with a digest" [compiler-team#705](https://github.com/rust-lang/compiler-team/issues/705) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/new.20option.20to.20reduce.20the.20size.20of.20dylib.20compiler-team.23705))
  - "uplift some -Zverbose calls and rename to -Zverbose-internals" [compiler-team#706](https://github.com/rust-lang/compiler-team/issues/706) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/merge.20-Zverbose.20into.20--verbose.20compiler-team.23706))
- Accepted MCPs
  - "Add infrastructure to "compute the ABI of a Rust type, described as a C type"" [compiler-team#672](https://github.com/rust-lang/compiler-team/issues/672) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20infrastructure.20to.20.22compute.20the.20ABI.20of.E2.80.A6.20compiler-team.23672))
  - "Support response files generated by ninja with `@ninja:path` syntax" [compiler-team#684](https://github.com/rust-lang/compiler-team/issues/684) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Use.20shell.20parsing.20for.20response.20files.20compiler-team.23684))
  - "De-llvm some integer intrinsics that on the Rust side always use `u32`" [compiler-team#693](https://github.com/rust-lang/compiler-team/issues/693) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/De-llvm.20some.20integer.20intrinsics.20that.20on.20t.E2.80.A6.20compiler-team.23693))
  - "Consistent `Handler` naming" [compiler-team#699](https://github.com/rust-lang/compiler-team/issues/699) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Consistent.20.60Handler.60.20naming.20compiler-team.23699))
  - "Promote tier 3 riscv32 bare metal targets to tier 2" [compiler-team#701](https://github.com/rust-lang/compiler-team/issues/701) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20tier.203.20riscv32.20bare.20metal.20targets.E2.80.A6.20compiler-team.23701))
  - "Use the MSVC provided Address Sanitizer runtime when building for MSVC" [compiler-team#702](https://github.com/rust-lang/compiler-team/issues/702) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Use.20the.20MSVC.20provided.20Address.20Sanitizer.20r.E2.80.A6.20compiler-team.23702))
- Finalized FCPs (disposition merge)
  - "make soft_unstable show up in future breakage reports" [rust#116274](https://github.com/rust-lang/rust/pull/116274)
  - "Stabilize THIR unsafeck" [rust#117673](https://github.com/rust-lang/rust/pull/117673)
  - "Support async recursive calls (as long as they have indirection)" [rust#117703](https://github.com/rust-lang/rust/pull/117703)
  - "Properly reject `default` on free const items" [rust#117818](https://github.com/rust-lang/rust/pull/117818)
  - "Make inductive cycles in coherence ambiguous always" [rust#118649](https://github.com/rust-lang/rust/pull/118649)

### WG checkins

- @_*WG-mir-opt* (any WG members have news to share?) ([previous checkin](https://hackmd.io/IPpNv80sQAmD2ZTF6h56ng#WG-checkins)):
  > Checkin text
  
- @_*T-rust-analyzer* by @**Lukas Wirth** ([previous checkin](https://hackmd.io/CBacAmB6TTyQJb4kmrBGfw#WG-checkins)):
  > Checkin text

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: [1.76.0] "Exhaustiveness: Improve complexity on some wide matches" [rust#118796](https://github.com/rust-lang/rust/pull/118796)
  - (mentioned last week)
  - PR is now approved and merged, fixes a (P-high) exhaustiveness check [rust#118437](https://github.com/rust-lang/rust/issues/118437) ([comment](https://github.com/rust-lang/rust/pull/118796#issue-2034270817))
<!--
/poll Approve beta backport of #118796?
approve
decline
don't know
-->
- No stable nominations for `T-compiler` this time.

[T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- Other issues [in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [61 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [33 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 1 P-high, 3 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 2 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 40 P-high, 100 P-medium, 18 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No new beta `P-high` regressions

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2023-12-26](https://github.com/rust-lang/rustc-perf/blob/master/triage/2023-12-26.md)

Some of the recent noise swings have been appearing again this week, but luckily
less often than before. There were a few actual regressions, but most of them
were localized to a single stress test. On the other hand, there were a few very
nice wins across the board, especially for check and incremental builds, primarily
thanks to [#118824](https://github.com/rust-lang/rust/pull/118824) and
[#119265](https://github.com/rust-lang/rust/pull/119265).

Triage done by **@kobzol**.
Revision range: [bf9229a2e366b4c311f059014a4aa08af16de5d8..1ab783112ab4e4807304dbd249b39771246013ef](https://perf.rust-lang.org/?start=bf9229a2e366b4c311f059014a4aa08af16de5d8&end=1ab783112ab4e4807304dbd249b39771246013ef&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.6%, 0.6%]   | 1     |
| Regressions (secondary)  | 2.5%  | [0.3%, 4.2%]   | 10    |
| Improvements (primary)   | -0.8% | [-3.3%, -0.1%] | 180   |
| Improvements (secondary) | -1.2% | [-5.5%, -0.2%] | 109   |
| All  (primary)           | -0.8% | [-3.3%, 0.6%]  | 181   |


5 Regressions, 7 Improvements, 2 Mixed; 1 of them in rollups
58 artifact comparisons made in total

#### Regressions

Make exhaustiveness usable outside of rustc [#118842](https://github.com/rust-lang/rust/pull/118842) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c9c9f527e373efbb755e88661aaf012ad6a2d17c&end=3a539c08891a422d34beb32d2556a08ea0357b7d&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.9%  | [0.9%, 1.0%]   | 6     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.4% | [-0.4%, -0.4%] | 1     |
| All  (primary)           | -     | -              | 0     |

* This PR enables the use of exhaustiveness checking e.g. in rust-analyzer, which is part of the
"librarification effort". The small regression in a single stress-test benchmark is worth it.

mark ty::Const::Error when meet unsupport ty for const generic params [#117176](https://github.com/rust-lang/rust/pull/117176) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=cf6427373b8b6d4b8efed2087fb9df5149e69e67&end=08cc634f1a26f30801daa1cbe7b866b12aaf1edd&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.7% | [0.6%, 0.7%] | 4     |
| Regressions (secondary)  | 0.4% | [0.2%, 0.6%] | 19    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.7% | [0.6%, 0.7%] | 4     |

* This PR only added a test, so this has to be noise.
* Already marked as triaged by @jackh726

Exhaustiveness: Improve complexity on some wide matches [#118796](https://github.com/rust-lang/rust/pull/118796) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ebb821f625db3cbc77c675326165b8dfc3d7a2be&end=1a086e49f14dd019a6ee147b6a9a72b32ac3fe2b&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 2.9%  | [2.6%, 3.1%]   | 6     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.3% | [-1.3%, -1.3%] | 1     |
| All  (primary)           | -     | -              | 0     |

* This PR fixed a potential hang in the compiler, the regression of the match checking stress-test
is unfortunate, but it's more important to avoid the pathological case.
* Already marked as triaged by @apiraino

Subtree sync for rustc_codegen_cranelift [#119278](https://github.com/rust-lang/rust/pull/119278) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1a086e49f14dd019a6ee147b6a9a72b32ac3fe2b&end=f736079c3caceca1adfd75822c754e1e31bddc3d&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.9% | [0.8%, 0.9%] | 3     |
| Regressions (secondary)  | 0.5% | [0.3%, 0.7%] | 20    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.9% | [0.8%, 0.9%] | 3     |

* Noise

fix ICE when using raw ptr in a pattern [#119274](https://github.com/rust-lang/rust/pull/119274) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=bf8716f1cd6416266807706bcae0ecb2e51c9d4a&end=471dcbdb0910bcacbef6732e5ec1dab0dcd6b999&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.7% | [0.7%, 0.7%] | 1     |
| Regressions (secondary)  | 0.4% | [0.3%, 0.5%] | 6     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.7% | [0.7%, 0.7%] | 1     |

* Noise

#### Improvements

fast path for declared_generic_bounds_from_env [#119084](https://github.com/rust-lang/rust/pull/119084) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3a539c08891a422d34beb32d2556a08ea0357b7d&end=57ad5058d643d06c0e76bb85442ff9244d966f34&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.9% | [-2.9%, -0.2%] | 8     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -1.9% | [-2.9%, -0.2%] | 8     |

* Very nice improvement to diesel.

use Vec for region constraints instead of BTreeMap [#118824](https://github.com/rust-lang/rust/pull/118824) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=398fd92e177cd1a47ae1bb146506953e87e73d30&end=d6d7a93866f2ffcfb51828b8859bdad760b54ce0&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.5% | [-1.3%, -0.2%] | 39    |
| Improvements (secondary) | -0.7% | [-1.7%, -0.2%] | 29    |
| All  (primary)           | -0.5% | [-1.3%, -0.2%] | 39    |

* Nice improvements to check builds across the board.

Rollup of 6 pull requests [#119237](https://github.com/rust-lang/rust/pull/119237) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=495203bf61efabecc2c460be38e1eb0f9952601b&end=c03d978a4bcb7c01d8cdf80bd7600b27e2d21588&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.5% | [-0.8%, -0.3%] | 17    |
| Improvements (secondary) | -0.4% | [-0.6%, -0.2%] | 10    |
| All  (primary)           | -0.5% | [-0.8%, -0.3%] | 17    |

* Nice win for type checking across several benchmarks. It's unclear which PR from the rollup
has caused the wins though.

Stabilize ip_in_core feature [#119276](https://github.com/rust-lang/rust/pull/119276) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f736079c3caceca1adfd75822c754e1e31bddc3d&end=e87ccb8676be9ab641849a2539b215d0c9027237&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.9% | [-0.9%, -0.8%] | 4     |
| Improvements (secondary) | -0.5% | [-0.8%, -0.2%] | 21    |
| All  (primary)           | -0.9% | [-0.9%, -0.8%] | 4     |

* This is just noise returning back to steady state.

Unify SourceFile::name_hash and StableSourceFileId [#119139](https://github.com/rust-lang/rust/pull/119139) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e87ccb8676be9ab641849a2539b215d0c9027237&end=bf8716f1cd6416266807706bcae0ecb2e51c9d4a&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.2%, -0.1%] | 3     |
| Improvements (secondary) | -0.8% | [-0.9%, -0.6%] | 3     |
| All  (primary)           | -0.2% | [-0.2%, -0.1%] | 3     |

* A few small wins for incremental benchmarks.

Fix display of warning block if it is first element of the top doc block [#119283](https://github.com/rust-lang/rust/pull/119283) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=471dcbdb0910bcacbef6732e5ec1dab0dcd6b999&end=b87f649a5de8496df7be2fd272da5f1d42d82087&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-0.7%, -0.7%] | 2     |
| Improvements (secondary) | -0.4% | [-0.6%, -0.3%] | 5     |
| All  (primary)           | -0.7% | [-0.7%, -0.7%] | 2     |

* This PR only modified the UI and tests of rustdoc, so this is just noise.

Make closures carry their own ClosureKind [#119258](https://github.com/rust-lang/rust/pull/119258) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2271c26e4a8e062bb00d709d0ccb5846e0c341b9&end=1ab783112ab4e4807304dbd249b39771246013ef&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.1% | [-1.1%, -1.1%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -1.1% | [-1.1%, -1.1%] | 1     |

* This is probably just noise.

#### Mixed

add more niches to rawvec [#106790](https://github.com/rust-lang/rust/pull/106790) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f704f3b93b1543cf504ecca0052f9f8531b1f61f&end=51c0db6a9118735190466d15432b5d8890bb09ee&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.1%, 0.7%]   | 20    |
| Regressions (secondary)  | 0.6%  | [0.2%, 1.0%]   | 2     |
| Improvements (primary)   | -0.4% | [-2.0%, -0.1%] | 27    |
| Improvements (secondary) | -0.9% | [-5.3%, -0.2%] | 16    |
| All  (primary)           | -0.1% | [-2.0%, 0.7%]  | 47    |

* This PR enabled more optimization opportunities for LLVM, which could in theory help with
program optimization, but it also caused some binary size increases and compile-time regressions.
* Not marking as triaged yet.

Remove metadata decoding DefPathHash cache [#119265](https://github.com/rust-lang/rust/pull/119265) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=08cc634f1a26f30801daa1cbe7b866b12aaf1edd&end=ebb821f625db3cbc77c675326165b8dfc3d7a2be&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.9%  | [0.9%, 0.9%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.6% | [-2.1%, -0.2%] | 101   |
| Improvements (secondary) | -1.2% | [-3.2%, -0.2%] | 65    |
| All  (primary)           | -0.6% | [-2.1%, 0.9%]  | 102   |

* Very nice check and incremental wins across the board.
* The single regression is probably just noise returning back to steady state.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "large_assignments: Lint on specific large args passed to functions" [rust#116520](https://github.com/rust-lang/rust/pull/116520) (last review activity: 2 months ago)
  - cc: WG-compiler-performance? ([comment](https://github.com/rust-lang/rust/pull/116520#issuecomment-1771119477))
- "Add -Zuse-sync-unwind" [rust#117744](https://github.com/rust-lang/rust/pull/117744) (last review activity: about 41 days ago)
  - Do these changes need an MCP?
- revert for benchmark [rust#118436](https://github.com/rust-lang/rust/pull/118436)
  - cc: @**vadim petrochenkov** @**pnkfelix** seems PR author is waiting on a feedback about perf. results ([comment](https://github.com/rust-lang/rust/pull/118436#issuecomment-1843038392))

## Next week's WG checkins

- @_*WG-async-foundations* by @**nikomatsakis** and @**tmandry**
- @_*WG-diagnostics* by @**Esteban Küber** and @_**oli**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/GbNOsH56RWudQ4drStxBHQ)
