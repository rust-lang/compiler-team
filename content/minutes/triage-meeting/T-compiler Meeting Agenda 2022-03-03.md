---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2022-03-03

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Tomorrow we have our monthly [planning meeting](https://forge.rust-lang.org/compiler/steering-meeting.html) at <time:2022-03-04T15:00:00+01:00> ([Zulip topic](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/backlog.20bonanza.20prep))
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).
- Signal boost: Niko's proposal to create a team for traits, polonius, etc. (see [Zulip Topic](https://rust-lang.zulipchat.com/#narrow/stream/144729-wg-traits/topic/making.20a.20team.20for.20traits.2C.20polonius.2C.20etc))

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  -  "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441) (last review activity: 8 months ago)
  -  "Make `-Z binary-dep-depinfo` the default behavior" [compiler-team#464](https://github.com/rust-lang/compiler-team/issues/464) (last review activity: 5 months ago)
  -  "Tier 3 target proposal: riscv64gc-linux-android (Android target for `riscv64gc`)" [compiler-team#472](https://github.com/rust-lang/compiler-team/issues/472) (last review activity: 2 months ago)
  -  "`-Dwarnings` to cover all warnings" [compiler-team#473](https://github.com/rust-lang/compiler-team/issues/473) (last review activity: 2 months ago)
  -  "Build-time execution sandboxing" [compiler-team#475](https://github.com/rust-lang/compiler-team/issues/475) (last review activity: 2 months ago)
  -  "Dealing with type/const ambiguities" [compiler-team#480](https://github.com/rust-lang/compiler-team/issues/480) (last review activity: about 41 days ago)
- Pending FCP requests (check your boxes!)
  - "Stabilize native library modifier syntax and the `whole-archive` modifier specifically" [rust#93901](https://github.com/rust-lang/rust/pull/93901#issuecomment-1043124526) 
- Things in FCP (make sure you're good with it)
  - "allow arbitrary inherent impls in the standard library" [compiler-team#487](https://github.com/rust-lang/compiler-team/issues/487) 
- Accepted MCPs
  - "Simplify rustc_codegen_llvm::debuginfo::metadata" [compiler-team#482](https://github.com/rust-lang/compiler-team/issues/482) 
  - "Round-tripping hygienic ident serialization" [compiler-team#485](https://github.com/rust-lang/compiler-team/issues/485) 
- Finalized FCPs (disposition merge)
  - "Check if enum from foreign crate has any non exhaustive variants when attempting a cast" [rust#92744](https://github.com/rust-lang/rust/pull/92744) 
  - "Stabilize `#[cfg(panic = "...")]`" [rust#93658](https://github.com/rust-lang/rust/pull/93658) 
  - "Remove the everybody loops pass" [rust#93913](https://github.com/rust-lang/rust/pull/93913)

### WG checkins

- @_*WG-rls2.0* by @**matklad** ([previous checkin](https://hackmd.io/xxxxx#WG-checkins))
> Checkin text

- @_*WG-self-profile* by @**mw** and @**Wesley Wiser** ([previous checkin](https://hackmd.io/xxxxx#WG-checkins))
> nothing new since last report

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Check method input expressions once" [rust#94438](https://github.com/rust-lang/rust/pull/94438) 
  - PR opened by @**Michael Goulet (compiler-errors)** 
  - PR is merged
  - nominated for backport by @**Noah Lev**
  - backport pending resolution of [rust#94516](https://github.com/rust-lang/rust/issues/94516)
- :beta: "backport fix for #94502" [rust#94552](https://github.com/rust-lang/rust/pull/94552)
  - @**lcnr** authored PR, merge is in `beta` branch
  - @**oli** nominated for beta backport 
- No stable nominations for `T-compiler` this time.

[T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- No `PRs S-waiting-on-team` for T-compiler

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Support #[global_allocator] without the allocator shim" [rust#86844](https://github.com/rust-lang/rust/pull/86844) (last review activity: 4 months ago)
  - @**pnkfelix** self-assigned in a [previous meeting](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202022-01-20.20.2354818/near/268710568)
- "remove obligation dedup from `impl_or_trait_obligations`" [rust#84944](https://github.com/rust-lang/rust/pull/84944) (last review activity: 2 months ago)
  - cc: @**Aaron Hill**
- "Fix late-bound ICE" [rust#92289](https://github.com/rust-lang/rust/pull/92289) (last review activity: about 51 days ago)
  - reviewed by @**Wesley Wiser**
  - asking @**Esteban Küber** for a second look (see [review](https://github.com/rust-lang/rust/pull/92289#pullrequestreview-848264260))
- "add #[must_use] to functions of slice and its iterators." [rust#92853](https://github.com/rust-lang/rust/pull/92853) (last review activity: about 48 days ago)
  - rustbot assigned reviewer @**Josh Triplett** and label `T-compiler`
  - However: PR author references issue [rust#89692](https://github.com/rust-lang/rust/issues/89692), which is `T-libs-api`
  - reroll assignee? Change team?

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [68 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [47 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 0 P-medium, 2 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 43 P-high, 84 P-medium, 11 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "optimized i686 fails primal-sieve tests" [rust#94032](https://github.com/rust-lang/rust/issues/94032)
  - mentioned last week ([see message](https://zulip-archive.rust-lang.org/stream/238009-t-compiler/meetings/topic/.5Bweekly.5D.202022-02-24.20.2354818.html#273108216))
  - decision to demote priority pushed to this meeting 

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [perf triage logs for 2022-03-01](https://github.com/rust-lang/rustc-perf/blob/master/triage/2022-03-01.md)

A relatively noisy week in performance measurements, particularly on the
`externs` incremental benchmark. Based on the timing of the first noise, this
seems to be due to [#93839], which makes me suspect this is related to PGO or
inlining decisions of some kind. [#94373] might help.

Overall a relatively unchanged to slightly good week, with no outright regressions and most
changes relatively small.

[#93839]: https://github.com/rust-lang/rust/pull/93839
[#94373]: https://github.com/rust-lang/rust/pull/94373

Triage done by **@simulacrum**.
Revision range: [1204400ab8da9830f6f77a5e40e7ad3ea459676a..f0c4da49983aa699f715caf681e3154b445fb60b](https://perf.rust-lang.org/?start=1204400ab8da9830f6f77a5e40e7ad3ea459676a&end=f0c4da49983aa699f715caf681e3154b445fb60b&absolute=false&stat=instructions%3Au)

0 Regressions, 5 Improvements, 6 Mixed; 2 of them in rollups
43 comparisons made in total

#### Regressions

- No regressions this week.

#### Improvements

- At opt-level=0, apply only ABI-affecting attributes to functions [#94127](https://github.com/rust-lang/rust/issues/94127)
- Make TLS `__getit` #[inline(always)] on non-Windows [#94373](https://github.com/rust-lang/rust/issues/94373)
- Avoid query cache sharding code in single-threaded mode [#94084](https://github.com/rust-lang/rust/issues/94084)
- Apply noundef attribute to all scalar types which do not permit raw init [#94157](https://github.com/rust-lang/rust/issues/94157)
- rustc_errors: let `DiagnosticBuilder::emit` return a "guarantee of emission". [#93368](https://github.com/rust-lang/rust/issues/93368)
 
#### Mixed

Back more metadata using per-query tables [#94129](https://github.com/rust-lang/rust/issues/94129)
- Arithmetic mean of relevant regressions: 0.8%
- Arithmetic mean of relevant improvements: -0.6%
- Arithmetic mean of all relevant changes: -0.5%
- Largest improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=1204400ab8da9830f6f77a5e40e7ad3ea459676a&end=7ccfe2ff1d59666dc0188dfd5847304fec257565&stat=instructions:u): -1.0% on `full` builds of `wf-projection-stress-65510 doc`
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=1204400ab8da9830f6f77a5e40e7ad3ea459676a&end=7ccfe2ff1d59666dc0188dfd5847304fec257565&stat=instructions:u): 0.9% on `incr-unchanged` builds of `externs opt`


Rollup of 9 pull requests [#94333](https://github.com/rust-lang/rust/issues/94333)
- Arithmetic mean of relevant regressions: 0.8%
- Arithmetic mean of relevant improvements: -5.9%
- Arithmetic mean of all relevant changes: -3.3%
- Largest improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=4b043faba34ccc053a4d0110634c323f6c03765e&end=4e82f35492ea5c78e19609bf4468f0a686d9a756&stat=instructions:u): -14.4% on `incr-unchanged` builds of `encoding check`
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=4b043faba34ccc053a4d0110634c323f6c03765e&end=4e82f35492ea5c78e19609bf4468f0a686d9a756&stat=instructions:u): 1.1% on `incr-patched: println` builds of `cargo opt`

Use undef for (some) partially-uninit constants [#94130](https://github.com/rust-lang/rust/issues/94130)
- Arithmetic mean of relevant regressions: 0.7%
- Arithmetic mean of relevant improvements: -1.9%
- Arithmetic mean of all relevant changes: -0.1%
- Largest improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=f6a79936da30702b1c717769a2d12dffbad6d30a&end=ece55d416e65256e4da274988651c20e5d5cb4ea&stat=instructions:u): -2.9% on `full` builds of `ctfe-stress-4 opt`
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=f6a79936da30702b1c717769a2d12dffbad6d30a&end=ece55d416e65256e4da274988651c20e5d5cb4ea&stat=instructions:u): 0.9% on `incr-unchanged` builds of `externs opt`

Caching the stable hash of Ty within itself [#94299](https://github.com/rust-lang/rust/issues/94299)
- Arithmetic mean of relevant regressions: 0.9%
- Arithmetic mean of relevant improvements: -1.2%
- Arithmetic mean of all relevant changes: -1.0%
- Largest improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=4ce3749235fc31d15ebd444b038a9877e8c700d7&end=8d6f527530f4ba974d922269267fe89050188789&stat=instructions:u): -9.6% on `incr-unchanged` builds of `clap-rs check`
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=4ce3749235fc31d15ebd444b038a9877e8c700d7&end=8d6f527530f4ba974d922269267fe89050188789&stat=instructions:u): 1.3% on `incr-full` builds of `deeply-nested check`

Revert "Auto merge of #92419 - erikdesjardins:coldland, r=nagisa" [#94402](https://github.com/rust-lang/rust/issues/94402)
- Arithmetic mean of relevant regressions: 0.7%
- Arithmetic mean of relevant improvements: -1.7%
- Arithmetic mean of all relevant changes: 0.5%
- Largest improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=6e5a6ffb14fc47051b0a23410c681ad6e4af045f&end=4a56cbec59903a830a5fc06c5c81956de4199584&stat=instructions:u): -3.8% on `full` builds of `ripgrep opt`
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=6e5a6ffb14fc47051b0a23410c681ad6e4af045f&end=4a56cbec59903a830a5fc06c5c81956de4199584&stat=instructions:u): 3.3% on `full` builds of `syn opt`

Rollup of 7 pull requests [#94469](https://github.com/rust-lang/rust/issues/94469)
- Arithmetic mean of relevant regressions: 0.3%
- Arithmetic mean of relevant improvements: -0.8%
- Arithmetic mean of all relevant changes: 0.0%
- Largest improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=8d6f527530f4ba974d922269267fe89050188789&end=6343edfa11c80ffed02de7e059178d4c1637ecdb&stat=instructions:u): -0.9% on `incr-unchanged` builds of `externs debug`
- Largest regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=8d6f527530f4ba974d922269267fe89050188789&end=6343edfa11c80ffed02de7e059178d4c1637ecdb&stat=instructions:u): 0.3% on `full` builds of `await-call-tree doc`
- Regression across multiple doc benchmarks.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- "Stabilize guaranteed compile time evaluation of unnamed constant items" [rust#93838](https://github.com/rust-lang/rust/issues/93838) 
  - nominated by @**pnkfelix** to ensure [T-compiler people are ok](https://github.com/rust-lang/rust/issues/93838#issuecomment-1048104622)
- "process: release procedure only runs crater on nightly->beta cut" [rust#94266](https://github.com/rust-lang/rust/issues/94266)
  - nominated by @**pnkfelix** [for T-compiler discussion](https://github.com/rust-lang/rust/issues/94266)

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- "New Cargo and Rust options to support embedding Natvis into a PDB" [rfcs#3191](https://github.com/rust-lang/rfcs/pull/3191)
  - mentioned [last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202022-02-24.20.2354818/near/273109048)
