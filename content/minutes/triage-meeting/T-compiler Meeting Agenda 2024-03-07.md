---
tags: weekly, rustc
type: docs
note_id: pr4gaVUvQv2UNLSVHbptzQ
---

# T-compiler Meeting Agenda 2024-03-07

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings
- Types Team: ITE (Impl Trait Everywhere) Triage <time:2024-03-07T22:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Promote riscv64gc-unknown-linux-musl to tier 2" [compiler-team#728](https://github.com/rust-lang/compiler-team/issues/728) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20riscv64gc-unknown-linux-gnu.20to.20ti.E2.80.A6.20compiler-team.23728))
- MCPs (not seconded, take a look)
  - "Support patchable-function-entry" [compiler-team#704](https://github.com/rust-lang/compiler-team/issues/704) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Support.20patchable-function-entry.20compiler-team.23704)) (last review activity: 2 months ago)
  - "Target families for executable format" [compiler-team#716](https://github.com/rust-lang/compiler-team/issues/716) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Target.20families.20for.20executable.20format.20compiler-team.23716)) (last review activity: about 34 days ago)
  - "Add `--emit=` to emit nothing" [compiler-team#718](https://github.com/rust-lang/compiler-team/issues/718) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60--emit.3D.60.20to.20emit.20nothing.20compiler-team.23718)) (last review activity: about 34 days ago)
  - "Dist rustc with overflow checks" [compiler-team#724](https://github.com/rust-lang/compiler-team/issues/724) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Dist.20rustc.20with.20overflow.20checks.20compiler-team.23724)) (last review activity: about 13 days ago)
- Pending FCP requests (check your boxes!)
  - "Tracking Issue for RFC 3013: Checking conditional compilation at compile time" [rust#82450](https://github.com/rust-lang/rust/issues/82450)
  - "Stabilize Wasm target features that are in phase 4 and 5" [rust#117457](https://github.com/rust-lang/rust/pull/117457)
  - "Stabilize `--env-set` option" [rust#119926](https://github.com/rust-lang/rust/pull/119926)
  - "Make casts of pointers to trait objects stricter" [rust#120248](https://github.com/rust-lang/rust/pull/120248)
  - "debuginfo: Stabilize `-Z debug-macros`, `-Z collapse-macro-debuginfo` and `#[collapse_debuginfo]`" [rust#120845](https://github.com/rust-lang/rust/pull/120845)
  - "Add encoding for `f16` and `f128`" [rust#122106](https://github.com/rust-lang/rust/pull/122106)
- Things in FCP (make sure you're good with it)
  - "Introduce perma-unstable `wasm-c-abi` flag" [compiler-team#703](https://github.com/rust-lang/compiler-team/issues/703) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Introduce.20perma-unstable.20.60wasm-c-abi.60.20flag.20compiler-team.23703))
  - "Support debug fission using -Csplit-debuginfo=post-link" [compiler-team#721](https://github.com/rust-lang/compiler-team/issues/721) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Use.20debug.20fission.20instead.20of.20dwarf.20split.20.E2.80.A6.20compiler-team.23721))
  - "Put "checks that detect UB" under their own flag below `debug_assertions`" [compiler-team#725](https://github.com/rust-lang/compiler-team/issues/725) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Put.20.22checks.20that.20detect.20UB.22.20under.20their.20o.E2.80.A6.20compiler-team.23725))
  - "Separate incremental crate identity" [compiler-team#726](https://github.com/rust-lang/compiler-team/issues/726) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Separate.20incremental.20crate.20identity.20compiler-team.23726))
  - "MCP: Low level components for async drop" [compiler-team#727](https://github.com/rust-lang/compiler-team/issues/727) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/MCP.3A.20Low.20level.20components.20for.20async.20drop.20compiler-team.23727))
  - "Update Windows platform support" [rust#115141](https://github.com/rust-lang/rust/pull/115141)
  - "Add `wasm_c_abi` `future-incompat` lint" [rust#117918](https://github.com/rust-lang/rust/pull/117918)
- MCPs blocked on unresolved concerns
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: about 50 days ago)
    - concern: [added-complexity-to-frontend](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-1845169318)
  - "Add a new `--build-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20new.20.60--build-id.60.20flag.20to.20rustc.20compiler-team.23635))
    - concern: [other-existing-options](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1779597156)
    - concern: [option-name](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1785349936)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
    - concern: [single-point-of-failure-via-stream-archival](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1664056989)
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - No new finished FCP (disposition merge) this time.

### WG checkins

Skipping this week

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: [1.77] "AST validation: Improve handling of inherent impls nested within functions and anon consts" [rust#122004](https://github.com/rust-lang/rust/pull/122004)
  - Fixes #121607, #89342 and partially #119924
  - Still WIP (maybe wait until r+'ed?)
<!--
/poll Approve beta backport of #122004?
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

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [64 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [36 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 3 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 5 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 36 P-high, 100 P-medium, 15 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Accessing large static global behaves incorrectly" [rust#121868](https://github.com/rust-lang/rust/issues/121868)
  - Unsoundness on nightly when accessing global static variables
  - Cause is in LLLVM ([comment](https://github.com/rust-lang/rust/issues/121868#issuecomment-1975815578))
  - Fix being worked in #122000 (author will probably upstream the fix, [comment](https://github.com/rust-lang/rust/pull/122000#issuecomment-1979658792))

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "rust-1.75.0 fails to compile with ICE on aarch64 and various ppc arches with LTO enabled - error: could not compile memchr" [rust#121124](https://github.com/rust-lang/rust/issues/121124)
  - Waiting on feedback from Gentoo folks if this reproduces also with LLVM 18 ([comment](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202024-02-22/near/422842465)) ([gentoo issue](https://bugs.gentoo.org/show_bug.cgi?id=924301#c13))
- "regression: visibility qualifiers are not permitted" [rust#121607](https://github.com/rust-lang/rust/issues/121607)
  - should be fixed by #122004 (nominated for beta backport)
- "regression: encountered mutable pointer in final value" [rust#121610](https://github.com/rust-lang/rust/issues/121610)
  - #119044 accidentally caused a breaking change ([comment](https://github.com/rust-lang/rust/issues/121610#issuecomment-1972874015))
  - Will be discussed by T-lang whether to revert that or accept it

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- None

## Performance logs

> [triage logs for 2023-03-05](https://github.com/rust-lang/rustc-perf/blob/master/triage/2024-03-05.md)

A bunch of noise this week which has been dropped from the report (but may be
present in the summary figures). As a result, the week is pretty busy in amount
of changes, but the net effect is nearly neutral to a slight regression for
most workloads.

Triage done by **@simulacrum**.
Revision range: [71ffdf7ff7ac6df5f9f64de7e780b8345797e8a0..41d97c8a5dea2731b0e56fe97cd7cb79e21cff79](https://perf.rust-lang.org/?start=71ffdf7ff7ac6df5f9f64de7e780b8345797e8a0&end=41d97c8a5dea2731b0e56fe97cd7cb79e21cff79&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.1%, 2.0%]   | 136   |
| Regressions (secondary)  | 0.8%  | [0.2%, 2.6%]   | 78    |
| Improvements (primary)   | -0.6% | [-1.2%, -0.3%] | 9     |
| Improvements (secondary) | -0.6% | [-1.0%, -0.2%] | 14    |
| All  (primary)           | 0.6%  | [-1.2%, 2.0%]  | 145   |


2 Regressions, 0 Improvements, 10 Mixed; 4 of them in rollups
51 artifact comparisons made in total

#### Regressions

Weekly `cargo update` [#112865](https://github.com/rust-lang/rust/pull/112865) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0decdac390cfeedcd7f2f44c45f72c59c70d8143&end=da02fff3b6e4e27156054dcdda6675fe2a2591a6&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.1% | [0.2%, 2.9%] | 3     |
| Regressions (secondary)  | 1.1% | [0.2%, 1.9%] | 7     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 1.1% | [0.2%, 2.9%] | 3     |

Doesn't appear to be entirely noise (though some of the delta is likely due to
bimodality). However marking this regression as triaged since investigating is
likely to be painful and the regressions are predominantly in secondary
benchmarks.

Add a scheme for moving away from `extern "rust-intrinsic"` entirely [#120675](https://github.com/rust-lang/rust/pull/120675) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=50e77f133f8eb1f745e05681163a0143d6c4dd7d&end=2eeff462b762ed00f9d557d8c6ad7a3d562f692a&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.6% | [0.2%, 1.0%] | 93    |
| Regressions (secondary)  | 0.8% | [0.2%, 2.4%] | 28    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.6% | [0.2%, 1.0%] | 93    |

This regression is being addressed in a followup PR:
https://github.com/rust-lang/rust/pull/122010

#### Mixed

syms for legacy numeric constants diag items [#121667](https://github.com/rust-lang/rust/pull/121667) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=91cae1dcdcf1a31bd8a92e4a63793d65cfe289bb&end=1c28a2c1b0b82b525262e6ccc7675cab61ed040c&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.5%  | [0.3%, 1.1%]   | 3     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.2%] | 2     |
| Improvements (secondary) | -0.8% | [-1.5%, -0.2%] | 3     |
| All  (primary)           | -0.3% | [-0.3%, -0.2%] | 2     |

Regression seems likely to be noise (bimodality) or not significant enough to
investigate further. Marking as triaged. Some of the improvements seem genuine.

Diagnostic renaming [#121489](https://github.com/rust-lang/rust/pull/121489) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=bf9c7a64ad222b85397573668b39e6d1ab9f4a72&end=c475e2303b551d726307c646181e0677af1e0069&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 1.2%  | [1.2%, 1.2%]   | 1     |
| Improvements (primary)   | -0.9% | [-0.9%, -0.8%] | 4     |
| Improvements (secondary) | -0.5% | [-0.8%, -0.4%] | 9     |
| All  (primary)           | -0.9% | [-0.9%, -0.8%] | 4     |

Regression is essentially guaranteed to be bimodality, not a real change. Marking as triaged.

Rollup of 10 pull requests [#121790](https://github.com/rust-lang/rust/pull/121790) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d3d145ea1cae47ad392173f890577788117da3d9&end=71a7b66f20c551f640f2f382bc7e7923ba0a5dab&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.6%, 0.6%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.6%, -0.3%] | 2     |
| Improvements (secondary) | -1.9% | [-2.4%, -1.5%] | 2     |
| All  (primary)           | -0.1% | [-0.6%, 0.6%]  | 3     |

The single primary benchmark regression (Cargo) change looks to be both above
any noise floor and does not show signs of reverting. However, it's not
significant enough (given limit to just Cargo) to investigate further.

Rollup of 7 pull requests [#121804](https://github.com/rust-lang/rust/pull/121804) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=384d26fc7e3bdd7687cc17b2662b091f6017ec2a&end=1a1876c9790f168fb51afa335a7ba3e6fc267d75&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.6%]   | 7     |
| Regressions (secondary)  | 1.8%  | [1.7%, 1.9%]   | 6     |
| Improvements (primary)   | -0.8% | [-0.9%, -0.8%] | 4     |
| Improvements (secondary) | -0.5% | [-0.8%, -0.2%] | 8     |
| All  (primary)           | -0.1% | [-0.9%, 0.6%]  | 11    |

Trying to track down the cause of the regression. Suspecting #121000 based on
the regressed benchmarks.

Combine `Sub` and `Equate` [#121462](https://github.com/rust-lang/rust/pull/121462) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6cbf0926d54c80ea6d15df333be9281f65bbeb36&end=b0696a5160711c068cb1f01b7437db7990d15750&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.2%, 0.9%]   | 13    |
| Regressions (secondary)  | 0.5%  | [0.3%, 0.8%]   | 17    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.5% | [-0.9%, -0.4%] | 7     |
| All  (primary)           | 0.5%  | [0.2%, 0.9%]   | 13    |

Future PRs may improve perf here, but this is targeting clean up and preparing for other refactoring first:

> Some ideas how to reduce the perf impact. Even if they don't completely
> remove it, this will allow significant improvements and cleanups going
> forward and generally simplifies the core type system. I would merge this
> even with these regressions.

(https://github.com/rust-lang/rust/pull/121462#issuecomment-1973282815)

Rollup of 12 pull requests [#121859](https://github.com/rust-lang/rust/pull/121859) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=17edacef07e8afc3b580ed8feead6c5e90d24a56&end=2dceda4f32b97f60b122f2b32491e0267ef5cc0c&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.9%  | [0.5%, 3.3%]   | 2     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.8% | [-1.1%, -0.5%] | 2     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 0.6%  | [-1.1%, 3.3%]  | 4     |

Cargo regression looks real but otherwise this looks like noise to me. I'm
going to mark as triaged, I don't think it merits digging through individual
PRs to try and isolate it.

Don't grab variances in `TypeRelating` relation if we're invariant [#121864](https://github.com/rust-lang/rust/pull/121864) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4cdd20584ccb75890d7d9bfae266054abfae5d46&end=2e3581bca93fdcce474e17cd43430b594a7955a0&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 1     |
| Improvements (primary)   | -0.6% | [-0.8%, -0.2%] | 11    |
| Improvements (secondary) | -0.5% | [-0.6%, -0.4%] | 8     |
| All  (primary)           | -0.6% | [-0.8%, -0.2%] | 11    |

Regression is likely real, but is in a secondary benchmark and incr-unchanged
scenario. Not worth further investigation, particularly given the improvements.

Always generate GEP i8 / ptradd for struct offsets [#121665](https://github.com/rust-lang/rust/pull/121665) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=516b6162a2ea8e66678c09e8243ebd83e4b8eeea&end=70aa0b86c066e721012852a9851fdf8586117823&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.4%]   | 3     |
| Regressions (secondary)  | 0.5%  | [0.2%, 1.0%]   | 12    |
| Improvements (primary)   | -0.7% | [-1.6%, -0.3%] | 14    |
| Improvements (secondary) | -0.5% | [-1.0%, -0.3%] | 12    |
| All  (primary)           | -0.5% | [-1.6%, 0.4%]  | 17    |

Changes are expected since this changed a lot of our codegen. In practice
though mostly not meaningful (i.e., some improvements, some regressions).

Rollup of 5 pull requests [#121955](https://github.com/rust-lang/rust/pull/121955) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=70aa0b86c066e721012852a9851fdf8586117823&end=89b78304e82dc5114e3b2faa0fbec747a28a2b37&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.2%, 3.7%]   | 17    |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.8%, -0.2%] | 10    |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 0.3%  | [-0.8%, 3.7%]  | 27    |

Likely to be caused by a correctness fix: https://github.com/rust-lang/rust/pull/121955#issuecomment-1975993842

perf: improve write_fmt to handle simple strings [#121001](https://github.com/rust-lang/rust/pull/121001) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1547c076bfec8abb819d6a81e1e4095d267bd5b4&end=5a1e5449c8f4cb6b12b4f64238e3c058767ebf02&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.7%  | [0.5%, 3.6%]   | 4     |
| Regressions (secondary)  | 0.3%  | [0.3%, 0.3%]   | 1     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -1.3% | [-1.3%, -1.3%] | 1     |
| All  (primary)           | 1.7%  | [0.5%, 3.6%]   | 4     |

Improvements to runtime (or at least assembly quality), at the cost of a bit
more time in LLVM.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Stabilize `extended_varargs_abi_support`" [rust#116161](https://github.com/rust-lang/rust/pull/116161)
  - Tracking issue #100189
  - T-lang or T-compiler should have a say for stabilization - which one?
- "`#![crate_name = EXPR]` semantically allows `EXPR` to be a macro call but otherwise mostly ignores it" [rust#122001](https://github.com/rust-lang/rust/issues/122001)
  - nominated by @**León Orell Liehr (fmease)** ([comment](https://github.com/rust-lang/rust/issues/122001#issuecomment-1978925024))
  - The question is if supporting macro was ever intentional

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Allow codegen backends to opt-out of parallel codegen" [rust#116791](https://github.com/rust-lang/rust/pull/116791) (last review activity: 4 months ago)
  - cc: @**Wesley Wiser**
- "[AIX] Remove AixLinker's debuginfo() implementation" [rust#117118](https://github.com/rust-lang/rust/pull/117118) (last review activity: 4 months ago)
  - Do we need an AIX expert or just anyone is fine? Seems quite straightforwarded?
- "tidy watcher" [rust#114209](https://github.com/rust-lang/rust/pull/114209)
  - cc: @**Wesley Wiser** (or re-roll?)

## Next week's WG checkins
- @_*WG-async-foundations* by @**nikomatsakis** and @**tmandry**
- @_*WG-diagnostics* by @**Esteban Küber** and @**oli**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/HcDfU1v8SAiAWtLQPIJkJw)
