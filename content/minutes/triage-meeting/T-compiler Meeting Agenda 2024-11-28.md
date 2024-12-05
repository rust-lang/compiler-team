---
tags: weekly, rustc
type: docs
note_id: AIqvziC1SXaPGsfLKO0u2g
---

# T-compiler Meeting Agenda 2024-11-28

## Announcements

- Today, stable 1.83 is out! :tada:
  - [1.83 release notes](https://github.com/cuviper/rust/blob/46cd0c526691f485365e57228c99db8f7c16c324/RELEASES.md)
  - [1.83 blog post](https://github.com/BoxyUwU/blog.rust-lang.org/blob/1.83.0/posts/2024-11-28-Rust-1.83.0.md)
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- WG-async Design Meeting <time:2024-11-28T19:00:00+01:00>
- Types Team: ITE (Impl Trait Everywhere) Triage <time:2024-11-28T22:00:00+01:00>
- @_**davidtwco** office hours <time:2024-11-29T17:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Promote OpenHarmony targets to Tier 2 with Host Tools" [compiler-team#811](https://github.com/rust-lang/compiler-team/issues/811) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20OpenHarmony.20targets.20to.20Tier.202.20wit.E2.80.A6.20compiler-team.23811))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 2 months ago)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: about 48 days ago)
  - "Add `evex512` target feature for AVX10" [compiler-team#778](https://github.com/rust-lang/compiler-team/issues/778) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60evex512.60.20target.20feature.20for.20AVX10.20compiler-team.23778)) (last review activity: 2 months ago)
  - "Make the test cfg a userspace check-cfg" [compiler-team#785](https://github.com/rust-lang/compiler-team/issues/785) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Make.20the.20test.20cfg.20a.20userspace.20check-cfg.20compiler-team.23785)) (last review activity: about 8 days ago)
  - "Policy change around adding new unstable flags" [compiler-team#787](https://github.com/rust-lang/compiler-team/issues/787) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.20change.20around.20adding.20new.20unstable.20.E2.80.A6.20compiler-team.23787)) (last review activity: about 41 days ago)
  - "Normalize FileCheck directives" [compiler-team#789](https://github.com/rust-lang/compiler-team/issues/789) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Normalize.20FileCheck.20directives.20compiler-team.23789)) (last review activity: about 41 days ago)
  - "Relink, don't rebuild" [compiler-team#790](https://github.com/rust-lang/compiler-team/issues/790) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relink.2C.20don.27t.20rebuild.20compiler-team.23790)) (last review activity: about 41 days ago)
  - "Create an avr-unknown-none target" [compiler-team#800](https://github.com/rust-lang/compiler-team/issues/800) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20an.20avr-unknown-unknown.20target.20compiler-team.23800)) (last review activity: about 19 days ago)
- Pending FCP requests (check your boxes!)
  - "sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets" [rust#123617](https://github.com/rust-lang/rust/pull/123617)
- Things in FCP (make sure you're good with it)
  - "Unstable flag to choose Emscripten unwinding abi" [compiler-team#801](https://github.com/rust-lang/compiler-team/issues/801) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Unstable.20flag.20to.20choose.20Emscripten.20unwind.E2.80.A6.20compiler-team.23801))
  - "Delete current polymorphization implementation" [compiler-team#810](https://github.com/rust-lang/compiler-team/issues/810) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Delete.20current.20polymorphization.20implement.E2.80.A6.20compiler-team.23810))
  - "Lint on combining `#[no_mangle]` and `#[export_name]`" [rust#131558](https://github.com/rust-lang/rust/pull/131558)
- Accepted MCPs
  - "Support for a new `wasm32-wali-linux-musl` Tier-3 target" [compiler-team#797](https://github.com/rust-lang/compiler-team/issues/797) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Support.20for.20a.20new.20.60wasm32-linux-musl.60.20Tie.E2.80.A6.20compiler-team.23797))
  - "Promote powerpc64le-unknown-linux-musl to tier 2" [compiler-team#803](https://github.com/rust-lang/compiler-team/issues/803) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20powerpc64le-unknown-linux-musl.20to.E2.80.A6.20compiler-team.23803))
  - "Allow users to specify the TLS dialect (Traditional TLS vs. TLSDESC)" [compiler-team#805](https://github.com/rust-lang/compiler-team/issues/805) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20users.20to.20specify.20the.20TLS.20dialect.20.28T.E2.80.A6.20compiler-team.23805))
  - "Ban field-projecting into `[rustc_layout_scalar_valid_range_*]` types" [compiler-team#807](https://github.com/rust-lang/compiler-team/issues/807) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Ban.20field-projecting.20into.20.60.5Brustc_layout_.E2.80.A6.20compiler-team.23807))
  - "Forbid disabling SSE on x86 targets that have SSE in their "baseline"" [compiler-team#808](https://github.com/rust-lang/compiler-team/issues/808) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Forbid.20disabling.20SSE.20on.20x86.20targets.20that.20.E2.80.A6.20compiler-team.23808))
- MCPs blocked on unresolved concerns
  - "New Tier-3 target proposal: `loongarch64-linux-android`" [compiler-team#806](https://github.com/rust-lang/compiler-team/issues/806) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/New.20Tier-3.20target.20proposal.3A.20.60loongarch64-.E2.80.A6.20compiler-team.23806))
    - concern: [unsupported-architecture](https://github.com/rust-lang/compiler-team/issues/806#issuecomment-2489820226)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
- Finalized FCPs (disposition merge)
  - "Add `--print host-tuple` to print host target tuple" [rust#125579](https://github.com/rust-lang/rust/pull/125579)
  - "make unsupported_calling_conventions a hard error" [rust#129935](https://github.com/rust-lang/rust/pull/129935)
  - "Fix ICE when passing DefId-creating args to legacy_const_generics." [rust#130443](https://github.com/rust-lang/rust/pull/130443)
  - "Stabilize WebAssembly `multivalue`, `reference-types`, and `tail-call` target features" [rust#131080](https://github.com/rust-lang/rust/pull/131080)
- Other teams finalized FCPs
  - "Fixup Windows verbatim paths when used with the `include!` macro" [rust#125205](https://github.com/rust-lang/rust/pull/125205)
  - "Allow dropping `dyn Trait` principal" [rust#126660](https://github.com/rust-lang/rust/pull/126660)
  - "atomics: allow atomic and non-atomic reads to race" [rust#128778](https://github.com/rust-lang/rust/pull/128778)
  - "Lint against getting pointers from immediately dropped temporaries" [rust#128985](https://github.com/rust-lang/rust/pull/128985)
  - "Do not consider match/let/ref of place that evaluates to `!` to diverge, disallow coercions from them too" [rust#129392](https://github.com/rust-lang/rust/pull/129392)
  - "Make deprecated_cfg_attr_crate_type_name a hard error" [rust#129670](https://github.com/rust-lang/rust/pull/129670)
  - "Stabilize expr_2021 fragment specifier in all editions" [rust#129972](https://github.com/rust-lang/rust/pull/129972)
  - "Check elaborated projections from dyn don't mention unconstrained late bound lifetimes" [rust#130367](https://github.com/rust-lang/rust/pull/130367)
  - "Finish stabilization of `result_ffi_guarantees`" [rust#130628](https://github.com/rust-lang/rust/pull/130628)
  - "Stabilize const `ptr::write*` and `mem::replace`" [rust#130954](https://github.com/rust-lang/rust/pull/130954)
  - "Stabilize s390x inline assembly" [rust#131258](https://github.com/rust-lang/rust/pull/131258)
  - "Stabilize Arm64EC inline assembly" [rust#131781](https://github.com/rust-lang/rust/pull/131781)
  - "mark is_val_statically_known intrinsic as stably const-callable" [rust#132449](https://github.com/rust-lang/rust/pull/132449)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta:"[AIX] Add option -X32_64 to the "strip" command" [rust#133217](https://github.com/rust-lang/rust/pull/133217)
  - Authored by xingxue-ibm
  - Nominated by contributor mustartt
  - This fixes a lot of test cases on AIX and allows the strip to function properly without OBJECT_MODE=64 ([comment](https://github.com/rust-lang/rust/pull/133217#issuecomment-2499520684))
<!--
/poll Approve beta backport of #133217?
approve
decline
don't know
-->
- :beta:"Use ReadCache for archive reading in bootstrap" [rust#133462](https://github.com/rust-lang/rust/pull/133462)
  - Authored and nominated by mustartt
  - Fixes #133268, some AIX specific issues
  - Speeds up the boostrap for 1.84 builds and fixes small build error ([comment](https://github.com/rust-lang/rust/pull/133462#issuecomment-2501802541))
<!--
/poll Approve beta backport of #133462?
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
- "Add a tidy rule forbidding modules named `build`" [rust#133404](https://github.com/rust-lang/rust/pull/133404)
  - FIY for T-compiler, discussion in progress [on Zulip](https://rust-lang.zulipchat.com/#narrow/channel/326414-t-infra.2Fbootstrap/topic/The.20.60build.2F.60.20ignore.20rule)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [59 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [39 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 5 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 33 P-high, 100 P-medium, 17 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- None

## Performance logs

> [triage logs for 2024-11-26](https://github.com/Kobzol/rustc-perf/blob/556db980efa8c8553fe92ce64f04db372b0c7d61/triage/2024-11-26.md)

This week saw more regressions than improvements, mostly due to three PRs that performed internal
refactorings that are necessary for further development and modification of the compiler.

Triage done by **@kobzol**.
Revision range: [7d40450b..7db7489f](https://perf.rust-lang.org/?start=7d40450b2df92bdc9dec414b30cf5f7a5979a92e&end=7db7489f9bc274cb60c4956bfa56de0185eb1b9b&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.1%, 3.6%]   | 57    |
| Regressions (secondary)  | 0.6%  | [0.0%, 2.7%]   | 100   |
| Improvements (primary)   | -0.5% | [-1.5%, -0.2%] | 11    |
| Improvements (secondary) | -0.4% | [-0.5%, -0.3%] | 7     |
| All  (primary)           | 0.4%  | [-1.5%, 3.6%]  | 68    |


4 Regressions, 2 Improvements, 3 Mixed; 3 of them in rollups
40 artifact comparisons made in total

#### Regressions

Rollup of 8 pull requests [#133219](https://github.com/rust-lang/rust/pull/133219) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ee612c45f00391aff71ec0c52b7fc08fae18c711&end=875df370be806c837f58abb638329905e969ace4&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.7% | [0.2%, 1.1%] | 6     |
| Regressions (secondary)  | 0.5% | [0.3%, 1.2%] | 13    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.7% | [0.2%, 1.1%] | 6     |

- The regressions were on the helloworld benchmark and other tiny crates, and they were reverted
in a follow-up merge commit.
- Marked as triaged.

continue `ParamEnv` to `TypingEnv` transition [#133212](https://github.com/rust-lang/rust/pull/133212) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=bcfea1f8d253fd43eab36832fa601d192ac603d5&end=70e814bd9e532a302763f870c665c5af59c2b632&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.4% | [0.3%, 0.5%] | 5     |
| Regressions (secondary)  | 2.1% | [0.1%, 6.6%] | 12    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.4% | [0.3%, 0.5%] | 5     |

- Regressions caused by internal refactoring of the type system that is necessary for further
improvements.
- Asked the PR author about the perf. effect of this PR and also
of [#133242](https://github.com/rust-lang/rust/pull/133242) (mentioned below).
- Not marking as triaged.

Rollup of 5 pull requests [#133280](https://github.com/rust-lang/rust/pull/133280) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=318f96a8cf3eca5c4aaf60a992f349bce5c3fd41&end=0b1bf71a71c2a1d34c212285362530ec2c4e4775&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.2%, 0.4%] | 7     |
| Regressions (secondary)  | 2.0% | [2.0%, 2.0%] | 1     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.2%, 0.4%] | 7     |

- The secondary regression is noise.
- The primary regressions look to be genuine, but they are only on a single benchmark and they are
very small, so I don't think that further investigation is needed.
- Marked as triaged.

finish `Reveal` removal [#133242](https://github.com/rust-lang/rust/pull/133242) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=826b673412d2f579e7865b6f26bc9771c6d3b097&end=386a7c7ae22a3727c6a06633212d5a95edabdd74&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.7% | [0.2%, 3.6%] | 11    |
| Regressions (secondary)  | 0.3% | [0.2%, 0.4%] | 24    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.7% | [0.2%, 3.6%] | 11    |

- Similar situation as in [#133212](https://github.com/rust-lang/rust/pull/133212).
- Not marking as triaged.

#### Improvements

Resolve tweaks [#132761](https://github.com/rust-lang/rust/pull/132761) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=78993684f2ba22082197d63627f3e91069911839&end=ee612c45f00391aff71ec0c52b7fc08fae18c711&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.6%, -0.1%] | 68    |
| Improvements (secondary) | -1.1% | [-1.1%, -1.1%] | 1     |
| All  (primary)           | -0.3% | [-0.6%, -0.1%] | 68    |


Drop debug info instead of panicking if we exceed LLVM's capability to represent it [#133194](https://github.com/rust-lang/rust/pull/133194) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=875df370be806c837f58abb638329905e969ace4&end=bcfea1f8d253fd43eab36832fa601d192ac603d5&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.1% | [-1.1%, -1.1%] | 2     |
| Improvements (secondary) | -0.4% | [-0.7%, -0.4%] | 8     |
| All  (primary)           | -1.1% | [-1.1%, -1.1%] | 2     |


#### Mixed

Rollup of 5 pull requests [#133234](https://github.com/rust-lang/rust/pull/133234) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=70e814bd9e532a302763f870c665c5af59c2b632&end=fda68927475070696fcc9d1f5c9c990f0e1af87a&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 2.2%  | [0.2%, 5.5%]   | 8     |
| Regressions (secondary)  | 0.8%  | [0.8%, 0.8%]   | 1     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -5.9% | [-5.9%, -5.9%] | 1     |
| All  (primary)           | 2.2%  | [0.2%, 5.5%]   | 8     |

- The regression was caused by [#132732](https://github.com/rust-lang/rust/pull/132732).
- Asked the PR author if there is a way to reduce the compilation performance cost.
- Not marking as triaged.

Reduce false positives of tail-expr-drop-order from consumed values (attempt #2) [#131326](https://github.com/rust-lang/rust/pull/131326) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a1f299953656f95004c69b24ad8071d6899fa9da&end=3fee0f12e4f595948f8f54f57c8b7a7a58127124&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 1     |
| Regressions (secondary)  | 0.5%  | [0.2%, 2.3%]   | 15    |
| Improvements (primary)   | -0.7% | [-2.2%, -0.2%] | 19    |
| Improvements (secondary) | -0.6% | [-1.0%, -0.3%] | 8     |
| All  (primary)           | -0.7% | [-2.2%, 0.2%]  | 20    |

- This was a win on primary benchmarks.
- Marked as triaged.

#124141 preliminaries [#132629](https://github.com/rust-lang/rust/pull/132629) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0b1bf71a71c2a1d34c212285362530ec2c4e4775&end=717f5df2c308dfb4b7b8e6c002c11fe8269c4011&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.1%, 0.3%]   | 29    |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.4%]   | 16    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.4% | [-0.5%, -0.3%] | 5     |
| All  (primary)           | 0.2%  | [0.1%, 0.3%]   | 29    |

- The regressions are caused by changes in the parser that are required for further cleanup and
refactoring work.
- The regressions are genuine, but tiny. The author has deemed them to be unavoidable.
- Already marked as triaged by @nnethercote.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Lint on combining `#[no_mangle]` and `#[export_name]`" [rust#131558](https://github.com/rust-lang/rust/pull/131558)
  - Was nominated for a vibe check from T-compiler ([link](https://github.com/rust-lang/rust/pull/131558#issuecomment-2413788471)) but since then it made into final-comment-period so here we're fine
- "Lock Major Change Proposal issue" [triagebot#1858](https://github.com/rust-lang/triagebot/pull/1858)
  - proposal by @**Urgau**, [Zulip thread](https://rust-lang.zulipchat.com/#narrow/channel/131828-t-compiler/topic/Lock.20discussions.20on.20MCPs), authored [the triagebot patch](https://github.com/rust-lang/triagebot/pull/1858)
  - Automatically lock Major Change Proposal issues to comments
  - Goal is to enforce discussions on Zulip
  - Team members with write access (and bots) can still comment

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "add error message for c# style named arguments" [rust#118733](https://github.com/rust-lang/rust/pull/118733) (last review activity: 11 months ago)
  - cc: @**Esteban Küber**
- "link libunwind dynamically and allow controlling it via `crt-static` on gnullvm targets" [rust#122003](https://github.com/rust-lang/rust/pull/122003) (last review activity: 8 months ago)
  - cc: @**Vadim Petrochenkov**
- "Require `type_map::stub` callers to supply file information" [rust#104342](https://github.com/rust-lang/rust/pull/104342) (last review activity: 8 months ago)
  - cc @**Sparrow Li**
- "Silence errors in expressions caused by bare traits in paths in 2021 edition" [rust#125784](https://github.com/rust-lang/rust/pull/125784) (last review activity: 5 months ago)
  - cc: @**Esteban Küber** for a rebase then cc: @_**León Orell Liehr (fmease)**
- "Support target-spec json file extension in various cases" [rust#127389](https://github.com/rust-lang/rust/pull/127389) (last review activity: 4 months ago)
  - cc: @**Wesley Wiser** last time ([comments](https://rust-lang.zulipchat.com/#narrow/channel/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202024-10-31/near/479897101)) we mentioned to maybe open an MCP and run a vibe check
  - do we perhaps want to ask the author to draft such a proposal?

Next meetings' agenda draft: [hackmd link](https://hackmd.io/y41E-EkQQW2kpkhEy5vTbA)
