---
tags: weekly, rustc
type: docs
note_id: eoSa0ZoUTUyaLx6IFPIefg
---

# T-compiler Meeting Agenda 2024-09-19

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings
- Types Team: ITE (Impl Trait Everywhere) Triage <time:2024-09-19T22:00:00+01:00>
- wg-rust-analyzer steering meeting on Zulip (https://rust-lang.zulipchat.com/#narrow/stream/185405-t-compiler.2Fwg-rls-2.2E0/topic/Steering.20meeting) <time:2024-09-20T17:00:00+01:00>
- wg-macros triage meeting Zulip (https://rust-lang.zulipchat.com/#narrow/stream/410876-wg-macros.2Ftriage) <time:2024-09-20T18:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Make the test cfg a userspace check-cfg" [compiler-team#785](https://github.com/rust-lang/compiler-team/issues/785) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Make.20the.20test.20cfg.20a.20userspace.20check-cfg.20compiler-team.23785))
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: about 13 days ago)
  - "Target families for executable format" [compiler-team#716](https://github.com/rust-lang/compiler-team/issues/716) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Target.20families.20for.20executable.20format.20compiler-team.23716)) (last review activity: 7 months ago)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: about 13 days ago)
  - "Opt-in flag for absolute paths in diagnostics" [compiler-team#770](https://github.com/rust-lang/compiler-team/issues/770) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Opt-in.20flag.20for.20absolute.20paths.20in.20diagnos.E2.80.A6.20compiler-team.23770)) (last review activity: about 34 days ago)
  - "Add `evex512` target feature for AVX10" [compiler-team#778](https://github.com/rust-lang/compiler-team/issues/778) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60evex512.60.20target.20feature.20for.20AVX10.20compiler-team.23778)) (last review activity: about 13 days ago)
- Pending FCP requests (check your boxes!)
  - "Add a new `--orchestrator-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20new.20.60--build-id.60.20flag.20to.20rustc.20compiler-team.23635))
  - "sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets" [rust#123617](https://github.com/rust-lang/rust/pull/123617)
  - "Add `--print host-triple` to print host target triple" [rust#125579](https://github.com/rust-lang/rust/pull/125579)
  - "make unsupported_calling_conventions a hard error" [rust#129935](https://github.com/rust-lang/rust/pull/129935)
- Things in FCP (make sure you're good with it)
  - "-Z default-visibility option" [compiler-team#782](https://github.com/rust-lang/compiler-team/issues/782) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/-Z.20default-visibility.20option.20compiler-team.23782))
  - "mark some target features as 'forbidden' so they cannot be (un)set with -Ctarget-feature" [compiler-team#780](https://github.com/rust-lang/compiler-team/issues/780) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/mark.20some.20target.20features.20as.20.27forbidden.27.20.E2.80.A6.20compiler-team.23780))
  - "Test rule annotations" [compiler-team#783](https://github.com/rust-lang/compiler-team/issues/783) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Test.20rule.20annotations.20compiler-team.23783))
  - "New Tier-3 target for OpenHarmony on LoongArch64" [compiler-team#784](https://github.com/rust-lang/compiler-team/issues/784) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/New.20Tier-3.20target.20for.20OpenHarmony.20on.20Loon.E2.80.A6.20compiler-team.23784))
- Accepted MCPs
  - "Don't track `--emit=` options as part of crate SVH" [compiler-team#769](https://github.com/rust-lang/compiler-team/issues/769) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Don.27t.20track.20.60--emit.3D.60.20options.20as.20part.20of.20.E2.80.A6.20compiler-team.23769))
  - "`--hint-msrv=version` option so the compiler can take MSRV into account when linting" [compiler-team#772](https://github.com/rust-lang/compiler-team/issues/772) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.60-C.20msrv.3Dversion.60.20option.20so.20the.20compiler.20.E2.80.A6.20compiler-team.23772))
- MCPs blocked on unresolved concerns
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
- Finalized FCPs (disposition merge)
  - "Check WF of source type's signature on fn pointer cast" [rust#129021](https://github.com/rust-lang/rust/pull/129021)
  - "Relate receiver invariantly in method probe for `Mode::Path`" [rust#129073](https://github.com/rust-lang/rust/pull/129073)
  - "(Anti-)regression between Rust 1.78.0 and Rust 1.79.0 with struct containing `Cow<[Self]>`" [rust#129541](https://github.com/rust-lang/rust/issues/129541)
- Other teams finalized FCPs
  - "Proposal: stabilize `const_refs_to_static`" [rust#128183](https://github.com/rust-lang/rust/issues/128183)
  - "Check WF of source type's signature on fn pointer cast" [rust#129021](https://github.com/rust-lang/rust/pull/129021)
  - "Relate receiver invariantly in method probe for `Mode::Path`" [rust#129073](https://github.com/rust-lang/rust/pull/129073)
  - "Stabilize `&mut` (and `*mut`) as well as `&Cell` (and `*const Cell`) in const" [rust#129195](https://github.com/rust-lang/rust/pull/129195)
  - "(Anti-)regression between Rust 1.78.0 and Rust 1.79.0 with struct containing `Cow<[Self]>`" [rust#129541](https://github.com/rust-lang/rust/issues/129541)
  - "Make destructors on `extern "C"` frames to be executed" [rust#129582](https://github.com/rust-lang/rust/pull/129582)
  - "stabilize `const_extern_fn`" [rust#129753](https://github.com/rust-lang/rust/pull/129753)

### WG checkins

None

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Update LLVM to 19 327ca6c" [rust#130212](https://github.com/rust-lang/rust/pull/130212)
  - Authored by DianQK
  - will fix #129887, a P-high crash on compiling on aarch64
<!--
/poll Approve beta backport of #130212?
approve
don't know
-->
- :beta: "Revert #129749 to fix segfault in LLVM" [rust#130477](https://github.com/rust-lang/rust/pull/130477)
  - Authored by tmandry
  - reverts some LLVM breaking changes (see [comment](https://github.com/rust-lang/rust/pull/129749#issuecomment-2354417960)). Also fixes #130333
<!--
/poll Approve beta backport of #130477?
approve
don't know
-->
- :beta: "Check params for unsafety in THIR" [rust#130531](https://github.com/rust-lang/rust/pull/130531)
  - Authored by compiler-errors
  - Fixes p-critical unsoundness #130528
<!--
/poll Approve beta backport of #130531?
approve
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
- [67 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [39 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 1 P-high, 3 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 6 P-medium, 3 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 36 P-high, 100 P-medium, 17 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Unsoundness: Patterns in function parameters are not checked for union access" [rust#130528](https://github.com/rust-lang/rust/issues/130528)
  - fixed by #130531

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "regression: overflow evaluating the requirement" [rust#128887](https://github.com/rust-lang/rust/issues/128887)
  - likely fixed by #129073. In any case on the radar of @_*lcnr*

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2024-09-16](https://github.com/rust-lang/rustc-perf/blob/master/triage/2024-09-16.md)

A relatively quiet week, with overall neutral performance across our set of key
metrics (instructions, cycles, memory).

Triage done by **@simulacrum**.
Revision range: [263a3aee..170d6cb8](https://perf.rust-lang.org/?start=263a3aeeb8f2d0e9cc85eee61774d1f5f23dc3f5&end=170d6cb845c8c3f0dcec5cdd4210df9ecf990244&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 0.7%  | [0.2%, 4.0%]   | 52    |
| Regressions ❌ <br /> (secondary)  | 0.7%  | [0.2%, 1.4%]   | 48    |
| Improvements ✅ <br /> (primary)   | -0.8% | [-2.6%, -0.2%] | 46    |
| Improvements ✅ <br /> (secondary) | -0.5% | [-1.1%, -0.1%] | 25    |
| All ❌✅ (primary)                 | 0.0%  | [-2.6%, 4.0%]  | 98    |


2 Regressions, 3 Improvements, 4 Mixed; 2 of them in rollups
54 artifact comparisons made in total

#### Regressions

interpret: make typed copies lossy wrt provenance and padding [#129778](https://github.com/rust-lang/rust/pull/129778) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=712463de61c65033a6f333f0a14fbb65e34efc50&end=304b7f801bab31233680879ca4fb6eb294706a59&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -    | -            | 0     |
| Regressions ❌ <br /> (secondary)  | 2.1% | [0.2%, 4.7%] | 13    |
| Improvements ✅ <br /> (primary)   | -    | -            | 0     |
| Improvements ✅ <br /> (secondary) | -    | -            | 0     |
| All ❌✅ (primary)                 | -    | -            | 0     |

Most of the performance is recovered in https://github.com/rust-lang/rust/pull/130197.

generalize: track relevant info in cache key [#130194](https://github.com/rust-lang/rust/pull/130194) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=4c5fc2c334f1cc305eea79ed0b8fdb276342d101&end=5a2dd7d4f3210629e65879aeecbe643ba3b86bb4&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -     | -              | 0     |
| Regressions ❌ <br /> (secondary)  | 1.0%  | [0.4%, 1.3%]   | 16    |
| Improvements ✅ <br /> (primary)   | -     | -              | 0     |
| Improvements ✅ <br /> (secondary) | -0.2% | [-0.2%, -0.2%] | 1     |
| All ❌✅ (primary)                 | -     | -              | 0     |

Soundness fix and regressions only in secondary benchmarks.

#### Improvements

rustdoc: use strategic boxing to shrink `clean::Item` [#129789](https://github.com/rust-lang/rust/pull/129789) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c2f74c3f928aeb503f15b4e9ef5778e77f3058b8&end=712463de61c65033a6f333f0a14fbb65e34efc50&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -     | -              | 0     |
| Regressions ❌ <br /> (secondary)  | -     | -              | 0     |
| Improvements ✅ <br /> (primary)   | -0.5% | [-1.0%, -0.2%] | 15    |
| Improvements ✅ <br /> (secondary) | -0.5% | [-0.6%, -0.3%] | 19    |
| All ❌✅ (primary)                 | -0.5% | [-1.0%, -0.2%] | 15    |


rustdoc: unify the short-circuit on all lints [#129975](https://github.com/rust-lang/rust/pull/129975) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6f7229c4da0471f1470bb1f86071848cba3a23d9&end=a9fb00bfa4b3038c855b2097b54e05e8c198c183&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -     | -              | 0     |
| Regressions ❌ <br /> (secondary)  | -     | -              | 0     |
| Improvements ✅ <br /> (primary)   | -0.7% | [-2.0%, -0.2%] | 10    |
| Improvements ✅ <br /> (secondary) | -0.4% | [-0.4%, -0.4%] | 1     |
| All ❌✅ (primary)                 | -0.7% | [-2.0%, -0.2%] | 10    |


Rollup of 10 pull requests [#130253](https://github.com/rust-lang/rust/pull/130253) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8d6b88b168e45ee1624699c19443c49665322a91&end=3afb2bb76ce56e860e45d8858ef5b5f00059e1b1&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 0.2%  | [0.2%, 0.2%]   | 1     |
| Regressions ❌ <br /> (secondary)  | -     | -              | 0     |
| Improvements ✅ <br /> (primary)   | -0.8% | [-1.5%, -0.2%] | 13    |
| Improvements ✅ <br /> (secondary) | -     | -              | 0     |
| All ❌✅ (primary)                 | -0.7% | [-1.5%, 0.2%]  | 14    |


#### Mixed

Revert "Stabilize `-Znext-solver=coherence`" [#130249](https://github.com/rust-lang/rust/pull/130249) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7c7372b6a1b9a8d6b787a3e5a10e4f8325b1fdfc&end=f753bc769b16ca9673f11a4cc06e5cc681efd84e&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 3.7%  | [2.9%, 4.5%]   | 7     |
| Regressions ❌ <br /> (secondary)  | -     | -              | 0     |
| Improvements ✅ <br /> (primary)   | -0.5% | [-0.9%, -0.2%] | 13    |
| Improvements ✅ <br /> (secondary) | -0.5% | [-0.7%, -0.1%] | 9     |
| All ❌✅ (primary)                 | 1.0%  | [-0.9%, 4.5%]  | 20    |

Largely resets to the previous state on a couple benchmarks. Expected given the revert.

Rollup of 5 pull requests [#130281](https://github.com/rust-lang/rust/pull/130281) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8c0ec05f7dc9ef185eea9f36c5638e74e43935bf&end=2e8db5e9e39c2bf7729113b3041ef4011d90ac5a&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 0.6%  | [0.6%, 0.6%]   | 1     |
| Regressions ❌ <br /> (secondary)  | 0.2%  | [0.2%, 0.2%]   | 1     |
| Improvements ✅ <br /> (primary)   | -0.2% | [-0.2%, -0.2%] | 1     |
| Improvements ✅ <br /> (secondary) | -1.8% | [-2.0%, -1.6%] | 6     |
| All ❌✅ (primary)                 | 0.2%  | [-0.2%, 0.6%]  | 2     |

Regressions are minor enough that given the rollup and lack of obviously
relevant PRs I'm just marking as triaged. The primary regressed benchmark is
webrender and only in full LLVM builds which doesn't seem like it maps well
onto the contained PRs.

Rescope temp lifetime in if-let into IfElse with migration lint [#107251](https://github.com/rust-lang/rust/pull/107251) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d3a8524e80244d66968ab4522d31145ccba610f4&end=a5efa01895e82fa705146507d15311b29c715450&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -     | -              | 0     |
| Regressions ❌ <br /> (secondary)  | 0.6%  | [0.2%, 1.3%]   | 19    |
| Improvements ✅ <br /> (primary)   | -0.2% | [-0.2%, -0.2%] | 1     |
| Improvements ✅ <br /> (secondary) | -     | -              | 0     |
| All ❌✅ (primary)                 | -0.2% | [-0.2%, -0.2%] | 1     |

Seems like the regression is primarily looking like a revert of #127313...
@cjgillot do you have thoughts on what the delta here might be? I don't see a
very obvious cause here. Regressions are minor enough that I'm not worried, but
just checking if there's an easy explanation.

Simplify the canonical clone method and the copy-like forms to copy [#128299](https://github.com/rust-lang/rust/pull/128299) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=02b1be16c65e5716ade771afde7116ebdfbf9b4a&end=e7386b361dda8c2222bee7a1ae79faba7e9a0351&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 0.4%  | [0.2%, 0.8%]   | 6     |
| Regressions ❌ <br /> (secondary)  | 0.4%  | [0.2%, 2.1%]   | 16    |
| Improvements ✅ <br /> (primary)   | -0.8% | [-1.7%, -0.3%] | 12    |
| Improvements ✅ <br /> (secondary) | -     | -              | 0     |
| All ❌✅ (primary)                 | -0.4% | [-1.7%, 0.8%]  | 18    |

Likely expected regressions from direct changes to codegen, possibly giving
LLVM more freedom to optimize:

> This pass improves performance by reducing the amount of MIR. The generated
> copies will get merged/expanded/whatever by LLVM, with a completely different
> heuristic.

(https://github.com/rust-lang/rust/pull/128299#pullrequestreview-2217057820)

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Linking error with aws_lc_rs" [rustc_codegen_cranelift#1520](https://github.com/rust-lang/rustc_codegen_cranelift/issues/1520)
  - An AWS cryptographic crate fails linking using cranelift, relevant code snippet from the crate ([link](https://github.com/aws/aws-lc-rs/blob/5799bee7d145181276d9db805da019dabbccbf2c/aws-lc-sys/src/x86_64_unknown_linux_gnu_crypto.rs#L4350)):
    ``` rust
    pub type AES_KEY = aes_key_st;
    extern "C" {
        #[link_name = "\u{1}aws_lc_0_20_0_AES_set_encrypt_key"]
        pub fn AES_set_encrypt_key(
            key: *const u8,
            bits: ::std::os::raw::c_uint,
            aeskey: *mut AES_KEY,
        ) -> ::std::os::raw::c_int;
    }
    ```
  - From the [Zulip thread](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/.5Cx01.20in.20symbol.20names/near/454506090):
    > C compilers are expected to mangle symbol names on several platforms. For example for Mach-O exported functions are expected to start with an _, while on Windows a suffix like @4 may get added in some cases. To disable this mangling LLVM supports prefixing the symbol name with \x01. No other backend implements this right now afaik. As it turns out rust-bindgen started unconditionally using this 7 years ago.
  - @**bjorn3** asks: do we want to guarantee that it will remain working and implement it in all existing codegen backends, or is this considered something that shouldn't be used on stable code at all and should rust-bindgen stop using it when not strictly necessary, like is the case most of the time?
  - This is where bindgen does this ([link](https://github.com/rust-lang/rust-bindgen/blob/f518815cc14a7f8c292964bb37179a1070d7e18a/bindgen/codegen/helpers.rs#L71))

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- TODO

## Next week's WG checkins

None

Next meetings' agenda draft: [hackmd link](https://hackmd.io/obtoz1e-RaeOnDoycHTgEQ)
