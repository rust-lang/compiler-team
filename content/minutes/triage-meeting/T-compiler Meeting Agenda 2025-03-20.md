---
tags: weekly, rustc
type: docs
note_id: H2h_wmgUQ2WvVXOnaXXE8A
---

# T-compiler Meeting Agenda 2025-03-20

## Announcements

- Rust dot release 1.85.1 is out ([blog post](https://blog.rust-lang.org/2025/03/18/Rust-1.85.1.html))
- @**Jieyou Xu** suggested looking into two inactive ping groups (`icebreakers-llvm` and `icebreakers-cleanup-crew`), maybe they can be removed ([Zulip thread](https://rust-lang.zulipchat.com/#narrow/channel/131828-t-compiler/topic/Are.20icebreakers-.7Bllvm.2Ccleanup-crew.7D.20still.20active.2Fused.3F/with/506907429))
  - I @**apiraino** would like like to reactivate the [ICE cleanup team](https://github.com/rust-lang/team/blob/master/teams/icebreakers-cleanup-crew.toml), after purging inactive members - it could be a valid support for bisecting ✌️
  - (FIY for the team, feel free to comment)
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- WG-async design meeting <time:2025-03-20T19:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Split `run-make` test suite into slower-building test suite with suitably-staged cargo and faster-building test suite without cargo" [compiler-team#847](https://github.com/rust-lang/compiler-team/issues/847) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Split.20.60run-make.60.20test.20suite.20into.20fast.20tes.E2.80.A6.20compiler-team.23847))
  - "Renaming Zulip T-compiler WGs streams" [compiler-team#848](https://github.com/rust-lang/compiler-team/issues/848) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23848))
  - "Basic target naming rules" [compiler-team#850](https://github.com/rust-lang/compiler-team/issues/850) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 6 months ago)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: 5 months ago)
  - "Add `evex512` target feature for AVX10" [compiler-team#778](https://github.com/rust-lang/compiler-team/issues/778) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60evex512.60.20target.20feature.20for.20AVX10.20compiler-team.23778)) (last review activity: about 0 days ago)
    - Discussed in a design meeting but now it seems that Intel is changing the design of the instruction set ([comment](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Basic.20target.20naming.20rules.20compiler-team.23850))
  - "Policy change around adding new unstable flags" [compiler-team#787](https://github.com/rust-lang/compiler-team/issues/787) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.20change.20around.20adding.20new.20unstable.20.E2.80.A6.20compiler-team.23787)) (last review activity: 5 months ago)
  - "setup typos check in CI (for rust repo)" [compiler-team#817](https://github.com/rust-lang/compiler-team/issues/817) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/setup.20typos.20check.20in.20CI.20.28for.20rust.20repo.29.20compiler-team.23817)) (last review activity: about 5 days ago)
  - "Rename "dylib" crate type to "rdylib" (keep old name but deprecate it), and maybe do the same for "staticlib" → "cstaticlib"" [compiler-team#825](https://github.com/rust-lang/compiler-team/issues/825) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Rename.20.22dylib.22.20create.20type.20to.20.22rdylib.22.20.28k.E2.80.A6.20compiler-team.23825)) (last review activity: 2 months ago)
  - "`rustc_target` for rust-analyzer" [compiler-team#839](https://github.com/rust-lang/compiler-team/issues/839) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.60rustc_target.60.20for.20rust-analyzer.20compiler-team.23839)) (last review activity: about 25 days ago)
  - "Compile UI tests as libraries by default" [compiler-team#842](https://github.com/rust-lang/compiler-team/issues/842) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Compile.20UI.20tests.20as.20libraries.20by.20default.20compiler-team.23842)) (last review activity: about 12 days ago)
  - "Policy: Require MCP and relevant team nominations for adding (ecosystem, custom codegen backend) testing jobs that would block PR/Merge CI and require documenting failure protocol" [compiler-team#845](https://github.com/rust-lang/compiler-team/issues/845) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.3A.20Require.20MCP.20for.20adding.20.28ecosystem.E2.80.A6.20compiler-team.23845)) (last review activity: about 12 days ago)
- Pending FCP requests (check your boxes!)
  - "sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets" [rust#123617](https://github.com/rust-lang/rust/pull/123617)
  - "Warn about C-style octal literals" [rust#131309](https://github.com/rust-lang/rust/pull/131309)
  - "Stabilize `-Zdwarf-version` as `-Cdwarf-version`" [rust#136926](https://github.com/rust-lang/rust/pull/136926)
- Things in FCP (make sure you're good with it)
  - "Enable `warn(unused_crate_dependencies)` on `rustc_*` crates" [compiler-team#844](https://github.com/rust-lang/compiler-team/issues/844) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Enable.20.60warn.28unused_crate_dependencies.29.20o.E2.80.A6.20compiler-team.23844))
  - "Add `--print=llvm-target-tuple`" [compiler-team#846](https://github.com/rust-lang/compiler-team/issues/846) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60--print.3Dllvm-target-tuple.60.20compiler-team.23846))
  - "Add `-Zsplit-metadata` flag to reduce disk usage" [compiler-team#851](https://github.com/rust-lang/compiler-team/issues/851) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Zsplit-metadata.60.20flag.20to.20reduce.20dis.E2.80.A6.20compiler-team.23851))
- Accepted MCPs
  - "Add `--print=crate-root-lint-levels` to retrieve lints levels" [compiler-team#833](https://github.com/rust-lang/compiler-team/issues/833) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60--print.3Dlint-levels.60.20to.20retrieve.20lin.E2.80.A6.20compiler-team.23833))
- MCPs blocked on unresolved concerns
  - "Add `-C hint-mostly-unused` option" [compiler-team#829](https://github.com/rust-lang/compiler-team/issues/829) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-C.20defer-codegen.60.20option.20compiler-team.23829)) (last review activity: about 50 days ago)
    - concern: [prior-art-does-not-motivate-fast-stabilization](https://github.com/rust-lang/compiler-team/issues/829#issuecomment-2617441734)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
  - "Proposal for Adapt Stack Protector for Rust" [compiler-team#841](https://github.com/rust-lang/compiler-team/issues/841) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.28My.20major.20change.20proposal.29.20compiler-team.23841))
    - concern: [inhibit-opts](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [impl-at-mir-level](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
    - concern: [lose-debuginfo-data](https://github.com/rust-lang/compiler-team/issues/841#issuecomment-2683562830)
- Finalized FCPs (disposition merge)
  - "Add `--print host-tuple` to print host target tuple" [rust#125579](https://github.com/rust-lang/rust/pull/125579)
  - "make unsupported_calling_conventions a hard error" [rust#129935](https://github.com/rust-lang/rust/pull/129935)
  - "Fix ICE when passing DefId-creating args to legacy_const_generics." [rust#130443](https://github.com/rust-lang/rust/pull/130443)
  - "Stabilize WebAssembly `multivalue`, `reference-types`, and `tail-call` target features" [rust#131080](https://github.com/rust-lang/rust/pull/131080)
  - "Lint on combining `#[no_mangle]` and `#[export_name]`" [rust#131558](https://github.com/rust-lang/rust/pull/131558)
  - "Reject `?Trait` bounds in various places where we unconditionally warned since 1.0" [rust#135841](https://github.com/rust-lang/rust/pull/135841)
  - "Do not deduplicate list of associated types provided by dyn principal" [rust#136458](https://github.com/rust-lang/rust/pull/136458)
- Other teams finalized FCPs
  - "Add lint against function pointer comparisons" [rust#118833](https://github.com/rust-lang/rust/pull/118833)
  - "Fixup Windows verbatim paths when used with the `include!` macro" [rust#125205](https://github.com/rust-lang/rust/pull/125205)
  - "Uplift `clippy::double_neg` lint as `double_negations`" [rust#126604](https://github.com/rust-lang/rust/pull/126604)
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
  - "Always display first line of impl blocks even when collapsed" [rust#132155](https://github.com/rust-lang/rust/pull/132155)
  - "rework winnowing to sensibly handle global where-bounds" [rust#132325](https://github.com/rust-lang/rust/pull/132325)
  - "mark is_val_statically_known intrinsic as stably const-callable" [rust#132449](https://github.com/rust-lang/rust/pull/132449)
  - "Fix ICE when multiple supertrait substitutions need assoc but only one is provided" [rust#133392](https://github.com/rust-lang/rust/pull/133392)
  - "[rustdoc] Add sans-serif font setting" [rust#133636](https://github.com/rust-lang/rust/pull/133636)
  - "disallow `repr()` on invalid items" [rust#133925](https://github.com/rust-lang/rust/pull/133925)
  - "Make the wasm_c_abi future compat warning a hard error" [rust#133951](https://github.com/rust-lang/rust/pull/133951)
  - "fully de-stabilize all custom inner attributes" [rust#134276](https://github.com/rust-lang/rust/pull/134276)
  - "remove long-deprecated no-op attributes no_start and crate_id" [rust#134300](https://github.com/rust-lang/rust/pull/134300)
  - "Stabilize `feature(trait_upcasting)`" [rust#134367](https://github.com/rust-lang/rust/pull/134367)
  - "Fix parsing of ranges after unary operators" [rust#134900](https://github.com/rust-lang/rust/pull/134900)
  - "Future incompatibility warning `unsupported_fn_ptr_calling_conventions`: Also warn in dependencies" [rust#135767](https://github.com/rust-lang/rust/pull/135767)
  - "Reject `?Trait` bounds in various places where we unconditionally warned since 1.0" [rust#135841](https://github.com/rust-lang/rust/pull/135841)
  - "Make cenum_impl_drop_cast a hard error" [rust#135964](https://github.com/rust-lang/rust/pull/135964)
  - "Allow `*const W<dyn A> -> *const dyn A` ptr cast" [rust#136127](https://github.com/rust-lang/rust/pull/136127)
  - "Do not deduplicate list of associated types provided by dyn principal" [rust#136458](https://github.com/rust-lang/rust/pull/136458)
  - "Do not allow attributes on struct field rest patterns" [rust#136490](https://github.com/rust-lang/rust/pull/136490)
  - "Make `ptr_cast_add_auto_to_object` lint into hard error" [rust#136764](https://github.com/rust-lang/rust/pull/136764)
  - "Turn order dependent trait objects future incompat warning into a hard error" [rust#136968](https://github.com/rust-lang/rust/pull/136968)
  - "add a "future" edition" [rust#137606](https://github.com/rust-lang/rust/pull/137606)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- "iOS binaries crash with latest nightly" [rust#138212](https://github.com/rust-lang/rust/issues/138212)
  - fixed upstream and will land in the next LLVM 20.1.1 update

## Performance logs

> [triage logs 2025-03-18](https://github.com/rust-lang/rustc-perf/blob/master/triage/2025-03-18.md)

A relatively busy week with a large amount of regressions in rollups which made investigations more tricky. Luckily overall the week was an improvement due to some medium sized improvements through improving target feature computation and a type systems internals fix.

Triage done by **@rylev**.
Revision range: [9fb94b32..493c38ba](https://perf.rust-lang.org/?start=9fb94b32df38073bf63d009df77ed10cb1c989d0&end=493c38ba371929579fe136df26eccd9516347c7a&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 1.7%  | [0.2%, 3.0%]    | 18    |
| Regressions (secondary)  | 0.8%  | [0.2%, 2.7%]    | 37    |
| Improvements (primary)   | -1.0% | [-10.3%, -0.2%] | 157   |
| Improvements (secondary) | -1.7% | [-8.8%, -0.2%]  | 158   |
| All  (primary)           | -0.8% | [-10.3%, 3.0%]  | 175   |


5 Regressions, 5 Improvements, 3 Mixed; 5 of them in rollups
44 artifact comparisons made in total

#### Regressions

Reduce formatting `width` and `precision` to 16 bits [#136932](https://github.com/rust-lang/rust/pull/136932) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=90384941aae4ea38de00e4702b50757e9b882a19&end=374ce1f90951b4dd1c8789c6a5905abe8ea99ef8&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.4% | [0.4%, 0.5%] | 3     |
| Regressions (secondary)  | 1.2% | [1.2%, 1.2%] | 1     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.4% | [0.4%, 0.5%] | 3     |
- Not sure the perf regression is necessarily worth investigating - this only impacts exa which I imagine does do quite a bit of formatting. If this were really an issue I'd expect it to show up in more crates given that it impacts the std lib directly.


Remove `NtItem` and `NtStmt` [#138083](https://github.com/rust-lang/rust/pull/138083) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0998d4095b0f11061f78a3f9c77a87838a4c1cb7&end=aaa2d47daebb02454fc7c08c04c3c603d5efeedb&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 2.2% | [0.2%, 3.1%] | 14    |
| Regressions (secondary)  | 0.2% | [0.2%, 0.2%] | 1     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 2.2% | [0.2%, 3.1%] | 14    |
- Author and reviewer [agree](https://github.com/rust-lang/rust/pull/138083#issuecomment-2706183798) to tackle perf once the full refactor is done.


Add a .bss-like scheme for encoded const allocs [#137152](https://github.com/rust-lang/rust/pull/137152) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=93257e2d20809d82d1bc0fcc1942480d1a66d7cd&end=52daa7d835e7ff51cb387340082bf9a59b949738&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | -    | -            | 0     |
| Regressions (secondary)  | 3.5% | [3.2%, 4.1%] | 3     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | -    | -            | 0     |
- Author and reviewer [agree](https://github.com/rust-lang/rust/pull/137152#issuecomment-2666907180) that the perf tradeoff is worth it.


Rollup of 16 pull requests [#138548](https://github.com/rust-lang/rust/pull/138548) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=9f274ba3997030a2b7656755a6810fd26cb709f3&end=66678e68227913a42438afc7320a2849dffd4d51&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.4% | [0.2%, 1.0%] | 8     |
| Regressions (secondary)  | 0.5% | [0.2%, 0.9%] | 14    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.4% | [0.2%, 1.0%] | 8     |
- It's not clear to me which PR could be the culprit. Instead of wasting a bunch of perf time trying to find out, I think it's fine if we cut our losses.


Rollup of 7 pull requests [#138611](https://github.com/rust-lang/rust/pull/138611) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8279176ccdfd4eebd40a671f75b6d3024ae56b42&end=43a2e9d2c72db101f5fedac8b3acb78981b06bf2&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.3%, 0.3%] | 3     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)                 | 0.3% | [0.3%, 0.3%] | 3     |
- The regression is small enough that I don't think this is really worth looking into.


#### Improvements

Speed up target feature computation [#137586](https://github.com/rust-lang/rust/pull/137586) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=705421b52239d7393b4738764b192179d5c139c2&end=ebf0cf75d368c035f4c7e7246d203bd469ee4a51&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.3% | [-9.9%, -0.2%] | 55    |
| Improvements (secondary) | -1.8% | [-8.4%, -0.1%] | 122   |
| All  (primary)                 | -1.3% | [-9.9%, -0.2%] | 55    |


Add `#[define_opaques]` attribute and require it for all type-alias-impl-trait sites that register a hidden type [#128440](https://github.com/rust-lang/rust/pull/128440) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f2d69d5a7c04617d122facd0a7a5bdde0af928ae&end=6650252439d4e03368b305c42a10006e36f1545e&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.5% | [-1.6%, -0.2%] | 58    |
| Improvements (secondary) | -0.4% | [-0.4%, -0.4%] | 3     |
| All  (primary)                 | -0.5% | [-1.6%, -0.2%] | 58    |


Do not register `Self: AutoTrait` when confirming auto trait (in old solver) [#138249](https://github.com/rust-lang/rust/pull/138249) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8536f201ffdb2c24925d7f9e87996d7dca93428b&end=961351c76c812e3aeb65bfb542742500a6436aed&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.8% | [-5.2%, -0.2%] | 21    |
| Improvements (secondary) | -1.5% | [-4.3%, -0.3%] | 4     |
| All  (primary)                 | -1.8% | [-5.2%, -0.2%] | 21    |


Rollup of 9 pull requests [#138506](https://github.com/rust-lang/rust/pull/138506) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=cb50d4d8566b1ee97e9a5ef95a37a40936a62c30&end=ecade534c66478c51c5d3c1d3682dc4beb0ac972&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -2.1% | [-2.1%, -2.1%] | 1     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 1     |
| All  (primary)                 | -2.1% | [-2.1%, -2.1%] | 1     |


Rollup of 7 pull requests [#138630](https://github.com/rust-lang/rust/pull/138630) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=493c38ba371929579fe136df26eccd9516347c7a&end=259fdb521200c9abba547302fc2c826479ef26b2&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.1% | [-0.2%, -0.1%] | 5     |
| Improvements (secondary) | -0.4% | [-0.7%, -0.2%] | 4     |
| All  (primary)                 | -0.1% | [-0.2%, -0.1%] | 5     |


#### Mixed

Allow bounds checks when enumerating `IndexSlice` to be elided [#137795](https://github.com/rust-lang/rust/pull/137795) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c6251023208f7e9789602376909af8aaf09483b7&end=d2b52c5c48ea024fc277feddcc92a60cc92be13c&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.4%  | [0.4%, 0.4%]   | 6     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.2%] | 8     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)                 | -0.3% | [-0.3%, -0.2%] | 8     |
- As the [reviewer stated](https://github.com/rust-lang/rust/pull/137795#pullrequestreview-2667416001) this is more an improvement than a regression.


Rollup of 7 pull requests [#138414](https://github.com/rust-lang/rust/pull/138414) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=aaa2d47daebb02454fc7c08c04c3c603d5efeedb&end=249cb84316401daf040832cdbb8a45e0f5ab6af8&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 1.1%]   | 19    |
| Regressions (secondary)  | 0.6%  | [0.2%, 1.1%]   | 32    |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 2     |
| Improvements (secondary) | -0.7% | [-1.7%, -0.2%] | 24    |
| All  (primary)                 | 0.4%  | [-0.2%, 1.1%]  | 21    |
- [#137701](https://github.com/rust-lang/rust/pull/137701) is responsible for the regression. The author and reviewer have been asked for next steps.


Allow more top-down inlining for single-BB callees [#138157](https://github.com/rust-lang/rust/pull/138157) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=addae0705c7cf5b2f2ed7faeec026c894f497b3d&end=523c507d260c6f4391a5041f084528f5fa670312&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.0%  | [0.5%, 1.4%]   | 2     |
| Regressions (secondary)  | 0.3%  | [0.3%, 0.3%]   | 2     |
| Improvements (primary)   | -0.7% | [-1.1%, -0.4%] | 5     |
| Improvements (secondary) | -0.6% | [-0.7%, -0.6%] | 3     |
| All  (primary)                 | -0.2% | [-1.1%, 1.4%]  | 7     |
- [Author notes](https://github.com/rust-lang/rust/pull/138157#issuecomment-2712124218) that the this does regress icount but walltime should be unaffected or even improved.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Tracking Issue for perma-unstable `wasm-c-abi` flag" [rust#122532](https://github.com/rust-lang/rust/issues/122532)
  - We want to implement breaking ABI changes to WASM (trying to stabilize the ABI and bring some order) but another project (Diplomat, that builds on ICU4X - IIUC) was caught by surprise ([comment](https://github.com/rust-lang/rust/issues/122532#issuecomment-2726299575)). We discovered that (as it is to be expected) projects rely on longtime unstable ABIs
  - @**RalfJ** proposes to emit a Future Compat Warning (#138601) with a blog post and then implement a plan for a migration ([comment](https://github.com/rust-lang/rust/issues/122532#issuecomment-2728428935))
  - More context and a concrete plan proposal laid out by @**Alex Crichton** at [comment](https://github.com/rust-lang/rust/issues/122532#issuecomment-2729999696). The plan seems to be ok for ICU4X (see [comment](https://github.com/rust-lang/rust/issues/122532#issuecomment-2731032602))
  - T-compiler is asked to discuss and comment (maybe something was overlooked)

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "cg_llvm: Reduce the visibility of types, modules and using declarations in `rustc_codegen_llvm`." [rust#137247](https://github.com/rust-lang/rust/pull/137247) (last review activity: about 23 days ago)
  - cc @**Zalathar**
- "not lint break with label and unsafe block" [rust#137454](https://github.com/rust-lang/rust/pull/137454) (last review activity: about 23 days ago)
  - cc @**Wesley Wiser**
- "pretty-print: Print shebang at the top of the output" [rust#137474](https://github.com/rust-lang/rust/pull/137474) (last review activity: about 23 days ago)
  - cc @**Esteban Küber**
- "Revise docs for `thir::PatKind::ExpandedConstant`" [rust#136612](https://github.com/rust-lang/rust/pull/136612) (last review activity: about 29 days ago)
  - cc @**Nadrieril**
- "Pattern Migration 2024: suggest nicer patterns" [rust#136496](https://github.com/rust-lang/rust/pull/136496) (last review activity: about 41 days ago)
  - @**Nadrieril**

Next meetings' agenda draft: [hackmd link](https://hackmd.io/M0X6fEE-ReqVNhb03M0U9A)
