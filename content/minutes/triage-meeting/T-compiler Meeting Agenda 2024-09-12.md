---
tags: weekly, rustc
type: docs
note_id: XV_FIeKwRx2TTtvsbVuTFA
---

# T-compiler Meeting Agenda 2024-09-12

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings
- Types Team: ITE (Impl Trait Everywhere) Triage <time:2024-09-12T22:00:00+01:00>
- wg-rust-analyzer steering meeting on Zulip (https://rust-lang.zulipchat.com/#narrow/stream/185405-t-compiler.2Fwg-rls-2.2E0/topic/Steering.20meeting) <time:2024-09-13T17:00:00+01:00>
- wg-macros triage meeting Zulip (https://rust-lang.zulipchat.com/#narrow/stream/410876-wg-macros.2Ftriage) <time:2024-09-13T18:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "-Z default-visibility option" [compiler-team#782](https://github.com/rust-lang/compiler-team/issues/782) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/-Z.20default-visibility.20option.20compiler-team.23782))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Target families for executable format" [compiler-team#716](https://github.com/rust-lang/compiler-team/issues/716) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Target.20families.20for.20executable.20format.20compiler-team.23716)) (last review activity: 7 months ago)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: about 6 days ago)
  - "Opt-in flag for absolute paths in diagnostics" [compiler-team#770](https://github.com/rust-lang/compiler-team/issues/770) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Opt-in.20flag.20for.20absolute.20paths.20in.20diagnos.E2.80.A6.20compiler-team.23770)) (last review activity: about 27 days ago)
  - "Add `evex512` target feature for AVX10" [compiler-team#778](https://github.com/rust-lang/compiler-team/issues/778) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60evex512.60.20target.20feature.20for.20AVX10.20compiler-team.23778)) (last review activity: about 6 days ago)
  - "mark some target features as 'forbidden' so they cannot be (un)set with -Ctarget-feature" [compiler-team#780](https://github.com/rust-lang/compiler-team/issues/780) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/mark.20some.20target.20features.20as.20.27forbidden.27.20.E2.80.A6.20compiler-team.23780)) (last review activity: about 6 days ago)
- Pending FCP requests (check your boxes!)
  - "Add a new `--orchestrator-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20new.20.60--build-id.60.20flag.20to.20rustc.20compiler-team.23635))
    - Author updated proposal trying to address concerns (cc: @**Wesley Wiser** @**Vadim Petrochenkov** )
    - concern: [other-existing-options](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1779597156)
    - concern: [option-name](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1785349936)
  - "sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets" [rust#123617](https://github.com/rust-lang/rust/pull/123617)
  - "Add `--print host-triple` to print host target triple" [rust#125579](https://github.com/rust-lang/rust/pull/125579)
  - "make unsupported_calling_conventions a hard error" [rust#129935](https://github.com/rust-lang/rust/pull/129935)
- Things in FCP (make sure you're good with it)
  - "Don't track `--emit=` options as part of crate SVH" [compiler-team#769](https://github.com/rust-lang/compiler-team/issues/769) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Don.27t.20track.20.60--emit.3D.60.20options.20as.20part.20of.20.E2.80.A6.20compiler-team.23769))
  - "`--hint-msrv=version` option so the compiler can take MSRV into account when linting" [compiler-team#772](https://github.com/rust-lang/compiler-team/issues/772) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.60-C.20msrv.3Dversion.60.20option.20so.20the.20compiler.20.E2.80.A6.20compiler-team.23772))
  - "Deprecate `-Csoft-float`" [compiler-team#779](https://github.com/rust-lang/compiler-team/issues/779) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Deprecate.20.60-Csoft-float.60.20compiler-team.23779))
  - "Test rule annotations" [compiler-team#783](https://github.com/rust-lang/compiler-team/issues/783) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Test.20rule.20annotations.20compiler-team.23783))
  - "const-eval interning: accept interior mutable pointers in final value" [rust#128543](https://github.com/rust-lang/rust/pull/128543)
- Accepted MCPs
  - No new accepted proposals this time.
- MCPs blocked on unresolved concerns
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: about 7 days ago)
    - concern: [added-complexity-to-frontend](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-1845169318)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
- Finalized FCPs (disposition merge)
  - None
- Other teams finalized FCPs
  - "Proposal: stabilize `const_refs_to_static`" [rust#128183](https://github.com/rust-lang/rust/issues/128183)
  - "Check WF of source type's signature on fn pointer cast" [rust#129021](https://github.com/rust-lang/rust/pull/129021)
  - "Make destructors on `extern "C"` frames to be executed" [rust#129582](https://github.com/rust-lang/rust/pull/129582)

### WG checkins

None

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta:"Don't warn empty branches unreachable for now" [rust#129103](https://github.com/rust-lang/rust/pull/129103)
  - Authored by Nadrieril
  - Disable some linting until the 2024 edition, or code's MSRV is ≥ 1.82
  - Closes #129031, changes RFC'd by T-lang ([comment](https://github.com/rust-lang/rust/pull/129103#issuecomment-2303043848))
<!--
/poll Approve beta backport of #129103?
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
- [66 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [38 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 1 P-high, 3 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 0 P-high, 5 P-medium, 3 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 36 P-high, 100 P-medium, 17 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "core::iter::repeat_n is unsound with Box<T>" [rust#130141](https://github.com/rust-lang/rust/issues/130141)
  - Should be closed by #130145 authored by @**fee1-dead**, PR being reviewed

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- "Regression in nightly-2024-09-07: hang affecting `nalgebra`" [rust#130056](https://github.com/rust-lang/rust/issues/130056)
  - Under @**lcnr** scrutiny ([comment](https://github.com/rust-lang/rust/issues/130056#issuecomment-2337705829)) (thanks!)
  - Meanwhile @**Michael Goulet (compiler-errors)** suggests reverting the stabilization of `-Znext-solver=coherence` #130249

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "regression: overflow evaluating the requirement" [rust#128887](https://github.com/rust-lang/rust/issues/128887)
  - #129073 in final comment period ([comment](https://github.com/rust-lang/rust/pull/129073#issuecomment-2312112547)x)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2024-09-10](https://github.com/rust-lang/rustc-perf/blob/master/triage/2024-09-10.md)

A relatively quiet week with a majority of regressions coming in rollups which makes investigation more difficult. Luckily the regressions are relatively small and overall the week was a slight improvement in compiler performance.

Triage done by **@rylev**.
Revision range: [6199b69c..263a3aee](https://perf.rust-lang.org/?start=6199b69c53a8c275ca3cd59647ea0af5ca29aae2&end=263a3aeeb8f2d0e9cc85eee61774d1f5f23dc3f5&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 0.6%  | [0.2%, 1.4%]   | 57    |
| Regressions ❌ <br /> (secondary)  | 0.7%  | [0.2%, 1.5%]   | 23    |
| Improvements ✅ <br /> (primary)   | -2.2% | [-4.0%, -0.4%] | 23    |
| Improvements ✅ <br /> (secondary) | -0.3% | [-0.3%, -0.2%] | 10    |
| All ❌✅ (primary)                 | -0.2% | [-4.0%, 1.4%]  | 80    |


3 Regressions, 1 Improvement, 2 Mixed; 3 of them in rollups
26 artifact comparisons made in total

#### Regressions

Rollup of 8 pull requests [#129922](https://github.com/rust-lang/rust/pull/129922) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6199b69c53a8c275ca3cd59647ea0af5ca29aae2&end=d6c8169c186ab16a3404cd0d0866674018e8a19e&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -    | -            | 0     |
| Regressions ❌ <br /> (secondary)  | 5.8% | [5.8%, 5.8%] | 1     |
| Improvements ✅ <br /> (primary)   | -    | -            | 0     |
| Improvements ✅ <br /> (secondary) | -    | -            | 0     |
| All ❌✅ (primary)                 | -    | -            | 0     |
- Noise


Update x86_64-linux host compiler to LLVM 19 rc 3 [#129356](https://github.com/rust-lang/rust/pull/129356) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d6c8169c186ab16a3404cd0d0866674018e8a19e&end=842d6fc32e3d0d26bb11fbe6a2f6ae2afccc06cb&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 0.5%  | [0.2%, 0.8%]   | 34    |
| Regressions ❌ <br /> (secondary)  | 2.6%  | [0.5%, 5.7%]   | 6     |
| Improvements ✅ <br /> (primary)   | -0.4% | [-0.4%, -0.4%] | 1     |
| Improvements ✅ <br /> (secondary) | -     | -              | 0     |
| All ❌✅ (primary)                 | 0.5%  | [-0.4%, 0.8%]  | 35    |
- "Looks like this update is a very mild regression, but not enough to look into it in more detail, or skip this version."


Rollup of 10 pull requests [#130091](https://github.com/rust-lang/rust/pull/130091) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=12b26c13fba25c9e1bc2fdf05f3c2dbb851c83de&end=878f49f5ff0dd88a85bcd5d99fc0d90e219c354c&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 0.9% | [0.3%, 1.7%] | 13    |
| Regressions ❌ <br /> (secondary)  | 0.8% | [0.2%, 1.3%] | 14    |
| Improvements ✅ <br /> (primary)   | -    | -            | 0     |
| Improvements ✅ <br /> (secondary) | -    | -            | 0     |
| All ❌✅ (primary)                 | 0.9% | [0.3%, 1.7%] | 13    |
- Regressions are happening in `expand_crate` so testing a change that touched `rustc_expand`


#### Improvements

Use `DeepRejectCtxt` to quickly reject `ParamEnv` candidates [#128776](https://github.com/rust-lang/rust/pull/128776) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=17b322fa69eed7216dccc9f097eb68237cf62234&end=26b5599e4d6ed2b45152c60493c1788c0a27533d&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -     | -              | 0     |
| Regressions ❌ <br /> (secondary)  | -     | -              | 0     |
| Improvements ✅ <br /> (primary)   | -1.8% | [-4.7%, -0.3%] | 17    |
| Improvements ✅ <br /> (secondary) | -     | -              | 0     |
| All ❌✅ (primary)                 | -1.8% | [-4.7%, -0.3%] | 17    |


#### Mixed

Rollup of 10 pull requests [#129978](https://github.com/rust-lang/rust/pull/129978) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=009e73825af0e59ad4fc603562e038b3dbd6593a&end=eb33b43bab08223fa6b46abacc1e95e859fe375d&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 0.4%  | [0.3%, 0.5%]   | 4     |
| Regressions ❌ <br /> (secondary)  | 0.4%  | [0.4%, 0.4%]   | 1     |
| Improvements ✅ <br /> (primary)   | -     | -              | 0     |
| Improvements ✅ <br /> (secondary) | -3.1% | [-3.1%, -3.1%] | 1     |
| All ❌✅ (primary)                 | 0.4%  | [0.3%, 0.5%]   | 4     |
- The regressions here are small enough that I don't think it's worth investigating further.


stabilize `-Znext-solver=coherence` [#121848](https://github.com/rust-lang/rust/pull/121848) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=59d4114b2d1aaac9a6dfe770997f2e79ccfd28ab&end=17b322fa69eed7216dccc9f097eb68237cf62234&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 0.4%  | [0.2%, 0.6%]   | 11    |
| Regressions ❌ <br /> (secondary)  | 1.1%  | [0.4%, 5.1%]   | 8     |
| Improvements ✅ <br /> (primary)   | -3.4% | [-4.2%, -2.8%] | 7     |
| Improvements ✅ <br /> (secondary) | -0.3% | [-0.3%, -0.2%] | 5     |
| All ❌✅ (primary)                 | -1.1% | [-4.2%, 0.6%]  | 18    |
- Mainly noise

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- None

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Consistently use the highest bit of vector masks when converting to i1 vectors" [rust#104693](https://github.com/rust-lang/rust/pull/104693)
  - cc: @**Wesley Wiser**
- "add error message for c# style named arguments" [rust#118733](https://github.com/rust-lang/rust/pull/118733)
  - cc: @**Esteban Küber**
- "Fix bug where `option_env!` would return `None` when env var is present but not valid Unicode" [rust#122670](https://github.com/rust-lang/rust/pull/122670)
  - cc: @**lcnr**
- "More translatable diagnostics" [rust#123822](https://github.com/rust-lang/rust/pull/123822) (last review activity: 5 months ago)
  - cc @**cjgillot**

## Next week's WG checkins

None

Next meeting's agenda draft: [hackmd link](https://hackmd.io/XV_FIeKwRx2TTtvsbVuTFA)
