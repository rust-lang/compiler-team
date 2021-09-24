--
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2021-06-17

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- :tada: today release of Rust stable 1.53 :tada:

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "Add different entry points for x.py" [compiler-team#396](https://github.com/rust-lang/compiler-team/issues/396)
  - "rustdoc is using rustc_ast_pretty, would it be possible to make it somewhat "stable"?" [compiler-team#403](https://github.com/rust-lang/compiler-team/issues/403)
  - "LLVM plugin support in Rust" [compiler-team#419](https://github.com/rust-lang/compiler-team/issues/419)
  - "Promote `aarch64-apple-ios-sim` to Tier 2" [compiler-team#428](https://github.com/rust-lang/compiler-team/issues/428)
  - "Write text output files to stdout if options like `-o -` or `--emit asm=-` are provided" [compiler-team#431](https://github.com/rust-lang/compiler-team/issues/431)
  - "Don't steal the resolver when lowering HIR; instead store an immutable resolver in TyCtxt" [compiler-team#437](https://github.com/rust-lang/compiler-team/issues/437)
- Pending FCP requests (check your boxes!)
  - No pending FCP requests this time.
- Things in FCP (make sure you're good with it)
  - "Allow changing the bug report url for the ice hook" [compiler-team#436](https://github.com/rust-lang/compiler-team/issues/436)
  - "Transfer on-disk hash table implementation (odht crate) to rust-lang org" [compiler-team#438](https://github.com/rust-lang/compiler-team/issues/438)
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - "Tracking Issue for const `core::str::from_utf8_unchecked`" [rust#75196](https://github.com/rust-lang/rust/issues/75196)
  - "Re-add support for parsing (and pretty-printing) inner-attributes in match body" [rust#85193](https://github.com/rust-lang/rust/pull/85193)
  - "Stabilize `ops::ControlFlow` (just the type)" [rust#85608](https://github.com/rust-lang/rust/pull/85608)

### WG checkins

@*wg-incr-comp* by @**pnkfelix** and @**Wesley Wiser**:
> While there has been activity recently around the ICEs in incremental compilation in 1.52 and 1.53, the group itself has not been very active. 

@*WG-llvm* by @**nagisa** ([last update](https://hackmd.io/w9tJSQkHTZWYet3BUijtTA#WG-checkins)):
> * Work on opaque pointer types has recently picked up. Don't think it will be ready for next release, but maybe the one after. We should probably get rid of our reliance on pointer element types in codegen_llvm at some point.
> * A lot of mailing list discussion on pointer provenance wrt pointer<->int conversions (including implicit casts through memory) recently. It doesn't look like there's any consensus yet, but at least there is some movement.
> * A support for demangling symbols that use new Rust mangling scheme.

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Re-add support for parsing (and pretty-printing) inner-attributes in match body" [rust#85193](https://github.com/rust-lang/rust/pull/85193)
  - nominated by @**Eric Huss**, PR didn't make it to the merge window 
- :beta: "Revert "Allow specifying alignment for functions"" [rust#86300](https://github.com/rust-lang/rust/pull/86300)
  - opened by @**pnkfelix** 
  - @**simulacrum** [comments](https://github.com/rust-lang/rust/pull/86300#issuecomment-861065417) this PR is still a good candidate for backport since PR [#85976](https://github.com/rust-lang/rust/pull/85976) will land in 1.55
- No stable nominations for `T-compiler` this time.

[T-libs-impl stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-libs-impl) / [T-libs-impl beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-libs-impl)
- No beta nominations for `T-libs-impl` this time.
- No stable nominations for `T-libs-impl` this time.

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No beta nominations for `T-rustdoc` this time.
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- No PRs waiting on `T-compiler` this time.

[T-libs-impl](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-libs-impl)
- No PRs waiting on `T-libs-impl` this time.

## Issues of Note

### Short Summary

- [4 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [2 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [80 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [53 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 1 P-high, 2 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [1 P-critical, 3 P-high, 3 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [2 P-critical, 48 P-high, 86 P-medium, 10 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "Unstable fingerprints - what to do on beta (and stable)" [rust#84970](https://github.com/rust-lang/rust/issues/84970)
  - milestone has been moved to 1.54
  - reprio to `P-high`?
- "iter::Fuse is unsound with how specialization currently behaves around HRTB fn pointers" [rust#85863](https://github.com/rust-lang/rust/issues/85863)
  - previously discussed
  - @**Josh Triplett** comments this issue will be discussed [in a follow-up T-lang meeting](https://github.com/rust-lang/rust/issues/85863#issuecomment-856958496)
- "TrustedRandomAccess optimization for Zip containing vec::IntoIter is unsound with how specialization currently behaves around HRTB fn pointers" [rust#85873](https://github.com/rust-lang/rust/issues/85873)
  - issue will be discussed [in a follow-up T-lang meeting](https://github.com/rust-lang/rust/issues/85863#issuecomment-856958496)
- "For 1.53, must fwd-port RUSTC_FORCE_INCREMENTAL from 1.52.1" [rust#86004](https://github.com/rust-lang/rust/issues/86004)
  - Part of [#84970](https://github.com/rust-lang/rust/issues/84970) (Unstable fingerprints)
  - Tracking issue for the forward-port to 1.53

[T-libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-libs-impl)
- No `P-critical` issues for `libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "rustdoc: Regression in display of `macro_rules!` matchers" [rust#86208](https://github.com/rust-lang/rust/issues/86208)
  - looks under control from T-rustdoc (cc: @**Noah Lev** @**Joshua Nelson** )

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "Apple platforms: Disabled frame pointer elimination causes perf issues and is not in line with what clang does" [rust#86196](https://github.com/rust-lang/rust/issues/86196)
  - opened by @**Hans Kratz** 
  - [mild perf regression](https://github.com/rust-lang/rust/issues/86196#issuecomment-860443448) on target Apple with disabled frame pointer elimination (clang default on macOS: `frame-pointer="no-leaf""`, in Rust nightly became `frame-pointer="all"`) along with an increase in binary size
  - (assigned `P-high` but - if appropriate for a Tier 1 platform - maybe reprio to `P-critical`

### P-high stable regression (which we don't usually discuss)

- Compile error: static lifetime not satisfied but it is [#86172](https://github.com/rust-lang/rust/issues/86172)
  - opened by @**Jack Rickard** 
  - compact [mcve](https://github.com/rust-lang/rust/issues/86172#issuecomment-860236692)
  - looks like fallout from an old merge [#73905](https://github.com/rust-lang/rust/pull/73905)
  - assigned `P-high` to get visibility, does `P-medium` is a better fit (or maybe nominate?)


## Performance logs

[triage logs for 2021-06-16](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-06-16.md)

The highlight of this week was a huge performance gains in some async focused benchmarks from only pretty-printing generator witness in verbose mode. This improved async heavy benchmarks by as much as 75%.

Triage done by **@rylev**.

1 Regressions, 2 Improvements, 0 Mixed
0 of them in rollups

#### Regressions

Make copy/copy_nonoverlapping fn's again [#86003](https://github.com/rust-lang/rust/issues/86003)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=47d38752c65359e1f4558d7a06935982fb8b486f&end=eab201df7028ebb6812c0b1a01702ac6ecfcceed&stat=instructions:u) (up to 2.3% on `incr-patched: u8 3072` builds of `issue-46449-debug`)
- Regressions happening mostly in LLVM codegen which makes sense given that this moves from intrinsics to function calls which should produce more LLVM IR. 
- Follow up conversation starts [here](https://github.com/rust-lang/rust/pull/86003#issuecomment-862210554).

#### Improvements

- Update cargo [#86207](https://github.com/rust-lang/rust/issues/86207)
- Pretty print generator witness only in `-Zverbose` mode [#86240](https://github.com/rust-lang/rust/issues/86240)

#### Nags requiring follow up

* Follow up from last week on regression in [#85343](https://github.com/rust-lang/rust/pull/85343#issuecomment-856819536)
* Follow up to regression in [#86003](https://github.com/rust-lang/rust/pull/86003#issuecomment-862210554).

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "Generate links to definition in rustdoc source code pages" [rust#84176](https://github.com/rust-lang/rust/pull/84176)
  - opened by @**GuillaumeGomez**, adds hyperlinks to navigate code in rustdoc
  - feature is [nightly-only and disabled by default](https://github.com/rust-lang/rust/pull/84176#issuecomment-821026882)
  - [Last T-compiler discussion](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Badhoc.5D.202021-06-11.20unsound.20stdlib.20specialization.20and.201.2E53/near/242358093) was oriented to OK'ing the merge after the 1.53 release so we have more time to test/revert/etc.
- "Re-add support for parsing (and pretty-printing) inner-attributes in match body" [rust#85193](https://github.com/rust-lang/rust/pull/85193)
  - [discussed by T-lang](https://github.com/rust-lang/rust/pull/85193#issuecomment-852333730)
  - @**pnkfelix** re-added [nomination for T-compiler](https://github.com/rust-lang/rust/pull/85193#issuecomment-858457241)
- "Emscripten wasm32 compilation broken" [rust#85821](https://github.com/rust-lang/rust/issues/85821)
  - Compiling an Hello world with the new emscripten SDK version 2.0.10 trips into a removed stubbed function (`__gxx_personality_v0`) and dies.
  - With emscripten SDK version 2.0.9 still works because the stub is there
  - Nominated to find an owner: who has recently their hands in the wasm target (@__**Alex Crichton** ? maybe a WG?)
- "SPARC - passing argument from C++ to Rust issue" [rust#86163](https://github.com/rust-lang/rust/issues/86163)
  - opened by @psumbera
  - unsoundness on Tier 2 target `sparcv9-sun-solaris`
  - @**nagisa** comments this seems to be a [SPARCv9 64-bit ABI definition issue](https://github.com/rust-lang/rust/issues/86163#issuecomment-857584194)
  - We have [an MCVE](https://github.com/rust-lang/rust/issues/86163#issuecomment-859089923)
  - Should we prioritize this as a `P-high` (or higher?) and try to follow-up accordingly? Who can own this?

[T-libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-libs-impl)
- No nominated issues for `T-libs-impl` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.
