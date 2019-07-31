---
title: WG-Polonius meeting minutes 2019.06.04
type: docs
---
# WG-Polonius meeting minutes: 2019/06/04
---

Relevant links:

- The meeting happened in this [Zulip thread](https://rust-lang.zulipchat.com/#narrow/stream/186049-t-compiler.2Fwg-polonius/topic/meeting.202019.2E06.2E04).
- The [WIP Roadmap](https://paper.dropbox.com/doc/Polonius-Roadmap--AY6C806s~AZK~e7wagmys2_wAg-hk3a9ynduUN2gk1A0NNTF) Paper.

---

This week, we discussed the following topics:

### 1. Liveness

To help with reviewing [polonius#105](https://github.com/rust-lang/polonius/pull/105), some last minutes changes were discussed:
- the older facts recorded in the Polonius dataset (the `inputs` directory) needed regenerating. This creates a huge diff for review, so separating those out to be "rubberstamped" would be interesting.
- squashing the other, important, commits for easy review.

In general, we'll still need to check rustc's testsuite when the liveness work is merged. That ties into the other ongoing work about checking our current `-Z polonius` behaviour in those tests (especially now that [#60171](https://github.com/rust-lang/rust/pull/60171) has been merged). 


### 2. Profiling and performance

With the previous problems related to `measureme`/`summarize` fixed, [@lokalmatador] has continued work on profiling, and has been gathering early results.

### 3. Move/initialization analysis

[Niko] and [Albin] have [recorded a call](https://www.youtube.com/watch?v=ilv9V-328HI) discussing how rustc ensures all data used is initialized, and how to integrate these checks in Polonius. 

Note: the screen recording is "paused" for a bit at the beginning (until around minute 14), as notes were broadcast on the Paper website, but [this](https://paper.dropbox.com/doc/Polonius-and-initialization-mNvR4jqITCdsJDUMEhFbv) is the document they discuss and take notes in.

### 4. Proposal: stop tracking subset relations along the CFG

[Niko] and [Aaron Weiss] (who works on the [Oxide formal model](https://aaronweiss.us/pubs/draft19-oxide.pdf) of Rust's ownership and borrowing) came up with a proposal to avoid tracking `subset` relations.

This refinement would allow more precision in the analysis (specifically, avoiding unnecessary errors in some known cases), and potentially be faster, by taking special care of _equal regions_ in the `subset` relation. Only those are the ones requiring a persistent flow of data through the CFG, and the analysis (or a pre-pass) could unify them as _one region_, and track equality instead of subset relations.

There are more details at the beginning of the dedicated Zulip thread — [around this point](https://rust-lang.zulipchat.com/#narrow/stream/186049-t-compiler.2Fwg-polonius/topic/subset.20relations.20and.20polonius/near/167212574) — (the conversation has continued since the meeting). A call was scheduled for the following Friday to talk about subsets and the proposal.

---

This week, the plan is:

- [@lokalmatador] will continue gathering profiling data.
- [Niko] will review and land the liveness PR, and release the new polonius version to crates.io.
- [Albin] will update the [rustc liveness PR](https://github.com/rust-lang/rust/pull/60266) after that, and mark it from "WIP" to "ready to review". They also will do a public presentation about Polonius next week and will prepare for that.
- [Rémy] will continue on the rustc test suite analysis, and look at the `subset` proposal.
- Try to prepare for the call about `subset` relations.

[Albin]: https://github.com/albins
[Niko]: https://github.com/nikomatsakis
[@lokalmatador]: https://github.com/lokalmatador
[Aaron Weiss]: https://github.com/aatxe
[Rémy]: https://github.com/lqd
