---
tags: weekly, rustc
type: docs
note_id: y41E-EkQQW2kpkhEy5vTbA
---

# T-compiler Meeting Agenda 2024-12-05

## Announcements

- The annual State of Rust survey has just been published ([blog post](https://blog.rust-lang.org/2024/12/05/annual-survey-2024-launch.html)): please share, boost, toot, tweet, and don't forget to fill it up :-)
- Tomorrow design meeting about `type_id` collisions ([compiler-team#774](https://github.com/rust-lang/rust/issues/131229)) <time:2024-12-06T09:00:00-06:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- @_**davidtwco** office hours <time:2024-12-05T17:00:00+01:00>
- Stable MIR Weekly Meeting <time:2024-12-06T17:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 2 months ago)
    - cc:'ing @**Vadim Petrochenkov** @**Esteban Küber** @**oli** (in case they have comments)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: about 53 days ago)
  - "Make the test cfg a userspace check-cfg" [compiler-team#785](https://github.com/rust-lang/compiler-team/issues/785) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Make.20the.20test.20cfg.20a.20userspace.20check-cfg.20compiler-team.23785)) (last review activity: about 0 days ago)
    - bumping this one, few missing ticks: c @**Wesley Wiser** @**pnkfelix** @**Esteban Küber** @**cjgillot**
  - "Policy change around adding new unstable flags" [compiler-team#787](https://github.com/rust-lang/compiler-team/issues/787) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.20change.20around.20adding.20new.20unstable.20.E2.80.A6.20compiler-team.23787)) (last review activity: about 46 days ago)
  - "Normalize FileCheck directives" [compiler-team#789](https://github.com/rust-lang/compiler-team/issues/789) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Normalize.20FileCheck.20directives.20compiler-team.23789)) (last review activity: about 46 days ago)
    - any opinion from the team?
  - "Relink, don't rebuild" [compiler-team#790](https://github.com/rust-lang/compiler-team/issues/790) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relink.2C.20don.27t.20rebuild.20compiler-team.23790)) (last review activity: about 46 days ago)
  - "Create an avr-unknown-none target" [compiler-team#800](https://github.com/rust-lang/compiler-team/issues/800) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20an.20avr-unknown-unknown.20target.20compiler-team.23800)) (last review activity: about 24 days ago)
    - any opposing opinion or comment to this?
- Pending FCP requests (check your boxes!)
  - "sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets" [rust#123617](https://github.com/rust-lang/rust/pull/123617)
- Things in FCP (make sure you're good with it)
  - "Promote OpenHarmony targets to Tier 2 with Host Tools" [compiler-team#811](https://github.com/rust-lang/compiler-team/issues/811) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20OpenHarmony.20targets.20to.20Tier.202.20wit.E2.80.A6.20compiler-team.23811))
  - "Lint on combining `#[no_mangle]` and `#[export_name]`" [rust#131558](https://github.com/rust-lang/rust/pull/131558)
- Accepted MCPs
  - "Support for a new `wasm32-wali-linux-musl` Tier-3 target" [compiler-team#797](https://github.com/rust-lang/compiler-team/issues/797) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Support.20for.20a.20new.20.60wasm32-linux-musl.60.20Tie.E2.80.A6.20compiler-team.23797))
  - "Unstable flag to choose Emscripten unwinding abi" [compiler-team#801](https://github.com/rust-lang/compiler-team/issues/801) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Unstable.20flag.20to.20choose.20Emscripten.20unwind.E2.80.A6.20compiler-team.23801))
  - "Promote powerpc64le-unknown-linux-musl to tier 2" [compiler-team#803](https://github.com/rust-lang/compiler-team/issues/803) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20powerpc64le-unknown-linux-musl.20to.E2.80.A6.20compiler-team.23803))
  - "Allow users to specify the TLS dialect (Traditional TLS vs. TLSDESC)" [compiler-team#805](https://github.com/rust-lang/compiler-team/issues/805) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20users.20to.20specify.20the.20TLS.20dialect.20.28T.E2.80.A6.20compiler-team.23805))
  - "Ban field-projecting into `[rustc_layout_scalar_valid_range_*]` types" [compiler-team#807](https://github.com/rust-lang/compiler-team/issues/807) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Ban.20field-projecting.20into.20.60.5Brustc_layout_.E2.80.A6.20compiler-team.23807))
  - "Forbid disabling SSE on x86 targets that have SSE in their "baseline"" [compiler-team#808](https://github.com/rust-lang/compiler-team/issues/808) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Forbid.20disabling.20SSE.20on.20x86.20targets.20that.20.E2.80.A6.20compiler-team.23808))
  - "Delete current polymorphization implementation" [compiler-team#810](https://github.com/rust-lang/compiler-team/issues/810) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Delete.20current.20polymorphization.20implement.E2.80.A6.20compiler-team.23810))
- MCPs blocked on unresolved concerns
  - "Add `evex512` target feature for AVX10" [compiler-team#778](https://github.com/rust-lang/compiler-team/issues/778) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60evex512.60.20target.20feature.20for.20AVX10.20compiler-team.23778)) (last review activity: 2 months ago)
    - concern: [design-around-naming-scheme](https://github.com/rust-lang/compiler-team/issues/778#issuecomment-2514307904)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
- Finalized FCPs (disposition merge)
  - "Add `--print host-tuple` to print host target tuple" [rust#125579](https://github.com/rust-lang/rust/pull/125579)
  - "make unsupported_calling_conventions a hard error" [rust#129935](https://github.com/rust-lang/rust/pull/129935)
  - "Fix ICE when passing DefId-creating args to legacy_const_generics." [rust#130443](https://github.com/rust-lang/rust/pull/130443)
  - "Stabilize WebAssembly `multivalue`, `reference-types`, and `tail-call` target features" [rust#131080](https://github.com/rust-lang/rust/pull/131080)
- Other teams finalized FCPs
  - "Add lint against function pointer comparisons" [rust#118833](https://github.com/rust-lang/rust/pull/118833)
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
  - "Stabilize `#[diagnostic::do_not_recommend]`" [rust#132056](https://github.com/rust-lang/rust/pull/132056)
  - "Make missing_abi lint warn-by-default." [rust#132397](https://github.com/rust-lang/rust/pull/132397)
  - "mark is_val_statically_known intrinsic as stably const-callable" [rust#132449](https://github.com/rust-lang/rust/pull/132449)
  - "Stabilize async closures (RFC 3668)" [rust#132706](https://github.com/rust-lang/rust/pull/132706)

### WG checkins

None

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Update LLVM to 19.1.5" [rust#133799](https://github.com/rust-lang/rust/pull/133799)
  - Authored by DianQK
  - Fixes #133276 (miscompile specific to `loongarch64` arch, tier 2 target) and #133203 (a more interesting invalid LLVM IR crashing rustc on stable)
<!--
/poll Approve beta backport of #133799?
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
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [59 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [37 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 0 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
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
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2024-12-03](https://github.com/rylev/rustc-perf/blob/perf-2024-12-03/triage/2024-12-03.md)

Busy week with more PRs impacting performance than is typical. Luckily performance improvements outweighed regressions in real world benchmarks with the largest single performance gain coming from a change to no longer unconditionally do LLVM IR verification in debug builds which was just wasted work.

Triage done by **@rylev**.
Revision range: [7db7489f..490b2cc0](https://perf.rust-lang.org/?start=7db7489f9bc274cb60c4956bfa56de0185eb1b9b&end=490b2cc09860dd62a7595bb07364d71c12ce4e60&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.2%, 1.9%]   | 58    |
| Regressions (secondary)  | 1.1%  | [0.2%, 5.1%]   | 85    |
| Improvements (primary)   | -2.3% | [-8.2%, -0.2%] | 116   |
| Improvements (secondary) | -2.5% | [-8.9%, -0.1%] | 55    |
| All  (primary)           | -1.4% | [-8.2%, 1.9%]  | 174   |


6 Regressions, 6 Improvements, 5 Mixed; 5 of them in rollups
49 artifact comparisons made in total

#### Regressions

Rollup of 5 pull requests [#133551](https://github.com/rust-lang/rust/pull/133551) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=66adeaf46b7a646daeed29518ef76235fcdb9726&end=eddb717281a9031f645d88dd3b8323a7e25632cc&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.4% | [0.2%, 1.6%] | 20    |
| Regressions (secondary)  | 2.4% | [0.3%, 4.8%] | 22    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.4% | [0.2%, 1.6%] | 20    |


Rollup of 12 pull requests [#133561](https://github.com/rust-lang/rust/pull/133561) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=eddb717281a9031f645d88dd3b8323a7e25632cc&end=f005c7437def424a1c43cbc380352a58d8ac920b&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.2% | [0.1%, 0.3%] | 3     |
| Regressions (secondary)  | 0.6% | [0.2%, 0.9%] | 10    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.2% | [0.1%, 0.3%] | 3     |
- The regressions in the primary benchmarks reverted back to their previous mean after a few PRs so I don't think this is necessarily worth looking further into.


Remove `HybridBitSet` [#133431](https://github.com/rust-lang/rust/pull/133431) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=cb2bd2bb06380896368b0edb02ada0117cc856be&end=5bbbc0938cfeb3dbd348d5258ddb6025bc8398c7&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.2% | [0.1%, 0.2%] | 6     |
| Regressions (secondary)  | 0.2% | [0.1%, 0.3%] | 9     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.2% | [0.1%, 0.2%] | 6     |
- Post merge perf results are a bit different from the pre-merge run, but they look similar enough that this doesn't require more investigation.


Rollup of 6 pull requests [#133659](https://github.com/rust-lang/rust/pull/133659) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e93e096cc88728337fb41ff74431ebe71a1b4663&end=f981b2e27a7505468fac637ee67faef81b57fec0&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.4% | [0.3%, 0.4%] | 2     |
| Regressions (secondary)  | 0.3% | [0.3%, 0.3%] | 1     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.4% | [0.3%, 0.4%] | 2     |
- Perf regressions are small enough that I don't think this requires investigation especially considering that one of the primary regressions returned to its previous state a bit later on.


Make `compare_impl_item` into a query [#133365](https://github.com/rust-lang/rust/pull/133365) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7442931d49b199ad0a1cc0f8ca54e327b5139b66&end=4af7fa79a0e829c0edcc93434a8c788be8ec58c6&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.2%, 0.5%] | 27    |
| Regressions (secondary)  | 0.4% | [0.3%, 1.3%] | 7     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.3% | [0.2%, 0.5%] | 27    |
- Perf regressions were excused [here](https://github.com/rust-lang/rust/pull/133365#issuecomment-2495766076)


fast-reject: add depth check [#133566](https://github.com/rust-lang/rust/pull/133566) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=caa81728c37f5ccfa9a0979574b9272a67f8a286&end=bd36e69d2533ee750e2d805915b8ca88d2825e0f&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.5% | [0.4%, 0.7%] | 13    |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.5% | [0.4%, 0.7%] | 13    |
- "Only a small regression, multiple strategies were tried here and in other PRs to get to this result — and it's a necessary hit."


#### Improvements

Recover some lost performence from #132732 [#133509](https://github.com/rust-lang/rust/pull/133509) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6b6a867ae9eac4e78d041ac4ee84be1072a48cf7&end=66adeaf46b7a646daeed29518ef76235fcdb9726&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.7% | [-4.2%, -0.2%] | 8     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -1.7% | [-4.2%, -0.2%] | 8     |


Respect verify-llvm-ir option in the backend [#133499](https://github.com/rust-lang/rust/pull/133499) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4af7fa79a0e829c0edcc93434a8c788be8ec58c6&end=8ac313bdbede661669d7a7b4504b0f74d4ed9222&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -2.3% | [-8.1%, -0.2%] | 89    |
| Improvements (secondary) | -2.9% | [-9.8%, -0.3%] | 41    |
| All  (primary)                 | -2.3% | [-8.1%, -0.2%] | 89    |


Stop cloning `Context` so much [#133345](https://github.com/rust-lang/rust/pull/133345) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5e1440ae514d98ddfcbf1607acb64d41e07ef616&end=a522d78598415cdd614ccc6d961160f192f64b5c&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.5% | [-1.3%, -0.1%] | 5     |
| Improvements (secondary) | -0.8% | [-0.8%, -0.8%] | 1     |
| All  (primary)                 | -0.5% | [-1.3%, -0.1%] | 5     |


check local cache even if global is usable [#133626](https://github.com/rust-lang/rust/pull/133626) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=3bff51ea912d4dfd9caa1e3bc6f68352618208a7&end=32eea2f4460b06b12acc98050a4211b8c0ccfd67&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -2.5% | [-3.1%, -1.8%] | 2     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.2%] | 2     |
| All  (primary)                 | -2.5% | [-3.1%, -1.8%] | 2     |


Get rid of HIR const checker [#133321](https://github.com/rust-lang/rust/pull/133321) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=41cbe3e4d1ef8de310fbbd77043082960def9446&end=efdd9e802053caeb52103945df858e87f837e59a&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 1     |
| Improvements (primary)   | -0.2% | [-0.3%, -0.1%] | 12    |
| Improvements (secondary) | -0.2% | [-0.4%, -0.1%] | 28    |
| All  (primary)                 | -0.2% | [-0.3%, -0.1%] | 12    |


switch `jemalloc-sys` back to `tikv-jemalloc-sys`, and update to 0.6.0 [#133792](https://github.com/rust-lang/rust/pull/133792) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8575f8f91bbd7dca529d362afc8117db74661c3b&end=490b2cc09860dd62a7595bb07364d71c12ce4e60&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.1% | [-0.3%, -0.1%] | 30    |
| Improvements (secondary) | -0.1% | [-0.2%, -0.1%] | 8     |
| All  (primary)                 | -0.1% | [-0.3%, -0.1%] | 30    |


#### Mixed

Rollup of 12 pull requests [#133505](https://github.com/rust-lang/rust/pull/133505) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=dff3e7ccd4a18958c938136c4ccdc853fcc86194&end=dd2837ec5de4301a692e05a7c4475e980af57a57&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.7%, 0.7%]   | 1     |
| Regressions (secondary)  | 0.3%  | [0.2%, 0.4%]   | 4     |
| Improvements (primary)   | -0.2% | [-0.2%, -0.1%] | 3     |
| Improvements (secondary) | -0.3% | [-1.9%, -0.1%] | 19    |
| All  (primary)                 | 0.0%  | [-0.2%, 0.7%]  | 4     |
- The negative results are small enough (and reverted to their previous mean in a later PR) that this isn't worth investigating.


Do not unify dereferences of shared borrows in GVN [#133474](https://github.com/rust-lang/rust/pull/133474) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c322cd5c5ac13b5ef16a487c889f8c148d8e3841&end=6b6a867ae9eac4e78d041ac4ee84be1072a48cf7&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.1%, 0.6%]   | 14    |
| Regressions (secondary)  | 0.2%  | [0.1%, 0.4%]   | 10    |
| Improvements (primary)   | -1.7% | [-6.7%, -0.2%] | 9     |
| Improvements (secondary) | -0.2% | [-0.3%, -0.1%] | 6     |
| All  (primary)                 | -0.5% | [-6.7%, 0.6%]  | 23    |
- "This fixes a miscompilation due to an unsound MIR optimization which is disabled in this PR."


always create `DefId`s for anon consts [#133468](https://github.com/rust-lang/rust/pull/133468) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9b4d7c6a40b328d212095c28670c629facf1557d&end=7e565cce6a03340edb4b9f56228cf5e480e24806&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 4.2%  | [4.2%, 4.2%]   | 1     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.3%] | 1     |
| Improvements (secondary) | -0.6% | [-1.0%, -0.3%] | 9     |
| All  (primary)                 | -0.3% | [-0.3%, -0.3%] | 1     |
- "The coercions regression was noise and was fixed in the next merge"


Enable -Zshare-generics for inline(never) functions [#123244](https://github.com/rust-lang/rust/pull/123244) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a2545fd6fc66b4323f555223a860c451885d1d2b&end=d53f0b1d8e261f2f3535f1cd165c714fc0b0b298&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.1%, 5.5%]   | 58    |
| Regressions (secondary)  | 0.6%  | [0.1%, 1.6%]   | 84    |
| Improvements (primary)   | -0.7% | [-3.8%, -0.1%] | 44    |
| Improvements (secondary) | -1.6% | [-8.0%, -0.2%] | 25    |
| All  (primary)                 | -0.0% | [-3.8%, 5.5%]  | 102   |
- "Regressions remain pretty similar to what we saw before (primarily in incremental it looks like?), and bootstrap times reflect the expectation that this significantly helps with larger crate graphs where there's more opportunity for reuse. Binary size win is also pretty nice." (more context [here](https://github.com/rust-lang/rust/pull/123244#issuecomment-2156720584))


Rollup of 8 pull requests [#133694](https://github.com/rust-lang/rust/pull/133694) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8ac313bdbede661669d7a7b4504b0f74d4ed9222&end=6c76ed5503966c39381fac64eb905ac45e346695&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.1%, 0.7%]   | 6     |
| Regressions (secondary)  | 0.5%  | [0.2%, 0.7%]   | 19    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 1     |
| All  (primary)                 | 0.3%  | [0.1%, 0.7%]   | 6     |
- Most of the regressions are in doc-full scenarios, and I don't see anything that is obviously a culprit.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Discuss extending the compiler team's review policy" [compiler-team#444](https://github.com/rust-lang/compiler-team/issues/444)
  - @**Jieyou Xu** asking about the status. Could the context be reloaded, maybe update if needed and see if it's fit for merging?
  - Original [meeting proposal](https://github.com/rust-lang/compiler-team/issues/444) with motivation
  - [Current version of the policy](https://github.com/michaelwoerister/rust-forge/blob/review-policy/src/compiler/reviews.md?rgh-link-date=2021-07-20T14%3A17%3A47Z)


[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Lint against `&T` to `&mut T` and `&T` to `&UnsafeCell<T>` transmutes" [rust#128351](https://github.com/rust-lang/rust/pull/128351)
  - cc @**Wesley Wiser** I *think* this is ripe for merging
- "Improve parse item fallback" [rust#125388](https://github.com/rust-lang/rust/pull/125388) (last review activity: 6 months ago)
   - any taker for this one? Seems a little stuck. (Which area of the compiler? Diagnostics?)
- "When annotations needed, look at impls for more accurate suggestions" [rust#128653](https://github.com/rust-lang/rust/pull/128653) (last review activity: 3 months ago)
  - cc: @**Michael Goulet (compiler-errors)**
- "Add diagnostics to "while loop" and "for loop" that note that it is always determined that it might iterate zero times." [rust#126510](https://github.com/rust-lang/rust/pull/126510) (last review activity: 3 months ago)
  - cc @**Esteban Küber**
- "Apply dllimport in ThinLTO" [rust#122790](https://github.com/rust-lang/rust/pull/122790) (last review activity: 3 months ago)
   - cc @**Wesley Wiser**
- "coverage: Support match statements in branch coverage" [rust#130744](https://github.com/rust-lang/rust/pull/130744) (last review activity: 2 months ago)
  - cc: @**Zalathar** what do you think is the status here?
- "Remove allowing static_mut_refs lint" [rust#131439](https://github.com/rust-lang/rust/pull/131439) (last review activity: about 57 days ago)
  - cc: @**Michael Goulet (compiler-errors)**
- "sess: default to v0 symbol mangling" [rust#89917](https://github.com/rust-lang/rust/pull/89917)
  - Is there anyone interested in picking this up?
  - Last status comment [is here](https://github.com/rust-lang/rust/pull/89917#issuecomment-2191736827), probably still actual
- "Stabilize target_feature_11" [rust#116114](https://github.com/rust-lang/rust/pull/116114)
  - @**RalfJ** do you know the status from T-lang side? I think it was ok'ed [comment](https://github.com/rust-lang/lang-team/issues/235#issuecomment-2323914989), correct?

Next meetings' agenda draft: [hackmd link](https://hackmd.io/52nD0SaYTmyjZO7BO7aF9Q)
