---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2021-02-18

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- We have no steering meeting tomorrow (Friday). We spent last week's planning meeting doing ad-hoc planning for the March sprint.
- pnkfelix drafted a [blog post](https://github.com/rust-lang/blog.rust-lang.org/pull/782) announcing the March sprint. He hopes to publish tonight; if you want to chime in, throw a comment up on linked draft.

### MCP/FCP status

- New MCPs (take a look, see if you like them!)
  - "Never Rollup When Changing the `compiler` Directory" [compiler-team#407](https://github.com/rust-lang/compiler-team/issues/407)
- Old MCPs (not seconded, take a look)
  - "MCP: More Cranelift-friendly portable SIMD intrinsics" [compiler-team#381](https://github.com/rust-lang/compiler-team/issues/381)
  - "Debuggable Macro Expansions" [compiler-team#386](https://github.com/rust-lang/compiler-team/issues/386)
  - "Move query implementation outside rustc_middle" [compiler-team#388](https://github.com/rust-lang/compiler-team/issues/388)
  - "Uplift the `invalid_atomic_ordering` lint from clippy to rustc" [compiler-team#390](https://github.com/rust-lang/compiler-team/issues/390)
  - "Staged queries" [compiler-team#391](https://github.com/rust-lang/compiler-team/issues/391)
  - "Do not traverse the HIR to generate metadata" [compiler-team#392](https://github.com/rust-lang/compiler-team/issues/392)
  - "Embed version numbers in backport nominations and regression labels" [compiler-team#393](https://github.com/rust-lang/compiler-team/issues/393)
  - "Add different entry points for x.py" [compiler-team#396](https://github.com/rust-lang/compiler-team/issues/396)
  - "rustdoc is using rustc_ast_pretty, would it be possible to make it somewhat "stable"?" [compiler-team#403](https://github.com/rust-lang/compiler-team/issues/403)
- Pending FCP requests (check your boxes!)
  - No pending FCP requests this time.
- Things in FCP (make sure you're good with it)
  - "Distribute rustc_codegen_cranelift as rustup component" [compiler-team#405](https://github.com/rust-lang/compiler-team/issues/405)
  - "Demote x86_64-rumprun-netbsd target" [rust#81514](https://github.com/rust-lang/rust/issues/81514)
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - "Add an impl of Error on `Arc<impl Error>`." [rust#80553](https://github.com/rust-lang/rust/pull/80553)
  - "Allow leading | anywhere we allow or-patterns" [rust#81415](https://github.com/rust-lang/rust/issues/81415)

### WG checkins

@*WG-mir-opt* checkin by @**oli**:

* Prevent query cycles in the MIR inliner https://github.com/rust-lang/rust/pull/68828
    * This is done by finding recursion sites in unoptimized MIR right before the unoptimized MIR body is stolen from its query in order to get optimized. Hopefully this is the last large barrier in enabling MIR inlining by default.
* Duplicate MIR of `const fn` (one optimized version for runtime and one unoptimized version for CTFE): https://github.com/rust-lang/rust/pull/78407
    * This allows CTFE to detect more UB (since the UB didn't get optimized away) and generally looks like a good entry point for static analyses that want to consume MIR.
* General trend: some intrinsics are lowered to dedicated MIR statements right after borrowck is done. This makes it easier to write optimizations around these intrinsics and makes it clear that some intrinsics cannot possibly unwind, because MIR statements cannot unwind.

@*WG-polonius* checkin by @**lqd**:
> a small update this time: 
> - more work has been done on sharing results between the quick `LocationInsensitive` pre-pass and the full location-sensitive analysis that follows, to limit the costlier work done in the full analysis by using the information gathered in the pre-pass
> - unfortunately no news on the future sprint yet, or reviews/progress on the already completed work for the sprint that we mentioned at the previous check-in

## Beta-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler)
- "Identify unreachable subpatterns more reliably" [rust#80632](https://github.com/rust-lang/rust/pull/80632)
  - opened by @**Nadrieril** 
  - reviewed by @**varkor** 
  - Fixes [rust#80501](https://github.com/rust-lang/rust/issues/80501), a `P-medium` regression causing a spurious "unreachable code" error
  - @**rylev** comments on [a 1% perf loss](https://github.com/rust-lang/rust/pull/80632#issuecomment-776591352) that the author seems not to be able to reproduce

:back: / :shrug: / :hand:

[T-libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-libs-impl)
- No beta nominations for `T-libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc)
- "rustdoc: treat edition 2021 as unstable" [rust#82207](https://github.com/rust-lang/rust/pull/82207)
  - This ensures that `--edition=2021` requires `-Z unstable-options` in rustdoc
  - r'ed by @**Joshua Nelson** 

:back: / :shrug: / :hand:

## Stable-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- "Identify unreachable subpatterns more reliably" [rust#80632](https://github.com/rust-lang/rust/pull/80632)
  - see beta nomination :point_up: 

[T-libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-libs-impl)
- No stable nominations for `T-libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No stable nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- No PRs waiting on `T-compiler` this time.

[T-libs-impl](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-libs-impl)
- "Implement String::remove_matches" [rust#71780](https://github.com/rust-lang/rust/pull/71780)
  - Opened by @_**Josh Cotton** 
  - Should close [rust#50206](https://github.com/rust-lang/rust/issues/50206), a 2018 feature request from @**Corey Farwell**: add the possibility to remove all matches for a pattern in a string
  - Zulip discussion at [this link](https://rust-lang.zulipchat.com/#narrow/stream/219381-t-libs/topic/Implement.20String.3A.3Amatches.20.2371780)
  - PR work stopped around July 2020, original PR author not having time anymore
  - assigned to @**Ashley Mannix**, will have a look at it
  - Notable comments and reviews:
    - reviewed by [@_**kennytm**](https://github.com/rust-lang/rust/pull/71780#pullrequestreview-406679167) and (partially) also by [@_**David Tolnay**](https://github.com/rust-lang/rust/pull/71780#pullrequestreview-419824557)
    - @_**Lukas Kalbertodt** [also left comments](https://github.com/rust-lang/rust/pull/71780#issuecomment-663841852)
    - @_**BurntSushi** comments that [the pattern API would need a redesign](https://github.com/rust-lang/rust/pull/71780#issuecomment-664358236) to support this
    - also [this comment](https://github.com/rust-lang/rust/pull/71780#issuecomment-688250368) by @boats
 
## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [67 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [41 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 1 P-high, 1 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 1 P-medium, 0 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 41 P-high, 89 P-medium, 10 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-libs-impl)
- No `P-critical` issues for `T-libs-impl` this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- "Starting with nightly-2021-01-13 (1.51) rustc fails to build archives on Windows 7" [rust#81051](https://github.com/rust-lang/rust/issues/81051)
  - Issue first seemed to be only affect Win7 but it is actually an LLVM issue
  - Win7 (x86_64-pc-windows-gnu) is still [Tier 1 platform](https://doc.rust-lang.org/nightly/rustc/platform-support.html#tier-1): a side question about this issue could be if it should be demoted
  - the problem disappears if reverting to [nightly-2021-01-12](https://github.com/rust-lang/rust/issues/81051#issuecomment-769520843) or up to LLVM [commit 6ec777c](https://github.com/rust-lang/llvm-project/commit/6ec777c) 
  - @**moxian** [debugged the issue](https://github.com/rust-lang/rust/issues/81051#issuecomment-774638526) and provides significant data and points to rollup PR [#80960](https://github.com/rust-lang/rust/pull/80960)
  - more debugging [at this comment](https://github.com/rust-lang/rust/issues/81051#issuecomment-779556314)
  - @**cuviper** comments this bug looks similar to LLVM [#48378](https://bugs.llvm.org/show_bug.cgi?id=48378)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [2021-02-16 Full triage logs](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-02-16.md)

A mostly quiet week, though with an excellent improvement in bootstrap times,
shaving off a couple percent off the total and 10% off of rustc_middle due to
changes in the code being compiled.

Triage done by **@simulacrum**.

1 Regressions, 2 Improvements, 1 Mixed

#### Regressions

Initialize BTree nodes directly in the heap [#81494](https://github.com/rust-lang/rust/issues/81494)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=7e0241c63755ea28045d512b742f50b307874419&end=3c10a880eca60379343a6c6d19dd5bda38ead55d&stat=instructions:u) (up to 1.3% on `full` builds of `cargo-debug`)
- Not really expected, but this is aiming for optimizing initialization of large
  k/v pairs, so perhaps worth it. Left a nag.

#### Improvements

- [experiment] remove `#[inline]` from rustc_query_system::plumbing [#81892](https://github.com/rust-lang/rust/issues/81892)
- directly expose copy and copy_nonoverlapping intrinsics [#81238](https://github.com/rust-lang/rust/issues/81238)

#### Mixed

- Check the result cache before the DepGraph when ensuring queries [#81855](https://github.com/rust-lang/rust/issues/81855)

#### Nags requiring follow up

Investigations pending:
- https://github.com/rust-lang/rust/pull/81494#issuecomment-779938322
- https://github.com/rust-lang/rust/pull/81855#issuecomment-779950478
  - comment by [@cjgillot](https://github.com/cjgillot): "Follow-up PR #82197 recovers the expected perf gain."

From last week:
- Waiting on more investigation in [#81476](https://github.com/rust-lang/rust/issues/81476).
- Need to follow up on the regressions reported this week.


## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- "`undefined reference to` linker error when using dylibs" [rust#82151](https://github.com/rust-lang/rust/issues/82151)
  - opened by @**Alex Kornitzer**, reports that working code on x86_64-unknown-linux-gnu not compiling anymore after updating the MongoDB crate (compiled as dynamic library)
  - @**Hameer Abbasi** did [some bisecting](https://github.com/rust-lang/rust/issues/82151#issuecomment-780520981) but the trail seems to go back to 2018 
  - a minimal mcve [is found at this comment](https://github.com/rust-lang/rust/issues/82151#issuecomment-779368017)
  - issue seems to warrant high priority but since it looks like to be there since long, we are not sure about the implications/impact

[T-libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-libs-impl)
- No nominated issues for `T-libs-impl` this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated RFCs for `T-compiler` this time.