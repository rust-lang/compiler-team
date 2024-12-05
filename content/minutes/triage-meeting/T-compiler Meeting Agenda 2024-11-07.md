---
tags: weekly, rustc
type: docs
note_id: OlXkNzCFSpW9wjvvo8bSAw
---

# T-compiler Meeting Agenda 2024-11-07

## Announcements

- Steering meeting: planning tomorrow at <time:2024-11-08T09:00:00-06:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- Types Team: ITE (Impl Trait Everywhere) Triage <time:2024-11-07T22:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Unstable flag to choose Emscripten unwinding abi" [compiler-team#801](https://github.com/rust-lang/compiler-team/issues/801) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Unstable.20flag.20to.20choose.20Emscripten.20unwind.E2.80.A6.20compiler-team.23801))
  - "Allow users to specify the TLS dialect (Traditional TLS vs. TLSDESC)" [compiler-team#805](https://github.com/rust-lang/compiler-team/issues/805) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Allow.20users.20to.20specify.20the.20TLS.20dialect.20.28T.E2.80.A6.20compiler-team.23805))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: about 49 days ago)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: about 27 days ago)
  - "Add `evex512` target feature for AVX10" [compiler-team#778](https://github.com/rust-lang/compiler-team/issues/778) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60evex512.60.20target.20feature.20for.20AVX10.20compiler-team.23778)) (last review activity: 2 months ago)
  - "Make the test cfg a userspace check-cfg" [compiler-team#785](https://github.com/rust-lang/compiler-team/issues/785) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Make.20the.20test.20cfg.20a.20userspace.20check-cfg.20compiler-team.23785)) (last review activity: about 14 days ago)
  - "Policy change around adding new unstable flags" [compiler-team#787](https://github.com/rust-lang/compiler-team/issues/787) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.20change.20around.20adding.20new.20unstable.20.E2.80.A6.20compiler-team.23787)) (last review activity: about 20 days ago)
  - "Normalize FileCheck directives" [compiler-team#789](https://github.com/rust-lang/compiler-team/issues/789) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Normalize.20FileCheck.20directives.20compiler-team.23789)) (last review activity: about 20 days ago)
  - "Relink, don't rebuild" [compiler-team#790](https://github.com/rust-lang/compiler-team/issues/790) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relink.2C.20don.27t.20rebuild.20compiler-team.23790)) (last review activity: about 20 days ago)
  - "Support for a new `wasm32-linux-musl` Tier-3 target" [compiler-team#797](https://github.com/rust-lang/compiler-team/issues/797) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Support.20for.20a.20new.20.60wasm32-linux-musl.60.20Tie.E2.80.A6.20compiler-team.23797)) (last review activity: about 20 days ago)
  - "Create an avr-unknown-unknown target" [compiler-team#800](https://github.com/rust-lang/compiler-team/issues/800) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20an.20avr-unknown-unknown.20target.20compiler-team.23800)) (last review activity: about 6 days ago)
- Pending FCP requests (check your boxes!)
  - "sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets" [rust#123617](https://github.com/rust-lang/rust/pull/123617)
  - "Lint on combining `#[no_mangle]` and `#[export_name]`" [rust#131558](https://github.com/rust-lang/rust/pull/131558)
- Things in FCP (make sure you're good with it)
  - "Promote powerpc64le-unknown-linux-musl to tier 2" [compiler-team#803](https://github.com/rust-lang/compiler-team/issues/803) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20powerpc64le-unknown-linux-musl.20to.E2.80.A6.20compiler-team.23803))
  - "Fix ICE when passing DefId-creating args to legacy_const_generics." [rust#130443](https://github.com/rust-lang/rust/pull/130443)
  - "Stabilize WebAssembly `multivalue`, `reference-types`, and `tail-call` target features" [rust#131080](https://github.com/rust-lang/rust/pull/131080)
  - "Reject raw lifetime followed by `'`, like regular lifetimes do" [rust#132341](https://github.com/rust-lang/rust/pull/132341)
- Accepted MCPs
  - No new accepted proposals this time.
- MCPs blocked on unresolved concerns
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
- Finalized FCPs (disposition merge)
  - "Add `--print host-tuple` to print host target tuple" [rust#125579](https://github.com/rust-lang/rust/pull/125579)
  - "make unsupported_calling_conventions a hard error" [rust#129935](https://github.com/rust-lang/rust/pull/129935)
- Other teams finalized FCPs
  - "Add lint against function pointer comparisons" [rust#118833](https://github.com/rust-lang/rust/pull/118833)
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
  - "Decide whether blocks inside `asm` goto should default to safe" [rust#132078](https://github.com/rust-lang/rust/issues/132078)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Also treat `impl` definition parent as transparent regarding modules" [rust#132453](https://github.com/rust-lang/rust/pull/132453)
  - Authored by Urgau
  - Fixes P-low #132427, when a `const` was generated in a proc-macro
<!--
/poll Approve beta backport of #132453?
approve
decline
don't know
-->
- :beta: "Revert "Avoid nested replacement ranges" from #129346." [rust#132587](https://github.com/rust-lang/rust/pull/132587)
  - Authored by nnethercote
  - Complements #129346 (which fixes some regressions found in a crater run for 1.83, see [comment](https://github.com/rust-lang/rust/pull/132587#issuecomment-2455880992))
<!--
/poll Approve beta backport of #132587?
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

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [70 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [43 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 2 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 5 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 38 P-high, 100 P-medium, 17 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "[Regression] LLVM asserts "conflicting locations for variable" since 1.82" [rust#131944](https://github.com/rust-lang/rust/issues/131944)
  - Fedora Core 39 CI does not build anymore (uses LLVM 17)
  - Will be fixed by #132613, still in draft (unsure why)

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high stable regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-stable+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "Hang after encountering overflow errors for huge types" [rust#132673](https://github.com/rust-lang/rust/issues/132673)
  - Traits rework in #119989 seems to cause an infinite recursion in some cases (see [comment](https://github.com/rust-lang/rust/issues/132673#issuecomment-2459836923))
  - On stable since 1.78. Though the repro is quite simple, seems was not yet reported
  - Is this a P-high or can be downgraded?

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2024-11-05](https://github.com/rust-lang/rustc-perf/blob/master/triage/2024-11-05.md)

A week dominated by one large improvement and one large regression where luckily the improvement had a larger impact. The regression seems to have been caused by a newly introduced lint that might have performance issues. The improvement was in building rustc with protected visibility which reduces the number of dynamic relocations needed leading to some nice performance gains. Across a large swath of the perf suite, the compiler is on average 1% faster after this week compared to last week.

Triage done by **@rylev**.
Revision range: [c8a8c820..27e38f8f](https://perf.rust-lang.org/?start=c8a8c82035439cb2404b8f24ca0bc18209d534ca&end=27e38f8fc7efc57b75e9a763d7a0ee44822cd5f7&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.8%  | [0.1%, 2.0%]    | 80    |
| Regressions (secondary)  | 1.9%  | [0.2%, 3.4%]    | 45    |
| Improvements (primary)   | -1.9% | [-31.6%, -0.1%] | 148   |
| Improvements (secondary) | -5.1% | [-27.8%, -0.1%] | 180   |
| All  (primary)           | -1.0% | [-31.6%, 2.0%]  | 228   |


1 Regression, 1 Improvement, 5 Mixed; 3 of them in rollups
46 artifact comparisons made in total

#### Regressions

Rollup of 6 pull requests [#132326](https://github.com/rust-lang/rust/pull/132326) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e473783d90e2289b8a97575fa60d6315f0a318eb&end=1e4f10ba6476e48a42a79b9f846a2d9366525b9e&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.7% | [0.2%, 1.9%] | 104   |
| Regressions (secondary)  | 1.5% | [0.1%, 4.4%] | 68    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.7% | [0.2%, 1.9%] | 104   |
- Fairly large regression caused by https://github.com/rust-lang/rust/pull/131984.
- Most likely due to a non-performant lint being run that wasn't previously.
- Checked with the author and reviewer.


#### Improvements

Use protected visibility when building rustc with LLD [#131634](https://github.com/rust-lang/rust/pull/131634) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a8e1186e3c14a54f7a38cc1183117dc7e77f4f82&end=9fa9ef385c0aad8f5d4c8f7d92dca474367943a3&stat=instructions:u)

| (instructions:u)                   | mean  | range           | count |
|:----------------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | -     | -               | 0     |
| Regressions (secondary)  | -     | -               | 0     |
| Improvements (primary)   | -1.8% | [-31.3%, -0.1%] | 174   |
| Improvements (secondary) | -4.2% | [-27.5%, -0.2%] | 224   |
| All  (primary)                 | -1.8% | [-31.3%, -0.1%] | 174   |


#### Mixed

Rollup of 12 pull requests [#132317](https://github.com/rust-lang/rust/pull/132317) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c8a8c82035439cb2404b8f24ca0bc18209d534ca&end=2dece5bb62f234f5622a08289c5a3d1555cd7843&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.4%]   | 4     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 1     |
| Improvements (primary)   | -0.2% | [-0.4%, -0.1%] | 6     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 1     |
| All  (primary)                 | -0.0% | [-0.4%, 0.4%]  | 10    |
- Looks like a bit more time spent in LLVM? Might have been caused by a few PRs in this rollup, but the total result is a wash, so I don't think it's needed to dig deeper into this.


Rc/Arc: don't leak the allocation if drop panics [#132231](https://github.com/rust-lang/rust/pull/132231) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2dece5bb62f234f5622a08289c5a3d1555cd7843&end=e473783d90e2289b8a97575fa60d6315f0a318eb&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.6%, 0.6%]   | 1     |
| Regressions (secondary)  | 2.3%  | [1.1%, 3.5%]   | 6     |
| Improvements (primary)   | -0.9% | [-1.4%, -0.3%] | 3     |
| Improvements (secondary) | -0.4% | [-0.6%, -0.2%] | 5     |
| All  (primary)                 | -0.5% | [-1.4%, 0.6%]  | 4     |
- There probably isn't too much to be done regarding perf, all of the major regressions come from one small stress test crate.


Mark `simplify_aggregate_to_copy` mir-opt as unsound [#132356](https://github.com/rust-lang/rust/pull/132356) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=20c909ff9cdd88d33768a4ddb8952927a675b0ad&end=a0d98ff0e5b6e1f2c63fd26f68484792621b235c&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.3%, 1.9%]   | 14    |
| Regressions (secondary)  | 0.7%  | [0.2%, 2.3%]   | 16    |
| Improvements (primary)   | -0.3% | [-0.3%, -0.3%] | 1     |
| Improvements (secondary) | -0.3% | [-0.4%, -0.3%] | 5     |
| All  (primary)                 | 0.7%  | [-0.3%, 1.9%]  | 15    |
- This deactivated an unsound MIR optimization until it is fixed.


add const_panic macro to make it easier to fall back to non-formatting panic in const [#132542](https://github.com/rust-lang/rust/pull/132542) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7028d9318fadc20e5e3058d52e44d785d31a6aaa&end=e3a918ece026cec748fc64af5b4983095b46097e&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.8%  | [0.2%, 1.8%]   | 6     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.5% | [-0.9%, -0.1%] | 5     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | 0.2%  | [-0.9%, 1.8%]  | 11    |
- Looks like most of the regressions are taking longer in LLVM related queries (e.g., LLVM_module_codegen_emit_obj) which doesn't make a ton of sense to me.


Rollup of 11 pull requests [#132626](https://github.com/rust-lang/rust/pull/132626) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=96477c55bcfa7121470ed225f602c1c639aeaa18&end=27e38f8fc7efc57b75e9a763d7a0ee44822cd5f7&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.6%  | [0.5%, 0.9%]   | 7     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 2     |
| All  (primary)                 | -     | -              | 0     |
- It's not obvious to me which PR might be the culprit here and the regression is small and contained enough that I don't think it's worth investigating.

## Nominated Issues

- GSoC blog post PR needs an r+ from a team lead: <https://github.com/rust-lang/blog.rust-lang.org/pull/1419>

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "sess: stabilize `-C stack-protector=all`" [rust#121742](https://github.com/rust-lang/rust/pull/121742)
  - Unsure about current status? cc @**Wesley Wiser** do you have some context here?
- "Do not eagerly reject inference vars when trying to resolve method calls." [rust#126316](https://github.com/rust-lang/rust/pull/126316)
   - Any news cc @**lcnr** (re: talk with @_**oli**, see [comment](https://rust-lang.zulipchat.com/#narrow/channel/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202024-10-17/near/477499929))
- "Initial support for auto traits with default bounds" [rust#120706](https://github.com/rust-lang/rust/pull/120706) (last review activity: 3 months ago)
  - perhaps cc @**Michael Goulet (compiler-errors)** @**Vadim Petrochenkov** since commented (modulo a rebase)
- "Fix crate name validation" [rust#127581](https://github.com/rust-lang/rust/pull/127581) (last review activity: 3 months ago)
  - cc @**Wesley Wiser**
- "Remove -Zfuel." [rust#115293](https://github.com/rust-lang/rust/pull/115293)
  - cc @**Wesley Wiser** another one for you

Next meetings' agenda draft: [hackmd link](https://hackmd.io/QE5KGxFPS4Wdi06prp3n0A)
