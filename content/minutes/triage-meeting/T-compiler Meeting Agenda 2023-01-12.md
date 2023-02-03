---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2023-01-12

## Announcements

- [Compiler Team Planning meeting](https://www.google.com/calendar/event?eid=MDJyYnJ1cGFtdWR1c2lnNjFmcHJ2b3JlODFfMjAyMzAxMTNUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-01-13T10:00:00-05:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))

- [wg-async weekly](https://www.google.com/calendar/event?eid=NThidjZydmxhMmcyb25uYzNqMHY5czgyZjFfMjAyMzAxMTJUMTcwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-01-12T12:00:00-05:00>
- [wg-rls-2.0 weekly sync-up](https://www.google.com/calendar/event?eid=MXJnbzBscDExNHJjNmVsdGhsaW8xcDljMmdfMjAyMzAxMTZUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-01-16T10:00:00-05:00>
- [wg-debugging triage meeting](https://www.google.com/calendar/event?eid=NjAwbDEwNzNmMzVsNDZucnFsdDdwbGJrdDRfMjAyMzAxMTZUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-01-16T10:00:00-05:00>
- [[Types team] Shallow subtyping weekly meeting](https://www.google.com/calendar/event?eid=YnUxNDd2cjY3dGkxOWNnMWp1dWFpc2U5dnBfMjAyMzAxMTZUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-01-16T10:00:00-05:00>
- [Async WG triage meeting](https://www.google.com/calendar/event?eid=cXZ1NGZncDF1dXA1NnVnMnA1M2Mzb2lvdWVfMjAyMzAxMTZUMTYzMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-01-16T11:30:00-05:00>
- [[wg-traits] GATs Sync](https://www.google.com/calendar/event?eid=Y3VpY2NkbXBoZTJkMHJmcmZxZmU4MjhodDBfMjAyMzAxMTZUMjEwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-01-16T16:00:00-05:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Stale MCPs (tracked on [HackMD](https://hackmd.io/n53PZVXnSxSrvEcp1zrohA). Candidate for closing, see [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - "Add `#[alias]` attribute to allow symbol aliasing" [compiler-team#526](https://github.com/rust-lang/compiler-team/issues/526) (last review activity: 5 months ago)
    - might be closed as superseded by a T-lang initiative (still to be drafted)
- Old MCPs (not seconded, take a look)
  - " Promote `i586-unknown-linux-gnu` to Tier 2 with Host Tools " [compiler-team#543](https://github.com/rust-lang/compiler-team/issues/543) (last review activity: 4 months ago)
  - "Lower baseline expectations for i686 unix-like targets" [compiler-team#548](https://github.com/rust-lang/compiler-team/issues/548) (last review activity: about 19 days ago)
  - "configurable rustc timeout for compiletest tests" [compiler-team#554](https://github.com/rust-lang/compiler-team/issues/554) (last review activity: about 0 days ago)
  - "Rustc Contributor Program Major Change Proposal" [compiler-team#557](https://github.com/rust-lang/compiler-team/issues/557) (last review activity: about 0 days ago)
    - waiting for pilot program completion (see [comment](https://rust-lang.zulipchat.com/#narrow/stream/233931-t-compiler.2Fmajor-changes/topic/Rustc.20Contributor.20Program.20Major.20Change.20Pr.E2.80.A6.20compiler-team.23557/near/320698206))
  - "`-Z instrument-xray` option" [compiler-team#561](https://github.com/rust-lang/compiler-team/issues/561) (last review activity: 2 months ago)
  - "`needs_drop` as an auto trait" [compiler-team#575](https://github.com/rust-lang/compiler-team/issues/575) (last review activity: about 7 days ago)
- Pending FCP requests (check your boxes!)
  - "Make `unused_allocation` lint against `Box::new` too" [rust#104363](https://github.com/rust-lang/rust/pull/104363#issuecomment-1376858371) 
  - "Add deployment-target --print flag for Apple targets" [rust#105354](https://github.com/rust-lang/rust/pull/105354#issuecomment-1354546850)
- Things in FCP (make sure you're good with it)
  - "Upgrade `*-linux-musl` targets to musl 1.2" [compiler-team#572](https://github.com/rust-lang/compiler-team/issues/572) 
  - "New tier-2 target for `wasm32-wasi` + threads" [compiler-team#574](https://github.com/rust-lang/compiler-team/issues/574) 
  - "Also accept `true` and `false` on boolean flags" [compiler-team#577](https://github.com/rust-lang/compiler-team/issues/577) 
  - "Store ICE backtraces to disk and point end users at the file location" [compiler-team#578](https://github.com/rust-lang/compiler-team/issues/578) 
  - "Add `SEMICOLON_IN_EXPRESSIONS_FROM_MACROS` to future-incompat report" [rust#103418](https://github.com/rust-lang/rust/pull/103418) 
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - "Change `bindings_with_variant_name` to deny-by-default" [rust#104154](https://github.com/rust-lang/rust/pull/104154) 
  - "More deriving on packed structs" [rust#104429](https://github.com/rust-lang/rust/pull/104429) 
  - "Only include stable lints in `rustdoc::all` group" [rust#106316](https://github.com/rust-lang/rust/pull/106316)

### WG checkins

- @_*WG-self-profile* by @**mw** and @**Wesley Wiser** ([previous checkin](https://hackmd.io/team/rust-compiler-team?nav=overview)):
  > No updates from WG-self-profile this rotation.

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Correct detection of elided lifetimes in impl-trait." [rust#106501](https://github.com/rust-lang/rust/pull/106501)
  - Fixes #106338, P-critical regression in crater run
- :beta: "Do not filter substs in `remap_generic_params_to_declaration_params`." [rust#106503](https://github.com/rust-lang/rust/pull/106503)
  - Fixes #105826, P-critical regression, PR open, approved by @**oli** 
- :beta: Revert "Make nested RPITIT inherit the parent opaque's generics. [rust#106759](https://github.com/rust-lang/rust/pull/106759)
    - fixes #106332, manually verified because it had no minimization
- :beta: "Account for opaque variance for region outlives and liveness" [rust#106729](https://github.com/rust-lang/rust/pull/106729)
    - Should fix #106332
    - cjgillot did not manage to extract a MCVE, so no  test yet.
- No stable nominations for `T-compiler` this time.

[T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Remove proc-macro back-compat hack for rental" [rust#106060](https://github.com/rust-lang/rust/pull/106060)
  - [visited last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202023-01-05/near/319610776)
  - MCP discussion is progressing, now T-compiler review has been summoned (rustbot autoassigned @**lcnr**)
- (other hidden issues in progress or waiting on other teams, [details here](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ))

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler+-label%3AT-lang+-label%3AT-infra+-label%3AT-release+-label%3AT-libs+-label%3AT-libs-api)
- "Require `type_map::stub` callers to supply file information" [rust#104342](https://github.com/rust-lang/rust/pull/104342) (last review activity: about 49 days ago)
  - cc @**Wesley Wiser** 
- "Add a note about implicit temporaries on &mut (fn or const)" [rust#104857](https://github.com/rust-lang/rust/pull/104857) (last review activity: about 47 days ago)
  - cc @**oli**
- "Refactor unwind in MIR" [rust#102906](https://github.com/rust-lang/rust/pull/102906) (last review activity: about 35 days ago)
  - seems ready for review, though not 100% sure
  - @**Wesley Wiser** is autoassigned but reviews came from @**tm|352985** and @**RalfJ** - reassign?
- "Calculate diverging fallback cleanups" [rust#104926](https://github.com/rust-lang/rust/pull/104926) (last review activity: about 42 days ago)
  - cc: @**lcnr**
- "use implied bounds from impl header when comparing trait and impl methods" [rust#105548](https://github.com/rust-lang/rust/pull/105548) (last review activity: about 31 days ago)
  - cc @**lcnr**

## Issues of Note

### Short Summary

- [3 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [50 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [19 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [2 P-critical, 2 P-high, 4 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 3 P-high, 2 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [2 P-critical, 28 P-high, 89 P-medium, 8 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Seg fault in Rust 1.65.0 if I don't create temporary variable" [rust#105295](https://github.com/rust-lang/rust/issues/105295)
  - also `T-types`
  - Will be closed by [rust#106465](https://github.com/rust-lang/rust/pull/106465): waiting for `T-types` review ([comment](https://github.com/rust-lang/rust/pull/106465#issuecomment-1375324012))
- "regression: non-defining opaque type use in defining scope" [rust#105826](https://github.com/rust-lang/rust/issues/105826)
  - also `T-types` and `I-types-nominated`
  - handled by @**cjgillot** in [rust#106503](https://github.com/rust-lang/rust/pull/106503): waiting for `T-types` review
- "regression: failed to resolve proc macro definition" [rust#106337](https://github.com/rust-lang/rust/issues/106337)
  - unassigned, bisection seems to point to #103760 (cc: @**Vadim Petrochenkov** )

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- mentioned above

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` at this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "Borrow checker error on nightly even when the type is `'static`" [rust#106332](https://github.com/rust-lang/rust/issues/106332)
  - @**cjgillot** self-assigned, originates from #105255
- "Regression in Beta/Nightly: implementation of `Trait` is not general enough" [rust#106630](https://github.com/rust-lang/rust/issues/106630)
  - @**cjgillot** self-assigned, originates also from #105255

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "deref_target_place is not a deref projection" [rust#105881](https://github.com/rust-lang/rust/issues/105881)
  - will be closed by [rust#105880](https://github.com/rust-lang/rust/issues/105880) authored by @_**BN** (PR is being reviewed by @**lcnr**)

## Performance logs

> [triage logs for 2023-01-10](https://github.com/rust-lang/rustc-perf/blob/master/triage/2023-01-10.md)

A very quiet week, with few changes in either direction, and none of significant magnitude.

Triage done by **@simulacrum**.
Revision range: [b435960c4cfd3975651c7051be56d7f5d6c201ab..0442fbabe24ec43636a80ad1f40a0ad92a2e38df](https://perf.rust-lang.org/?start=b435960c4cfd3975651c7051be56d7f5d6c201ab&end=0442fbabe24ec43636a80ad1f40a0ad92a2e38df&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.2%  | [0.5%, 1.9%]   | 2     |
| Regressions (secondary)  | 1.1%  | [0.5%, 1.3%]   | 10    |
| Improvements (primary)   | -0.7% | [-1.2%, -0.5%] | 7     |
| Improvements (secondary) | -0.5% | [-0.7%, -0.2%] | 7     |
| All  (primary)           | -0.3% | [-1.2%, 1.9%]  | 9     |

1 Regressions, 1 Improvements, 3 Mixed; 1 of them in rollups
48 artifact comparisons made in total

#### Regressions

  Rollup of 10 pull requests [#106573](https://github.com/rust-lang/rust/pull/106573) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ee0412d1ef81efcfabe7f66cd21476ca85d618b1&end=e5d46a5bdac3f19793297914d4ada432024fbe95&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.2%, 0.3%] | 4     |
| Regressions (secondary)  | 0.5% | [0.3%, 1.0%] | 22    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.2%, 0.3%] | 4     |

Migrating rustc_infer to session diagnostics (part 3)
[#101936](https://github.com/rust-lang/rust/pull/101936) seems to be the cause
of the regression, but no investigation has happened yet.

#### Improvements

  Remove duplicated elaborate box derefs pass [#106404](https://github.com/rust-lang/rust/pull/106404) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=14298997005486529e7a97b2ab9e9e376d6fdc72&end=e94fab69d020d75517cb55fafacb2d270ad6e0ac&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 1.2%  | [1.2%, 1.2%]   | 2     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.2%] | 7     |
| All  (primary)           | -     | -              | 0     |

Single regression is within noise range; improvements are not. Removing
perf-regression.

#### Mixed

  Shrink `ParseResult` in the hot path. [#106416](https://github.com/rust-lang/rust/pull/106416) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=388538fc963e07a94e3fc3ac8948627fd2d28d29&end=b85f57d652a141b5c73f4f46b986a92b6992e9d9&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 1     |
| Improvements (primary)   | -0.4% | [-0.5%, -0.3%] | 7     |
| Improvements (secondary) | -0.4% | [-0.5%, -0.4%] | 4     |
| All  (primary)           | -0.4% | [-0.5%, -0.3%] | 7     |

Improvements include primary benchmarks and outweigh regressions.

  Perform SimplifyLocals before ConstProp. [#105323](https://github.com/rust-lang/rust/pull/105323) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a2112fcb0ad7327b9f1ee618c18567d74fc084b1&end=b1691f6413a4afd7529ab309965123cc63e82021&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.7%  | [0.2%, 1.6%]   | 4     |
| Regressions (secondary)  | 0.6%  | [0.6%, 0.6%]   | 1     |
| Improvements (primary)   | -0.6% | [-0.8%, -0.5%] | 4     |
| Improvements (secondary) | -0.5% | [-0.5%, -0.5%] | 1     |
| All  (primary)           | 0.0%  | [-0.8%, 1.6%]  | 8     |

Regressions did not occur in a pre-merge run, asked whether changes made after
it could have led to the regressions.

  Don't normalize in AstConv [#101947](https://github.com/rust-lang/rust/pull/101947) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=89e0576bd3aec2f1acf935b353900bd75742860b&end=af58fc869910eae0ec525d49cbb6d953ea10a8c6&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.1%  | [0.1%, 0.1%]   | 1     |
| Regressions (secondary)  | 0.2%  | [0.2%, 0.2%]   | 3     |
| Improvements (primary)   | -1.0% | [-1.0%, -1.0%] | 1     |
| Improvements (secondary) | -0.8% | [-0.9%, -0.8%] | 7     |
| All  (primary)           | -0.5% | [-1.0%, 0.1%]  | 2     |

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated issues for `T-compiler` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.

## Next week's WG checkins

- Generic Associated Types initiative by @**Jack Huey**
- @_*WG-diagnostics* by @**Esteban Küber** and @**oli**
