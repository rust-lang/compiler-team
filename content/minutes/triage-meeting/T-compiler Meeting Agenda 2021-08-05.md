---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2021-08-05

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements
  
### MCPs/FCPs  
  
- New MCPs (take a look, see if you like them!)
  - "Make AST->HIR lowering incremental" [compiler-team#452](https://github.com/rust-lang/compiler-team/issues/452) 
- Old MCPs (not seconded, take a look)
  - "Add different entry points for x.py" [compiler-team#396](https://github.com/rust-lang/compiler-team/issues/396) (last comments: GH 6m ago, Zulip 20d ago)
  - "rustdoc is using rustc_ast_pretty, would it be possible to make it somewhat "stable"?" [compiler-team#403](https://github.com/rust-lang/compiler-team/issues/403) (last comments: GH 6m ago, Zulip 25d ago)
  - "Don't steal the resolver when lowering HIR; instead store an immutable resolver in TyCtxt" [compiler-team#437](https://github.com/rust-lang/compiler-team/issues/437) (last comments: GH 55d ago, Zulip 41d ago)
  - "CI should exercise (subset of) tests under --stage 1" [compiler-team#439](https://github.com/rust-lang/compiler-team/issues/439) (last comments: GH 49d ago, Zulip none)
  - "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441) (last comments: GH 34d ago, Zulip 45d ago)
  - "Non exhaustive reachable patterns lint" [compiler-team#445](https://github.com/rust-lang/compiler-team/issues/445) (last comments: GH 28d ago, Zulip 15d ago)
  - "Make `resolve_instance` fallible" [compiler-team#449](https://github.com/rust-lang/compiler-team/issues/449) (last comments: GH 10d ago, Zulip none)
  - "Reproducible command line + determinism" [compiler-team#450](https://github.com/rust-lang/compiler-team/issues/450) (last comments: GH 9d ago, Zulip 6d ago)
- Pending FCP requests (check your boxes!)
  - "Write text output files to stdout if options like `-o -` or `--emit asm=-` are provided" [compiler-team#431](https://github.com/rust-lang/compiler-team/issues/431) 
  - "Preserve, clarify, and extend debug information" [rust#83947](https://github.com/rust-lang/rust/pull/83947) 
- Things in FCP (make sure you're good with it)
  - "Don't abort compilation after giving a lint error" [compiler-team#447](https://github.com/rust-lang/compiler-team/issues/447) 
  - "Rename various internal things" [compiler-team#451](https://github.com/rust-lang/compiler-team/issues/451) 
- Accepted MCPs
  - "Encode spans relative to the enclosing item" [compiler-team#443](https://github.com/rust-lang/compiler-team/issues/443) 
- Finalized FCPs (disposition merge)
  - "Stabilize `const_fn_transmute`, `const_fn_union`" [rust#85769](https://github.com/rust-lang/rust/pull/85769) 
  - "Associated functions that contain extern indicator or have `#[rustc_std_internal_symbol]` are reachable" [rust#86492](https://github.com/rust-lang/rust/pull/86492) 
  - "Allow reifying intrinsics to `fn` pointers." [rust#86699](https://github.com/rust-lang/rust/pull/86699) 
  - "Stabilize `arbitrary_enum_discriminant`" [rust#86860](https://github.com/rust-lang/rust/pull/86860)
  
### WG checkins

@*WG-mir-opt* by @**oli**:
> [wg-mir-opt is out of review capacity](https://rust-lang.zulipchat.com/#narrow/stream/189540-t-compiler.2Fwg-mir-opt/topic/wg-mir-opt.20is.20out.20of.20review.20capacity). We have several open PRs but no one to review them. We could move to a more permissive model where we add new mir opts that are too large to review properly (at present) into the unsound mir opt list (or at least mir opt level 4). This way they don't bitrot and people can try them, but quality suffers.

@wg-polymorphization by @**davidtwco**:
> There's no update from the polymorphization working group. Everyone involved is working on other things. 
> 
> @_**davidtwco** is starting a new job in September where he'll be working on rustc and should be able to contribute more soon!

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)

- unilateral beta backport [rust#87483](https://github.com/rust-lang/rust/pull/87483) "Mir borrowck does not generate lifetime variables for 'static lifetimes during opaque type resolution"

- :beta: "Always preserve sub-obligations in the projection cache" [rust#85868](https://github.com/rust-lang/rust/pull/85868)
  - [discussed last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-07-29.20.2354818/near/247588561)
  - @**Wesley Wiser** [comments](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-07-29.20.2354818/near/247588679) this should reviewed & merged on nightly before we talk about beta backports
  - @**pnkfelix** [comments](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-07-29.20.2354818/near/247588695): also premature to discuss beta backporting so let's keep it nominated as a reminder
- :beta: "Update compiler_builtins to fix i128 shift/mul on thumbv6m" [rust#87633](https://github.com/rust-lang/rust/pull/87633)
  - opened by @**Amanieu**
  - nominated by @**simulacrum**, patch seems harmless (see [comment](https://github.com/rust-lang/rust/pull/87633#issuecomment-890556479))
  - fixes [rust#86063](https://github.com/rust-lang/rust/issues/86063), a bug in LLVM expansion of 128-bit shifts (see [comment](https://github.com/rust-lang/rust/issues/86063#issuecomment-886555639))
  - slipped into stable but we can still backport to beta

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Encode spans relative to the enclosing item" [rust#84373](https://github.com/rust-lang/rust/pull/84373) 
  - opened by @**cjgillot** 
  - assigned to @**Aaron Hill** @**mw** @**Vadim Petrochenkov**
  - @**cjgillot** opened [MCP #443](https://github.com/rust-lang/compiler-team/issues/443) (currently in closing FCP phase)
  - [discussed last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-07-22.20.2354818/near/246853451), @*wg-incr-comp* could have a discussion about this after the 1.54 release and the next beta cut
- "Wrap libraries in linker groups, allowing backwards/circular references" [rust#85805](https://github.com/rust-lang/rust/pull/85805)
  - discussed last week
  - @**nagisa** commented it could be potentially troublesome
  - @**Vadim Petrochenkov** [mentioned to postpone for a few months](https://github.com/rust-lang/rust/pull/85805#issuecomment-868825690)
  - @**pnkfelix** suggested to draft a MCP to boost signal for this PR
- "Ignore comments in tidy-filelength" [rust#87462](https://github.com/rust-lang/rust/pull/87462)
  - Opened by @**Ibraheem Ahmed** 
  - PR goal seems to be to avoid nagging on long files if the length is primarily due to comment lines
  - @**simulacrum** [suggests](https://github.com/rust-lang/rust/pull/87462#issuecomment-890577887) an MCP could be a better fit

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [81 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [54 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 2 P-high, 0 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 1 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 44 P-high, 81 P-medium, 9 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Unstable fingerprints - what to do on beta (and stable)" [rust#84970](https://github.com/rust-lang/rust/issues/84970)
  - @**pnkfelix** [suggested](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-07-29.20.2354818/near/247590391) that we could downgrade after evaluating the bug reporting after the release of 1.54

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "`match` an `std::cmp::Ordering` generates less optimized code in nightly" [rust#86511](https://github.com/rust-lang/rust/issues/86511) 
  - the idea was to offer mentorship to @**Simon Chan** to drive the issue investigation (maybe leave a message in the issue?)
- "ICE: unexpected concrete region in borrowck: ReStatic" [rust#87455](https://github.com/rust-lang/rust/issues/87455)
  - @**oli** reopened and [comments](https://github.com/rust-lang/rust/issues/87455#issuecomment-889839189) that this needs a backport

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2021-08-03](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-08-03.md)

Quiet week for performance, with no large changes. Regressions are limited to
just a few benchmarks.

Triage done by **@simulacrum**.
Revision range: [998cfe5aad7c21eb19a4bca50f05a13354706970..3354a44d2fa8d5ba6b8d6b40d2596de2c8292ec1](https://perf.rust-lang.org/?start=998cfe5aad7c21eb19a4bca50f05a13354706970&end=3354a44d2fa8d5ba6b8d6b40d2596de2c8292ec1&absolute=false&stat=instructions%3Au)

2 Regressions, 0 Improvements, 0 Mixed; 1 of them in rollups

#### Regressions

Rollup of 9 pull requests [#87640](https://github.com/rust-lang/rust/issues/87640)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=ef9549b6c0efb7525c9b012148689c8d070f9bc0&end=1f0a591b3a5963a0ab11a35dc525ad9d46f612e4&stat=instructions:u) (up to 1.4% on `incr-unchanged` builds of `html5ever-check`)
- Regressions across a few benchmarks, without an obvious cause. May be due to
  [#87385](https://github.com/rust-lang/rust/pull/87385), but logs don't appear
  to show the warning in those crates at a cursory check. Tagged with
  perf-regression for further investigation.

Implement advance_by, advance_back_by for slice::{Iter, IterMut} [#87387](https://github.com/rust-lang/rust/issues/87387)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=b289bb7fdfcb6f54d825927ab9b5722cabc2a140&end=6b0b07d41f07e1ba5808693d900903499ccf7a32&stat=instructions:u) (up to 1.6% on `full` builds of `regex-opt`)
- Unclear cause, likely LLVM-related.

#### Improvements

- None this week.

#### Mixed

- None this week.

#### Untriaged Pull Requests

- [#87244 Better diagnostics with mismatched types due to implicit static lifetime](https://github.com/rust-lang/rust/pull/87244)
- [#86777 Include terminators in instance size estimate](https://github.com/rust-lang/rust/pull/86777)
- [#86698 Move OnDiskCache to rustc_query_impl.](https://github.com/rust-lang/rust/pull/86698)
- [#86588 Rollup of 8 pull requests](https://github.com/rust-lang/rust/pull/86588)
- [#86034 Change entry point to 🛡️ against 💥 💥-payloads](https://github.com/rust-lang/rust/pull/86034)
- [#84560 Inline Iterator as IntoIterator.](https://github.com/rust-lang/rust/pull/84560)

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "Binary size is significant increased from `1.46.0` to `1.51.0`" [rust#86610](https://github.com/rust-lang/rust/issues/86610)
  - Added an action item on [HackMD](https://hackmd.io/5BtjuenFTn6M74IDwLOjgw)

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.
