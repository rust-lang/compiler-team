---
title: WG-Polonius meeting minutes, 2019.03.07
type: docs
---
# WG-Polonius meeting minutes: 2019/03/07
---

Relevant links:

- The meeting happened in this [Zulip thread](https://rust-lang.zulipchat.com/#narrow/stream/186049-t-compiler.2Fwg-polonius/topic/meeting.202019.2E03.2E07)
- A [Paper document](https://paper.dropbox.com/doc/Polonius-Roadmap--AY6C806s~AZK~e7wagmys2_wAg-hk3a9ynduUN2gk1A0NNTF) for the WIP roadmap

---

The first meeting of the WG Polonius was dedicated to finding concrete next steps, both as part of working on the roadmap, and as onboarding [@albins][Albin] into the group. Since [Albin] will do a masters related to Polonius, we also worked out other areas they could tackle as time progressed.

Ultimately, a good starter issue was found in creating a new Polonius "hybrid" variant, bridging the location insensitive and complete analyses: a realistic way for rustc to use Polonius.

We then described a possible follow-up task, focusing on Polonius completeness: incorporating rustc's move/overwrite analysis, in a way similar to how it was done in [Lark].

We also spent time talking about next steps in documentation, whether in talks ([Niko]) or written docs ([Rémy]).

Possible talks:

- a walkthrough of a more complex theoretical example.
- a more practical walkthrough with a focus on the concrete parts of the Polonius computation: interfacing with rustc and transferring data, computing the analysis' datalog rules, how datafrog works, etc.

Following those, we also mentioned a longer term task: the more complicated analysis handling higher-ranked regions described in [this blog post](http://smallcultfollowing.com/babysteps/blog/2019/01/21/hereditary-harrop-region-constraints/).

The final points were more about cross-cutting concerns applicable to all WGs: how would Github permissions work, and setting up the polonius and datafrog crates and repositories to follow the soon-to-be finalized "crate conformance policy".

----
The major next steps we decided on were:

- [Matthew] will write mentoring instructions for the [hybrid algorithm task](https://github.com/rust-lang/polonius/issues/100).
- [Niko] and [Albin] will prepare the follow-up walkthrough of Polonius (the specific time, and contents). 
- [Niko] will review the [subset relation PR](https://github.com/rust-lang/polonius/pull/99).

[Albin]: https://github.com/albins
[Niko]: https://github.com/nikomatsakis
[Matthew]: https://github.com/matthewjasper
[Rémy]: https://github.com/lqd
[Lark]: https://github.com/lark-exploration/lark/blob/master/components/lark-type-check/src/full_inference/analysis/initialization.rs
