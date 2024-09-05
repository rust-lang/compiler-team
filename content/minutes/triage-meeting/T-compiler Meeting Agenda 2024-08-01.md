---
tags: weekly, rustc
type: docs
note_id: hJCBlVJDQt-MIuhs6RM4Sw
---

# T-compiler Meeting Agenda 2024-08-01

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings

 - (TIP) get them from https://github.com/rust-lang/calendar

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (stale MCP might be closed as per [MCP procedure](https://forge.rust-lang.org/compiler/mcp.html#when-should-major-change-proposals-be-closed))
  - None at this time
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 6 months ago)
    - concern: [added-complexity-to-frontend](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-1845169318)
  - "Target families for executable format" [compiler-team#716](https://github.com/rust-lang/compiler-team/issues/716) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Target.20families.20for.20executable.20format.20compiler-team.23716)) (last review activity: 6 months ago)
  - "Partial compilation using MIR-only rlibs" [compiler-team#738](https://github.com/rust-lang/compiler-team/issues/738) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Partial.20compilation.20using.20MIR-only.20rlibs.20compiler-team.23738)) (last review activity: 3 months ago)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: 2 months ago)
- Pending FCP requests (check your boxes!)
  - None
- Things in FCP (make sure you're good with it)
  - "Disallow setting some built-in cfg via set the command-line" [rust#126158](https://github.com/rust-lang/rust/pull/126158)
- Accepted MCPs
  - No new accepted proposals this time.
- MCPs blocked on unresolved concerns
  - merge: [sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets (rust#123617)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2135121317)
    - no pending checkboxes
    - concerns: [stabilization-scope (by wesleywiser)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2192330122)
  - merge: [Add a new `--build-id` flag to rustc (compiler-team#635)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1777545767)
    - @_**|125250** @_**|116107** @_**|125294** @_**|123856**
    - concerns: [other-existing-options (by petrochenkov)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1779597156) [option-name (by wesleywiser)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1785349936)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
  - merge: [Stabilize `--env-set` option (rust#119926)](https://github.com/rust-lang/rust/pull/119926#issuecomment-1898766442)
    - @_**|119009** @_**|124288** @_**|123586** @_**|125250** @_**|119031** @_**|124287** @_**|116118**
    - concerns: [other-rustc-vars (by petrochenkov)](https://github.com/rust-lang/rust/pull/119926#issuecomment-1900703005)
  - merge: [Add `--print host-triple` to print host target triple (rust#125579)](https://github.com/rust-lang/rust/pull/125579#issuecomment-2133192548)
    - @_**|232957**
    - concerns: [triple vs tuple (by lcnr)](https://github.com/rust-lang/rust/pull/125579#issuecomment-2133938172)
- Finalized FCPs (disposition merge)
  - "Fix supertrait associated type unsoundness" [rust#126090](https://github.com/rust-lang/rust/pull/126090)
  - "Graciously handle `Drop` impls introducing more generic parameters than the ADT" [rust#127220](https://github.com/rust-lang/rust/pull/127220)
- Other teams finalized FCPs
  - "Fix supertrait associated type unsoundness" [rust#126090](https://github.com/rust-lang/rust/pull/126090)
  - "Graciously handle `Drop` impls introducing more generic parameters than the ADT" [rust#127220](https://github.com/rust-lang/rust/pull/127220)

### WG checkins

None

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Disable jump threading of float equality" [rust#128271](https://github.com/rust-lang/rust/pull/128271)
  - Authored by Noratrieb
  - fixes #128243, critical unsoundness related to the Jump threading MIR opt
<!--
/poll Approve beta backport of #128271?
approve
don't know
-->
- :beta: "Revert recent changes to dead code analysis" [rust#128404](https://github.com/rust-lang/rust/pull/128404)
  - Authored by compiler-errors
  - reverts a bunch of changes causing false diags on linting, fixes #128272, #126169
  - Not yet merged but r'ed by @**pnkfelix**
<!--
/poll Approve beta backport of #128404?
approve
don't know
-->
- :stable: "Disable jump threading of float equality" [rust#128271](https://github.com/rust-lang/rust/pull/128271)
  - Authored by Noratrieb
  - see above. stable nominated by @**Ben Kimock (Saethlin)** (inferred intent: "if a dot release happens")
<!--
/poll Approve stable backport of #128271?
approve
approve but does not justify new dot release
decline
don't know
-->

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
- [0 P-critical, 0 P-high, 3 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 5 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 36 P-high, 100 P-medium, 17 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Jump threading MIR opt unsoundly uses bitpattern equality for floats" [rust#128243](https://github.com/rust-lang/rust/issues/128243)
  - fixed by #128271, PR backport nominated

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- "Generated WebAssembly unexpectedly requires reference types" [rust#128475](https://github.com/rust-lang/rust/issues/128475)
  - rustc basically produces code not compliant with wasm 1.0 spec (but this has been going on for a while, see comment on [Zulip](https://rust-lang.zulipchat.com/#narrow/stream/245100-t-compiler.2Fwg-prioritization.2Falerts/topic/.23128475.20Generated.20WebAssembly.20unexpectedly.20requires.20referen.E2.80.A6/near/455595917))
  - possibly this can downgraded (waiting for some WASM experts to chime in)

## Performance logs

> [triage logs 2024-07-30](https://github.com/rust-lang/rustc-perf/blob/master/triage/2024-07-30.md)

There were some notable regressions this week. Some of them are being
addressed via follow-up PRs (such as the change to whitespace
diagnostic reporting), and some via reverts (such as the dead code
analysis that tried to flag pub structs without pub constructors). A
few regressions have not yet been addressed. See report for details.

Triage done by **@pnkfelix**.
Revision range: [9629b90b..7e3a9718](https://perf.rust-lang.org/?start=9629b90b3f7dd8f5626ec9d3b42556f39f09e214&end=7e3a971870f23c94f7aceb53b490fb37333150ff&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.3%  | [0.2%, 6.1%]   | 43    |
| Regressions (secondary)  | 1.9%  | [0.1%, 10.4%]  | 46    |
| Improvements (primary)   | -1.0% | [-3.9%, -0.2%] | 27    |
| Improvements (secondary) | -1.6% | [-6.8%, -0.2%] | 43    |
| All  (primary)           | 0.4%  | [-3.9%, 6.1%]  | 70    |


5 Regressions, 6 Improvements, 6 Mixed; 8 of them in rollups
65 artifact comparisons made in total

#### Regressions

Do not use global caches if opaque types can be defined [#126024](https://github.com/rust-lang/rust/pull/126024) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d24930ceb473b7b361d108d573308e3529cb5ef7&end=2ccafed862f6906707a390caf180449dd64cad2e&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 3.4% | [1.6%, 5.5%] | 6     |
| Regressions (secondary)  | 3.1% | [0.4%, 5.4%] | 11    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 3.4% | [1.6%, 5.5%] | 6     |

* This PR says it is fixing a soundness problem. (Its not clear to me if the wrong issue was linked; the linked one is an ICE that was not actually resolved.)
* All six of the regressions are to hyper: {check,debug,opt} x {incr-full, full}.
* we probably should just accept this cost

Rollup of 5 pull requests [#128169](https://github.com/rust-lang/rust/pull/128169) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e7d66eac5e8e8f60370c98d186aee9fa0ebd7845&end=004e155c46a2083d4f73212cc47a6f7fb98fcbd1&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.9% | [0.2%, 3.0%] | 26    |
| Regressions (secondary)  | 0.5% | [0.3%, 2.2%] | 13    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.9% | [0.2%, 3.0%] | 26    |

* the bulk of the regressions are to syn (i.e. 8 out of the 9 that are > 1%).
* this was due to a change in how diagnostics handle certain "whitespace" characters (PR #127528); there is a revert proposed in PR #128179, but there is also a PR to address the issue itself as a followup in PR #128200
* not marking as triaged until either PR #128179 or PR #128200 is landed.

Rollup of 7 pull requests [#128186](https://github.com/rust-lang/rust/pull/128186) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=54be9ad5eb47207d155904f6c912a9526133f75f&end=eb10639928a2781cf0a12440007fbcc1e3a6888f&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.2%, 0.5%] | 11    |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.2%, 0.5%] | 11    |

* already marked as triaged

Rollup of 9 pull requests [#128253](https://github.com/rust-lang/rust/pull/128253) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7c2012d0ec3aae89fefc40e5d6b317a0949cda36&end=8b6b8574f6f2fcc71ec500a52d7bf74fdaff0ed6&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.5% | [0.4%, 0.5%] | 3     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.5% | [0.4%, 0.5%] | 3     |

* regressed incr-full for bitmaps-{check,opt} and typenum-check
* seems like noise from the graph over time; marking as triaged.


Document 0x10.checked_shl(BITS - 1) does not overflow [#128255](https://github.com/rust-lang/rust/pull/128255) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a526d7ce45fd2284e0e7c7556ccba2425b9d25e5&end=ad3c5a330173a4a6446c1ed90c72a3f5f9106888&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.5% | [0.5%, 0.6%] | 4     |
| Regressions (secondary)  | 2.2% | [2.2%, 2.2%] | 1     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.5% | [0.5%, 0.6%] | 4     |

* noise, already marked as triaged

#### Improvements

Remove unnecessary impl sorting in queries and metadata [#120812](https://github.com/rust-lang/rust/pull/120812) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=92c6c03805408a1a261b98013304e9bbf59ee428&end=0f8534e79e4cfbda7421017047d1f5021235b0ac&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.2% | [-2.1%, -0.4%] | 2     |
| Improvements (secondary) | -0.3% | [-0.4%, -0.3%] | 2     |
| All  (primary)           | -1.2% | [-2.1%, -0.4%] | 2     |


rustdoc: clean up and fix ord violations in item sorting [#128146](https://github.com/rust-lang/rust/pull/128146) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=6106b05b27988f4b946d7af219a6db95fb4477a1&end=c1a6199e9d92bb785c17a6d7ffd8b8b552f79c10&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-1.6%, -0.2%] | 4     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.7% | [-1.6%, -0.2%] | 4     |


Rollup of 6 pull requests [#128195](https://github.com/rust-lang/rust/pull/128195) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=eb10639928a2781cf0a12440007fbcc1e3a6888f&end=aa877bc71c8c8082122bee23d17c8669f30f275d&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.5%, -0.4%] | 5     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.4% | [-0.5%, -0.4%] | 5     |

* (just noise I think)

Switch from `derivative` to `derive-where` [#127042](https://github.com/rust-lang/rust/pull/127042) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7120fdac7a6e55a5e4b606256042890b36067052&end=2f26b2a99ab976c43d12cf57ef4a3a2c82ede286&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.3%, -0.2%] | 16    |
| Improvements (secondary) | -0.5% | [-0.6%, -0.4%] | 8     |
| All  (primary)           | -0.2% | [-0.3%, -0.2%] | 16    |


Always set `result` during `finish()` in debug builders [#127946](https://github.com/rust-lang/rust/pull/127946) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8b6b8574f6f2fcc71ec500a52d7bf74fdaff0ed6&end=a526d7ce45fd2284e0e7c7556ccba2425b9d25e5&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.5% | [-0.6%, -0.5%] | 6     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.5% | [-0.6%, -0.5%] | 6     |

* (just noise I think)

Rollup of 6 pull requests [#128313](https://github.com/rust-lang/rust/pull/128313) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=188ddf4d6a694fa263c2ff8be8f8eade659599d6&end=2cbbe8b8bb2be672b14cf741a2f0ec24a49f3f0b&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -1.0% | [-1.1%, -1.0%] | 2     |
| Improvements (secondary) | -0.9% | [-1.9%, -0.2%] | 10    |
| All  (primary)           | -1.0% | [-1.1%, -1.0%] | 2     |


#### Mixed

Try to fix ICE from re-interning an AllocId with different allocation contents [#127442](https://github.com/rust-lang/rust/pull/127442) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ee0fd6caf770e8b3baa403b4da3ef0c7e274dc21&end=ae7b1c191695f351e69ef7ad32c0897048bba73e&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.8%  | [0.2%, 2.5%]   | 4     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.7% | [-1.4%, -0.3%] | 7     |
| All  (primary)           | -     | -              | 0     |

* the regressions are to secondary benchmarks and this is fixing a subtle ICE that arises from a race condition (and may actually represent a chance of miscompilation, maybe?)
* marked as triaged

Rollup of 8 pull requests [#128155](https://github.com/rust-lang/rust/pull/128155) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c1a6199e9d92bb785c17a6d7ffd8b8b552f79c10&end=e7d66eac5e8e8f60370c98d186aee9fa0ebd7845&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.2%, 0.8%]   | 6     |
| Regressions (secondary)  | 0.9%  | [0.7%, 1.0%]   | 7     |
| Improvements (primary)   | -0.5% | [-0.6%, -0.4%] | 4     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 0.1%  | [-0.6%, 0.8%]  | 10    |

* regressions are to hyper and exa. Mostly in hyper check-full, check-incr-full, and debug-incr-full.
* bulk of time might be from spike in time spent in `mir_const_qualif` query ?
* not marking as triaged, (though it is, to be clear, a relatively minor regression).

Allow optimizing `u32::from::<char>`. [#124905](https://github.com/rust-lang/rust/pull/124905) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=ad3c5a330173a4a6446c1ed90c72a3f5f9106888&end=3942254d00bf95cd5920980f85ebea57a1e6ce2a&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.3%]   | 4     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.2% | [-0.2%, -0.2%] | 1     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 0.1%  | [-0.2%, 0.3%]  | 5     |


* regressions are to image opt {full, incr-full}, cargo opt {full, incr-full}, and syn opt incr-unchanged
* It appears that its due to extra time spent in LLVM opt, especially lto optimize, which makes sense given that this is meant to be enabling LLVM to attempt more such optimizations?
* marked as triaged.

Rollup of 3 pull requests [#128301](https://github.com/rust-lang/rust/pull/128301) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1b51d80027919563004918eaadfa0d890ac0eb93&end=78c857394ec8c01f06cb1df260c51178180a40e5&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 2.1%  | [2.1%, 2.1%]   | 1     |
| Improvements (primary)   | -0.2% | [-0.3%, -0.2%] | 2     |
| Improvements (secondary) | -1.6% | [-3.0%, -0.2%] | 2     |
| All  (primary)           | -0.2% | [-0.3%, -0.2%] | 2     |

* sole regression is to secondary benchmark coercions debug-full.
* seems like noise.
* marked as triaged

 Perform instsimplify before inline to eliminate some trivial calls  [#128265](https://github.com/rust-lang/rust/pull/128265) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=56c698c71130de6fe55ba703a161405b6145b90e&end=4db3d12e6f395babed53dee1d209a5c8699a5ae6&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.2%  | [0.2%, 2.6%]   | 4     |
| Regressions (secondary)  | 0.5%  | [0.5%, 0.5%]   | 1     |
| Improvements (primary)   | -0.5% | [-0.8%, -0.2%] | 12    |
| Improvements (secondary) | -0.3% | [-0.4%, -0.3%] | 2     |
| All  (primary)           | -0.0% | [-0.8%, 2.6%]  | 16    |

* main primary regressions are to ripgrep opt full and image opt-full
* these changes were anticipated during review, seems likely result of changes to inlining decisions
* marked as triaged

Rollup of 6 pull requests [#128360](https://github.com/rust-lang/rust/pull/128360) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=612a33f20b9b2c27380edbc4b26a01433ed114bc&end=368e2fd458a22d0cc133d0c254f2612ee999744f&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.4%, 0.7%]   | 4     |
| Regressions (secondary)  | 4.4%  | [0.3%, 12.0%]  | 10    |
| Improvements (primary)   | -0.3% | [-0.3%, -0.3%] | 4     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | 0.1%  | [-0.3%, 0.7%]  | 8     |


* primary regressions are to doc-full for html5ever, stm32f4, libc, and typenum
* those are presumably due to PR [#126247](https://github.com/rust-lang/rust/issues/126247); pnkfelix thinks the above not worth further investigation
* however, Kobzol has pointed out that the secondary regressions are significant, and has identified the root cause as PR [#128104](https://github.com/rust-lang/rust/issues/128104)
* we are in any case planning to revert the changes to dead code analysis (see PR [#128404](https://github.com/rust-lang/rust/issues/128404)) which should address those regressions.
* marked as triaged.

## Nominated topics for discussions

- Bjorn asks about \x01 in symbol names (on [Zulip](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/.5Cx01.20in.20symbol.20names/near/454506090))
- @**pnkfelix** asks Compiler team members to have a look and share an opinion about removing/muting some lints from the rustc benchmarks runs (see [Zulip topic](https://rust-lang.zulipchat.com/#narrow/stream/247081-t-compiler.2Fperformance/topic/Updating.20benchmarks.20to.20remove.20loads.20of.20lint.20warnings/near/441241153))
  > Jakub says: Recently, our rustc-perf benchmarks started emitting many lints [rustc-perf#1819](https://github.com/rust-lang/rustc-perf/issues/1819). I don't think that it's good to disable these lints (or their output) during benchmarking, but over time if we accrue too many lints in the benchmarks, they will probably stop being realistic (most crates probably don't generate thousands of lints/warnings). It hasn't been three years yet ([doc link](https://github.com/rust-lang/rustc-perf/tree/master/collector/compile-benchmarks#update-policy)), but I wonder if we should start thinking about doing another round of mass benchmark update, to make sure that they don't generate so many warnings.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "Async drop codegen" [rust#123948](https://github.com/rust-lang/rust/pull/123948)
  - Review was assigned [last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202024-07-25/near/453962767) to Vadim who commented (on [github](https://github.com/rust-lang/rust/pull/123948#issuecomment-2250464974)) not having enough context.
  - So, any taker for this review? 😅

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Consistently use the highest bit of vector masks when converting to i1 vectors" [rust#104693](https://github.com/rust-lang/rust/pull/104693) (last review activity: 13 months ago)
   - cc @**Wesley Wiser** (this is a *very* old PR, unsure who was actually reviewing this, there are comments from many people)
- "sess: stabilize `-C stack-protector=all`" [rust#121742](https://github.com/rust-lang/rust/pull/121742)
  - Unsure if this blocked on this [comment](https://github.com/rust-lang/rust/issues/114903#issuecomment-2123296641)
  - cc @**davidtwco** @**Nikita Popov**
- "Simplify match based on the cast result of `IntToInt`" [rust#127324](https://github.com/rust-lang/rust/pull/127324) (last review activity: about 24 days ago)
  - cc @**cjgillot**

## Next week's WG checkins

None

Next meetings' agenda draft: [hackmd link](https://hackmd.io/8PHAmxDiTwiyWL202LNelw)
