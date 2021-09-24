---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2021-05-20

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- New MCPs (take a look, see if you like them!)
  - "Write text output files to stdout if options like `-o -` or `--emit asm=-` are provided" [compiler-team#431](https://github.com/rust-lang/compiler-team/issues/431)
  - "Introduce ty::WhereClause to align chalk and rustc dyn representation" [compiler-team#433](https://github.com/rust-lang/compiler-team/issues/433)
- Old MCPs (not seconded, take a look)
  - "Add different entry points for x.py" [compiler-team#396](https://github.com/rust-lang/compiler-team/issues/396)
  - "rustdoc is using rustc_ast_pretty, would it be possible to make it somewhat "stable"?" [compiler-team#403](https://github.com/rust-lang/compiler-team/issues/403)
  - "LLVM plugin support in Rust" [compiler-team#419](https://github.com/rust-lang/compiler-team/issues/419)
  - "Rename -Cllvm-args to something backend agnostic" [compiler-team#421](https://github.com/rust-lang/compiler-team/issues/421)
  - "Promote `aarch64-apple-ios-sim` to Tier 2" [compiler-team#428](https://github.com/rust-lang/compiler-team/issues/428)
- Pending FCP requests (check your boxes!)
  - No pending FCP requests this time.
- Things in FCP (make sure you're good with it)
  - "Update the existing musl targets to be dynamically linked." [compiler-team#422](https://github.com/rust-lang/compiler-team/issues/422)
  - "A --temps-dir option for specifying where the intermediate files are written" [compiler-team#423](https://github.com/rust-lang/compiler-team/issues/423)
  - "Make `TypeFolder::fold_*` return `Result`" [compiler-team#432](https://github.com/rust-lang/compiler-team/issues/432)
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - "Stabilize extended_key_value_attributes" [rust#83366](https://github.com/rust-lang/rust/pull/83366)
  - "Stabilize "RangeFrom" patterns" [rust#83918](https://github.com/rust-lang/rust/pull/83918)
  - "Uplift the invalid_atomic_ordering lint from clippy to rustc" [rust#84039](https://github.com/rust-lang/rust/pull/84039)
  - "rustdoc: Make "rust code block is empty" and "could not parse code block" warnings a lint (`INVALID_RUST_CODEBLOCKS`)" [rust#84587](https://github.com/rust-lang/rust/pull/84587)
  - "impl FromStr for proc_macro::Literal" [rust#84717](https://github.com/rust-lang/rust/pull/84717)
  - "FCP poll for ErrorKind::OutOfMemory" [rust#84916](https://github.com/rust-lang/rust/issues/84916)

### WG checkins

@*WG-rfc-2229*  by @**nikomatsakis**  @**Matthew Jasper**:
- Overall improvement to closure diagnostics: we now point to part of the source code responsible for the capture kind associated with the error message.
  - Some screenshots of diagnostics here:https://github.com/rust-lang/lang-team/issues/50

- We can now detect if the closure after enabling RFC 2229 will not meet Clone or any of the auto trait bounds and can provide migrations for it. These migrations are supported via rustfix as well.

- We can annote drop implementations with `#[rustc_insignificant_dtor]` to avoid migrating in scenarios where drop order doesn't affect semantics of the program. We intend to use this attribute to annotate the stdlib to mark certain type as safe to be Drop reorded. eg: when a string gets dropped it would not affect the behavior of rest of the program.

- We wrote an initial implementation for printing out the closure size before and after the feature. The implementation is somewhat incomplete, but was good enough for us to get some data on cargo and stdlib.
Cargo and all depensices size data: [https://docs.google.com/spreadsheets/d/1Irsj5O7HPPfomWat2jPTPdx_KPlsyYo5kRuQpNNuwsQ/edit?usp=sharing](https://docs.google.com/spreadsheets/d/1Irsj5O7HPPfomWat2jPTPdx_KPlsyYo5kRuQpNNuwsQ/edit?usp=sharing)

@*WG-rls2.0* by @**matklad**:
> No updates for this meeting

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Ensure TLS destructors run before thread joins in SGX" [rust#84409](https://github.com/rust-lang/rust/pull/84409)
  - opened by "mzohreva"
  - r'ed by @**David Tolnay** and @**Jethro**, already merged
  - A bit of context in this [comment](https://github.com/rust-lang/rust/pull/83416#discussion_r617282907)
- :beta: "Update LLVM submodule" [rust#85236](https://github.com/rust-lang/rust/pull/85236)
  - opened by @**Nikita Popov**
  - approved by @**cuviper**
  - merges recent changes from the upstream LLVM 12 branch, should also fix [rustc#84958](https://github.com/rust-lang/rust/issues/84958)
- :beta: "Fix incorrect gating of nonterminals in key-value attributes" [rust#85445](https://github.com/rust-lang/rust/pull/85445)
  - opened by @**Aaron Hill**
  - approved by @**davidtwco**
  - Fixes [rusc#85432](https://github.com/rust-lang/rust/issues/85432)
- :beta: "have on_completion record subcycles" [rust#85186](https://github.com/rust-lang/rust/pull/85186)
  - Fixes [rust#83538](https://github.com/rust-lang/rust/issues/83538), a P-high issue with the trait evaluation cache
  - approved by @**Jack Huey**
  - [comment](https://github.com/rust-lang/rust/pull/85186#issuecomment-840527579): perf comparison seems to indicate a tiny regression but the gain provided by this patch greatly make it worth
  - nominated by @**nikomatsakis** because [these incremental failures are a big problem](https://github.com/rust-lang/rust/pull/85186#issuecomment-840715095)
- :stable: "have on_completion record subcycles" [rust#85186](https://github.com/rust-lang/rust/pull/85186)
  - (above isue nominated also for stable backport)

[T-libs-impl stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-libs-impl) / [T-libs-impl beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-libs-impl)
- :beta: "remove InPlaceIterable marker from Peekable due to unsoundness" [rust#85340](https://github.com/rust-lang/rust/pull/85340)
  - opened by @**The 8472|239181**
  - approved  @**Jane Lusby**
  - perf run shows overall neutral
  - fixes a P-critical unsoundness (out of bounds access) [rust#85322](https://github.com/rust-lang/rust/issues/85322)
- No stable nominations for `T-libs-impl` this time.

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- :beta: "rustdoc: Call `initSidebarItems` in root module of crate" [rust#85304](https://github.com/rust-lang/rust/pull/85304)
  - opened by @**Stu**
  - approved by @**jsha**
  - Fixes [rust#85301](https://github.com/rust-lang/rust/issues/85301)
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
-  "Remove unstable `--pretty` flag" [rust#83491](https://github.com/rust-lang/rust/pull/83491)

[T-libs-impl](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-libs-impl)
- No PRs waiting on `T-libs-impl` this time.

## Issues of Note

### Short Summary

- [3 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [2 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [75 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [49 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [3 P-critical, 1 P-high, 3 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 2 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [3 P-critical, 45 P-high, 85 P-medium, 11 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Unstable fingerprints - what to do on beta (and stable)" [rust#84970](https://github.com/rust-lang/rust/issues/84970)
  - issue (and related ones) is being followed
  - anything new to discuss for this tracking issue?
- "Miscompilation on ARM-M with nightly-2021-04-23" [rust#85351](https://github.com/rust-lang/rust/issues/85351)
  - regression from nightly `nightly-2021-04-23` (therefore `regression-from-stable-to-beta`) on 2 different Tier ARM targets (thumbv8m and thumbv7em)
  - issue reporter mentions that it could affect other targets
  - we don't have yet an mcve
  - in this [comment](https://github.com/rust-lang/rust/issues/85351#issuecomment-842579818) "@yroux" mention is it indeed caused by LLVM 12 and will work on a patch
- "Regression on nightly in AVX2 byte shift intrinsics" [rust#85446](https://github.com/rust-lang/rust/issues/85446)
  - Unsoundness on byteshift on x86_64
  - Seems part of the fallout from PR [rustc#83278](https://github.com/rust-lang/rust/issues/85446#issuecomment-843508538)

[T-libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-libs-impl)
- No `P-critical` issues for `T-libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
-  "Rustc beta/nightly appears to ignore `unsafe` blocks inside closure in some cases" [rust#85435](https://github.com/rust-lang/rust/issues/85435)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2021-05-18](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-05-18.md)

A lot of noise in the benchmark results this week. We are discussing ([zulip archive](https://zulip-archive.rust-lang.org/247081tcompilerperformance/06104coercionsdebugnoise.html), [live zulip](https://rust-lang.zulipchat.com/#narrow/stream/247081-t-compiler.2Fperformance/topic/coercions-debug.20noise)) how best to update the benchmark set to eliminate the noisy cases that are bouncing around. Beyond that, some large improvements to a few individual benchmarks.

The memory usage ([max-rss](https://perf.rust-lang.org/?start=2021-05-11&end=2021-05-18&absolute=true&stat=max-rss)) seemed largely flat. Except for an upward trend on `tuple-stess` that indicates 4% more memory from a week ago.

Triage done by **@pnkfelix**.

5 Regressions, 7 Improvements, 2 Mixed
1 of them in rollups

#### Regressions

Reachable statics have reachable initializers [#84549](https://github.com/rust-lang/rust/issues/84549)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=747a5d2a5d6693f5e9426524b0dab34eb1587377&end=f8e1e9238077a829ce1ac0cc1f2c7e0eaa4e679d&stat=instructions:u) (up to 1.4% on `incr-unchanged` builds of `ctfe-stress-4-opt`)
- `ctfe-stress-4-debug` also saw a 1.2% regression in its `incr-unchanged` builds.
- Other benchmarks were not significantly impacted.
- The two regressions were [anticipated](https://github.com/rust-lang/rust/pull/84549#issuecomment-832760519) from a perf run on the PR itself.

#### Improvements (summary)

- have on_completion record subcycles [#85186](https://github.com/rust-lang/rust/issues/85186)
- Store VariantIdx to distinguish enum variants [#85195](https://github.com/rust-lang/rust/issues/85195)
- Do not allocate or unwind after fork [#81858](https://github.com/rust-lang/rust/issues/81858)

#### Mixed

BTree: no longer copy keys and values before dropping them [#84904](https://github.com/rust-lang/rust/issues/84904)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=ba8d7e2cb7cfc87070585c17cd0aa4ae7f091a08&end=5c029265465301fe9cb3960ce2a5da6c99b8dcf2&stat=instructions:u) (up to -1.2% on `incr-unchanged` builds of `ctfe-stress-4-check` and `ctfe-stress-4-opt` and `ctfe-stress-4-debug`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=ba8d7e2cb7cfc87070585c17cd0aa4ae7f091a08&end=5c029265465301fe9cb3960ce2a5da6c99b8dcf2&stat=instructions:u) (up to 1.2% on `incr-patched: println` builds of `cargo-opt`)
- These changes were [anticipated](https://github.com/rust-lang/rust/pull/84904#issuecomment-837892302) from a perf run on the PR itself.

rustc_codegen_ssa: only create backend `BasicBlock`s as-needed. [#84993](https://github.com/rust-lang/rust/issues/84993)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=fe72845f7bb6a77b9e671e6a4f32fe714962cec4&end=a55748ffe94e71f841c7b1d752779b0db138b342&stat=instructions:u) (up to -4.3% on `full` builds of `syn-opt`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=fe72845f7bb6a77b9e671e6a4f32fe714962cec4&end=a55748ffe94e71f841c7b1d752779b0db138b342&stat=instructions:u) (up to 1.8% on `full` builds of `deeply-nested-async-check`)
- The improvement to `syn-opt` was [anticipated](https://github.com/rust-lang/rust/pull/84993#issuecomment-841687503) from perf runs on the PR itself.
- The regression on `deeply-nested-async-check` was not predicted by that run.

#### Suspicious Noise (summary)

##### coercions

- rustc_driver cleanup [#83610](https://github.com/rust-lang/rust/issues/83610)
- Add auto traits and clone trait migrations for RFC2229 [#84730](https://github.com/rust-lang/rust/issues/84730)
- Provide ExitStatusError [#82973](https://github.com/rust-lang/rust/issues/82973)
- Fix `--remap-path-prefix` not correctly remapping `rust-src` component paths and unify handling of path mapping with virtualized paths [#83813](https://github.com/rust-lang/rust/issues/83813)
- Rollup of 5 pull requests [#85231](https://github.com/rust-lang/rust/issues/85231)
- Rollup of 8 pull requests [#85414](https://github.com/rust-lang/rust/issues/85414)

##### html5ever

- Add support for const operands and options to global_asm! [#84107](https://github.com/rust-lang/rust/issues/84107)
- Update cc crate [#85190](https://github.com/rust-lang/rust/issues/85190)

#### Nags requiring follow up

- Double-check whether regression to `deeply-nested-async-check` from [#84993](https://github.com/rust-lang/rust/issues/84993) is noise or something real.
- Look into the 4% `tuple-stress` regression. The first seems like gradual creep, plus a 3% jump that seems to be associated with [#84571](https://github.com/rust-lang/rust/pull/84571), "Parse unnamed fields of struct and union type." (Perhaps its inherent given the nature of that microbenchmark, but some other benchmarks also had their [memory usage impacted](https://perf.rust-lang.org/compare.html?start=44ec846f4ea68ffa6d06e7d68f078bd3cc59d4ec&end=9964284fed181676300aad693449f5b751e35ff2&stat=max-rss).

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "ICE: unwrap none error in compiler\rustc_mir\src\monomorphize\collector.rs" [rust#85447](https://github.com/rust-lang/rust/issues/85447)
  - opened by "kocsis1david"
  - ICE on nightly 2021-05-09 on target `x86_64-pc-windows-msvc`, latest working version was stable 1.51
  - [bisection comment](https://github.com/rust-lang/rust/issues/85447#issuecomment-843614853) seems to point to [#81172](https://github.com/rust-lang/rust/pull/81172)
  - comment: It seems that this only occurs if the crate-type is `lib`. Even if I remove a `pub`, it can compile successfully.
  - @**Simon Sapin** did [some reduction and investigation](https://github.com/rust-lang/rust/issues/85447#issuecomment-843879967), asks for a bit more insights from someone more familiar with the compiler internals
- "error: internal compiler error: unexpected panic: Failed to get crate data for crate21" [#85386](https://github.com/rust-lang/rust/issues/85386)
  - opened by "T0mstone"
  - ICE on stable 1.52.1, beta 1.53.0-beta.2 and nightly 1.54
  - issue only occurs when compiling for `wasm32-unknown-unknown`
  - A reduction is provided [in this comment](https://github.com/rust-lang/rust/issues/85386#issuecomment-842457820)
  - [comment](https://github.com/rust-lang/rust/issues/85386#issuecomment-842487936): adding a call to `extern crate proc_macros` makes the issue disappear
  - perhaps related to [#56935](https://github.com/rust-lang/rust/issues/56935)?
  - Question: would it be useful to have someone closer to the target `wasm32-unknown-unknown` evaliate this issue? We're not sure of its impact (maybe a P-high?)

[T-libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-libs-impl)
- No nominated issues for `T-libs-impl` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.
