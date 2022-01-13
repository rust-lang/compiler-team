---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-01-06

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Next week, Jan. the 13rd, the new stable release 1.58 is out
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Introduce a new linter for diagnostic meesages" [compiler-team#478](https://github.com/rust-lang/compiler-team/issues/478) 
- Old MCPs (not seconded, take a look)
  - "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441) (last review activity: 6 months ago)
  - "Make `-Z binary-dep-depinfo` the default behavior" [compiler-team#464](https://github.com/rust-lang/compiler-team/issues/464) (last review activity: 3 months ago)
  - "Tier 3 target proposal: riscv64gc-linux-android (Android target for `riscv64gc`)" [compiler-team#472](https://github.com/rust-lang/compiler-team/issues/472) (last review activity: about 27 days ago)
  - "`-Dwarnings` to cover all warnings" [compiler-team#473](https://github.com/rust-lang/compiler-team/issues/473) (last review activity: about 27 days ago)
  - "Build-time execution sandboxing" [compiler-team#475](https://github.com/rust-lang/compiler-team/issues/475) (last review activity: about 10 days ago)
- Pending FCP requests (check your boxes!)
  - "Stabilize `-Z instrument-coverage` as `-C instrument-coverage`" [rust#90132](https://github.com/rust-lang/rust/pull/90132#issuecomment-992952031) 
  - "Stabilize `-Z print-link-args` as `-C print-link-args`" [rust#91606](https://github.com/rust-lang/rust/pull/91606#issuecomment-992960418) 
- Things in FCP (make sure you're good with it)
  - "CI should exercise (subset of) tests under --stage 1" [compiler-team#439](https://github.com/rust-lang/compiler-team/issues/439) 
  - "Adding known bugs to test cases" [compiler-team#476](https://github.com/rust-lang/compiler-team/issues/476) 
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - "Remove effect of `#[no_link]` attribute on name resolution" [rust#92034](https://github.com/rust-lang/rust/pull/92034) 
  
### WG checkins

- @_WG-diagnostics_ by @**Esteban Küber** and @**oli** ([previous checkin](https://hackmd.io/czhRhn0rSaib7Pnr5ZvDUg?view#WG-checkins)):
> The biggest team impacting thing is the linter, which is now under MCP (I'm not fully convinced about the current approach)
> besides that, there have been very small improvements and a lot of smallish regressions that have been triaged

- @_*WG-rustc-dev-guide* by @__**Santiago Pastorino** and @**Yuki Okushi|217081** ([previous checkin](https://hackmd.io/czhRhn0rSaib7Pnr5ZvDUg?view#WG-checkins)):
> Checkin text

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No backport nominations for `T-compiler` this time.

[T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Stabilize `-Z print-link-args` as `-C print-link-args`" [rust#91606](https://github.com/rust-lang/rust/pull/91606)
  - Moved to `disposition-merge`, raised a concern about the flag naming (suggested solution: `--print link-args` for uniformity)  
  - @**Josh Triplett** will investigate the flag renaming

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- "Properly track `ImplObligations`" [rust#91030](https://github.com/rust-lang/rust/pull/91030) (last active: 1 month ago)
  - latest reviews from @**estebank** and @**nagisa**, assigned to @**oli**
- "Let qpath contain NtTy: `<$:ty as $:ty>::…`" [rust#91150](https://github.com/rust-lang/rust/pull/91150) (last active: 1 month ago)
  - last review from @**Vadim Petrochenkov**, assigned to @**wesley wiser**
- "improve type abiguity error for functions and methods" [rust#89862](https://github.com/rust-lang/rust/pull/89862)
  - [mentioned](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-12-16.20.2354818/near/265174094) about 2 weeks ago
- "debuginfo: Add script for Rust support in lldb-mi" [rust#89163](https://github.com/rust-lang/rust/pull/89163)
  - [previously discussed](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-10-28.20.2354818/near/259399084)
  - assigned to @**pnkfelix**
  - consensus was to close the PR explaining why
  - (now closed)

## Issues of Note

### Short Summary

- [2 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [79 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [52 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 1 P-high, 0 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 1 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [2 P-critical, 52 P-high, 81 P-medium, 12 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Compile-time regression between 1.56.1 and 1.57.0 for deeply nested decorator types" [rust#91598](https://github.com/rust-lang/rust/issues/91598)
  - very positive feedback is coming in from users: next steps for this issue?

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "toml 0.4.9 to 0.5.3 compile for a long time on 2021-10-02 nightly" [rust#89524](https://github.com/rust-lang/rust/issues/89524)
  - Issue seems to be (somehow) related to the new LLVM 13 pass manager
  - @**Nikita Popov** [suggested](https://github.com/rust-lang/rust/issues/89524#issuecomment-974366982) cherry picking from https://reviews.llvm.org/D98481 
  - regression is prioritized `P-medium`, should it be bumped up a little bit?
  - related: can [rust#74705](https://github.com/rust-lang/rust/issues/74705) be updated/closed?

## Performance logs

> [triage logs 2022-01-04](https://github.com/rust-lang/rustc-perf/blob/master/triage/2022-01-04.md)

It was a relatively calm, but good week overall. Most of the gains were improvements to rustdoc running times.

Triage done by **@pnkfelix**.
Revision range: [e91ad5fc62bdee4a29c18baa5fad2ca42fc91bf4..2b681ac06b1a6b7ea39525e59363ffee0d1a68e5](https://perf.rust-lang.org/?start=e91ad5fc62bdee4a29c18baa5fad2ca42fc91bf4&end=2b681ac06b1a6b7ea39525e59363ffee0d1a68e5&absolute=false&stat=instructions%3Au)

1 Regressions, 6 Improvements, 1 Mixed; 0 of them in rollups
30 Untriaged PRs
38 comparisons made in total

#### Regressions

rustc_metadata: Merge items from `extern` blocks into their parent modules during metadata encoding rather than during metadata decoding [#92153](https://github.com/rust-lang/rust/issues/92153)
- Small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=e91ad5fc62bdee4a29c18baa5fad2ca42fc91bf4&end=442248d6bcc00693922941eb5a9f241e0e9da2c0&stat=instructions:u) (up to 1.2% on `incr-unchanged` builds of `deeply-nested-closures`)
- Seems like it might be noise (all of the data points are annotated with "?").
- Left a [comment](https://github.com/rust-lang/rust/pull/92153#issuecomment-1005109842) saying even if this is real, it is justifiable.

#### Improvements

- rustdoc: Remove `String` allocation in iteration in `print_generic_bounds` [#92283](https://github.com/rust-lang/rust/issues/92283)
- Reverts #92135 because perf regression [#92291](https://github.com/rust-lang/rust/issues/92291)
- rustc_metadata: Encode list of all crate's traits into metadata [#92244](https://github.com/rust-lang/rust/issues/92244)
- Import `SourceFile`s from crate before decoding foreign `Span` [#92175](https://github.com/rust-lang/rust/issues/92175)
- Add Attribute::meta_kind [#92294](https://github.com/rust-lang/rust/issues/92294)
- Do not use LEB128 for encoding u16 and i16 [#92314](https://github.com/rust-lang/rust/issues/92314)

#### Mixed

Mark drop calls in landing pads `cold` instead of `noinline` [#92419](https://github.com/rust-lang/rust/issues/92419)
- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=028c6f1454787c068ff5117e9000a1de4fd98374&end=4f49627c6fe2a32d1fed6310466bb0e1c535c0c0&stat=instructions:u) (up to -8.2% on `full` builds of `issue-46449`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=028c6f1454787c068ff5117e9000a1de4fd98374&end=4f49627c6fe2a32d1fed6310466bb0e1c535c0c0&stat=instructions:u) (up to 1.5% on `incr-full` builds of `ripgrep`)
- This was expected. Left a [comment](https://github.com/rust-lang/rust/pull/92419#issuecomment-1005122279).

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Tracking issue for plugin stabilization (`plugin`, `plugin_registrar` features)"
[rust#29597](https://github.com/rust-lang/rust/issues/29597) 
  - briefly mentioned in [T-compiler meeting](Tracking issue for plugin stabilization) about 2 months ago
  - @**Josh Triplett** asked what's still using plugin support ([comment](https://github.com/rust-lang/rust/issues/29597#issuecomment-965644083))
  - what's the actionable for `T-compiler` right now? Is it mostly a `T-lang` topic?

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.