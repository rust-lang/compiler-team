---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2021-07-29

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Tomorrow <time:2021-07-30T10:00:00-04:00>: We have our planning meeting for the August steering meeting cycle. There is currently [one proposal](https://github.com/rust-lang/compiler-team/issues?q=is%3Aissue+is%3Aopen+label%3Ameeting-proposal++-label%3Ameeting-scheduled), perhaps more ideas.
- :confetti: Today July, 29th release Rust stable 1.54 :confetti:

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Make `resolve_instance` fallible" [compiler-team#449](https://github.com/rust-lang/compiler-team/issues/449) 
  - "Reproducible command line + determinism" [compiler-team#450](https://github.com/rust-lang/compiler-team/issues/450) 
- Old MCPs (not seconded, take a look)
  - "Add different entry points for x.py" [compiler-team#396](https://github.com/rust-lang/compiler-team/issues/396) (last comment: 6 months ago)
  - "rustdoc is using rustc_ast_pretty, would it be possible to make it somewhat "stable"?" [compiler-team#403](https://github.com/rust-lang/compiler-team/issues/403) (last comment: 5 months ago)
  - "Don't steal the resolver when lowering HIR; instead store an immutable resolver in TyCtxt" [compiler-team#437](https://github.com/rust-lang/compiler-team/issues/437) (last comment: about 48 days ago)
  - "CI should exercise (subset of) tests under --stage 1" [compiler-team#439](https://github.com/rust-lang/compiler-team/issues/439) (last comment: about 27 days ago)
  - "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441) (last comment: about 27 days ago)
  - "Non exhaustive reachable patterns lint" [compiler-team#445](https://github.com/rust-lang/compiler-team/issues/445) (last comment: about 12 days ago)
- Pending FCP requests (check your boxes!)
  - "Write text output files to stdout if options like `-o -` or `--emit asm=-` are provided" [compiler-team#431](https://github.com/rust-lang/compiler-team/issues/431) 
  - "Preserve, clarify, and extend debug information" [rust#83947](https://github.com/rust-lang/rust/pull/83947) 
- Things in FCP (make sure you're good with it)
  - "Encode spans relative to the enclosing item" [compiler-team#443](https://github.com/rust-lang/compiler-team/issues/443) 
  - "Don't abort compilation after giving a lint error" [compiler-team#447](https://github.com/rust-lang/compiler-team/issues/447) 
  - "Rename various internal things" [compiler-team#451](https://github.com/rust-lang/compiler-team/issues/451) 
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - "Stabilize `const_fn_transmute`, `const_fn_union`" [rust#85769](https://github.com/rust-lang/rust/pull/85769) 
  - "Stabilize `arbitrary_enum_discriminant`" [rust#86860](https://github.com/rust-lang/rust/pull/86860) 

### WG checkins

- @*wg-incr-comp* by @**pnkfelix** @**Wesley Wiser** 
> The working group has been largely dormant. pnkfelix is hoping to fire things up again, and is [seeking input](https://rust-lang.zulipchat.com/#narrow/stream/241847-t-compiler.2Fwg-incr-comp/topic/what.E2.80.99s.20best.20way.20to.20drive.20conversation.20here.3F/near/247287693) about when/how to drive activity.

- @*WG-llvm* by @**nagisa** ([past summary](https://hackmd.io/YIIP5vCnSjOYogzRSlJ9MQ?view))
> Checkin text

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Always preserve sub-obligations in the projection cache" [rust#85868](https://github.com/rust-lang/rust/pull/85868)
  - [discussed last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-07-22.20.2354818/near/246855877)
  - Discussion seems was oriented to not backport this to 1.54, to re-enable incr-comp (at least we now have more useful error messages) and attempt to merge it into next beta 1.55
  - makes sense to remove beta-backport nomination?
- No stable nominations for `T-compiler` this time.

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.
- No stable nominations for `T-rustdoc` this time.

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

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [79 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [53 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 0 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 44 P-high, 80 P-medium, 9 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Unstable fingerprints - what to do on beta (and stable)" [rust#84970](https://github.com/rust-lang/rust/issues/84970) 

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "`match` an `std::cmp::Ordering` generates less optimized code in nightly" [rust#86511](https://github.com/rust-lang/rust/issues/86511)
  - issue was commented and a bit discussed but probably needs an owner
  - @_*WG-prioritization*  tentatively assigned a `P-high` to make it float and perhaps not miss the next stable

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs 2021-07-27](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-07-27.md)

A very quiet week with only improvements. There was one possible regression, but it was removed from consideration due to only barely impacting a somewhat noisy stress-test benchmark. Untriaged pull requests continue to pile up, but there is still not a good process for dealing with them. 

Triage done by **@rylev**.

0 Regressions, 3 Improvements, 0 Mixed; 0 of them in rollups

#### Regressions

Support HIR wf checking for function signatures [#87265](https://github.com/rust-lang/rust/issues/87265)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=7db08eeb0057de86ea2bdbd4c3a085cb8516b653&end=7c89e389d00cfc7e86ae7e1b45880da4f5f5c9f5&stat=instructions:u) (up to 1.1% on `full` builds of `externs-opt`)
- Given that this only impacts the somewhat noisy `externs` stress-test benchmark, it's not clear that we should treat this as an actual regression. 

#### Improvements

- Improve caching during trait evaluation  [#86946](https://github.com/rust-lang/rust/issues/86946)
- Make mir borrowck's use of opaque types independent of the typeck query's result [#87287](https://github.com/rust-lang/rust/issues/87287)
- Store all HIR owners in the same container [#83723](https://github.com/rust-lang/rust/issues/83723)

#### Mixed

None

#### Untriaged Pull Requests

- [#87244 Better diagnostics with mismatched types due to implicit static lifetime](https://github.com/rust-lang/rust/pull/87244)
- [#86777 Include terminators in instance size estimate](https://github.com/rust-lang/rust/pull/86777)
- [#86698 Move OnDiskCache to rustc_query_impl.](https://github.com/rust-lang/rust/pull/86698)
- [#86588 Rollup of 8 pull requests](https://github.com/rust-lang/rust/pull/86588)
- [#86034 Change entry point to 🛡️ against 💥 💥-payloads](https://github.com/rust-lang/rust/pull/86034)
- [#84560 Inline Iterator as IntoIterator.](https://github.com/rust-lang/rust/pull/84560)

#### Nags requiring follow up

None

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "Binary size is significant increased from `1.46.0` to `1.51.0`" [rust#86610](https://github.com/rust-lang/rust/issues/86610)
  - briefly mentioned last week, discussion postponed to this week
  - issue nominated as FIY for T-compiler
  - perhaps related to one or more issues about the same theme (see mentioned issues, ex. [rust#86431](https://github.com/rust-lang/rust/issues/86431) was mentioned)
  - Actionable for this issue? Can this be tracked in perf? Worth a `P-high` to keep it visible on the radar?

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.
