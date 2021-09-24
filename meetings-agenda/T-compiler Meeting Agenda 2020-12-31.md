---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2020-12-31

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Rust 1.49 has been released!!! :tada: :tada: :tada:
- Make sure that all ideas for 2021 are in the [HackMD](https://hackmd.io/3eG6OZWHRbSMxoRxzwNhGQ?view); see [zulip discussion](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/Rust.202021)
- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "MCP: move compiler/ crates to stable Rust" [compiler-team#358](https://github.com/rust-lang/compiler-team/issues/358)
  - "Add 32-bit and 64-bit stderr/stdout files for ui tests" [compiler-team#365](https://github.com/rust-lang/compiler-team/issues/365)
  - "Add a `NOOP_METHOD_CALL` lint for methods which should never be directly called" [compiler-team#375](https://github.com/rust-lang/compiler-team/issues/375)
  - "MCP: More Cranelift-friendly portable SIMD intrinsics" [compiler-team#381](https://github.com/rust-lang/compiler-team/issues/381)
  - "Debuggable Macro Expansions" [compiler-team#386](https://github.com/rust-lang/compiler-team/issues/386)
  - "Move query implementation outside rustc_middle" [compiler-team#388](https://github.com/rust-lang/compiler-team/issues/388)
  - "Uplift the `invalid_atomic_ordering` lint from clippy to rustc" [compiler-team#390](https://github.com/rust-lang/compiler-team/issues/390)
  - "Staged queries" [compiler-team#391](https://github.com/rust-lang/compiler-team/issues/391)
  - "Do not traverse the HIR to generate metadata" [compiler-team#392](https://github.com/rust-lang/compiler-team/issues/392)
  - "Embed version numbers in backport nominations and regression labels" [compiler-team#393](https://github.com/rust-lang/compiler-team/issues/393)
- Pending FCP requests (check your boxes!)
  - "rustc: Stabilize `-Zrun-dsymutil` as `-Csplit-debuginfo`" [rust#79570](https://github.com/rust-lang/rust/pull/79570)
- Things in FCP (make sure you're good with it)
  - "Make it easier to build the standard library" [compiler-team#394](https://github.com/rust-lang/compiler-team/issues/394)
  - "Add a scheme to register functions from other crates with TyCtxt" [compiler-team#395](https://github.com/rust-lang/compiler-team/issues/395)
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - [T-infra, T-compiler] "Drop official support for Windows XP" [compiler-team#378](https://github.com/rust-lang/compiler-team/issues/378)
  - [T-libs] "Tracking issue for map_ok and map_err method for Poll<Option<Result<T, E>>>" [rust#63514](https://github.com/rust-lang/rust/issues/63514)
  - [T-libs] "Stabilize the Wake trait" [rust#74304](https://github.com/rust-lang/rust/pull/74304)
  - [T-libs] "Mark `-1` as an available niche for file descriptors" [rust#74699](https://github.com/rust-lang/rust/pull/74699)
  - [T-libs] "Stabilize or_insert_with_key" [rust#78083](https://github.com/rust-lang/rust/pull/78083)
  - [T-lang] "Rename `overlapping_patterns` lint" [rust#78242](https://github.com/rust-lang/rust/pull/78242)
  - [T-libs] "stabilize deque_range" [rust#79022](https://github.com/rust-lang/rust/pull/79022)
  - [T-lang] "passes: prohibit invalid attrs on generic params" [rust#79073](https://github.com/rust-lang/rust/pull/79073)
  - [T-libs] "Add `impl Div<NonZeroU{0}> for u{0}` which cannot panic" [rust#79134](https://github.com/rust-lang/rust/pull/79134)
  - [T-lang] "stabilize `#![feature(min_const_generics)]` in 1.51" [rust#79135](https://github.com/rust-lang/rust/pull/79135)
  - [T-libs] "Stabilize `core::slice::fill`" [rust#79213](https://github.com/rust-lang/rust/pull/79213)
  - [T-libs] "BTreeMap: remove Ord bound where it's not needed" [rust#79245](https://github.com/rust-lang/rust/pull/79245)
  - [T-libs] "Deprecate atomic compare_and_swap method" [rust#79261](https://github.com/rust-lang/rust/pull/79261)
  - [T-lang] "Acknowledge that `[CONST; N]` is stable" [rust#79270](https://github.com/rust-lang/rust/pull/79270)
  - [T-libs] "Stabilize all stable methods of `Ipv4Addr`, `Ipv6Addr` and `IpAddr` as const" [rust#79342](https://github.com/rust-lang/rust/pull/79342)
  - [T-libs] "Move {f32,f64}::clamp to core." [rust#79473](https://github.com/rust-lang/rust/pull/79473)
  - [T-libs] "Stabilize `unsafe_cell_get_mut`" [rust#79485](https://github.com/rust-lang/rust/pull/79485)
  - [T-libs] "Implement From<char> for u64 and u128." [rust#79502](https://github.com/rust-lang/rust/pull/79502)

### WG checkins

@*WG-mir-opt* checkin by @**oli**:
> * mir opts now participate in optimization fuel (#79117)
> * some intrinsic calls are lowered to pure MIR statements/rvalues (#79049, #79922)
> * the old copy-prop is finally gone (#77373)
> * mir-dumps became less noisy around arrays and tuples (#79999)
> * mir graphviz is now created by using an out-of-tree crate (#78399)
> * various fixes of mir-inlining by @tmiasko (#79192, #78966, #78873, #78843, #78847, #78771, #78674, #78668, #78580)

@*WG-polonius* checkin by @**lqd** @**nikomatsakis**:
> A few things to report since last time (but this work is not reviewed yet):
>
> - we completed the refactoring to align with the rules we finalized last sprint (with another branch to update rustc)
> - we completed computing subset errors in all the variants, which re-enables the fast "location insensitive" pre-pass
> - we added more documentation to the book to explain the process, the "Naive" rules, and the data they're using
> - preparatory work for the 1st sprint of 2021, both for planning the sprint, and in-progress PRs to review during the sprint (counting the above work, that's 4 PRs ready for when the sprint happens)

## Beta-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler)
- No beta nominations for `T-compiler` this time.

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3Alibs-impl)
- No beta nominations for `libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## Stable-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No stable nominations for `T-compiler` this time.

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3Alibs-impl)
- No stable nominations for `libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "MIR-OPT: Pass to deduplicate blocks" [rust#77551](https://github.com/rust-lang/rust/pull/77551)
  - Discussed last week
  - opened by @**Simon Vandel Sillesen** 
  - assigned to @**oli**
  - The performance gain seems to be not very clear. Relevant comments [from here](https://github.com/rust-lang/rust/pull/77551#issuecomment-713417158).
- "Fix rustc sysroot in systems using CAS" [rust#79253](https://github.com/rust-lang/rust/pull/79253)
  - Assigned to @**simulacrum**
  - "It seems like it could easily lead to confusion if there are (by accident or intentionally) different sysroots at argv0 and current_exe"
  - @**simulacrum** thinks that the problem is real but is unsure if the solution is the right one
  -  @**Joshua Nelson** [points out](https://github.com/rust-lang/rust/pull/79253#issuecomment-750706219) that there is already a `--sysroot` to override the system root (if that may help the issue reporter)
- "BPF target support" [rust#79608](https://github.com/rust-lang/rust/pull/79608)
  - Discussed last week
  - opened by @**Alessandro Decina**, suggests a Tier 2 for this target
  - assigned to @**simulacrum** 
  - Adds targets `bpfel-unknown-none` and `bpfeb-unknown-none` (more info [here](https://github.com/alessandrod/bpf-linker))
  - @_*simulacrum* suggests waiting to have a policy for that
  - @**Josh Triplett** [is working on it](https://github.com/rust-lang/rust/pull/79608#issuecomment-744211807)

[libs-impl](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3Alibs-impl)
- No PRs waiting on `libs-impl` this time.

## Issues of Note

### Short Summary

- [5 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+)
  - [3 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [55 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+)
  - [35 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 1 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 7 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 31 P-high, 81 P-medium, 9 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Switching to opt-level=z on i686-windows-msvc triggers STATUS_ACCESS_VIOLATION" [rust#67497](https://github.com/rust-lang/rust/issues/67497)
  - Discussed last week
  - Opened by @**dignifiedquire** 
  - Assigned to @**pnkfelix**
  - [Rust 1.36.0 through 1.48.0](https://github.com/rust-lang/rust/issues/67497#issuecomment-733699197) all have broken builds on Windows i686-windows-msvc 
- "Upgrade to LLVM11 caused a codegen regression on Windows" [rust#78283](https://github.com/rust-lang/rust/issues/78283)
  - [Previously discussed](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.20meeting.5D.202020-11-12.20.2354818/near/216482008)
  - opened by @**Jeff Muizelaar**
  - assigned to  @**pnkfelix** 
  - Firefox code that used to work on Rust 1.46 started to fail after upgrading to LLVM 11
  - Affects only MSVC
  - @**Nikita Popov** suggests could be related to [rust#74498](https://github.com/rust-lang/rust/issues/74498)
  - @**Jeff Muizelaar** suggests to be related to LLVM bug [#46943](https://bugs.llvm.org/show_bug.cgi?id=46943), provides a [minimal repro](https://github.com/rust-lang/rust/issues/78283#issuecomment-720156273)
  - @_**pnkfelix**_ has patch in progress for LLVM bug [#46943](https://bugs.llvm.org/show_bug.cgi?id=46943) (got feedback recently from @_**Nikita Popov**)
- "Miscompilation of AVX2 code under --release" [rust#79865](https://github.com/rust-lang/rust/issues/79865)
  - [Previously discussed](https://github.com/rust-lang/rust/issues/78893#issuecomment-726155995)
  - opened by @**Tony Arcieri** 
  - not yet assigned
  - unsoundness that impacts cryptographic code
  - reporter mentions a workaround ([pulling code out of a lamba](https://github.com/rust-lang/rust/issues/79865#issuecomment-742039745)) to fix the error 
  - shortest [mcve so far](https://github.com/rust-lang/rust/issues/79865#issuecomment-742861255) provided by @**lqd**
  - an even [shorter repro](https://github.com/rust-lang/rust/issues/79865#issuecomment-748537875) from @**Stu** 
- "Unsoundness in type checking of trait impls. Differences in implied lifetime bounds are not considered." [rust#80176](https://github.com/rust-lang/rust/issues/80176)
  - opened by @**Frank Steffahn** 
  - here's a [repro](https://github.com/rust-lang/rust/issues/80176#issuecomment-748466836)
  - seems related to [rust#25860](https://github.com/rust-lang/rust/issues/25860)
- "Miscompilation when using wrapping_sub/wrapping_add on pointer." [rust#80309](https://github.com/rust-lang/rust/issues/80309)
  - opened by @**Frank Steffahn**
  - unsoundness leads to an `illegal instruction` error, but only when compiling for `release` (`debug` seems fine)
  - here is a [minimal repro](https://github.com/rust-lang/rust/issues/80309#issuecomment-750290538)
  - we have an [LLVM issue](https://bugs.llvm.org/show_bug.cgi?id=48577) and [here](https://bugs.llvm.org/show_bug.cgi?id=44403)

[libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3Alibs-impl)
- No `P-critical` issues for `libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high)
- "No error reported when a generic parameter doesn't meet the requirement of an associated type" [rust#78893](https://github.com/rust-lang/rust/issues/78893)
  - Opened by @**yshui** 
  - Assigned to @**Matthew Jasper** 
  - @**Camelid** bisected to this PR [#73905](https://github.com/rust-lang/rust/pull/73905)
  - Niko did [some analysis](https://github.com/rust-lang/rust/issues/78893#issuecomment-730646724) on the issue
  - [Previously discussed](https://github.com/rust-lang/rust/issues/78893#issuecomment-726155995): reverting #73905 is not desirable
  - @**simulacrum** [also comments](https://github.com/rust-lang/rust/issues/78893#issuecomment-751496676) this is likely to be a regression in stable once 1.49 is out, but not a release blocker
  - but [if this gets into stable](https://github.com/rust-lang/rust/issues/78893#issuecomment-751538585), the eventual fix is going to be a breaking change
   
[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs](https://github.com/rust-lang/rustc-perf/tree/master/triage#triage-logs)

### 2020-12-24

Major event this week is landing PGO for rustc (on x86_64-unknown-linux-gnu). We
expect other platforms to follow but further investigation will be needed,
especially for cross-compiled platforms. We expect to add LLVM PGO as well.

Triage done by **@simulacrum**.
Revision range: [e1cce06e4ff5206daf397e1dcf91ed53653be171..c34c015fe2710caf53ba7ae9d1644f9ba65a6f74](https://perf.rust-lang.org/?start=e1cce06e4ff5206daf397e1dcf91ed53653be171&end=c34c015fe2710caf53ba7ae9d1644f9ba65a6f74&absolute=false&stat=instructions%3Au)

3 Regressions, 5 Improvements

#### Regressions

Rollup of 11 pull requests [#80105](https://github.com/rust-lang/rust/issues/80105)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=a6491be5be9344a325b7e49b0114f3cf67ef199e&end=9b84d36a0b9ea3bf305f36f08d50aa42c26f96c2&stat=instructions:u) (up to 3.4% on `full` builds of `match-stress-enum-check`)
- Due to implementing `if let` guards in [#79051](https://github.com/rust-lang/rust/issues/79051)

Revert "cg_llvm: `fewer_names` in `uncached_llvm_type`" [#80122](https://github.com/rust-lang/rust/issues/80122)
- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=eb4fc71dc9024f15a0c9cc44bcc10c861e9d585e&end=1954756aa53d03e59e40669eaa47a15d8497c352&stat=instructions:u) (up to 424.2% on `incr-patched: println` builds of `regression-31157-debug`)
- Hopefully temporary fix until LLVM patches are applied. Fairly unfortunate,
  though, to lose this much performance.

or_patterns: implement :pat edition-specific behavior [#80100](https://github.com/rust-lang/rust/issues/80100)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=0c11b93f5a8914a40f619b0a1663baafe029d427&end=29e32120c33d30ff526fc7f4d94ec9fce0dc10c9&stat=instructions:u) (up to 1.3% on `incr-unchanged` builds of `deep-vector-check`)
- Most likely overeagerly queries edition of spans. Left ask for moving that to
  be lazy.

#### Improvements

Make BoundRegion have a kind of BoungRegionKind [#80163](https://github.com/rust-lang/rust/issues/80163)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=29e32120c33d30ff526fc7f4d94ec9fce0dc10c9&end=b1964e60b72c2d10e9fd4e801990f8af3f306ac0&stat=instructions:u) (up to -2.1% on `full` builds of `clap-rs-check`)
- Looks like faster mostly due to a smaller argument size

rustc_query_system: explicitly register reused dep nodes [#80177](https://github.com/rust-lang/rust/issues/80177)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=353f3a38460d3c2222d2ab29143f48595b1a32a9&end=bb1fbbf84455fbad9afd26c17e0f725019322655&stat=instructions:u) (up to -2.4% on `incr-unchanged` builds of `match-stress-enum-check`)
- Almost entirely incremental-only change, as expected.

Turn quadratic time on number of impl blocks into linear time [#78317](https://github.com/rust-lang/rust/issues/78317)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=b0e5c7d1fee37f1890455b977495bfe262716701&end=c609b2eaf323186a1167ec1a9ffa69a7d4a5b1b9&stat=instructions:u) (up to -2.0% on `incr-unchanged` builds of `packed-simd-check`)

rustc_query_system: reduce dependency graph memory usage [#79589](https://github.com/rust-lang/rust/issues/79589)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=3d10d3e49d9784ba3833ccf5d56d0a4d15bb36f6&end=49b315123e6adb35024437ef7ba408456771c062&stat=instructions:u) (up to -2.3% on `incr-unchanged` builds of `packed-simd-check`)

Utilize PGO for rustc linux dist builds [#80262](https://github.com/rust-lang/rust/issues/80262)
- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=87eecd40e87cf7e77cee9cfdc79900c83baf6d8f&end=3ffea60dd5a2260004cc4f487401ae7c7db1aa0e&stat=instructions:u) (up to -12.2% on `full` builds of `externs-debug`)
- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=87eecd40e87cf7e77cee9cfdc79900c83baf6d8f&end=3ffea60dd5a2260004cc4f487401ae7c7db1aa0e&stat=instructions:u) (up to 7.4% on `incr-unchanged` builds of `many-assoc-items-check`)
- Instruction counts are not the main target of PGO, and wall times are
  showing the expected 5-20% [wins](https://perf.rust-lang.org/compare.html?start=87eecd40e87cf7e77cee9cfdc79900c83baf6d8f&end=3ffea60dd5a2260004cc4f487401ae7c7db1aa0e&stat=wall-time).
  Note that we expect to improve performance even further by applying PGO to
  LLVM as well.

#### Nags requiring follow up

- or_patterns: implement :pat edition-specific behavior [#80100](https://github.com/rust-lang/rust/issues/80100)
    - Needs follow-up performance fixing patch. https://github.com/rust-lang/rust/pull/80100#issuecomment-750893149
- stdarch is still a major contributor to libcore compile times.

### 2020-12-29

This was a quiet week as many were on winter holidays. The regressions and improvements were all minor and mostly balanced each other out.

Triage done by **@rylev**.
Revision range: [c34c015fe2710caf53ba7ae9d1644f9ba65a6f74..e2a2592885539ca97bfb1232669e7519a0c0703b](https://perf.rust-lang.org/?start=c34c015fe2710caf53ba7ae9d1644f9ba65a6f74&end=e2a2592885539ca97bfb1232669e7519a0c0703b&absolute=false&stat=instructions%3Au)

2 Regressions, 2 Improvements, 0 Mixed
0 of them in rollups

#### Regressions

validate promoteds [#80235](https://github.com/rust-lang/rust/issues/80235)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=1832bdd7de93573464e1536e3ea17d5fd7d2888b&end=bb178237c5539c75e1b85ab78a8ab902b1f333d5&stat=instructions:u) (up to 4.8% on `full` builds of `ucd-check`)
- Turn on const-value validation for promoteds.
- In the PR there is a discussion if this change should instead only be a debug assertion. This should be discussed after a crater run happens. 

BTreeMap: respect pointer provenance rules in split_off [#79347](https://github.com/rust-lang/rust/issues/79347)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=0edce6f4bbb4514482537f569f0b8ef48e71e0a0&end=2c308b9a2a9b9d531cafa3f11cb1000ee5362e63&stat=instructions:u) (up to 2.9% on `full` builds of `cranelift-codegen-opt`)
- The minor perf regressions introduced here seemed to be gained back by [#79520](https://github.com/rust-lang/rust/issues/79520)

#### Improvements

Remove pointer comparison from slice equality [#80209](https://github.com/rust-lang/rust/issues/80209)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=d30dac2d839293f2c48e18ebfea1082819115d08&end=780b094d767b6720c11b1bf145dac2cf2643b89e&stat=instructions:u) (up to -3.1% on `incr-full` builds of `encoding-opt`)
- Removed eagerly testing pointer equality in slices since most of the time slices won't be compared with themselves. This leads to an improvement in the code gen.

BTreeMap: clean up access to MaybeUninit arrays [#79520](https://github.com/rust-lang/rust/issues/79520)
- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=30a42735a0ff678172f66f63aca746096a717293&end=89524d0f8e28080197a85e06d143b7d6f131b67e&stat=instructions:u) (up to -3.1% on `full` builds of `cranelift-codegen-opt`)
- The minor perf gains seem to be regaining perfomance lost by [#79347](https://github.com/rust-lang/rust/issues/79347)

#### Nags requiring follow up

- stdarch is still a major contributor to libcore compile times.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "unstable fingerprints for optimized_mir" [#80336](https://github.com/rust-lang/rust/issues/80336)
  - incr-comp issue opened by @**KalitaAlexey** 
  - detected by using the `-Z incremental-verify-ich` flag, causing an ICE on working code pulled from git repositories (tested on Substrate framework and rust-analyzer)
  - [Analysis](https://github.com/rust-lang/rust/issues/80336#issuecomment-751311417) by @**Aaron Hill**
  - the keypoint being (underlined by @**Léo Lanteri Thauvin** ) "is it possible to weaponize this and make it an unsoundness issue?"
  - difficult to minimize because "this is really difficult to observe in practice"
  - @**matthiaskrgr** reproduced this on 1.50 nightly, 1.48.0, 1.50.0-beta.1 and way back to 1.46 (no unaffected version found yet, as bisecting without an MCVE is harder)
  - Prioritized as `P-high`, we don't have yet a smaller mcve, we are wondering the possible implications of this issue.
    
[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3Alibs-impl)
- No nominated issues for `libs-impl` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "RFC: Checking conditional compilation at compile time" [rfcs#3013](https://github.com/rust-lang/rfcs/pull/3013)