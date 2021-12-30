---
tags: weekly, rustc
type: docs
---

# T-compiler Meeting Agenda 2021-12-23

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let the Core team know (or at least message @_**pnkfelix** or @_**Wesley Wiser** so we can pass it along).

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Build-time execution sandboxing" [compiler-team#475](https://github.com/rust-lang/compiler-team/issues/475)
- Old MCPs (not seconded, take a look)
  - "CI should exercise (subset of) tests under --stage 1" [compiler-team#439](https://github.com/rust-lang/compiler-team/issues/439) (last review activity: 4 months ago)
  - "Accept `pc` in place of `unknown` and `unknown` in place of `pc` for `x86_64` and `i?86` targets" [compiler-team#441](https://github.com/rust-lang/compiler-team/issues/441) (last review activity: 5 months ago)
  - "Make `-Z binary-dep-depinfo` the default behavior" [compiler-team#464](https://github.com/rust-lang/compiler-team/issues/464) (last review activity: 2 months ago)
  - "Tier 3 target proposal: riscv64gc-linux-android (Android target for `riscv64gc`)" [compiler-team#472](https://github.com/rust-lang/compiler-team/issues/472) (last review activity: about 13 days ago)
  - "`-Dwarnings` to cover all warnings" [compiler-team#473](https://github.com/rust-lang/compiler-team/issues/473) (last review activity: about 13 days ago)
- Pending FCP requests (check your boxes!)
  - "Stabilize `-Z instrument-coverage` as `-C instrument-coverage`" [rust#90132](https://github.com/rust-lang/rust/pull/90132#issuecomment-992952031)
  - "Stabilize `-Z print-link-args` as `-C print-link-args`" [rust#91606](https://github.com/rust-lang/rust/pull/91606#issuecomment-992960418)
- Things in FCP (make sure you're good with it)
  - "Tracking issue for RFC 2115: In-band lifetime bindings" [rust#44524](https://github.com/rust-lang/rust/issues/44524#issuecomment-988260475)
- Accepted MCPs
  - No new accepted proposals this time.
- Finalized FCPs (disposition merge)
  - "Relax priv-in-pub lint on generic bounds and where clauses of trait impls." [rust#90586](https://github.com/rust-lang/rust/pull/90586#issuecomment-982939978)
  - "Make `rustdoc --passes` and `rustdoc --no-defaults` have no effect" [rust#91714](https://github.com/rust-lang/rust/issues/91714#issuecomment-990014921)

### WG checkins

@_WG-self-profile_ from @**mw** and @**Wesley Wiser**([previous checkin](https://hackmd.io/enTes2SLQsObHRc1oyx7Vw#WG-checkins)):

> Wesley Wiser: We've had a small amount of activity
>
> Wesley Wiser: The main thing is that we now report sizes of binary artifacts generated on per.rlo

## Backport nominations

[T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)

- :beta: "Re-introduce concept of projection cache 'completion'" [rust#89831](https://github.com/rust-lang/rust/pull/89831)
  - nominated by @**Jack Huey**
  - fixes regression introduced in [rust#85868](https://github.com/rust-lang/rust/pull/85868) [see comment](https://github.com/rust-lang/rust/pull/89831#issuecomment-941930652)
- :beta: "Disable LLVM newPM by default" [rust#91190](https://github.com/rust-lang/rust/pull/91190)
  - nominated by @**nagisa**, we want to beta-backport this or [#92110](https://github.com/rust-lang/rust/pull/92110)
- :beta: "Don't perform any new queries while reading a query result on disk" [rust#91919](https://github.com/rust-lang/rust/pull/91919)
- :beta: "Backport LLVM changes to disable deferred inlining" [rust#92110](https://github.com/rust-lang/rust/pull/92110)
  - nominated by @**nagisa**, we want to beta-backport this or [#91190](https://github.com/rust-lang/rust/pull/91190)
- :stable: "Re-introduce concept of projection cache 'completion'" [rust#89831](https://github.com/rust-lang/rust/pull/89831)
  - nominated by @**Jack Huey**, mentions that is as risky as [rust#90423](https://github.com/rust-lang/rust/pull/90423) (beta backported approved, stable backport declined)

[T-rustdoc beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc) / [T-rustdoc stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)

- No backport nominations for `T-rustdoc` this time.

:back: / :shrug: / :hand:

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)

- None

## Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)

- "Extract rustc_mir_pretty crate from rustc_middle" [rust#89636](https://github.com/rust-lang/rust/pull/89636)
  - reviewed by @**oli** 3 months ago
  - PR author seems to need a little more help with squashing the perf. regression
- "Store liveness in interval sets for region inference" [rust#90637](https://github.com/rust-lang/rust/pull/90637)
  - last review about 20 days ago from @**lqd**
  - @**simulacrum** asks (IIUC) if this can move forward
- "Fix ICE with inferred type in `const` or `static` item" [rust#89161](https://github.com/rust-lang/rust/pull/89161)
  - last review from Niko about 3 months ago
  - There are some pending comments from author
- "Extend check for UnsafeCell in consts to cover unions" [rust#90383](https://github.com/rust-lang/rust/pull/90383)
  - last review from @**RalfJ** and activity from author about 2 months ago

## Issues of Note

### Short Summary

- [3 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [78 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [52 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [2 P-critical, 1 P-high, 1 P-medium, 0 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 2 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [2 P-critical, 52 P-high, 82 P-medium, 11 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-compiler)

- "Huge compile-time regression in beta/nightly" [rust#91128](https://github.com/rust-lang/rust/issues/91128)
  - @**nagisa** provided PR [rust#92110](https://github.com/rust-lang/rust/pull/92110) to beta-backport LLVM changes to fix this
- "Compile-time regression between 1.56.1 and 1.57.0 for deeply nested decorator types" [rust#91598](https://github.com/rust-lang/rust/issues/91598)
  - compilation time regression partially improved in latest nightlities

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)

- No `P-critical` issues for `T-rustdoc` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)

- No `P-high` beta regressions this time.

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)

- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs for 2021-12-21](https://github.com/rust-lang/rustc-perf/blob/master/triage/2021-12-21.md)

Unfortunately a change introduced in [rust-lang/rust#89836](https://github.com/rust-lang/rust/pull/89836) has made performance across different compiler artifacts much more variable by embedding compiler version information (including a git commit hash) in demangled symbol names. This means that even if two compiler artifacts are built from the same exact source code (with only the git commit changed), the compiler will have slightly different performance characteristics. This makes comparisons across pull requests virtually impossible.

The compiler team is still deciding what to do to handle this, but in the mean time, performance testing is largely broken. This issue is currently being tracked in [rust-lang/rustc-perf#1126](https://github.com/rust-lang/rustc-perf/issues/1126).

Triage done by **@rylev**.
Revision range: [404c8471aba60c2d837fa728e7c729a0f52d5830..3d57c61a9e04dcd3df633f41142009d6dcad4399](https://perf.rust-lang.org/?start=404c8471aba60c2d837fa728e7c729a0f52d5830&end=3d57c61a9e04dcd3df633f41142009d6dcad4399&absolute=false&stat=instructions%3Au)

2 Regressions, 2 Improvements, 23 Mixed; 9 of them in rollups
23 Untriaged Pull Requests
38 comparisons made in total

#### Regressions

Update Clippy [#92036](https://github.com/rust-lang/rust/issues/92036)

- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=2595d038273a4c7746320efd06200764f99bd760&end=34dc0d0f249a33fda18755991b4e73ad786d2b19&stat=instructions:u) (up to 133.5% on `incr-unchanged` builds of `ctfe-stress-4`)
- Largely caused by a [change in how we're doing benchmarking](https://github.com/rust-lang/rustc-perf/pull/1123) that should not impact any other PRs other than this one.
- Luckily we can generally rely on updating Clippy as having no effect whatsoever on compiler performance.

Rollup of 7 pull requests [#92059](https://github.com/rust-lang/rust/issues/92059)

- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=dde825db464b08d6f572766579dfb629b837368c&end=208ced64db20bd947a2ba5c90f37936fd3ab352b&stat=instructions:u) (up to 20.0% on `incr-unchanged` builds of `encoding`)

#### Improvements

- Rollup of 7 pull requests [#91962](https://github.com/rust-lang/rust/issues/91962)
- Rollup of 7 pull requests [#92099](https://github.com/rust-lang/rust/issues/92099)

#### Mixed

Stabilize asm! and global_asm! [#91728](https://github.com/rust-lang/rust/issues/91728)

- Large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=404c8471aba60c2d837fa728e7c729a0f52d5830&end=2f4da6243f817b26c5c8156408911a01b39f9759&stat=instructions:u) (up to -3.9% on `incr-unchanged` builds of `deep-vector`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=404c8471aba60c2d837fa728e7c729a0f52d5830&end=2f4da6243f817b26c5c8156408911a01b39f9759&stat=instructions:u) (up to 1.4% on `incr-unchanged` builds of `html5ever`)

Rollup of 7 pull requests [#91959](https://github.com/rust-lang/rust/issues/91959)

- Small improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=df89fd2063aaa060c72c81254db0b930ff379e9a&end=3ee016ae4d4c6ee4a34faa2eb7fdae2ffa7c9b46&stat=instructions:u) (up to -0.5% on `incr-unchanged` builds of `helloworld`)
- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=df89fd2063aaa060c72c81254db0b930ff379e9a&end=3ee016ae4d4c6ee4a34faa2eb7fdae2ffa7c9b46&stat=instructions:u) (up to 6.2% on `incr-unchanged` builds of `inflate`)

extend `simplify_type` [#86986](https://github.com/rust-lang/rust/issues/86986)

- Large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=c5ecc157043ba413568b09292001a4a74b541a4e&end=69ac533527025fffa37ad1bc4d82b3bc65f90264&stat=instructions:u) (up to -4.7% on `full` builds of `hyper-2`)
- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=c5ecc157043ba413568b09292001a4a74b541a4e&end=69ac533527025fffa37ad1bc4d82b3bc65f90264&stat=instructions:u) (up to 8.4% on `incr-patched: sparse set` builds of `regex`)

Include rustc version in `rustc_span::StableCrateId` [#89836](https://github.com/rust-lang/rust/issues/89836)

- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=69ac533527025fffa37ad1bc4d82b3bc65f90264&end=9e1aff82e696c0edb568656ae6b509a9ab4d6c92&stat=instructions:u) (up to -11.6% on `incr-unchanged` builds of `tuple-stress`)
- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=69ac533527025fffa37ad1bc4d82b3bc65f90264&end=9e1aff82e696c0edb568656ae6b509a9ab4d6c92&stat=instructions:u) (up to 4.7% on `incr-unchanged` builds of `unicode_normalization`)

Optimize `vec::retain` performance [#91527](https://github.com/rust-lang/rust/issues/91527)

- Large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=9e1aff82e696c0edb568656ae6b509a9ab4d6c92&end=a090c8659c3be0cbc7dc93c4b2c11a9cdbf8b980&stat=instructions:u) (up to -4.4% on `incr-unchanged` builds of `unicode_normalization`)
- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=9e1aff82e696c0edb568656ae6b509a9ab4d6c92&end=a090c8659c3be0cbc7dc93c4b2c11a9cdbf8b980&stat=instructions:u) (up to 4.1% on `incr-patched: println` builds of `regression-31157`)

Rollup of 6 pull requests [#91996](https://github.com/rust-lang/rust/issues/91996)

- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=a090c8659c3be0cbc7dc93c4b2c11a9cdbf8b980&end=f8402169aaa12e7bbb9630796a8caec90a3055ca&stat=instructions:u) (up to -2.4% on `incr-patched: println` builds of `regression-31157`)
- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=a090c8659c3be0cbc7dc93c4b2c11a9cdbf8b980&end=f8402169aaa12e7bbb9630796a8caec90a3055ca&stat=instructions:u) (up to 46.9% on `incr-unchanged` builds of `clap-rs`)

rustdoc: don't clone already owned `Path` and modify it inplace [#91833](https://github.com/rust-lang/rust/issues/91833)

- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=f8402169aaa12e7bbb9630796a8caec90a3055ca&end=1d01550f7ea9fce1cf625128fefc73b9da3c1508&stat=instructions:u) (up to -31.9% on `incr-unchanged` builds of `clap-rs`)
- Large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=f8402169aaa12e7bbb9630796a8caec90a3055ca&end=1d01550f7ea9fce1cf625128fefc73b9da3c1508&stat=instructions:u) (up to 4.9% on `incr-patched: println` builds of `regression-31157`)

Fix #91306 by deriving all access from a single \*mut T [#91616](https://github.com/rust-lang/rust/issues/91616)

- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=1d01550f7ea9fce1cf625128fefc73b9da3c1508&end=5531927e8af9b99ad923af4c827c91038bca51ee&stat=instructions:u) (up to -1.3% on `incr-unchanged` builds of `regression-31157`)
- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=1d01550f7ea9fce1cf625128fefc73b9da3c1508&end=5531927e8af9b99ad923af4c827c91038bca51ee&stat=instructions:u) (up to 7.3% on `incr-unchanged` builds of `ctfe-stress-4`)

Rollup of 7 pull requests [#92003](https://github.com/rust-lang/rust/issues/92003)

- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=5531927e8af9b99ad923af4c827c91038bca51ee&end=23c2723269e14c3b037feb2c4865a82053403649&stat=instructions:u) (up to -6.8% on `incr-unchanged` builds of `ctfe-stress-4`)
- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=5531927e8af9b99ad923af4c827c91038bca51ee&end=23c2723269e14c3b037feb2c4865a82053403649&stat=instructions:u) (up to 13.0% on `incr-unchanged` builds of `tuple-stress`)

Implement normalize_erasing_regions queries in terms of 'try' version [#91672](https://github.com/rust-lang/rust/issues/91672)

- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=23c2723269e14c3b037feb2c4865a82053403649&end=9b45f04414f3e4006fc2ed3d8e1fa7708efe0e53&stat=instructions:u) (up to -11.6% on `incr-unchanged` builds of `tuple-stress`)
- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=23c2723269e14c3b037feb2c4865a82053403649&end=9b45f04414f3e4006fc2ed3d8e1fa7708efe0e53&stat=instructions:u) (up to 7.4% on `incr-unchanged` builds of `ctfe-stress-4`)

rustdoc: Pretty-print assoc const defaults on-demand [#91812](https://github.com/rust-lang/rust/issues/91812)

- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=9b45f04414f3e4006fc2ed3d8e1fa7708efe0e53&end=16d8a91d511b0e90391bcb20b8c67036071d9392&stat=instructions:u) (up to -6.8% on `incr-unchanged` builds of `ctfe-stress-4`)
- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=9b45f04414f3e4006fc2ed3d8e1fa7708efe0e53&end=16d8a91d511b0e90391bcb20b8c67036071d9392&stat=instructions:u) (up to 14.3% on `incr-unchanged` builds of `tuple-stress`)

Update cargo [#92023](https://github.com/rust-lang/rust/issues/92023)

- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=16d8a91d511b0e90391bcb20b8c67036071d9392&end=2595d038273a4c7746320efd06200764f99bd760&stat=instructions:u) (up to -12.5% on `incr-unchanged` builds of `tuple-stress`)
- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=16d8a91d511b0e90391bcb20b8c67036071d9392&end=2595d038273a4c7746320efd06200764f99bd760&stat=instructions:u) (up to 8.3% on `incr-unchanged` builds of `wg-grammar`)

Do array-slice equality via array equality, rather than always via slices [#91838](https://github.com/rust-lang/rust/issues/91838)

- Small improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=34dc0d0f249a33fda18755991b4e73ad786d2b19&end=7abab1efb21617ba6845fa86328dffa16cfcf1dc&stat=instructions:u) (up to -1.7% on `full` builds of `piston-image`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=34dc0d0f249a33fda18755991b4e73ad786d2b19&end=7abab1efb21617ba6845fa86328dffa16cfcf1dc&stat=instructions:u) (up to 1.7% on `incr-patched: b9b3e592dd cherry picked` builds of `style-servo`)

Rollup of 7 pull requests [#92062](https://github.com/rust-lang/rust/issues/92062)

- Large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=208ced64db20bd947a2ba5c90f37936fd3ab352b&end=d3f300477b89e70dd42379ba53c0e8ff74e9c694&stat=instructions:u) (up to -4.7% on `incr-patched: println` builds of `regression-31157`)
- Small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=208ced64db20bd947a2ba5c90f37936fd3ab352b&end=d3f300477b89e70dd42379ba53c0e8ff74e9c694&stat=instructions:u) (up to 1.0% on `full` builds of `webrender`)

Rollup of 7 pull requests [#92064](https://github.com/rust-lang/rust/issues/92064)

- Large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=d3f300477b89e70dd42379ba53c0e8ff74e9c694&end=d3848cb659105d8384c00ba384ec2f6f39c47238&stat=instructions:u) (up to -1.2% on `full` builds of `keccak`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=d3f300477b89e70dd42379ba53c0e8ff74e9c694&end=d3848cb659105d8384c00ba384ec2f6f39c47238&stat=instructions:u) (up to 3.5% on `incr-patched: println` builds of `regression-31157`)

Avoid sorting in hash map stable hashing [#91837](https://github.com/rust-lang/rust/issues/91837)

- Large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=91a0600a5c22b9d159e3c57526af83e71d1120f8&end=daf2204aa4954a9426cee93eb1baa2b26eb69070&stat=instructions:u) (up to -4.9% on `incr-full` builds of `clap-rs`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=91a0600a5c22b9d159e3c57526af83e71d1120f8&end=daf2204aa4954a9426cee93eb1baa2b26eb69070&stat=instructions:u) (up to 2.8% on `incr-patched: println` builds of `regression-31157`)

rustdoc: Add `UrlPartsBuilder` [#91871](https://github.com/rust-lang/rust/issues/91871)

- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=d6cffe41b59feaab5fb92bb320e60586202c9950&end=8f540619007c1aa62dfc915409d881f52f21dc84&stat=instructions:u) (up to -3.6% on `incr-patched: println` builds of `regression-31157`)
- Small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=d6cffe41b59feaab5fb92bb320e60586202c9950&end=8f540619007c1aa62dfc915409d881f52f21dc84&stat=instructions:u) (up to 0.4% on `incr-unchanged` builds of `helloworld`)

Remove `SymbolStr` [#91957](https://github.com/rust-lang/rust/issues/91957)

- Small improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=8f540619007c1aa62dfc915409d881f52f21dc84&end=a41a6925badac7508d7a72cc1fc20f43dc6ad75e&stat=instructions:u) (up to -0.2% on `full` builds of `externs`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=8f540619007c1aa62dfc915409d881f52f21dc84&end=a41a6925badac7508d7a72cc1fc20f43dc6ad75e&stat=instructions:u) (up to 3.1% on `incr-patched: println` builds of `regression-31157`)

Rollup of 4 pull requests [#92106](https://github.com/rust-lang/rust/issues/92106)

- Small improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=41c3017c82bbc16842cc3bc1afa904e6910e293c&end=e95e084a14870a718c712936ab5a8f8cd0159485&stat=instructions:u) (up to -0.3% on `incr-unchanged` builds of `helloworld`)
- Moderate regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=41c3017c82bbc16842cc3bc1afa904e6910e293c&end=e95e084a14870a718c712936ab5a8f8cd0159485&stat=instructions:u) (up to 0.8% on `incr-unchanged` builds of `externs`)

Eliminate `ObligationCauseData` [#91844](https://github.com/rust-lang/rust/issues/91844)

- Small improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=e95e084a14870a718c712936ab5a8f8cd0159485&end=ed7a2068432b62880bca89cd69546682a2e192cd&stat=instructions:u) (up to -0.9% on `full` builds of `coercions`)
- Small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=e95e084a14870a718c712936ab5a8f8cd0159485&end=ed7a2068432b62880bca89cd69546682a2e192cd&stat=instructions:u) (up to 0.9% on `full` builds of `wg-grammar`)

rustdoc: make `--passes` and `--no-defaults` have no effect [#91900](https://github.com/rust-lang/rust/issues/91900)

- Moderate improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=ed7a2068432b62880bca89cd69546682a2e192cd&end=940a97a91023d1817b33d0ababc985793c9ed780&stat=instructions:u) (up to -0.8% on `incr-unchanged` builds of `externs`)
- Small regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=ed7a2068432b62880bca89cd69546682a2e192cd&end=940a97a91023d1817b33d0ababc985793c9ed780&stat=instructions:u) (up to 1.1% on `incr-patched: println` builds of `regression-31157`)

Remove 'speculative evaluation' of predicates [#92041](https://github.com/rust-lang/rust/issues/92041)

- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=940a97a91023d1817b33d0ababc985793c9ed780&end=60f3bd78eeac87ad474916d36d29ed7e5084b25b&stat=instructions:u) (up to -5.8% on `incr-unchanged` builds of `regression-31157`)
- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=940a97a91023d1817b33d0ababc985793c9ed780&end=60f3bd78eeac87ad474916d36d29ed7e5084b25b&stat=instructions:u) (up to 8.8% on `incr-unchanged` builds of `deeply-nested`)

Fully serialize AdtDef [#91924](https://github.com/rust-lang/rust/issues/91924)

- Very large improvement in [instruction counts](https://perf.rust-lang.org/compare.html?start=60f3bd78eeac87ad474916d36d29ed7e5084b25b&end=84f962a89bac3948ed116f1ad04c2f4793fb69ea&stat=instructions:u) (up to -25.0% on `incr-unchanged` builds of `issue-46449`)
- Very large regression in [instruction counts](https://perf.rust-lang.org/compare.html?start=60f3bd78eeac87ad474916d36d29ed7e5084b25b&end=84f962a89bac3948ed116f1ad04c2f4793fb69ea&stat=instructions:u) (up to 15.8% on `incr-full` builds of `webrender-wrench`)

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)

- No `I-compiler-nominated` issues at this time

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)

- No nominated RFCs for `T-compiler` this time.

🎄 :)
