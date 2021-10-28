---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2021-07-01

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Tomorrow <time:2021-07-02T10:00:00-04:00>, montly [Compiler Team Planning meeting](https://forge.rust-lang.org/compiler/steering-meeting.html)

## MCPs/FCP

- New MCPs (take a look, see if you like them!)
  - "CI should exercise (subset of) tests under --stage 1" [compiler-team#439](https://github.com/rust-lang/compiler-team/issues/439)
  - "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441)
  - "Encode spans relative to the enclosing item" [compiler-team#443](https://github.com/rust-lang/compiler-team/issues/443)
- Old MCPs (not seconded, take a look :point_right: **NEW**: testing age timestamps)
  - "Add different entry points for x.py" [compiler-team#396](https://github.com/rust-lang/compiler-team/issues/396) (last comment: 6 months ago)
  - "rustdoc is using rustc_ast_pretty, would it be possible to make it somewhat "stable"?" [compiler-team#403](https://github.com/rust-lang/compiler-team/issues/403) (last comment: 5 months ago)
  - "LLVM plugin support in Rust" [compiler-team#419](https://github.com/rust-lang/compiler-team/issues/419) (last comment: +3 months ago)
  - "Don't steal the resolver when lowering HIR; instead store an immutable resolver in TyCtxt" [compiler-team#437](https://github.com/rust-lang/compiler-team/issues/437) (last comment: 20 days ago)
- Pending FCP requests (check your boxes!)
  - "Write text output files to stdout if options like `-o -` or `--emit asm=-` are provided" [compiler-team#431](https://github.com/rust-lang/compiler-team/issues/431)
- Things in FCP (make sure you're good with it)
  - "Promote `aarch64-apple-ios-sim` to Tier 2" [compiler-team#428](https://github.com/rust-lang/compiler-team/issues/428)
  - "Merge rustc_codegen_gcc backend as compiler/rustc_codegen_gcc" [compiler-team#442](https://github.com/rust-lang/compiler-team/issues/442)
- Accepted MCPs
  - "Allow changing the bug report url for the ice hook" [compiler-team#436](https://github.com/rust-lang/compiler-team/issues/436)
  - "Transfer on-disk hash table implementation (odht crate) to rust-lang org" [compiler-team#438](https://github.com/rust-lang/compiler-team/issues/438)
- Finalized FCPs (disposition merge)
  - "Tracking issue for `ops::Bound::cloned()`" [rust#61356](https://github.com/rust-lang/rust/issues/61356)
  - "Support forwarding caller location through trait object method call" [rust#81360](https://github.com/rust-lang/rust/pull/81360)
  - "Ignore derived Clone and Debug implementations during dead code analysis" [rust#85200](https://github.com/rust-lang/rust/pull/85200)
  - "When using `process::Command` on Windows, environment variable names must be case-preserving but case-insensitive" [rust#85270](https://github.com/rust-lang/rust/pull/85270)
  - "Redefine `ErrorKind::Other` and stop using it in std." [rust#85746](https://github.com/rust-lang/rust/pull/85746)
  - "Stabilize span_open() and span_close()." [rust#86136](https://github.com/rust-lang/rust/pull/86136)

### WG checkins

@*wg-rfc-2229* by @nikomatsakis, @matthewjasper
>- Feature is now enabled by default and lint is now part of the edition lint
>- PR approved for -Zprofile-closures which dumps the closure size before and after the feature. This would generate a CSV which can be imported in the [first sheet here](https://docs.google.com/spreadsheets/d/1WUKERwkpJkYhQ-rt0aTQqg-7kcupC7pwKsgxk8v54qc/edit?usp=sharing)
>- Based on profile of rustc we made an optimization to reduce the sizes of closures which seems to be effective. PR [#86701](https://github.com/rust-lang/rust/pull/86701) is open right now and has more details.

@*WG-rls2.0* by @**matklad**:
>Steering issues covered by this checkin: 
>* https://github.com/rust-analyzer/rust-analyzer/issues/8486
>* https://github.com/rust-analyzer/rust-analyzer/issues/8972

>Hightlights:
>* rust-analyzer now expands attribute-like proc macros.
> * We started a conversation with the core team about moving rust-analyzer to the rust-lang project.
  Theres little actual progress though, still waiting for the kickoff meeting to get scheduled. 
>* We started groundwork to improve code completion quality: added reliable preformance tests, fixed three O(N^2) algorithms, added regression tests for irrelevant completion.
>* We are making good progress on fixing all false errors: https://github.com/rust-analyzer/rust-analyzer/issues/8961
  In general, rust-analyzer now supports most of Rust.
>* We are tentatively thinking about designing the "final" API that the compiler exposes for the IDE:
  https://github.com/rust-analyzer/rust-analyzer/issues/8713
  

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No backport nominations for `T-compiler` this time.

[T-libs-impl stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-libs-impl) / [T-libs-impl beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-libs-impl)
- No backport nominations for `T-libs-impl` this time.

[T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- :beta: "Revert "List trait impls before methods from deref in the sidebar ..."" [rust#86564](https://github.com/rust-lang/rust/pull/86564)
  - opened by @**jsha** 
  - beta-backport since it affects the sidebar display of methods in stdlib docs, substantial impact on people's doc-reading experience if it lands in stable.
  - reverts commit [8a05892](https://github.com/rust-lang/rust/commit/8a058926ecd6d0988714f8f7a5a31293c533f8c6) and fixes [#85618](https://github.com/rust-lang/rust/issues/85618)
  - r'ed by @**Joshua Nelson** 
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- "Build aarch64-apple-ios-sim as part of the full macOS build" [rust#85782](https://github.com/rust-lang/rust/pull/85782)
  - MCP [compiler-team#428](https://github.com/rust-lang/compiler-team/issues/428) was seconded, anything else to do from `T-compiler`?

[T-libs](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-libs)
- "Show type for docs slice Chunks" [rust#77938](https://github.com/rust-lang/rust/pull/77938)
  - being reviewed by T-libs
- "Fix linker error" [rust#85953](https://github.com/rust-lang/rust/pull/85953)
  - PR is being followed on [Zulip T-libs](https://rust-lang.zulipchat.com/#narrow/stream/219381-t-libs/topic/Using.20weak!.20in.20fs.3A.3Ahard_link)
- "core: add unstable no_floating_point to disable float formatting code" [rust#86048](https://github.com/rust-lang/rust/pull/86048)
  - (pr is being reviewed and discussed by T-libs)

## Issues of Note

### Short Summary

- [5 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [4 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [81 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [53 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [2 P-critical, 0 P-high, 1 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 3 P-high, 2 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [2 P-critical, 49 P-high, 83 P-medium, 11 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "run-make-fulldeps/pgo-branch-weights fails on AArch64 Linux" [rust#78226](https://github.com/rust-lang/rust/issues/78226)
  - only fails on aarch64 arm
  - @**simulacrum** [comments](https://github.com/rust-lang/rust/issues/78226#issuecomment-866299280) that tests for this are disabled but a fix for 1.54 would be good
  - being investigated by @**Jamie Cunliffe** [see comment](https://github.com/rust-lang/rust/issues/78226#issuecomment-868570487)
- "add back support for inner attributes on non-block expressions?" [rust#84879](https://github.com/rust-lang/rust/issues/84879)
  - will be closed after [rust#85193](https://github.com/rust-lang/rust/pull/85193) is beta backported (#85193 is merged and `beta-accepted`)
- "Unstable fingerprints - what to do on beta (and stable)" [rust#84970](https://github.com/rust-lang/rust/issues/84970)
  - discussed [last week](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-06-24.20.2354818/near/243797032)
  - @**Aaron Hill** comments about addressing the [sub-obligation](https://github.com/rust-lang/rust/issues/85360) and [the overflow](https://github.com/rust-lang/rust/issues/84963) issues, other than those all known issues are fixed
  - @**estebank** [offered to have a look](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-06-17.20.2354818/near/243025573)
  - general feeling is to re-enable incr-comp again in 1.54
- "iter::Fuse is unsound with how specialization currently behaves around HRTB fn pointers" [rust#85863](https://github.com/rust-lang/rust/issues/85863)
  - @**cuviper** ([comment](https://github.com/rust-lang/rust/issues/85863#issuecomment-871797016)) opened pr [rust#86765](https://github.com/rust-lang/rust/pull/86765) and [rust#86766](https://github.com/rust-lang/rust/pull/86766) 
- "TrustedRandomAccess optimization for Zip containing vec::IntoIter is unsound with how specialization currently behaves around HRTB fn pointers" [rust#85873](https://github.com/rust-lang/rust/issues/85873)
  - @**Frank Steffahn** authored pr [rust#85874](https://github.com/rust-lang/rust/pull/85874) that should close this issue

[T-libs](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-libs)
- "iter::Fuse is unsound with how specialization currently behaves around HRTB fn pointers" [rust#85863](https://github.com/rust-lang/rust/issues/85863)
  - see above (does T-libs need to be tagged?)
- "TrustedRandomAccess optimization for Zip containing vec::IntoIter is unsound with how specialization currently behaves around HRTB fn pointers" [rust#85873](https://github.com/rust-lang/rust/issues/85873)
  - see above (does T-libs need to be tagged?)

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2021-06-30](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-06-30.md)

We only have partial results this week (more details below). From the results we have collected, we have one small regression and several improvements.
Also, there was a broad [max-rss regression](https://perf.rust-lang.org/compare.html?start=29cd70d40722930e66a8b726fe58a7bd1d64a22b&end=6b354a13820a444f834a33365ae4a8d97d7d27ce&stat=max-rss) from 11 days ago and narrower [max-rss regression](https://perf.rust-lang.org/compare.html?start=406d4a9cc3b9601cf98a07c6c83e0227d64f5d48&end=4573a4a879a8e1f773944a8859e4dcd136138af8&stat=max-rss) from 9 days ago.

This week we had some problems with missing benchmark results for some of the commits (we believe this is due to triagebot being out of service for a while). Thus, there is a gap from
[5a7834050f3a0ebcd117b4ddf0bc1e8459594309](https://github.com/rust-lang/rust/commit/5a7834050f3a0ebcd117b4ddf0bc1e8459594309) to [7c3872e6bfd555d2ad753ac1f871db3bd7f2a547](https://github.com/rust-lang/rust/commit/7c3872e6bfd555d2ad753ac1f871db3bd7f2a547).

The following PR's from that gap were omitted from this analysis.

 * [#86467](https://github.com/rust-lang/rust/issues/86467) - ChrisDenton:win-env-clear, r=JohnTitor
 * [#85427](https://github.com/rust-lang/rust/issues/85427) - ehuss:fix-use-placement, r=jackh726
 * [#86279](https://github.com/rust-lang/rust/issues/86279) - JohnTitor:transparent-zero-size-fields, r=nikomatsakis
 * [#86588](https://github.com/rust-lang/rust/issues/86588) - JohnTitor:rollup-ibgjbkf, r=JohnTitor
 * [#86138](https://github.com/rust-lang/rust/issues/86138) - FabianWolff:issue-85871, r=nikomatsakis
 * [#86573](https://github.com/rust-lang/rust/issues/86573) - Mark-Simulacrum:expat-bump, r=pietroalbini

We have manually enqueued the missing commits for benchmarking on perf.rlo.

Triage done by **@pnkfelix**.
Revision range: [406d4a9cc3b9601cf98a07c6c83e0227d64f5d48..5a7834050f3a0ebcd117b4ddf0bc1e8459594309](https://perf.rust-lang.org/?start=406d4a9cc3b9601cf98a07c6c83e0227d64f5d48&end=5a7834050f3a0ebcd117b4ddf0bc1e8459594309&absolute=false&stat=instructions%3Au)
Revision range: [7c3872e6bfd555d2ad753ac1f871db3bd7f2a547..7ede6e2a2359c1bb9032baffa4fdafe5633749e3](https://perf.rust-lang.org/?start=7c3872e6bfd555d2ad753ac1f871db3bd7f2a547&end=7ede6e2a2359c1bb9032baffa4fdafe5633749e3&absolute=false&stat=instructions%3Au)

1 Regressions, 5 Improvements, 0 Mixed, 1 of them in rollups

#### Regressions

Disambiguate between SourceFiles from different crates even if they have the same path [#86368](https://github.com/rust-lang/rust/issues/86368)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=3487be11d5f3c9afc4d8e44438cdd2af1e98c859&end=80926fc409d671e7da13f08c90642b1e71f800d9&stat=instructions:u) (up to 1.2% on `incr-unchanged` builds of `ctfe-stress-4-check`)

#### Improvements

- Add MIR pass to lower call to `core::slice::len` into `Len` operand [#86383](https://github.com/rust-lang/rust/issues/86383)
- Rollup of 11 pull requests [#86527](https://github.com/rust-lang/rust/issues/86527)
- Derive `Copy` for `VarianceDiagInfo` [#86670](https://github.com/rust-lang/rust/issues/86670)
- Add inflate to pgo [#86697](https://github.com/rust-lang/rust/issues/86697)
- Change vtable memory representation to use tcx allocated allocations. [#86475](https://github.com/rust-lang/rust/issues/86475)

#### Mixed

- None

#### Nags requiring follow up

- Follow up on max-rss regression in [#86034](https://github.com/rust-lang/rust/pull/86034#issuecomment-871488586)

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- Rework SESSION_GLOBALS API [#84961](https://github.com/rust-lang/rust/pull/84961) 
  - Authored by @**GuillaumeGomez**
  - Fixes [rust#84954](https://github.com/rust-lang/rust/issues/84954) (Don't allow overwriting `rustc_span::SESSION_GLOBALS`)
  - Auto-assigned to Felix but `I-nominated` is more for a review request from T-compiler
- ICE: unwrap none error in compiler\rustc_mir\src\monomorphize\collector.rs [#85447](https://github.com/rust-lang/rust/issues/85447)
  - Opened by @kocsis1david
  - Bisection pointing to pr [rust#81172](https://github.com/rust-lang/rust/pull/81172)
  - issue reached stable (see [comment](https://github.com/rust-lang/rust/issues/85447#issuecomment-865882530))
  - previously mentioned by T-compiler ([notes](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bweekly.5D.202021-05-20.20.2354818/near/239605615))
  - @**Simon Sapin** asks for more directions on this, also opened [Zulip thread](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/ICE.20with.20unresolved.20Pointee.3A.3AMetadata.20projection)
- "Binary size is significant increased from `1.46.0` to `1.51.0`" [rust#86610](https://github.com/rust-lang/rust/issues/86610)
  - perhaps related to one or more issues about the same theme (see mentioned issues, ex. [rust#86431](https://github.com/rust-lang/rust/issues/86431) was mentioned)
  - a FIY for T-compiler and asking for an opinion: is there an actionable for these issues about binary size growing?
- "Allow reifying intrinsics to `fn` pointers." [rust#86699](https://github.com/rust-lang/rust/pull/86699)
  - opened by @**eddyb**, asking for a review ([comment](https://github.com/rust-lang/rust/pull/86699#issuecomment-870745885))
-  "`match` an `std::cmp::Ordering` generates less optimized code in nightly" [rust#86511](https://github.com/rust-lang/rust/issues/86511)
  - a comment mentions these issues [#86391](https://github.com/rust-lang/rust/issues/86391) and [#86354](https://github.com/rust-lang/rust/issues/86354)
  - nominated to help finding someone giving some context 

[T-libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-libs-impl)
- No nominated issues for `T-libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-rustdoc)
- Generate links to definition in rustdoc source code pages [#84176](https://github.com/rust-lang/rust/pull/84176)
  - Discussed at length [within T-rustdoc](https://rust-lang.zulipchat.com/#narrow/stream/266220-rustdoc/topic/go.20to.20definition.20feature), agreement is on merging as it is and keep it on nightly as long as necessary
  - Perhaps a cursory review from T-compiler to have it merged from someone else than PR author (@**Joshua Nelson** might be able to review this week-end so better from next week)

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.
