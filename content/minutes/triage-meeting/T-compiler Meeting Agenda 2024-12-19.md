---
tags: weekly, rustc
type: docs
note_id: x1y_Il7xQueg05-PaGbAbg
---

# T-compiler Meeting Agenda 2024-12-19

## Announcements

- Steering meeting: Rust Project Goal Review <time:2024-12-20T16:00:00+01:00>
- T-compiler planning meeting <time:2024-12-20T16:00:00+01:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

- Stable MIR Weekly Meeting <time:2024-12-20T17:00:00+01:00>
- @_**davidtwco** office hours <time:2024-12-20T17:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - None
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 3 months ago)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: 2 months ago)
  - "Add `evex512` target feature for AVX10" [compiler-team#778](https://github.com/rust-lang/compiler-team/issues/778) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60evex512.60.20target.20feature.20for.20AVX10.20compiler-team.23778)) (last review activity: about 13 days ago)
    - concern: [design-around-naming-scheme](https://github.com/rust-lang/compiler-team/issues/778#issuecomment-2514307904)
  - "Policy change around adding new unstable flags" [compiler-team#787](https://github.com/rust-lang/compiler-team/issues/787) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.20change.20around.20adding.20new.20unstable.20.E2.80.A6.20compiler-team.23787)) (last review activity: 2 months ago)
  - "Normalize FileCheck directives" [compiler-team#789](https://github.com/rust-lang/compiler-team/issues/789) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Normalize.20FileCheck.20directives.20compiler-team.23789)) (last review activity: 2 months ago)
  - "Relink, don't rebuild" [compiler-team#790](https://github.com/rust-lang/compiler-team/issues/790) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Relink.2C.20don.27t.20rebuild.20compiler-team.23790)) (last review activity: 2 months ago)
  - "Create an avr-unknown-none target" [compiler-team#800](https://github.com/rust-lang/compiler-team/issues/800) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Create.20an.20avr-unknown-unknown.20target.20compiler-team.23800)) (last review activity: about 39 days ago)
- Pending FCP requests (check your boxes!)
  - "sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets" [rust#123617](https://github.com/rust-lang/rust/pull/123617)
  - "const-eval: detect more pointers as definitely not-null" [rust#133700](https://github.com/rust-lang/rust/pull/133700)
- Things in FCP (make sure you're good with it)
  - "Make the test cfg a userspace check-cfg" [compiler-team#785](https://github.com/rust-lang/compiler-team/issues/785) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Make.20the.20test.20cfg.20a.20userspace.20check-cfg.20compiler-team.23785))
  - "Use debuginfo for short backtrace printing" [compiler-team#818](https://github.com/rust-lang/compiler-team/issues/818) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Use.20debuginfo.20for.20short.20backtrace.20printing.20compiler-team.23818))
  - "Policy: rustc can be run on case-insensitive filesystems but works in a case-sensitive way" [compiler-team#819](https://github.com/rust-lang/compiler-team/issues/819) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Policy.3A.20case.20insensitive.20filesystems.20are.20.E2.80.A6.20compiler-team.23819))
  - "T-compiler Supplemental Tool Policy (Linker Scripts, etc.)" [compiler-team#820](https://github.com/rust-lang/compiler-team/issues/820) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/T-compiler.20Supplemental.20Tool.20Policy.20.28Link.E2.80.A6.20compiler-team.23820))
- Accepted MCPs
  - "Promote OpenHarmony targets to Tier 2 with Host Tools" [compiler-team#811](https://github.com/rust-lang/compiler-team/issues/811) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20OpenHarmony.20targets.20to.20Tier.202.20wit.E2.80.A6.20compiler-team.23811))
  - "Set the baseline Solaris version to 11.4" [compiler-team#812](https://github.com/rust-lang/compiler-team/issues/812) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Set.20the.20baseline.20Solaris.20version.20to.2011.2E4.20compiler-team.23812))
  - "Remove -Zinline-in-all-cgus" [compiler-team#814](https://github.com/rust-lang/compiler-team/issues/814) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Remove.20-Zinline-in-all-cgus.20compiler-team.23814))
- MCPs blocked on unresolved concerns
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
  - "setup typos check in CI (for rust repo)" [compiler-team#817](https://github.com/rust-lang/compiler-team/issues/817) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/setup.20typos.20check.20in.20CI.20.28for.20rust.20repo.29.20compiler-team.23817))
    - concern: [contributor friction](https://github.com/rust-lang/compiler-team/issues/817#issuecomment-2525266792)
- Finalized FCPs (disposition merge)
  - "Add `--print host-tuple` to print host target tuple" [rust#125579](https://github.com/rust-lang/rust/pull/125579)
  - "make unsupported_calling_conventions a hard error" [rust#129935](https://github.com/rust-lang/rust/pull/129935)
  - "Fix ICE when passing DefId-creating args to legacy_const_generics." [rust#130443](https://github.com/rust-lang/rust/pull/130443)
  - "Stabilize WebAssembly `multivalue`, `reference-types`, and `tail-call` target features" [rust#131080](https://github.com/rust-lang/rust/pull/131080)
  - "Lint on combining `#[no_mangle]` and `#[export_name]`" [rust#131558](https://github.com/rust-lang/rust/pull/131558)
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
  - "Always display first line of impl blocks even when collapsed" [rust#132155](https://github.com/rust-lang/rust/pull/132155)
  - "rework winnowing to sensibly handle global where-bounds" [rust#132325](https://github.com/rust-lang/rust/pull/132325)
  - "mark is_val_statically_known intrinsic as stably const-callable" [rust#132449](https://github.com/rust-lang/rust/pull/132449)
  - "Fix ICE when multiple supertrait substitutions need assoc but only one is provided" [rust#133392](https://github.com/rust-lang/rust/pull/133392)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta:"Make sure we handle `backwards_incompatible_lint` drops appropriately in drop elaboration" [rust#134486](https://github.com/rust-lang/rust/pull/134486)
  - Authored and nominated by compiler-errors (will be reviewed by Niko)
  - Fixes a P-critical unsoundness originated in #131326 (doubly freeing memory if Rust 2024 edition is enabled)
  - [Comment](https://github.com/rust-lang/rust/pull/134486#issuecomment-2552548247) from @_*ehuss*:
    > This approach of using MIR to implement the lint means that it does not work with `cargo fix --edition`, because cargo check does not run far enough to reach this. The only way for a user to see this is if they manually enable the lint and run a full build. I'm concerned that almost nobody will do that, making this ineffective.
  - Nominated since #131326 (the patch the issue originates from) already landed on beta
<!--
/poll Approve beta backport of #134486?
approve
decline
don't know
-->
- :beta:"Bump compiler `cc` to 1.2.5" [rust#134505](https://github.com/rust-lang/rust/pull/134505)
  - Authored and nominated by jieyouxu
  - upgrade cc-rs from 1.2.0 to 1.2.5 ([relevant changes](https://github.com/rust-lang/rust/pull/134505#issue-2749942026) and [changelog](https://github.com/rust-lang/cc-rs/compare/cc-v1.2.0...cc-v1.2.5))
  - unblocks fixing other issues (see [comment](https://github.com/rust-lang/cc-rs/pull/1322#issuecomment-2553081378))
<!--
/poll Approve beta backport of #134505?
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
- "Lint against `&T` to `&mut T` and `&T` to `&UnsafeCell<T>` transmutes" [rust#128351](https://github.com/rust-lang/rust/pull/128351)
  - changes were FCP'd by T-lang. Diff is `+1131 -93`, asked PR author is there's anything they can do to make it easier for us
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [59 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [36 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 1 P-high, 0 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 34 P-high, 100 P-medium, 20 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Double Drop with #![deny(rust_2024_compatibility)]" [rust#134482](https://github.com/rust-lang/rust/issues/134482)
  - Should be fixed by beta-backport nominated #134486

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- None

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

None this week

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Apple: Re-implement SDK discovery instead of using `xcrun`" [rust#131433](https://github.com/rust-lang/rust/pull/131433)
  - @_**pnkfelix** nominated for discussion ([comment](https://github.com/rust-lang/rust/pull/131433#issuecomment-2539149459)), mentions concerns about maintenaince
  - PR adds some logic to find the Apple SDK when compiling rustc (reasoning at [comment](https://github.com/rust-lang/rust/pull/131433#issuecomment-2539406670), should improve developer experience)
  - Part of #129432, work on the Apple targets

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "add error message for c# style named arguments" [rust#118733](https://github.com/rust-lang/rust/pull/118733) (last review activity: 11 months ago)
  - cc @**Esteban Küber**
- "Silence errors in expressions caused by bare traits in paths in 2021 edition" [rust#125784](https://github.com/rust-lang/rust/pull/125784) (last review activity: 6 months ago)
  - cc: @**Esteban Küber** for a rebase then cc: @_**León Orell Liehr (fmease)**
- "[Coverage][MCDC] Do not initialize mcdc parameters for instances containing no mcdc statements" [rust#129989](https://github.com/rust-lang/rust/pull/129989)
  - cc: @**Zalathar**
- "JumpThreading: fix bitwise not on non-booleans" [rust#131203](https://github.com/rust-lang/rust/pull/131203) (last review activity: about 44 days ago)
  - cc @**cjgillot**
- "[macro_metavar_expr_concat] Fix #128346" [rust#131522](https://github.com/rust-lang/rust/pull/131522) (last review activity: about 45 days ago)
  - cc: @**yukang**
