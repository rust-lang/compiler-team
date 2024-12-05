---
tags: weekly, rustc
type: docs
note_id: QE5KGxFPS4Wdi06prp3n0A
---

# T-compiler Meeting Agenda 2024-11-14

## Announcements

- Rustc Dev Guide reading club session, chapters 40 to 42 on <time:2024-11-20T14:30:00-03:00>. More information #**t-compiler/wg-rustc-dev-guide>Rustc dev guide reading club**.
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- Types Team: Types Team High Bandwidth Discussions <time:2024-11-18T16:00:00+01:00>
- Compiler Team: P-high review <time:2024-11-15T09:00:00-06:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Unstable flag to choose Emscripten unwinding abi" [compiler-team#801](https://github.com/rust-lang/compiler-team/issues/801) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Unstable.20flag.20to.20choose.20Emscripten.20unwind.E2.80.A6.20compiler-team.23801))
  - "Allow users to specify the TLS dialect (Traditional TLS vs. TLSDESC)" [compiler-team#805](https://github.com/rust-lang/compiler-team/issues/805) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20users.20to.20specify.20the.20TLS.20dialect.20.28T.E2.80.A6.20compiler-team.23805))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: about 55 days ago)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: about 33 days ago)
  - "Add `evex512` target feature for AVX10" [compiler-team#778](https://github.com/rust-lang/compiler-team/issues/778) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60evex512.60.20target.20feature.20for.20AVX10.20compiler-team.23778)) (last review activity: 2 months ago)
  - "Make the test cfg a userspace check-cfg" [compiler-team#785](https://github.com/rust-lang/compiler-team/issues/785) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Make.20the.20test.20cfg.20a.20userspace.20check-cfg.20compiler-team.23785)) (last review activity: about 4 days ago)
  - "Policy change around adding new unstable flags" [compiler-team#787](https://github.com/rust-lang/compiler-team/issues/787) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.20change.20around.20adding.20new.20unstable.20.E2.80.A6.20compiler-team.23787)) (last review activity: about 27 days ago)
  - "Normalize FileCheck directives" [compiler-team#789](https://github.com/rust-lang/compiler-team/issues/789) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Normalize.20FileCheck.20directives.20compiler-team.23789)) (last review activity: about 27 days ago)
  - "Relink, don't rebuild" [compiler-team#790](https://github.com/rust-lang/compiler-team/issues/790) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relink.2C.20don.27t.20rebuild.20compiler-team.23790)) (last review activity: about 27 days ago)
  - "Support for a new `wasm32-wali-linux-musl` Tier-3 target" [compiler-team#797](https://github.com/rust-lang/compiler-team/issues/797) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Support.20for.20a.20new.20.60wasm32-linux-musl.60.20Tie.E2.80.A6.20compiler-team.23797)) (last review activity: about 0 days ago)
    - Note: this could probably be easily seconded, target name discussion already happened
  - "Create an avr-unknown-none target" [compiler-team#800](https://github.com/rust-lang/compiler-team/issues/800) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20an.20avr-unknown-unknown.20target.20compiler-team.23800)) (last review activity: about 4 days ago)
- Pending FCP requests (check your boxes!)
  - "sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets" [rust#123617](https://github.com/rust-lang/rust/pull/123617)
  - "Lint on combining `#[no_mangle]` and `#[export_name]`" [rust#131558](https://github.com/rust-lang/rust/pull/131558)
- Things in FCP (make sure you're good with it)
  - "Promote powerpc64le-unknown-linux-musl to tier 2" [compiler-team#803](https://github.com/rust-lang/compiler-team/issues/803) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20powerpc64le-unknown-linux-musl.20to.E2.80.A6.20compiler-team.23803))
- Accepted MCPs
  - No new accepted proposals this time.
- MCPs blocked on unresolved concerns
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
  - "Lint against `&T` to `&mut T` and `&T` to `&UnsafeCell<T>` transmutes" [rust#128351](https://github.com/rust-lang/rust/pull/128351)
  - "atomics: allow atomic and non-atomic reads to race" [rust#128778](https://github.com/rust-lang/rust/pull/128778)
  - "Lint against getting pointers from immediately dropped temporaries" [rust#128985](https://github.com/rust-lang/rust/pull/128985)
  - "#[inline(never)] does not work for async functions" [rust#129347](https://github.com/rust-lang/rust/issues/129347)
  - "Do not consider match/let/ref of place that evaluates to `!` to diverge, disallow coercions from them too" [rust#129392](https://github.com/rust-lang/rust/pull/129392)
  - "Make deprecated_cfg_attr_crate_type_name a hard error" [rust#129670](https://github.com/rust-lang/rust/pull/129670)
  - "Stabilize expr_2021 fragment specifier in all editions" [rust#129972](https://github.com/rust-lang/rust/pull/129972)
  - "Check elaborated projections from dyn don't mention unconstrained late bound lifetimes" [rust#130367](https://github.com/rust-lang/rust/pull/130367)
  - "Finish stabilization of `result_ffi_guarantees`" [rust#130628](https://github.com/rust-lang/rust/pull/130628)
  - "Stabilize const `ptr::write*` and `mem::replace`" [rust#130954](https://github.com/rust-lang/rust/pull/130954)
  - "Stabilize s390x inline assembly" [rust#131258](https://github.com/rust-lang/rust/pull/131258)
  - "Stabilize Arm64EC inline assembly" [rust#131781](https://github.com/rust-lang/rust/pull/131781)
  - "Decide whether blocks inside `asm` goto should default to safe" [rust#132078](https://github.com/rust-lang/rust/issues/132078)
  - "Enforce that raw lifetimes must be valid raw identifiers" [rust#132363](https://github.com/rust-lang/rust/pull/132363)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Add discriminators to DILocations when multiple functions are inlined into a single point." [rust#132613](https://github.com/rust-lang/rust/pull/132613)
  - Authored by khuey
  - Fixes #131944, rated P-critical because it broke a Fedora CI
  - Seems like nobody else reported it from happening, also see [comment](https://github.com/rust-lang/rust/pull/132613#issuecomment-2465924896)
  - Note: #132900 (ICE without a repro) was opened 3 days ago, reporter suspects being caused by #132613. Codebase is private, we didn't hear from them yet.
<!--
/poll Approve beta backport of #132613?
approve
decline
don't know
-->
- :beta: "Only disable cache if predicate has opaques within it" [rust#132625](https://github.com/rust-lang/rust/pull/132625)
  - Authored by compiler-errors
  - Improves a substancial compile time regression introduced in 1.82 (#132064)
  - we're not completely back at compile time before 1.82 (more specifically after #126024), see [comment](https://github.com/rust-lang/rust/issues/132064#issuecomment-2465947310)
<!--
/poll Approve beta backport of #132625?
approve
decline
don't know
-->
- :stable: "Only disable cache if predicate has opaques within it" [rust#132625](https://github.com/rust-lang/rust/pull/132625)
  - see above
<!--
/poll Approve stable backport of #132625?
approve
decline
don't know
yes but doesn't justify a dot releaase
-->

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
- [69 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [41 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 2 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 5 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 38 P-high, 100 P-medium, 17 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

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

> [triage logs 2024-11-11](https://github.com/rust-lang/rustc-perf/blob/master/triage/2024-11-11.md)

Regressions primarily in doc builds. No significant changes in cycle or max-rss
counts.

Triage done by **@simulacrum**.
Revision range: [27e38f8f..d4822c2d](https://perf.rust-lang.org/?start=27e38f8fc7efc57b75e9a763d7a0ee44822cd5f7&end=d4822c2d84c242cc7403118b50c571464f38ef8f&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.2%, 1.0%]   | 61    |
| Regressions (secondary)  | 0.9%  | [0.2%, 1.5%]   | 30    |
| Improvements (primary)   | -2.9% | [-5.0%, -0.6%] | 7     |
| Improvements (secondary) | -1.5% | [-5.0%, -0.2%] | 28    |
| All  (primary)           | 0.1%  | [-5.0%, 1.0%]  | 68    |

1 Regressions, 1 Improvements, 4 Mixed; 1 of them in rollups
47 artifact comparisons made in total

#### Regressions

Clean middle generics using paren sugar if trait has `#[rustc_paren_sugar]` [#132697](https://github.com/rust-lang/rust/pull/132697) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4d215e2426d52ca8d1af166d5f6b5e172afbff67&end=116fc31c5c82b7767c87101164a1afa3faea97fd&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.2% | [0.1%, 0.4%] | 8     |
| Regressions (secondary)  | 0.3% | [0.2%, 0.4%] | 16    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.2% | [0.1%, 0.4%] | 8     |

Doc-only regressions, no fix directly planned (prioritizing code clarity), but
inspired some unrelated cleanup in
https://github.com/rust-lang/rust/pull/132886.

rustdoc-search: simplify rules for generics and type params [#127589](https://github.com/rust-lang/rust/pull/127589) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=71042b4b201a432b426304f511b3169850ed8923&end=d4822c2d84c242cc7403118b50c571464f38ef8f&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.1%, 0.5%]   | 15    |
| Regressions (secondary)  | 0.4%  | [0.1%, 0.5%]   | 19    |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -2.4% | [-2.4%, -2.4%] | 1     |
| All  (primary)           | 0.2%  | [0.1%, 0.5%]   | 15    |

Doc-only regressions, likely genuine given the change.

#### Improvements

Only disable cache if predicate has opaques within it [#132625](https://github.com/rust-lang/rust/pull/132625) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8549802939cd01111c46e34a7b67cb1933977af9&end=c07aa1e17199e27f6f7ac8f3307bca7bda0084b6&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -2.7% | [-5.0%, -0.2%] | 7     |
| Improvements (secondary) | -3.0% | [-5.1%, -0.3%] | 10    |
| All  (primary)           | -2.7% | [-5.0%, -0.2%] | 7     |
- Note from @_*apiraino*: #132625 recovered most of a substancial regression introduced in #126024

#### Mixed

Add new unstable feature `const_eq_ignore_ascii_case` [#131721](https://github.com/rust-lang/rust/pull/131721) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e1fb28856267e3cbfd1ea479e666ce25d67fea29&end=279604832887abeaea0cb31c20590c43dea497ae&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.5% | [-0.7%, -0.1%] | 4     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.3% | [-0.7%, 0.2%]  | 5     |

Probably mostly luck of some kind, change itself is library-only.

Emit warning when calling/declaring functions with unavailable vectors. [#132173](https://github.com/rust-lang/rust/pull/132173) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=303fc0527aea5c7e9bbef97da926639e1ade3399&end=7660aed73d5233fdd1ff2651fc8a6acab1b61691&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.2%, 1.0%]   | 36    |
| Regressions (secondary)  | 0.6%  | [0.2%, 0.9%]   | 6     |
| Improvements (primary)   | -0.4% | [-0.4%, -0.4%] | 1     |
| Improvements (secondary) | -0.1% | [-0.1%, -0.1%] | 1     |
| All  (primary)           | 0.5%  | [-0.4%, 1.0%]  | 37    |

Regression, but a bunch of optimization work already went into it (see
https://github.com/rust-lang/rust/pull/132173#issuecomment-2466642549).

Rollup of 6 pull requests [#132831](https://github.com/rust-lang/rust/pull/132831) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7660aed73d5233fdd1ff2651fc8a6acab1b61691&end=668959740f97e7a22ae340742886d330ab63950f&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 1.4%  | [1.3%, 1.5%]   | 6     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.7% | [-1.4%, -0.2%] | 13    |
| All  (primary)           | -     | -              | 0     |

Queued up one trial build. Likely a real regression, but not necessarily worth
digging deeper given limited impact (few benchmarks).

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- None

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Allow a MIR analysis to perform the state `join` directly" [rust#114900](https://github.com/rust-lang/rust/pull/114900)
  - cc @**cjgillot** PR author added some more context. This work has been in progress since a bit. Can we get an update so that is clear what it needs to be done or - else - if we think this contribution is not needed (as hinted at [this comment](https://github.com/rust-lang/rust/pull/114900#issuecomment-1748702938))? Thanks!
  - Ref. also the Clippy patch: https://github.com/rust-lang/rust-clippy/pull/11364
- "Skip locking span interner for some syntax context checks" [rust#128197](https://github.com/rust-lang/rust/pull/128197) (last review activity: 3 months ago)
  - cc: @**davidtwco**
- "Implement a lint for implicit autoref of raw pointer dereference - take 2" [rust#123239](https://github.com/rust-lang/rust/pull/123239) (last review activity: 3 months ago)
   - cc: @**lcnr** did you have a chance to talk with @_**oli** (mentioned in [comment](https://rust-lang.zulipchat.com/#narrow/channel/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202024-10-17/near/477499929))
- "When annotations needed, look at impls for more accurate suggestions " [rust#128653](https://github.com/rust-lang/rust/pull/128653) (last review activity: 2 months ago)
  - cc: @**Michael Goulet (compiler-errors)** (afaics all your comments are addressed)
- "Improve dead code analysis for structs and traits defined locally" [rust#128637](https://github.com/rust-lang/rust/pull/128637) (last review activity: 2 months ago)
  - cc: @cjgillot

Next meeting's agenda draft: [hackmd link](https://hackmd.io/AIoQaNMuSwOQ0UCkX38lZQ)
