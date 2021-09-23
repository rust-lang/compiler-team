---
tags: weekly, rustc
---

# T-compiler Meeting Agenda 2020-08-13

[Tracking Issue](https://github.com/rust-lang/rust/issues/54818)

## Announcements

- Next thursday 20th is RustConf
- New MCPs (take a look, see if you like them!)
  - "Stabilise `link-self-contained` option" [compiler-team#343](https://github.com/rust-lang/compiler-team/issues/343)
- Old MCPs (not seconded, take a look)
  - "Integration of the Cranelift backend with rustc" [compiler-team#270](https://github.com/rust-lang/compiler-team/issues/270)
  - "Decentralize queries" [compiler-team#277](https://github.com/rust-lang/compiler-team/issues/277)
  - "Infer hidden types without replacing with an inference variable" [compiler-team#325](https://github.com/rust-lang/compiler-team/issues/325)
  - "Stabilizable subset of const generics" [compiler-team#332](https://github.com/rust-lang/compiler-team/issues/332)
  - "Move the compiler to a new `compiler/` directory" [compiler-team#336](https://github.com/rust-lang/compiler-team/issues/336)
  - "Form t-compiler/wg-parser-library" [compiler-team#338](https://github.com/rust-lang/compiler-team/issues/338)
- Pending FCP requests (check your boxes!)
  - No pending FCP requests this time.
- Things in FCP (make sure you're good with it)
  - "refactor types to fit the chalk-ty generic plan" [compiler-team#341](https://github.com/rust-lang/compiler-team/issues/341)
- Accepted MCPs
  - "Create a WebAssembly target notification group." [compiler-team#337](https://github.com/rust-lang/compiler-team/issues/337)
  - "Set ninja=true by default" [compiler-team#339](https://github.com/rust-lang/compiler-team/issues/339)
  - "Implement const equality and const wf" [compiler-team#340](https://github.com/rust-lang/compiler-team/issues/340)
- Finalized FCPs
  - No new finished FCP this time.

### WG checkins

@*WG-rls2.0* checkin by @**matklad**:
* RFC2912 (move from rls to rust-analyzer)
  * soft-blocked on merging VS Code extensions: https://github.com/rust-lang/vscode-rust/issues/812.
  * rust-analyzer is available via rustup, but update procedure for rust-lang/rust is not smooth: rust-analyzer often fails to build for weird targets.

* Library-ification
  * Started the effort to extract the parser (there's an MCP to form a parser library-ification wg, to improve communication)
  * No big progress yet, mostly looking around at existing code
  * Un-Grammar for concrete syntax trees: https://github.com/rust-analyzer/ungrammar/blob/master/rust.ungram
    * Could we use it to generate rustc's AST? Seems unlikely :(
  * Some glances at name resolution -- it seems like it should be possible to extract a small core of "set of 'module' scopes with names + fixed point iteration",
     but this is low priority for now.

* Org
  *  Microsoft will sponsor rust-analyzer a bit via GitHub Sponsors: https://twitter.com/jeffwilcox/status/1293678932433055745

* Misc
  * Perf Dashboard https://rust-analyzer.github.io/metrics/
  * Automatic reload on Cargo.toml changes

@*WG-self-profile* checkin by @**wesleywiser**:

- @**nagisa** contributed some [improved documentation](https://github.com/rust-lang/measureme/pull/118), [bug fixes and other enhancements](https://github.com/rust-lang/measureme/pull/119).
- @**Mark-Simulacrum** updated perf.rlo to include flamegraphs, Chrome-profiler data and the raw self-profile output on new runs. (See [the new links on the details page](https://perf.rust-lang.org/detailed-query.html?commit=3fbed1739c384faabf00cd8a62abedbf506e949b&base_commit=4a689da944977496fb758cc2d700984cc6a10b7f&benchmark=style-servo-debug&run_name=full))
- @**michaelwoerister** has [a PR](https://github.com/rust-lang/rust/pull/75452) up to shrink self-profile string data from detailed rustc invocations by 8-9%.
- @**eddyb** has been working on using hardware counters (`rdpmc` instruction) to capture instruction counts instead of user-space timings. This is still work in progress but you can follow along in [this Zulip thread](https://rust-lang.zulipchat.com/#narrow/stream/247081-t-compiler.2Fperformance).

## Beta-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler)
- "Fix regionck failure when converting Index to IndexMut" [rust#74960](https://github.com/rust-lang/rust/pull/74960)
  - Fixes [a `P-critical` beta regression](https://github.com/rust-lang/rust/issues/74933) that regressed in [rust#73504](https://github.com/rust-lang/rust/pull/73504) which is a roll-up, likely [rust#72280](https://github.com/rust-lang/rust/pull/72280) 
  - PR by @**Gary Guo** and assigned to @**nikomatsakis**
- "Fix ICE #75307 in `format`" [rust#75319](https://github.com/rust-lang/rust/pull/75319)
  - Fixes [a `P-medium` issue](https://github.com/rust-lang/rust/issues/75307)
  - PR by @**Esteban Küber** and assigned to @**eddyb**

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3Alibs-impl)
- No beta nominations this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-rustdoc)
- No beta nominations this time.

:back: / :shrug: / :hand:

## Stable-nominations

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No stable nominations this time.

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3Alibs-impl)
- No stable nominations this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-rustdoc)
- No stable nominations this time.

:back: / :shrug: / :hand:

## PR's S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- No PRs waiting on T-compiler this time.

[libs-impl](https://github.com/rust-lang/rust/pulls?utf8=%E2%9C%93&q=is%3Aopen+label%3AS-waiting-on-team+label%3Alibs-impl)
- No PRs waiting on libs-impl this time.

## Issues of Note

### Short Summary

- [3 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [52 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+)
  - [30 of those are unassigned](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [2 P-critical, 2 P-high, 3 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 2 P-high, 6 P-medium, 1 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [1 P-critical, 15 P-high, 50 P-medium, 5 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=label%3AP-critical+label%3AT-compiler)
- "LTO triggers apparent miscompilation on Windows 10 x64" [rust#74498](https://github.com/rust-lang/rust/issues/74498)
  - Discussed last week
  - Assigned to @**pnkfelix**
  - I-unsound stable regression, started failing when we updated to LLVM 9.0
  - [LLVM issue reproduced on LLVM master](https://github.com/rust-lang/rust/issues/74498#issuecomment-661950983)
  - Rust started to trigger this misbehavior more frequent since the introduction of [rust#69659](https://github.com/rust-lang/rust/pull/69659) that happened in 1.45+.
  - @**pnkfelix** [filled a bug with LLVM upstream](https://bugs.llvm.org/show_bug.cgi?id=46943)
  - [According to @**pnkfelix**](https://github.com/rust-lang/rust/issues/74498#issuecomment-667452406) the remaining question is if we should, for the short term, change that `range.rs` code to not used an `unchecked_add`, in order to (hopefully) bypass the misoptimization here or patch LLVM.
  - @**pnkfelix** [also discusses](https://github.com/rust-lang/rust/issues/74498#issuecomment-668598776) if this generates an overflow or not.
- "Unexpected trait resolution overflow error" [rust#74868](https://github.com/rust-lang/rust/issues/74868)
  - Assigned to @**pnkfelix** and @**Matthew Jasper**
  - Needs MCVE and bisection
  - Possible culprits [rust#73357](https://github.com/rust-lang/rust/pull/73357) or [rust#73261](https://github.com/rust-lang/rust/pull/73261) maybe?
  - According to @**Matthew Jasper** this is probably due to [rust#73452](https://github.com/rust-lang/rust/pull/73452), [rust#73905](https://github.com/rust-lang/rust/pull/73905) fixes that issue but is not suitable for a backport. @**Matthew Jasper** is going to provide a PR suitable for a backport.
- "Panic when compiling gluon on 1.46" [rust#75313](https://github.com/rust-lang/rust/issues/75313)
  - It is unassigned
  - It's a beta regression, regressed in [rust#72796](https://github.com/rust-lang/rust/issues/72796)
  - @**RalfJ** [provided a PR](https://github.com/rust-lang/rust/pull/75419)

[libs-impl](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3Alibs-impl)
- No P-critical issues for libs-impl this time.

[T-rustdoc](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3AP-critical+label%3AT-rustdoc)
- No P-critical issues for T-rustdoc this time.

### Unassigned P-high regressions

[Beta regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-beta+P-high+no%3Aassignee)
- "libtest panics when running `should_panic` tests under QEMU armv7 " [rust#74820](https://github.com/rust-lang/rust/issues/74820)
  - Cargo lib skeleton + should_panic test code fails on armv7
  - It seems to be caused by [rust#72746](https://github.com/rust-lang/rust/pull/72746) by @**tmandry**

[Nightly regressions](https://github.com/rust-lang/rust/issues?utf8=%E2%9C%93&q=is%3Aopen+label%3Aregression-from-stable-to-nightly+P-high+no%3Aassignee)
- "Type mismatch in function arguments E0631, E0271 are falsely recognized as E0308 mismatched types" [rust#74400](https://github.com/rust-lang/rust/issues/74400)
  - Discussed last week
  - Regressed on [rust#73643](https://github.com/rust-lang/rust/pull/73643) which is a rollup, likely to be [rust#72493](https://github.com/rust-lang/rust/pull/72493)

## Performance logs

Triage done by [simulacrum](https://github.com/Mark-Simulacrum).
Revision range: [19cefa68640843956eedd86227ddc1d35dbc6754..8b84156c6ee2b4e707dc32f5a516e3143ab924d3](https://perf.rust-lang.org/?start=19cefa68640843956eedd86227ddc1d35dbc6754&end=8b84156c6ee2b4e707dc32f5a516e3143ab924d3&absolute=false&stat=instructions%3Au)

1 regression, 1 improvement, 1 of them on rollups.
0 outstanding nags from last week.

Regressions
* [Rollup of 5 pull requests #75174](https://github.com/rust-lang/rust/pull/75174)
  ([instructions](https://perf.rust-lang.org/compare.html?start=32d14eba47ee8bb0b5edb04bcf652517f81c4cf5&end=119d2a1a98fe87d4ae6cabf12134a0ef2fb95851))
  Slight loss, up to 1%. Unclear if spurious. Likely caused by [Replace `Memoryblock` with `NonNull<[u8]>` #75152](https://github.com/rust-lang/rust/pull/75152).

Improvements
* [Remove two fields from `SubstFolder` #75133](https://github.com/rust-lang/rust/pull/75133)
  ([instructions](https://perf.rust-lang.org/compare.html?start=c9b80bb3ff194d488fdd95da2ef23bd466f921cb&end=d08eb98698cbce56e599324fb83d55eef2cac408))
  Up to 2% wins on wf-projection stress test.

New nags to follow up on
* [#75174](https://github.com/rust-lang/rust/pull/75152#issuecomment-672452770)

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3AT-compiler)
- No nominated issues for T-compiler this time.

[libs-impl](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-nominated+label%3Alibs-impl)
- No nominated issues for libs-impl this time.