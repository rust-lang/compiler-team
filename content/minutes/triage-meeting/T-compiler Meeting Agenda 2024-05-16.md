---
tags: weekly, rustc
type: docs
note_id: Do3ug5jeQPWjlfeqtIHYow
---

# T-compiler Meeting Agenda 2024-05-16

## Announcements

- Special reminder for [rfcs#3599](https://github.com/rust-lang/rfcs/pull/3599#issuecomment-2062471077): needs just one more vote :thank_you: cc: @**cjgillot** @**Esteban Küber** and @**Aaron Hill**
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings
- Types Team: ITE (Impl Trait Everywhere) Triage <time:2024-05-16T22:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745))
  - "Promote arm64ec-pc-windows-msvc to tier 2" [compiler-team#746](https://github.com/rust-lang/compiler-team/issues/746) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20arm64ec-pc-windows-msvc.20to.20tier.202.20compiler-team.23746))
  - "`-Cfixed-x18`" [compiler-team#748](https://github.com/rust-lang/compiler-team/issues/748) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/.60-Cfixed-x18.60.20compiler-team.23748))
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 4 months ago)
    - concern: [added-complexity-to-frontend](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-1845169318)
  - "Target families for executable format" [compiler-team#716](https://github.com/rust-lang/compiler-team/issues/716) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Target.20families.20for.20executable.20format.20compiler-team.23716)) (last review activity: 3 months ago)
  - "Promote riscv64gc-unknown-linux-musl to tier 2" [compiler-team#728](https://github.com/rust-lang/compiler-team/issues/728) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Promote.20riscv64gc-unknown-linux-gnu.20to.20ti.E2.80.A6.20compiler-team.23728)) (last review activity: 2 months ago)
  - "Only emit forward compatible v0 symbol names with graceful degradation" [compiler-team#737](https://github.com/rust-lang/compiler-team/issues/737) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Only.20emit.20forward.20compatible.20v0.20symbol.20na.E2.80.A6.20compiler-team.23737)) (last review activity: about 41 days ago)
  - "Partial compilation using MIR-only rlibs" [compiler-team#738](https://github.com/rust-lang/compiler-team/issues/738) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Partial.20compilation.20using.20MIR-only.20rlibs.20compiler-team.23738)) (last review activity: about 34 days ago)
- Pending FCP requests (check your boxes!)
  - merge: [Show files produced by `--emit foo` in json artifact notifications (rust#122597)](https://github.com/rust-lang/rust/pull/122597#issuecomment-2063945502)
    - @_**|116107** @_**|125294** @_**|119031** @_**|248906** @_**|426609** @_**|116118** @_**|232957**
    - no pending concerns
- Things in FCP (make sure you're good with it)
  - "Skip virtual drop for !needs_drop types" [compiler-team#730](https://github.com/rust-lang/compiler-team/issues/730) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Skip.20virtual.20drop.20for.20.21needs_drop.20types.20compiler-team.23730))
  - "Add `--emit=thin-link-bitcode` to enable distributed ThinLTO users" [compiler-team#735](https://github.com/rust-lang/compiler-team/issues/735) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-Zemit-thin-lto-index.3D.3Cpath.3E.60.20to.20ena.E2.80.A6.20compiler-team.23735))
  - "Add --print=check-cfg" [compiler-team#743](https://github.com/rust-lang/compiler-team/issues/743) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20--print.3Dcheck-cfg.20compiler-team.23743))
  - "Support `-Cforce-frame-pointers=non-leaf`" [compiler-team#744](https://github.com/rust-lang/compiler-team/issues/744) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Support.20.60-Cforce-frame-pointers.3Dnon-leaf.60.20compiler-team.23744))
  - "Support C23's Variadics Without a Named Parameter" [rust#124048](https://github.com/rust-lang/rust/pull/124048)
  - "Warn (or error) when `Self` ctor from outer item is referenced in inner nested item" [rust#124187](https://github.com/rust-lang/rust/pull/124187)
- Accepted MCPs
  - No new accepted proposals this time.
- MCPs blocked on unresolved concerns
  - merge: [Add a new `--build-id` flag to rustc (compiler-team#635)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1777545767)
    - @_**|125250** @_**|116107** @_**|125294** @_**|123856**
    - concerns: [other-existing-options (by petrochenkov)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1779597156) [option-name (by wesleywiser)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1785349936)
  - merge: [Stabilize `--env-set` option (rust#119926)](https://github.com/rust-lang/rust/pull/119926#issuecomment-1898766442)
    - @_**|119009** @_**|124288** @_**|123586** @_**|125250** @_**|119031** @_**|124287** @_**|116118**
    - concerns: [other-rustc-vars (by petrochenkov)](https://github.com/rust-lang/rust/pull/119926#issuecomment-1900703005)
  - merge: [allow overwriting the output of `rustc --version` (rust#124339)](https://github.com/rust-lang/rust/pull/124339#issuecomment-2075414901)
    - @_**|125250** @_**|248906** @_**|124287** @_**|426609** @_**|116118** @_**|216206** @_**|232957**
    - concerns: [subsequent-crates-io-policy (by wesleywiser)](https://github.com/rust-lang/rust/pull/124339#issuecomment-2113331348)
- Finalized FCPs (disposition merge)
  - No new finished FCP (disposition merge) this time.
- Other teams finalized FCPs
  - "[ptr] Document maximum allocation size" [rust#116675](https://github.com/rust-lang/rust/pull/116675)
  - "Stabilize `min_exhaustive_patterns`" [rust#122792](https://github.com/rust-lang/rust/pull/122792)

### WG checkins

None this week

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- :beta: "Make `non-local-def` lint Allow by default" [rust#124950](https://github.com/rust-lang/rust/pull/124950)
  - authored by @_**Wesley Wiser**
  - calms down a slew of warnings on non-local definitions until we figure out how to better implement this lint (relevant [RFC#3373](https://github.com/rust-lang/rust/issues/120363))
<!--
/poll Approve beta backport of #124950?
approve
decline
don't know
-->
- :beta: "Don't do post-method-probe error reporting steps if we're in a suggestion" [rust#125100](https://github.com/rust-lang/rust/pull/125100)
  - authored by @_**Michael Goulet (compiler-errors)**
  - nominated because it can pretty negatively affect user experience when a programmer has many method errors in large projects ([comment](https://github.com/rust-lang/rust/pull/125100#issuecomment-2109177076))
  - Regressed in #120730
<!--
/poll Approve beta backport of #125100?
approve
decline
don't know
-->
- :stable: "When comparing SVG tests against their blessed version, ignore the first line" [rust#122779](https://github.com/rust-lang/rust/pull/122779)
  - authored by @_**Esteban Küber**
  - Fixes a regression in #122779 ([comment](https://github.com/rust-lang/rust/pull/122029#issuecomment-2009130070))
  - nominated with the clause "nice to have, if a dot release happens" ([comment](https://github.com/rust-lang/rust/pull/122779#issuecomment-2108533414)), fix didn't make to 1.78
<!--
/poll Approve stable backport of #122779?
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
- "Uplift `clippy::precedence` lint" [rust#117161](https://github.com/rust-lang/rust/pull/117161)
- "Better errors with bad/missing identifiers in MBEs" [rust#118939](https://github.com/rust-lang/rust/pull/118939)
- "Uplift `clippy::invalid_null_ptr_usage` lint" [rust#119220](https://github.com/rust-lang/rust/pull/119220)
- "Rename `AsyncIterator` back to `Stream`, introduce an AFIT-based `AsyncIterator` trait" [rust#119550](https://github.com/rust-lang/rust/pull/119550)
- "Disallow deriving (other than Copy/Clone) on types with unnamed fields" [rust#121270](https://github.com/rust-lang/rust/pull/121270)
- "Implement lint against unexpected unary precedence" [rust#121364](https://github.com/rust-lang/rust/pull/121364)
- "Show files produced by `--emit foo` in json artifact notifications" [rust#122597](https://github.com/rust-lang/rust/pull/122597)
- "Emit a warning if a `match` is too complex" [rust#122685](https://github.com/rust-lang/rust/pull/122685)
- "Support C23's Variadics Without a Named Parameter" [rust#124048](https://github.com/rust-lang/rust/pull/124048)
- "Warn (or error) when `Self` ctor from outer item is referenced in inner nested item" [rust#124187](https://github.com/rust-lang/rust/pull/124187)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [1 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [1 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [63 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [34 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 1 P-high, 1 P-medium, 1 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 1 P-high, 5 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 36 P-high, 100 P-medium, 16 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- "`-C target_cpu=cortex-a72` (and `-target-cpu=native` on Raspberry Pi) wrongly enables crypto features that are optional on Cortex-A72" [rust#125033](https://github.com/rust-lang/rust/issues/125033)
  - @_**apiraino** assigned `P-critical` ([reasoning](https://rust-lang.zulipchat.com/#narrow/stream/245100-t-compiler.2Fwg-prioritization.2Falerts/topic/.23125033.20.60-C.20target_cpu.3Dcortex-a72.60.20.28and.20.60-target-cpu.3Dnative.E2.80.A6/near/438310356)) but happy to hear other opinions
  - In any case upstream LLVM issue has been filed [llvm#90365](https://github.com/llvm/llvm-project/issues/90365)

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- None

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- "New rustc nightly suggests adding a `build.rs` to use conditional compilation" [rust#124800](https://github.com/rust-lang/rust/issues/124800)
  - Question from cargo team to T-compiler was:
    > If we go with lint configuration, any thoughts or concerns about Cargo "owning" lint configuration under [lints.rust] where Cargo translates the configuration into CLI flags for rustc, leaving rustc to be more generic?
  - Discussed [last week](https://github.com/rust-lang/rust/issues/124800#issuecomment-2100964458), agreed that cargo can use such section as they see fit
  - FYI @**Wesley Wiser** I've added your comment [here](https://github.com/rust-lang/rust/issues/124800#issuecomment-2114838596), please lmk if I represented it correctly :)

## Performance logs

> [triage logs for 2024-05-14](https://github.com/rust-lang/rustc-perf/blob/master/triage/2024-05-14.md)

A pretty quiet week with only a few PRs being flagged for analysis.
More improvements than regressions this week, and also several nice
binary size reductions caused by generating less LLVM IR.

Triage done by **@kobzol***.
Revision range: [69f53f5e..9105c57b](https://perf.rust-lang.org/?start=69f53f5e5583381267298ac182eb02c7f1b5c1cd&end=9105c57b7f6623310e33f3ee7e48a3114e5190a7&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.4%  | [0.2%, 0.9%]   | 8     |
| Regressions (secondary)  | 0.9%  | [0.2%, 2.4%]   | 18    |
| Improvements (primary)   | -1.1% | [-2.3%, -0.2%] | 51    |
| Improvements (secondary) | -0.6% | [-1.4%, -0.3%] | 19    |
| All  (primary)           | -0.9% | [-2.3%, 0.9%]  | 59    |


1 Regression, 0 Improvements, 3 Mixed; 0 of them in rollups
75 artifact comparisons made in total

#### Regressions

Do not add leading asterisk in the `PartialEq` [#124157](https://github.com/rust-lang/rust/pull/124157) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5f8c17dcc04a2981268df89874203e9bfea50597&end=cb93c24bf36b3367714516fc2308cf6856916eeb&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.2%, 0.5%] | 9     |
| Regressions (secondary)  | 0.4% | [0.3%, 0.8%] | 9     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.2%, 0.5%] | 9     |

* Small regression on a few benchmarks caused by a change in code generation of `#[derive(PartialEq)]`,
which leads to more valid code being allowed to compile.
* Marked as triaged.

#### Mixed

Avoid a cast in `ptr::slice_from_raw_parts(_mut)_)` [#124795](https://github.com/rust-lang/rust/pull/124795) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=c3202afa2865ad26ef407544c3768070bfed7bfe&end=ec1b69852f0c24ae833a74303800db2229b6653e&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.3%, 0.3%]   | 1     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.4% | [-0.6%, -0.3%] | 6     |
| Improvements (secondary) | -0.3% | [-0.4%, -0.2%] | 16    |
| All  (primary)           | -0.3% | [-0.6%, 0.3%]  | 7     |

* A single tiny regression outweighed by several performance wins.
* This PR also reduced binary size nicely.

Avoid `alloca`s in codegen for simple `mir::Aggregate` statements [#123886](https://github.com/rust-lang/rust/pull/123886) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=2cce0885840cd171cb3a8677af795d0abd2dc77c&end=6e1d94708a0a4a35ca7e46c6cac98adf62fe800e&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.3%]   | 6     |
| Regressions (secondary)  | 0.5%  | [0.2%, 1.3%]   | 4     |
| Improvements (primary)   | -0.6% | [-1.0%, -0.3%] | 6     |
| Improvements (secondary) | -0.7% | [-1.1%, -0.4%] | 2     |
| All  (primary)           | -0.2% | [-1.0%, 0.3%]  | 12    |

* The regression was limited to a single primary benchmark, there were more primary benchmark wins.
* Also a nice binary size reduction in debug builds.

Remove `NtIdent` and `NtLifetime` [#124256](https://github.com/rust-lang/rust/pull/124256) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=34582118afaf00b0eb2d209a90b181c7156b501c&end=9105c57b7f6623310e33f3ee7e48a3114e5190a7&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.2%  | [0.2%, 0.2%]   | 1     |
| Regressions (secondary)  | 1.9%  | [1.2%, 2.7%]   | 8     |
| Improvements (primary)   | -0.8% | [-2.0%, -0.1%] | 24    |
| Improvements (secondary) | -0.6% | [-1.1%, -0.3%] | 9     |
| All  (primary)           | -0.7% | [-2.0%, 0.2%]  | 25    |

* Pretty much a pure performance improvement, the instruction count regression on `tt-muncher` was
actually a decent win in cycle count.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- "The const-eval interpreter is called on incomplete/invalid/ill-formed code" [rust#124789](https://github.com/rust-lang/rust/issues/124789)
  - Nominated by @**Jieyou Xu** ([comment](https://github.com/rust-lang/rust/issues/124789#issuecomment-2107425409))
    > It's probably desirable to discuss some error handling strategy that preserves the "fail as late as possible, report as many errors as possible" idea and yet does not let inputs that const-eval does not expect to handle to go through, at the item granularity. Maybe this involves some pre-const-eval validation/guard, or hardening const-eval against invalid inputs, or some other strategy.
  - Discussion on [Zulip](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/The.20const-eval.20interpreter.20is.20called.20on.20invalid.20code), where @**lcnr** points out that we already have the `tainted_by_errors` mechanism for this. But either the MIR bodies containing these invalid operations do not get tainted properly, or the interpreter is not properly skipping execution of tainted MIR bodies.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- Skipping this week

## Next week's WG checkins

None

Next meetings' agenda draft: [hackmd link](https://hackmd.io/9smuckNqRJmQ4a1s1sHbcQ)
