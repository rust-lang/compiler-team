---
tags: weekly, rustc
type: docs
note_id: 68SAwhUVRmC5oPTrsheiBg
---

# T-compiler Meeting Agenda 2024-09-05

## Announcements

- Today Rust stable release 1.81. [Blog post](https://github.com/Mark-Simulacrum/blog.rust-lang.org/blob/1.81/posts/2024-09-05-Rust-1.81.0.md)
- Draft blog post for the election of the Project Directors (PDs): https://github.com/rust-lang/blog.rust-lang.org/blob/fb8299d3dd4d42eb928442115a8a730889c466bb/posts/inside-rust/2024-09-04-electing-new-project-directors.md
- Draft blog post about upcoming changes in WASM targets : https://github.com/rust-lang/blog.rust-lang.org/pull/1385
  - Context: https://github.com/rust-lang/rust/pull/128511
  - after a cursory review from t-compiler (thanks!), we can set a date for publishing
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings
- Types Team: ITE (Impl Trait Everywhere) Triage <time:2024-09-05T22:00:00+01:00>
- wg-rust-analyzer steering meeting on Zulip (https://rust-lang.zulipchat.com/#narrow/stream/185405-t-compiler.2Fwg-rls-2.2E0/topic/Steering.20meeting) <time:2024-09-06T17:00:00+01:00>
- wg-macros triage meeting Zulip (https://rust-lang.zulipchat.com/#narrow/stream/410876-wg-macros.2Ftriage) <time:2024-09-06T18:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Add `evex512` target feature for AVX10" [compiler-team#778](https://github.com/rust-lang/compiler-team/issues/778) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60evex512.60.20target.20feature.20for.20AVX10.20compiler-team.23778))
  - "mark some target features as 'forbidden' so they cannot be (un)set with -Ctarget-feature" [compiler-team#780](https://github.com/rust-lang/compiler-team/issues/780) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/mark.20some.20target.20features.20as.20.27forbidden.27.20.E2.80.A6.20compiler-team.23780))
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Target families for executable format" [compiler-team#716](https://github.com/rust-lang/compiler-team/issues/716) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Target.20families.20for.20executable.20format.20compiler-team.23716)) (last review activity: 7 months ago)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: 3 months ago)
  - "Opt-in flag for absolute paths in diagnostics" [compiler-team#770](https://github.com/rust-lang/compiler-team/issues/770) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Opt-in.20flag.20for.20absolute.20paths.20in.20diagnos.E2.80.A6.20compiler-team.23770)) (last review activity: about 20 days ago)
- Pending FCP requests (check your boxes!)
  - "sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets" [rust#123617](https://github.com/rust-lang/rust/pull/123617)
  - "Add `--print host-triple` to print host target triple" [rust#125579](https://github.com/rust-lang/rust/pull/125579)
- Things in FCP (make sure you're good with it)
  - "Don't track `--emit=` options as part of crate SVH" [compiler-team#769](https://github.com/rust-lang/compiler-team/issues/769) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Don.27t.20track.20.60--emit.3D.60.20options.20as.20part.20of.20.E2.80.A6.20compiler-team.23769))
  - "`--hint-msrv=version` option so the compiler can take MSRV into account when linting" [compiler-team#772](https://github.com/rust-lang/compiler-team/issues/772) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.60-C.20msrv.3Dversion.60.20option.20so.20the.20compiler.20.E2.80.A6.20compiler-team.23772))
  - "Deprecate `-Csoft-float`" [compiler-team#779](https://github.com/rust-lang/compiler-team/issues/779) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Deprecate.20.60-Csoft-float.60.20compiler-team.23779))
  - "const-eval interning: accept interior mutable pointers in final value" [rust#128543](https://github.com/rust-lang/rust/pull/128543)
  - "Don't warn empty branches unreachable for now" [rust#129103](https://github.com/rust-lang/rust/pull/129103)
- Accepted MCPs
  - No new accepted proposals this time.
- MCPs blocked on unresolved concerns
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 7 months ago)
    - concern: [added-complexity-to-frontend](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-1845169318)
  - "Add a new `--build-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20a.20new.20.60--build-id.60.20flag.20to.20rustc.20compiler-team.23635))
    - concern: [other-existing-options](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1779597156)
    - concern: [option-name](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1785349936)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
- Finalized FCPs (disposition merge)
  - None
- Other teams finalized FCPs
  - "rustdoc: add header map to the table of contents" [rust#120736](https://github.com/rust-lang/rust/pull/120736)
  - "doc: Make block of inline Deref methods foldable" [rust#127474](https://github.com/rust-lang/rust/pull/127474)

### WG checkins

None

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No beta nominations for `T-compiler` this time.
- No stable nominations for `T-compiler` this time.

[T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Stabilize `extended_varargs_abi_support`" [rust#116161](https://github.com/rust-lang/rust/pull/116161)
- "Better errors with bad/missing identifiers in MBEs" [rust#118939](https://github.com/rust-lang/rust/pull/118939)
- "Uplift `clippy::invalid_null_ptr_usage` lint" [rust#119220](https://github.com/rust-lang/rust/pull/119220)
- "Rename `AsyncIterator` back to `Stream`, introduce an AFIT-based `AsyncIterator` trait" [rust#119550](https://github.com/rust-lang/rust/pull/119550)
- "Disallow deriving (other than Copy/Clone) on types with unnamed fields" [rust#121270](https://github.com/rust-lang/rust/pull/121270)
- "Emit a warning if a `match` is too complex" [rust#122685](https://github.com/rust-lang/rust/pull/122685)
- "Add Unicode block-drawing compiler output support" [rust#126597](https://github.com/rust-lang/rust/pull/126597)
- "Emit error when calling/declaring functions with vectors that require missing target feature" [rust#127731](https://github.com/rust-lang/rust/pull/127731)
- "[crater] Make `missing_fragment_specifier` an unconditional error" [rust#128425](https://github.com/rust-lang/rust/pull/128425)
- "repr(int) fieldless enums are ABI-compatible with int" [rust#128600](https://github.com/rust-lang/rust/pull/128600)
- "`optimize` attribute applied to things other than methods/functions/c…" [rust#128943](https://github.com/rust-lang/rust/pull/128943)
- "Gate `repr(Rust)` correctly on non-ADT items" [rust#129422](https://github.com/rust-lang/rust/pull/129422)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [66 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [38 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 1 P-high, 3 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 5 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 36 P-high, 100 P-medium, 16 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- None

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- [SIGTRAP during compilation on MacOS · Issue #129887 · rust-lang/rust](https://github.com/rust-lang/rust/issues/129887)
  - issue just slipped from nightly to beta. Already fixed upstream in LLVM 19 ([comment](https://github.com/rust-lang/rust/issues/129887#issuecomment-2330461075))
- "regression: overflow evaluating the requirement" [rust#128887](https://github.com/rust-lang/rust/issues/128887)
  - accepted regression, some crates that regressed fixed downstream.
  - fixed by #129714 (beta backported) and #129073 (in progress), thus keeping it open for tracking purposes

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2024-09-03](https://github.com/Kobzol/rustc-perf/blob/ee7cd7e680ebf9d588ad23cc0f1ba32b3caf1813/triage/2024-09-03.md)

This week we had some trouble with our performance bot, but luckily the issue has been resolved.
In the end, we saw much more improvements than regressions.

Triage done by **@kobzol**.
Revision range: [acb4e8b6..6199b69c](https://perf.rust-lang.org/?start=acb4e8b6251f1d8da36f08e7a70fa23fc581839e&end=6199b69c53a8c275ca3cd59647ea0af5ca29aae2&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 0.3%  | [0.2%, 0.4%]   | 8     |
| Regressions ❌ <br /> (secondary)  | 0.7%  | [0.2%, 1.5%]   | 9     |
| Improvements ✅ <br /> (primary)   | -0.8% | [-3.4%, -0.2%] | 158   |
| Improvements ✅ <br /> (secondary) | -0.7% | [-2.3%, -0.2%] | 96    |
| All ❌✅ (primary)                 | -0.7% | [-3.4%, 0.4%]  | 166   |


2 Regressions, 3 Improvements, 1 Mixed; 3 of them in rollups
19 artifact comparisons made in total

#### Regressions

Rollup of 7 pull requests [#129750](https://github.com/rust-lang/rust/pull/129750) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=784d444733d65c3d305ce5edcbb41e3d0d0aee2e&end=0d634185dfddefe09047881175f35c65d68dcff1&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 0.4% | [0.3%, 0.5%] | 7     |
| Regressions ❌ <br /> (secondary)  | 6.0% | [6.0%, 6.0%] | 1     |
| Improvements ✅ <br /> (primary)   | -    | -            | 0     |
| Improvements ✅ <br /> (secondary) | -    | -            | 0     |
| All ❌✅ (primary)                 | 0.4% | [0.3%, 0.5%] | 7     |

- This was bimodal noise.

Rollup of 8 pull requests [#129922](https://github.com/rust-lang/rust/pull/129922) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6199b69c53a8c275ca3cd59647ea0af5ca29aae2&end=d6c8169c186ab16a3404cd0d0866674018e8a19e&stat=instructions:u)

| (instructions:u)                   | mean | range        | count |
|:----------------------------------:|:----:|:------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -    | -            | 0     |
| Regressions ❌ <br /> (secondary)  | 5.8% | [5.8%, 5.8%] | 1     |
| Improvements ✅ <br /> (primary)   | -    | -            | 0     |
| Improvements ✅ <br /> (secondary) | -    | -            | 0     |
| All ❌✅ (primary)                 | -    | -            | 0     |

- Likely the same story, just with a different benchmark.
- Not marking as triaged yet.

#### Improvements

Rollup of 15 pull requests [#129809](https://github.com/rust-lang/rust/pull/129809) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=fa72f0763de6bc1596208fc1419883ce5aea0de4&end=9649706eada1b2c68cf6504356efb058f68ad739&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -     | -              | 0     |
| Regressions ❌ <br /> (secondary)  | -     | -              | 0     |
| Improvements ✅ <br /> (primary)   | -0.3% | [-0.9%, -0.2%] | 21    |
| Improvements ✅ <br /> (secondary) | -0.7% | [-5.9%, -0.1%] | 18    |
| All ❌✅ (primary)                 | -0.3% | [-0.9%, -0.2%] | 21    |


Revert "Auto merge of #127537 - veluca93:struct_tf, r=BoxyUwU" [#129854](https://github.com/rust-lang/rust/pull/129854) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a48861a6279b386ad2b9c3518490181d238fe727&end=94885bc699512cfee8560e73c2a01ee6b4b76563&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | -     | -              | 0     |
| Regressions ❌ <br /> (secondary)  | -     | -              | 0     |
| Improvements ✅ <br /> (primary)   | -0.4% | [-1.1%, -0.2%] | 81    |
| Improvements ✅ <br /> (secondary) | -0.5% | [-2.2%, -0.2%] | 24    |
| All ❌✅ (primary)                 | -0.4% | [-1.1%, -0.2%] | 81    |

- Revert of an earlier PR that had larger than expected regressions.
- Investigation is ongoing on how to land it without such large regressions.

Apply size optimizations to panic machinery and some cold functions [#129063](https://github.com/rust-lang/rust/pull/129063) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=94885bc699512cfee8560e73c2a01ee6b4b76563&end=e71f9529121ca8f687e4b725e3c9adc3f1ebab4d&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 0.2%  | [0.2%, 0.2%]   | 2     |
| Regressions ❌ <br /> (secondary)  | -     | -              | 0     |
| Improvements ✅ <br /> (primary)   | -1.2% | [-3.0%, -0.3%] | 16    |
| Improvements ✅ <br /> (secondary) | -1.0% | [-1.5%, -0.4%] | 4     |
| All ❌✅ (primary)                 | -1.0% | [-3.0%, 0.2%]  | 18    |


#### Mixed

Rewrite lint_expectations in a single pass. [#127313](https://github.com/rust-lang/rust/pull/127313) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1a1cc050d8efc906ede39f444936ade1fdc9c6cb&end=a48861a6279b386ad2b9c3518490181d238fe727&stat=instructions:u)

| (instructions:u)                   | mean  | range          | count |
|:----------------------------------:|:-----:|:--------------:|:-----:|
| Regressions ❌ <br /> (primary)    | 0.4%  | [0.3%, 0.4%]   | 9     |
| Regressions ❌ <br /> (secondary)  | 0.6%  | [0.2%, 1.5%]   | 14    |
| Improvements ✅ <br /> (primary)   | -0.5% | [-1.5%, -0.2%] | 82    |
| Improvements ✅ <br /> (secondary) | -0.7% | [-1.8%, -0.1%] | 58    |
| All ❌✅ (primary)                 | -0.4% | [-1.5%, 0.4%]  | 91    |

- More improvements than regressions, marking as triaged.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Tracking peak total storage use" [rust#129808](https://github.com/rust-lang/rust/issues/129808)
  - nominated by @**Jubilee**
  - Context: last week our CI started to fail due to not having enough storage available
  - Questions for all teams:
    > - Are we aware of past efforts being aware of whether or not we have reduced the size?
    > - What information is [t-compiler] currently tracking re: size?
    > - What information would [t-compiler] like to have available re: size?
- "Add Unicode block-drawing compiler output support" [rust#126597](https://github.com/rust-lang/rust/pull/126597)
  - Proposal from @**Esteban Küber**
  - Nominated by @**León Orell Liehr (fmease)** (assigned reviewer), asks if this proposal would benefit from some sort of agreement from T-compiler (MCP or other)
  - More context [here](https://github.com/rust-lang/rust/pull/126597#issuecomment-2267602708) and [here](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/Unstable.20Unicode.20box.20drawing.20support.20for.20diagnostics.3A.20MCP.3F/near/467577067)

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "fix: get llvm type of global val" [rust#128820](https://github.com/rust-lang/rust/pull/128820) (last review activity: about 21 days ago)
  - cc @**Nikita Popov**
- "Implement a lint for implicit autoref of raw pointer dereference - take 2" [rust#123239](https://github.com/rust-lang/rust/pull/123239)
  - cc: @**León Orell Liehr (fmease)**
- "Apply `EarlyOtherwiseBranch` to scalar value" [rust#129047](https://github.com/rust-lang/rust/pull/129047) (last review activity: about 22 days ago)
  - cc: @**cjgillot**

## Next week's WG checkins

None

Next meetings' agenda draft: [hackmd link](https://hackmd.io/XV_FIeKwRx2TTtvsbVuTFA)
