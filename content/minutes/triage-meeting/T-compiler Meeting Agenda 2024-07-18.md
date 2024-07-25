---
tags: weekly, rustc
type: docs
note_id: qw4V2S72S76yFPEn-uk2bg
---

# T-compiler Meeting Agenda 2024-07-18

## Announcements

- Next week release of next stable Rust 1.80
- Is there interest/capacity to pick a topic [from this list](https://github.com/rust-lang/compiler-team/issues?q=is%3Aissue+label%3Ameeting-proposal+is%3Aopen) and schedule a meeting?
  - by the way, [40 P-high unassigned isues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- Reminder: if you see a PR/issue that seems like there might be legal implications due to copyright/IP/etc, please let us know (or at least message @_**davidtwco** or @_**Wesley Wiser** so we can pass it along).

### Other WG meetings
- Types Team: ITE (Impl Trait Everywhere) Triage <time:2024-07-18T22:00:00+01:00>

## MCPs/FCPs

- New MCPs (take a look, see if you like them!)
  - No new proposals this time.
- Old MCPs (not seconded, take a look)
  - "Add hygiene attributes to compile expanded source code" [compiler-team#692](https://github.com/rust-lang/compiler-team/issues/692) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20option.20to.20compile.20expanded.20ASTs.20for.20h.E2.80.A6.20compiler-team.23692)) (last review activity: 6 months ago)
    - concern: [added-complexity-to-frontend](https://github.com/rust-lang/compiler-team/issues/692#issuecomment-1845169318)
  - "Target families for executable format" [compiler-team#716](https://github.com/rust-lang/compiler-team/issues/716) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Target.20families.20for.20executable.20format.20compiler-team.23716)) (last review activity: 5 months ago)
  - "Partial compilation using MIR-only rlibs" [compiler-team#738](https://github.com/rust-lang/compiler-team/issues/738) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Partial.20compilation.20using.20MIR-only.20rlibs.20compiler-team.23738)) (last review activity: 3 months ago)
  - "Add Hotpatch flag" [compiler-team#745](https://github.com/rust-lang/compiler-team/issues/745) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20Hotpatch.20flag.20compiler-team.23745)) (last review activity: 2 months ago)
- Pending FCP requests (check your boxes!)
  - merge: [sanitizers: Stabilize AddressSanitizer and LeakSanitizer for the Tier 1 targets (rust#123617)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2135121317)
    - no pending checkboxes
    - concerns: [stabilization-scope (by wesleywiser)](https://github.com/rust-lang/rust/pull/123617#issuecomment-2192330122)
    - Note: @**Wesley Wiser** you approved the MCP, is your recorded concern still standing?
  - merge: [Disallow setting some built-in cfg via set the command-line (rust#126158)](https://github.com/rust-lang/rust/pull/126158#issuecomment-2196371697)
    - @**|116083** @**|125250** @**|119031** @**|232957**
    - no pending concerns
  - merge: [Remove the `missing_copy_implementations` lint. (rust#126293)](https://github.com/rust-lang/rust/pull/126293#issuecomment-2162328824)
    - @**|125250** @**|426609** @**|123856**
    - no pending concerns
- Things in FCP (make sure you're good with it)
  - "Implement lint against ambiguous negative literals" [rust#121364](https://github.com/rust-lang/rust/pull/121364)
- Accepted MCPs
  - "Add `-Z embed-source` (DWARFv5 source code embedding extension)" [compiler-team#764](https://github.com/rust-lang/compiler-team/issues/764) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Add.20.60-C.20embed-source.60.20.28DWARFv5.20source.20cod.E2.80.A6.20compiler-team.23764))
  -  "MCP: Alternate cargo freshness algorithm, unstable flag to annotate depinfo file with checksums and file sizes" [compiler-team#765](https://github.com/rust-lang/compiler-team/issues/765) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/MCP.3A.20Alternate.20cargo.20freshness.20algorithm.3A.E2.80.A6.20compiler-team.23765))
- MCPs blocked on unresolved concerns
  - merge: [Add `--print host-triple` to print host target triple (rust#125579)](https://github.com/rust-lang/rust/pull/125579#issuecomment-2133192548)
    - @**|125250** @**|232957**
    - concerns: [triple vs tuple (by lcnr)](https://github.com/rust-lang/rust/pull/125579#issuecomment-2133938172)
    - with regard to the naming question ("tuple" or "triple"), there's a [Zulip topic](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/--print.20host.5B-tuple.7C-triple.5D/near/452327014)
  - merge: [Add a new `--build-id` flag to rustc (compiler-team#635)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1777545767)
    - @_**|125250** @_**|116107** @_**|125294** @_**|123856**
    - concerns: [other-existing-options (by petrochenkov)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1779597156) [option-name (by wesleywiser)](https://github.com/rust-lang/compiler-team/issues/635#issuecomment-1785349936)
  - "Retire the mailing list and make all decisions on zulip" [compiler-team#649](https://github.com/rust-lang/compiler-team/issues/649) ([Zulip](https://rust-lang.zulipchat.com/#narrow/stream/233931-xxx/topic/Retire.20the.20mailing.20list.20and.20make.20all.20deci.E2.80.A6.20compiler-team.23649))
    - concern: [automatic-sync](https://github.com/rust-lang/compiler-team/issues/649#issuecomment-1618902660)
  - merge: [Stabilize `--env-set` option (rust#119926)](https://github.com/rust-lang/rust/pull/119926#issuecomment-1898766442)
    - @_**|119009** @_**|124288** @_**|123586** @_**|125250** @_**|119031** @_**|124287** @_**|116118**
    - concerns: [other-rustc-vars (by petrochenkov)](https://github.com/rust-lang/rust/pull/119926#issuecomment-1900703005)
- Finalized FCPs (disposition merge)
  - No new finished FCP (disposition merge) this time.
- Other teams finalized FCPs
  - "Fix ambiguous cases of multiple & in elided self lifetimes" [rust#117967](https://github.com/rust-lang/rust/pull/117967)
  - "offset_from: always allow pointers to point to the same address" [rust#124921](https://github.com/rust-lang/rust/pull/124921)

### WG checkins

None

## Backport nominations

[T-compiler beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-compiler) / [T-compiler stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-compiler)
- No beta nominations for `T-compiler` this time.
- No stable nominations for `T-compiler` this time.

[T-types stable](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Abeta-nominated+-label%3Abeta-accepted+label%3AT-types) / [T-types beta](https://github.com/rust-lang/rust/issues?q=is%3Aall+label%3Astable-nominated+-label%3Astable-accepted+label%3AT-types)
- No beta nominations for `T-types` this time.
- No stable nominations for `T-types` this time.

## PRs S-waiting-on-team

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Aopen+label%3AS-waiting-on-team+label%3AT-compiler)
- [Issues in progress or waiting on other teams](https://hackmd.io/XYr1BrOWSiqCrl8RCWXRaQ)

## Issues of Note

### Short Summary

- [0 T-compiler P-critical issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical)
  - [0 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-critical+no%3Aassignee)
- [68 T-compiler P-high issues](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high)
  - [40 of those are unassigned](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AT-compiler+label%3AP-high+no%3Aassignee)
- [0 P-critical, 2 P-high, 2 P-medium, 2 P-low regression-from-stable-to-beta](https://github.com/rust-lang/rust/labels/regression-from-stable-to-beta)
- [0 P-critical, 0 P-high, 6 P-medium, 2 P-low regression-from-stable-to-nightly](https://github.com/rust-lang/rust/labels/regression-from-stable-to-nightly)
- [0 P-critical, 35 P-high, 100 P-medium, 17 P-low regression-from-stable-to-stable](https://github.com/rust-lang/rust/labels/regression-from-stable-to-stable)

### P-critical

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-compiler)
- No `P-critical` issues for `T-compiler` this time.

[T-types](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AP-critical+label%3AT-types)
- No `P-critical` issues for `T-types` this time.

### P-high regressions

[P-high beta regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-beta+label%3AP-high+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core)
- No new beta regressions (#127339 fixed by #127568 now beta-backport accepted and #127342 fixed downstream)

[Unassigned P-high nightly regressions](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3Aregression-from-stable-to-nightly+label%3AP-high+no%3Aassignee+-label%3AT-infra+-label%3AT-libs+-label%3AT-libs-api+-label%3AT-release+-label%3AT-rustdoc+-label%3AT-core+)
- No unassigned `P-high` nightly regressions this time.

## Performance logs

> [triage logs 2024-07-16](https://github.com/rust-lang/rustc-perf/blob/d86903679ac12804e7b15d9007e2539c0b541dc6/triage/2024-07-16.md)

Fairly quite week with the only pure regressions being small and coming from correctness fixes. The biggest single change came from turning off the `-Zenforce-type-length-limit` check which had positive impacts across many different benchmarks since the compiler is doing strictly less work.

Triage done by **@rylev**.
Revision range: [a2d58197..5572759b](https://perf.rust-lang.org/?start=a2d58197a766085856504328948c89a33a6a36e8&end=5572759b8d7012fa34eba47f4885c76fa06d9251&absolute=false&stat=instructions%3Au)

**Summary**:

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | 0.3%  | [0.2%, 0.7%]    | 12    |
| Regressions (secondary)  | 0.4%  | [0.2%, 0.9%]    | 45    |
| Improvements (primary)   | -0.7% | [-1.5%, -0.2%]  | 37    |
| Improvements (secondary) | -3.3% | [-13.5%, -0.4%] | 21    |
| All  (primary)           | -0.4% | [-1.5%, 0.7%]   | 49    |


2 Regressions, 3 Improvements, 2 Mixed; 1 of them in rollups
56 artifact comparisons made in total

#### Regressions

Fix regression in the MIR lowering of or-patterns [#127028](https://github.com/rust-lang/rust/pull/127028) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=f25e92bd42b14e45440c0a30a4ed751ea502f430&end=9dcaa7f92cf3ed0a9d2e93824025243533bb5541&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.7% | [0.3%, 1.2%] | 3     |
| Regressions (secondary)  | -    | -            | 0     |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.7% | [0.3%, 1.2%] | 3     |
- Given this is a correctness fix, and the regressions seem in line with previous historical performance (i.e., it regressed back to a previous baseline), I think it's safe to call this triaged


Avoid follow-up errors and ICEs after missing lifetime errors on data structures [#127311](https://github.com/rust-lang/rust/pull/127311) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=fdf7ea6b5b1cac83c0f29e681202cf18bf25b01c&end=c92a8e4d4d7e8da53aa05309ef8d4fac2c9af52f&stat=instructions:u)

| (instructions:u)         | mean | range        | count |
|:------------------------:|:----:|:------------:|:-----:|
| Regressions (primary)    | 0.3% | [0.2%, 0.4%] | 8     |
| Regressions (secondary)  | 0.3% | [0.2%, 0.4%] | 16    |
| Improvements (primary)   | -    | -            | 0     |
| Improvements (secondary) | -    | -            | 0     |
| All  (primary)           | 0.3% | [0.2%, 0.4%] | 8     |
- Instruction counts go up, cycles do not (deeply nested multi is probably just noise in mono collection). In any case, this is a correctness fix so it seems like a small perf hit would be acceptable in any case.


#### Improvements

Fix `Parser::look_ahead` [#127636](https://github.com/rust-lang/rust/pull/127636) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=5d76a13bbedebd773b4960432bff14f40acf3840&end=62c068feeafd1f4abbf87243d69cf8862e4dd277&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.3% | [-0.3%, -0.2%] | 3     |
| Improvements (secondary) | -2.4% | [-2.4%, -2.4%] | 1     |
| All  (primary)           | -0.3% | [-0.3%, -0.2%] | 3     |


Gate the type length limit check behind a nightly flag [#127670](https://github.com/rust-lang/rust/pull/127670) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=a241cf1c49c46c57ee2ea9b19df4e7e2cc41449d&end=88fa119c77682e6d55ce21001cf761675cfebeae&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | -     | -              | 0     |
| Improvements (primary)   | -0.6% | [-1.4%, -0.2%] | 28    |
| Improvements (secondary) | -1.1% | [-1.5%, -0.4%] | 8     |
| All  (primary)           | -0.6% | [-1.4%, -0.2%] | 28    |


find_field does not need to be a query. [#127718](https://github.com/rust-lang/rust/pull/127718) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=d9284afea99e0969a0e692b9e9fd61ea4ba21366&end=8b72d7a9d7a02cb4f2b21c1497651c84a912550a&stat=instructions:u)

| (instructions:u)         | mean  | range           | count |
|:------------------------:|:-----:|:---------------:|:-----:|
| Regressions (primary)    | -     | -               | 0     |
| Regressions (secondary)  | -     | -               | 0     |
| Improvements (primary)   | -     | -               | 0     |
| Improvements (secondary) | -7.5% | [-13.5%, -2.7%] | 9     |
| All  (primary)           | -     | -               | 0     |


#### Mixed

Rollup of 7 pull requests [#127580](https://github.com/rust-lang/rust/pull/127580) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=b215beb567857000fdaa868cbb78702bc5ee0ee9&end=c092b289764530221d09e000a789222bddb2c53c&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | -     | -              | 0     |
| Regressions (secondary)  | 2.6%  | [2.6%, 2.6%]   | 1     |
| Improvements (primary)   | -0.6% | [-1.0%, -0.2%] | 9     |
| Improvements (secondary) | -     | -              | 0     |
| All  (primary)           | -0.6% | [-1.0%, -0.2%] | 9     |
- Noise


Only track mentioned places for jump threading [#127087](https://github.com/rust-lang/rust/pull/127087) [(Comparison Link)](https://perf.rust-lang.org/compare.html?start=8a63c84af5e7a201239e87d2175128907495b028&end=0ffbddd09e02a00b762d838ea1598bfa89dd1668&stat=instructions:u)

| (instructions:u)         | mean  | range          | count |
|:------------------------:|:-----:|:--------------:|:-----:|
| Regressions (primary)    | 0.5%  | [0.4%, 0.6%]   | 3     |
| Regressions (secondary)  | 1.1%  | [0.2%, 1.6%]   | 7     |
| Improvements (primary)   | -0.6% | [-1.3%, -0.2%] | 6     |
| Improvements (secondary) | -0.6% | [-2.0%, -0.3%] | 8     |
| All  (primary)           | -0.2% | [-1.3%, 0.6%]  | 9     |
- The perf impact was expected given the pre-merge runs and is less severe than it was pre-merge.

## Nominated Issues

[T-compiler](https://github.com/rust-lang/rust/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated issues this time.

[RFC](https://github.com/rust-lang/rfcs/issues?q=is%3Aopen+label%3AI-compiler-nominated)
- No I-compiler-nominated RFCs this time.

### Oldest PRs waiting for review

[T-compiler](https://github.com/rust-lang/rust/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-asc+label%3AS-waiting-on-review+draft%3Afalse+label%3AT-compiler)
- "Remove unnecessary impl sorting in queries and metadata" [rust#120812](https://github.com/rust-lang/rust/pull/120812) (last review activity: 5 months ago)
  - cc: @**cjgillot**
- "Stop using LLVM struct types for array/pointer offset GEPs" [rust#122325](https://github.com/rust-lang/rust/pull/122325) (last review activity: 4 months ago)
  - cc: @**Nikita Popov** (author replied to your comment from last March)


## Next week's WG checkins

None

Next meetings' agenda draft: [hackmd link](https://hackmd.io/zlNQiMzJThWdBQvPYaqh0w)
