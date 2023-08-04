---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2023-07-13

## Announcements

- Today release of stable 1.71 :loudspeaker: 
- [[Types team] Formality testing sync](https://www.google.com/calendar/event?eid=MWowN2NydTBqbGpvaXI5OTVvcWptcW9mdXJfMjAyMzA3MTJUMTMwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-07-12T09:00:00-04:00>
- [Should wg-async be a team?](https://www.google.com/calendar/event?eid=NzEzbjJ2Ymx0OTdncGwyaGtncmxhaDQzdTNfMjAyMzA3MTNUMTYwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-07-13T12:00:00-04:00>
- [AFIT/RPITIT Impl Triage](https://www.google.com/calendar/event?eid=N2VsaWszdm9rY3NhdDF1MjdyMjVqajNpcWVfMjAyMzA3MTNUMjAwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-07-13T16:00:00-04:00>
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings ([calendar link](https://calendar.google.com/calendar/embed?src=6u5rrtce6lrtv07pfi3damgjus%40group.calendar.google.com))
- [Types team meeting: dropck](https://www.google.com/calendar/event?eid=MTg3MDhpdTc3YXBqMGMzbnNxanUwdWZnazhfMjAyMzA3MTdUMTQwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-07-17T10:00:00-04:00>
- [[Types] Rotating new solver / formality / polonius deep dive](https://www.google.com/calendar/event?eid=N29vMXZqbGZ1MDIxbzllMDI3dGhocWhhZmNfMjAyMzA3MTdUMTUwMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-07-17T11:00:00-04:00>
- [Async WG triage meeting](https://www.google.com/calendar/event?eid=cXZ1NGZncDF1dXA1NnVnMnA1M2Mzb2lvdWVfMjAyMzA3MTdUMTUzMDAwWiA2dTVycnRjZTZscnR2MDdwZmkzZGFtZ2p1c0Bn) at <time:2023-07-17T11:30:00-04:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Windows support schedule 2024" [compiler-team#651](https://github.com/rust-lang/compiler-team/issues/651) 
  - "New tier-3 targets for TEEOS" [compiler-team#652](https://github.com/rust-lang/compiler-team/issues/652) 
- Old MCPs (not seconded, take a look)
  - "Cell Broadband Engine SPU support" [compiler-team#614](https://github.com/rust-lang/compiler-team/issues/614) (last review activity: 3 months ago)
  - "Revise error code documentation standard" [compiler-team#615](https://github.com/rust-lang/compiler-team/issues/615) (last review activity: 2 months ago)
  - "Add support for Zephyr OS" [compiler-team#629](https://github.com/rust-lang/compiler-team/issues/629) (last review activity: about 21 days ago)
  - "Consistently use "region" terminology in later stages of the compiler" [compiler-team#634](https://github.com/rust-lang/compiler-team/issues/634) (last review activity: about 48 days ago)
  - "Add a new `--build-id` flag to rustc" [compiler-team#635](https://github.com/rust-lang/compiler-team/issues/635) (last review activity: about 48 days ago)
  - "Simplify and improve explicitness of the check-cfg syntax" [compiler-team#636](https://github.com/rust-lang/compiler-team/issues/636) (last review activity: about 28 days ago)
  - "[MCP] proposing a macros working group" [compiler-team#637](https://github.com/rust-lang/compiler-team/issues/637) (last review activity: about 27 days ago)
  - "Add support for visionOS targets" [compiler-team#642](https://github.com/rust-lang/compiler-team/issues/642) (last review activity: about 13 days ago)
  - "Add illumos Tier3 targets" [compiler-team#644](https://github.com/rust-lang/compiler-team/issues/644) (last review activity: about 13 days ago)
  - "Migrate away from u32 as an offset/length type" [compiler-team#647](https://github.com/rust-lang/compiler-team/issues/647) (last review activity: about 6 days ago)
- Pending FCP requests (check your boxes!)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618781780) 
  - "Tracking issue for the `thiscall` calling convention" [rust#42202](https://github.com/rust-lang/rust/issues/42202#issuecomment-1616187726) 
  - "Add documentation on v0 symbol mangling." [rust#97571](https://github.com/rust-lang/rust/pull/97571#issuecomment-1617734630) 
    - note: missing tick from @**pnkfelix** + @**lcnr** (if no concerns) 
  - "Support overriding `warnings` level for a specific lint via command line" [rust#113307](https://github.com/rust-lang/rust/pull/113307#issuecomment-1621305927) 
- Things in FCP (make sure you're good with it)
  - "Add a blanket flag to enable/disable codegen UB checks" [compiler-team#625](https://github.com/rust-lang/compiler-team/issues/625) 
  - "Report all lints, even if other errors already occurred." [compiler-team#633](https://github.com/rust-lang/compiler-team/issues/633) 
  - "Use `FieldIdx` all the way down" [compiler-team#639](https://github.com/rust-lang/compiler-team/issues/639) 
  - "Add support for the riscv64-linux-android target" [compiler-team#640](https://github.com/rust-lang/compiler-team/issues/640) 
  - "Implement alignment and size niches for references" [compiler-team#641](https://github.com/rust-lang/compiler-team/issues/641) 
  - "Changes to StatementKind::Coverage" [compiler-team#645](https://github.com/rust-lang/compiler-team/issues/645) 
  - "KRabcake SANitization (KRSAN) mode" [compiler-team#646](https://github.com/rust-lang/compiler-team/issues/646) 
  - "Drop MIPS to tier 3" [compiler-team#648](https://github.com/rust-lang/compiler-team/issues/648) 
  - "Disallow non-identifier-valid --extern crate names " [compiler-team#650](https://github.com/rust-lang/compiler-team/issues/650) 
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - "Create `unnecessary_send_constraint` lint for `&(dyn ... + Send)`" [rust#110961](https://github.com/rust-lang/rust/pull/110961) 
  - "Enable coinduction support for Safe Transmute" [rust#113175](https://github.com/rust-lang/rust/pull/113175)

### WG checkins

- @_*WG-mir-opt* by @**oli** ([previous checkin](https://hackmd.io/auk0MATiScWFokXL6RlO-w#WG-checkins)):
  > * Progress on the removal of the `Deref` projection: https://github.com/rust-lang/rust/pull/112882
  > * mir-opt test blessing for 32 bit targets was simplified and happens automatically when you specifically run mir-opt tests
  > * debug assertions for testing against unaligned dereferences are added in MIR: https://github.com/rust-lang/rust/pull/98112
  > * stable MIR is progressing: support for most MIR operations and many types has been added. Support for constants is next on the list.

- @_*WG-polymorphization* by @**davidtwco** ([previous checkin](https://hackmd.io/RN6ovtjCR5m-B5IWrVgkIA#WG-checkins)):
  > nothing to report, WG-polymorphization can be removed from the check-ins rotation for now

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No beta nominations for `T-compiler` this time.
- No stable nominations for `T-compiler` this time.

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Add new simpler and more explicit syntax for check-cfg" [rust#111072](https://github.com/rust-lang/rust/pull/111072)
  - depends on MCP [compiler-team#636](https://github.com/rust-lang/compiler-team/issues/636) (-> [Zulip discussion](https://rust-lang.zulipchat.com/#narrow/stream/233931-t-compiler.2Fmajor-changes/topic/Simplify.20and.20improve.20explicitness.20of.20the.20.E2.80.A6.20compiler-team.23636))
- "Update Android system definitions and add riscv-linux-android as tier 3 target" [rust#112858](https://github.com/rust-lang/rust/pull/112858)
  - (T-libs approved, split T-libs changes in a separate PR #113130)
- Issues [in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [58 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [26 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 0 P-high, 2 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 2 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 34 P-high, 100 P-medium, 19 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` at this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` at this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` at this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2023-07-11](https://github.com/rust-lang/rustc-perf/blob/master/triage/2023-07-11.md)

A very quiet week with nearly no changes in compiler performance. 

Triage done by **@rylev**.
Revision range: [52d8c49..1d4f5af](https://perf.rust-lang.org/?start=52d8c490a3aabe65cdd9f2d3aed95034dd5dbad7&end=1d4f5affbdee00c816f961c227c6b28a3e725ce6&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 1.1%  | [0.7%, 1.7%]   | 8     |
| Regressions (secondary)  | 2.1%  | [0.4%, 3.7%]   | 2     |
| Improvements (primary)   | -0.9% | [-1.2%, -0.5%] | 26    |
| Improvements (secondary) | -1.2% | [-1.8%, -0.2%] | 16    |
| All  (primary)           | -0.4% | [-1.2%, 1.7%]  | 34    |


4 Regressions, 2 Improvements, 2 Mixed; 1 of them in rollups
51 artifact comparisons made in total

#### Regressions

Rollup of 8 pull requests [#113370](https://github.com/rust-lang/rust/pull/113370) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=e4cd1610067501fa4d347eba7b18f77137dbbf48&end=5dac6b320be868f898a3c753934eabc79ff2e406&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 1.3% | [0.6%, 2.1%] | 11    |
| Regressions (secondary)  | 1.6% | [1.6%, 1.6%] | 1     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 1.3% | [0.6%, 2.1%] | 11    |
- [#113320](https://github.com/rust-lang/rust/pull/113320) seemed to be the culprit but it's not clear why. Following up with the author.

Remove some unnecessary(?) normalization [#113348](https://github.com/rust-lang/rust/pull/113348) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=0d50ab77397d7278500abd22d34de0e10940b2ee&end=b112bc5529cfa8d8a9000f7a85278ece3232e579&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.8% | [0.4%, 1.1%] | 6     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.8% | [0.4%, 1.1%] | 6     |
- Noise as this change only touched test files


Bump version to 1.73 [#113485](https://github.com/rust-lang/rust/pull/113485) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=83964c156db1f444050a38b2498dbd0da6d5d503&end=03247fbbe87b28a991d721c4fe7cdf4e6fc5d5a3&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.8% | [0.5%, 1.2%] | 32    |
| Regressions (secondary)  | 0.7% | [0.7%, 0.7%] | 3     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.8% | [0.5%, 1.2%] | 32    |
- Noise as this only was a version bump


Update debuginfo test runner to provide more useful output [#113306](https://github.com/rust-lang/rust/pull/113306) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1861088f9088344a6b821abf335678d7fe037872&end=ba37a69d30fc6ffc0c2589eb59e936c261b36e76&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | -    | -            | 0     |
| Regressions (secondary)  | 5.6% | [5.6%, 5.6%] | 1     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | -    | -            | 0     |
- Noise as this change only touched test files


#### Improvements

Move `TyCtxt::mk_x` to `Ty::new_x` where applicable [#113377](https://github.com/rust-lang/rust/pull/113377) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b112bc5529cfa8d8a9000f7a85278ece3232e579&end=4dd1719b3406d80f539d2f49e9842f3563908632&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.7% | [-1.1%, -0.4%] | 10    |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.7% | [-1.1%, -0.4%] | 10    |


Port PGO/LTO/BOLT optimized build pipeline to Rust [#112235](https://github.com/rust-lang/rust/pull/112235) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f05d743c204a3c433fb5c2976691fb4eb5c7a530&end=1861088f9088344a6b821abf335678d7fe037872&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 0.3%  | [0.3%, 0.3%]   | 1     |
| Improvements (primary)   | -0.9% | [-1.3%, -0.5%] | 38    |
| Improvements (secondary) | -0.8% | [-2.3%, -0.3%] | 11    |
| All  (primary)           | -0.9% | [-1.3%, -0.5%] | 38    |


#### Mixed

perform TokenStream replacement in-place when possible in expand_macro [#113270](https://github.com/rust-lang/rust/pull/113270) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=7cc3da05f99fbc89782fc6cb7e207fa11aa6add5&end=921f669749a57ab5936721fdd93b2da57b581381&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.6%  | [0.6%, 0.7%]   | 2     |
| Regressions (secondary)  | 0.3%  | [0.3%, 0.3%]   | 3     |
| Improvements (primary)   | -     | -              | 0     |
| Improvements (secondary) | -0.3% | [-0.3%, -0.3%] | 2     |
| All  (primary)           | 0.6%  | [0.6%, 0.7%]   | 2     |
- Might be noise, but otherwise too small to be worth the investigation.


Sync portable-simd to 2023 July 07 [#113437](https://github.com/rust-lang/rust/pull/113437) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=1a449dcfd25143f7e1f6b6f5ddf1c12af361e2ff&end=fd68a6ded951bd7b852ab8107007f7145e3ad6ec&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 1.6%  | [1.6%, 1.6%]   | 1     |
| Improvements (primary)   | -1.0% | [-1.5%, -0.6%] | 11    |
| Improvements (secondary) | -1.0% | [-1.7%, -0.6%] | 4     |
| All  (primary)           | -1.0% | [-1.5%, -0.6%] | 11    |
- Numbers were declared acceptable as it potentially could have been much worse.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "standalone installer rustc-1.70.0 (precompiled binary) segfaults in elf_machine_runtime_setup" [rust#112286](https://github.com/rust-lang/rust/issues/112286)
  - issue hits platform `powerpc64le-unknown-linux-gnu`, tier 2
  - Gihub comment thread, [summary](https://github.com/rust-lang/rust/issues/112286#issuecomment-1628726995) from @**Jubilee**
  - Zulip [comment thread](https://rust-lang.zulipchat.com/#narrow/stream/245100-t-compiler.2Fwg-prioritization.2Falerts/topic/.23112286.20standalone.20installer.20rustc-1.2E70.2E0.20.28precompiled.20bina.E2.80.A6)
  - @**lqd** points out that disabling BOLT (currently enabled only for `x86_64-unknown-linux-gnu`) altogether would cause too much loss for `rustup` users ([comment](https://rust-lang.zulipchat.com/#narrow/stream/245100-t-compiler.2Fwg-prioritization.2Falerts/topic/.23112286.20standalone.20installer.20rustc-1.2E70.2E0.20.28precompiled.20bina.E2.80.A6))
  - [Gentoo will disable stripping LLVM.so](https://github.com/rust-lang/rust/issues/112286#issuecomment-1630085688) (as suggested by us) as a workaround
- "MSVC and rustc disagree on minimum stack alignment on x86 Windows" [rust#112480](https://github.com/rust-lang/rust/issues/112480)
  - Nominated again after T-opsem FCP proposing to close #98112 finished ([comment](https://github.com/rust-lang/rust/issues/112480#issuecomment-1606326864))

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

- "Fix off-by-one error in X87DoubleExtended::from_bits" [rust#100685](https://github.com/rust-lang/rust/pull/100685) (last review activity: 10 months ago)
  - blocked on the new `rust_apfloat` with compatible licensing
  - There is some updates from @**eddyb** (see [comment](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AE-needs-mcve+label%3AT-compiler+sort%3Acreated-asc), thanks!)
- "Only run MaybeInitializedPlaces dataflow once to elaborate drops" [rust#111555](https://github.com/rust-lang/rust/pull/111555) (last review activity: about 44 days ago)
  - I _think_ it's waiting on review cc @**Wesley Wiser**
- "return `NoSolution` for default assoc items" [rust#111994](https://github.com/rust-lang/rust/pull/111994) (last review activity: about 28 days ago)
  - seems to be waiting on review cc @**uwu**
- "riscv: Make ELF flags RVE-aware" [rust#112567](https://github.com/rust-lang/rust/pull/112567) (last review activity: about 21 days ago)
  - Seems that @**Nikita Popov** can help here

## Next week's WG checkins

- @_*WG-rls2.0* by @**Lukas Wirth**
- @_*WG-self-profile* by @**mw** and @**Wesley Wiser**

Next agenda draft: https://hackmd.io/XBOdBRLXR7qFfq526W7gXg