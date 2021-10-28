---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2021-10-14

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- :loudspeaker: Next Thursday Oct, 21st release Rust stable 1.56 :loudspeaker:
- Tomorrow <time:2021-10-15T10:00:00-04:00>, Polonius Hackaton
- We are now asking for feedback on the [annual community survey](https://github.com/rust-lang/surveys/blob/main/surveys/2021-annual-survey/questions.md) rough draft. Please take a look and add issues for anything you find!
- T-compiler Planning meeting is a week from tomorrow. Get proposals in if you have stuff that would be good for a steering meeting during the October/November cycle.

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "rustdoc is using rustc_ast_pretty, would it be possible to make it somewhat "stable"?" [compiler-team#403](https://github.com/rust-lang/compiler-team/issues/403) (last review activity: GH none, Zulip +3 months ago)
  - "CI should exercise (subset of) tests under --stage 1" [compiler-team#439](https://github.com/rust-lang/compiler-team/issues/439) (last review activity: GH none, Zulip about 6 weeks ago)
  - "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441) (last review activity: GH none, Zulip 3 weeks ago)
  - "Tier 3 target proposal: x86_64-unknown-none (freestanding/bare-metal x86-64)" [compiler-team#462](https://github.com/rust-lang/compiler-team/issues/462) (last review activity: GH 25 days ago, Zulip 2 weeks ago)
  - "Make `-Z binary-dep-depinfo` the default behavior" [compiler-team#464](https://github.com/rust-lang/compiler-team/issues/464) (last review activity: GH none, Zulip 3 weeks ago)
- Pending FCP requests (check your boxes!)
  - "Write text output files to stdout if options like `-o -` or `--emit asm=-` are provided" [compiler-team#431](https://github.com/rust-lang/compiler-team/issues/431)
  - "Tracking issue for `#![feature(const_precise_live_drops)]`" [rust#73255](https://github.com/rust-lang/rust/issues/73255)
- Things in FCP (make sure you're good with it)
  - "lint internal hashmap iteration" [compiler-team#465](https://github.com/rust-lang/compiler-team/issues/465)
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - "Make all proc-macro back-compat lints deny-by-default" [rust#88041](https://github.com/rust-lang/rust/pull/88041)

### WG checkins

- @_WG-diagnostics_ by @**Esteban Küber** and @**oli** ([previous checkin](https://hackmd.io/3r_D-3ElQ-WR_VVzx4g2Pw?view#WG-checkins)):

> - Trait Alias = impl Trait; improvements
> - NLL borrowck closer in parity with old borrowck
> - Typo suggestions in more places (assoc items and modules/crates)
> - Multiple improvements around trait bound presentation
> - More accurate expected/found labels when trait paths are the same (long standing confusing issue)
> - **I** now consider type ascription syntax as no longer being problematic (last outstanding issues for common confusables closed)
> - Internal refactors & general clean ups
> - More parser recovery for common typos in match arms
> - Extend C-style printf format string parsing 😅
> 
> There's in flight a style linter for diagnostics, to ensure consistency, which even without merging has already yielded a few clean up PRs

- @_*WG-rustc-dev-guide* by @**Santiago Pastorino** and @**Yuki Okushi|217081** ([previous checkin](https://hackmd.io/3r_D-3ElQ-WR_VVzx4g2Pw?view#WG-checkins)):
>#### Most notable changes
>
>- Document tracing awesomeness [#1223](https://github.com/rust-lang/rustc->dev-guide/pull/1223)
>- Update sanitizer documentation [#1220](https://github.com/rust-lang/rustc-dev-guide/pull/1220)
>- Parallel codegen [#1206](https://github.com/rust-lang/rustc-dev-guide/pull/1206)
>- Parallel docs [#1203](https://github.com/rust-lang/rustc-dev-guide/pull/1203)
>
>#### Most notable WIPs
>
>- Remove docs on Assemble step [#1233](https://github.com/rust-lang/rustc-dev-guide/pull/1233)
>- Added detail to codegen section [#1216](https://github.com/rust-lang/rustc-dev-guide/pull/1216)
>- Update build instructions for rustdoc [#1117](https://github.com/rust-lang/rustc-dev-guide/pull/1117)
>- Document inert vs active attributes [#1110](https://github.com/rust-lang/rustc-dev-guide/pull/1110)
>- Explain the new valtree system for type level constants. [#1097](https://github.com/rust-lang/rustc-dev-guide/pull/1097)

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)

- :beta: "Emit item no type error even if type inference fails" [rust#89585](https://github.com/rust-lang/rust/pull/89585)
  - fixes P-high regression from stable [rust#89574](https://github.com/rust-lang/rust/issues/89574)
  - nomination suggested by @**Gary Guo** [in this comment](https://github.com/rust-lang/rust/pull/89854#issuecomment-942638505)
- :beta: "Use correct edition for panic in [debug_]assert!()." [rust#89622](https://github.com/rust-lang/rust/pull/89622)
  - nomination suggested by mara [in this comment](https://github.com/rust-lang/rust/issues/88638#issuecomment-915472783)

[T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)

- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)

- No PRs waiting on `T-compiler` this time.

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)

- "Replace dominators algorithm with simple Lengauer-Tarjan" [rust#85013](https://github.com/rust-lang/rust/pull/85013) (last review activity: 4 months ago)
  - self-assigned to @**pnkfelix**
- "Normalize MIR with RevealAll before optimizations." [rust#85254](https://github.com/rust-lang/rust/pull/85254) (last review activity: 3 months ago)
- "move implicit `Sized` predicate to end of list" [rust#86011](https://github.com/rust-lang/rust/pull/86011) (last review activity: 2 months ago)
- "Mir-Opt for copying enums with large discrepancies" [rust#85158](https://github.com/rust-lang/rust/pull/85158) (last review activity: 2 months ago)
  - [discussed previously](https://github.com/rust-lang/rust/issues/88638#issuecomment-915472783)
  - reviewed by @**Wesley Wiser**, PR author re-requested review
- "Abort in panic_abort eh_personality" [rust#86801](https://github.com/rust-lang/rust/pull/86801) (last review activity: 2 months ago)
  - [discussed previously](https://github.com/rust-lang/rust/issues/88638#issuecomment-915472783), now being reviewed
  - @**Daniel Frampton** [reviewed the PR](https://github.com/rust-lang/rust/pull/86801#issuecomment-941177751)
  - Alex Crichton also contributed some thoughts

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [75 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [51 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [1 P-critical, 2 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 2 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 46 P-high, 83 P-medium, 11 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)

- No `P-critical` issues for `T-compiler` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)

- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)

- "no errors encountered even though `delay_span_bug` issued" [rust#87757](https://github.com/rust-lang/rust/issues/87757)
- "regression: cycle in MIR opts" [rust#88972](https://github.com/rust-lang/rust/issues/88972)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)

- "CI: dist-s390x-linux build went from 40min. to 160min with new LLVM pass manager" [rust#89609](https://github.com/rust-lang/rust/issues/89609)
  - significant compilation time regression on Tier 2 target s390x
  - filed bug for [LLVM pass-manager](https://bugs.llvm.org/show_bug.cgi?id=52146)
  - assigned P-high to keep under the radar before the next release cycle
  - this has a workaround applied in PR #89666

## Performance logs

> [triage logs for 2021-10-12](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-10-12.md)

A relatively quiet week: two smallish regressions, and one largish regression that is isolated to doc builds. A couple of nice small wins as well.

Triage done by **@pnkfelix**.
Revision range: [25ec8273855fde2d72ae877b397e054de5300e10..9475e609b8458fff9e444934a6017d2e590642cf](https://perf.rust-lang.org/?start=25ec8273855fde2d72ae877b397e054de5300e10&end=9475e609b8458fff9e444934a6017d2e590642cf&absolute=false&stat=instructions%3Au)

2 Regressions, 2 Improvements, 2 Mixed; 1 of them in rollups, 42 comparisons made in total

#### Regressions

Rollup of 12 pull requests [#89608](https://github.com/rust-lang/rust/issues/89608)

- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=d480ceff384f80394e9367b5e9d3596d62f20585&end=0eabf25b90396dead0b2a1aaa275af18a1ae6008&stat=instructions:u) (up to 0.8% on `incr-unchanged` builds of `externs`)
- A large number of `doc` targets regressed very slightly here.
- Apart from that, biggest changes were to `externs` and `deeply-nested-async`.
- Left [comment](https://github.com/rust-lang/rust/pull/89608#issuecomment-941365151) noting the above

Move top part of print_item to Tera templates [#89695](https://github.com/rust-lang/rust/issues/89695)

- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=6928fafe06e4ab29317f75194e1bf67c119dccdc&end=c1cb97481a633bdfdf3d6b57c6dcebfdfadbcfdf&stat=instructions:u) (up to 3.7% on `full` builds of `externs`)
- Large regression for certain doc builds.
- Fix posted in PR [#89732](https://github.com/rust-lang/rust/issues/89732); thanks @**GuillaumeGomez** !

Apply clippy suggestions for rustc and core [#89709](https://github.com/rust-lang/rust/issues/89709)

- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=86d6d2b7389fe1b339402c1798edae8b695fc9ef&end=6ae8912a3e7d2c4c775024f58a7ba4b1aedc4073&stat=instructions:u) (up to 2.8% on `full` builds of `keccak`)
- instruction-count regressions in the 1.1% to 2.7% range in keccak and inflate
- Left [comment](https://github.com/rust-lang/rust/pull/89709#issuecomment-941560787)

#### Improvements

- perf: only check for `rustc_trivial_field_reads` attribute on traits, not items, impls, etc. [#89454](https://github.com/rust-lang/rust/issues/89454)
- rustdoc: Cleanup various `clean` types [#88379](https://github.com/rust-lang/rust/issues/88379)

#### Mixed

Add two inline annotations for hot functions [#89495](https://github.com/rust-lang/rust/issues/89495)

- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=d3e6770efbd76c4ad1e17468895b538a2efec4bd&end=ca8078d7b2e40c24a39e5fe2a910afef4c91ebfc&stat=instructions:u) (up to -7.1% on `full` builds of `inflate`)
- Small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=d3e6770efbd76c4ad1e17468895b538a2efec4bd&end=ca8078d7b2e40c24a39e5fe2a910afef4c91ebfc&stat=instructions:u) (up to 0.4% on `incr-unchanged` builds of `helloworld`)

Introduce `tcx.get_diagnostic_name` [#89534](https://github.com/rust-lang/rust/issues/89534)

- Large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=680ff86391f19e12b485293f01372036e85ba87c&end=0157cc977fd71297ce73e2f249321f5ba2555d42&stat=instructions:u) (up to -3.4% on `incr-full` builds of `ctfe-stress-4`)
- Small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=680ff86391f19e12b485293f01372036e85ba87c&end=0157cc977fd71297ce73e2f249321f5ba2555d42&stat=instructions:u) (up to 0.4% on `incr-unchanged` builds of `helloworld`)

#### Untriaged Pull Requests

- [#89709 Apply clippy suggestions for rustc and core](https://github.com/rust-lang/rust/pull/89709)
- [#89695 Move top part of print_item to Tera templates](https://github.com/rust-lang/rust/pull/89695)
- [#89608 Rollup of 12 pull requests](https://github.com/rust-lang/rust/pull/89608)
- [#89534 Introduce `tcx.get_diagnostic_name`](https://github.com/rust-lang/rust/pull/89534)
- [#89495 Add two inline annotations for hot functions](https://github.com/rust-lang/rust/pull/89495)
- [#89435 Rollup of 6 pull requests](https://github.com/rust-lang/rust/pull/89435)
- [#89405 Fix clippy lints](https://github.com/rust-lang/rust/pull/89405)
- [#89263 Suggest both of immutable and mutable trait implementations](https://github.com/rust-lang/rust/pull/89263)
- [#89165 Fix read_to_end to not grow an exact size buffer](https://github.com/rust-lang/rust/pull/89165)
- [#89125 Don't use projection cache or candidate cache in intercrate mode](https://github.com/rust-lang/rust/pull/89125)
- [#89103 Migrate in-tree crates to 2021](https://github.com/rust-lang/rust/pull/89103)
- [#89047 Rollup of 10 pull requests](https://github.com/rust-lang/rust/pull/89047)
- [#89030 Introduce `Rvalue::ShallowInitBox`](https://github.com/rust-lang/rust/pull/89030)
- [#88945 Remove concept of 'completion' from the projection cache](https://github.com/rust-lang/rust/pull/88945)
- [#88880 Rework HIR API to make invocations of the hir_crate query harder.](https://github.com/rust-lang/rust/pull/88880)
- [#88824 Rollup of 15 pull requests](https://github.com/rust-lang/rust/pull/88824)
- [#88804 Revise never type fallback algorithm](https://github.com/rust-lang/rust/pull/88804)
- [#88719 Point at argument instead of call for their obligations](https://github.com/rust-lang/rust/pull/88719)
- [#88703 Gather module items after lowering.](https://github.com/rust-lang/rust/pull/88703)
- [#88627 Do not preallocate HirIds](https://github.com/rust-lang/rust/pull/88627)
- [#88575 Querify `FnAbi::of_{fn_ptr,instance}` as `fn_abi_of_{fn_ptr,instance}`.](https://github.com/rust-lang/rust/pull/88575)
- [#88308 Morph `layout_raw` query into `layout_of`.](https://github.com/rust-lang/rust/pull/88308)
- [#87781 Remove box syntax from compiler and tools](https://github.com/rust-lang/rust/pull/87781)
- [#87064 Support `#[track_caller]` on closures and generators](https://github.com/rust-lang/rust/pull/87064)
- [#83302 Get piece unchecked in `write`](https://github.com/rust-lang/rust/pull/83302)

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)

- "Add new tier 3 target: `x86_64-unknown-none`" [rust#89062](https://github.com/rust-lang/rust/pull/89062)
  - nominated by @**josh triplett** for T-compiler consideration. On `T-lang` seems all set.
- LTO toolchain compatability docs could use an update in case anything has changed in the last year [rust#89654](https://github.com/rust-lang/rust/issues/89654)
  - nominated by @**Joshua Nelson**
  - currently LTO compatibility declared up to 1.46, reporter asks if min. version can be extented to more recent versions

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)

- No nominated RFCs for `T-compiler` this time.
