---
title: Dep-graph loading (#62083)
type: docs
---

# design meeting 2019-10-11

[Zulip stream](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/design.20meeting.202019-10-11)

## introduction

Dear @*T-compiler/meeting*,

Today we will be having a **design meeting**. The topic was originally sketched as "some Zoxc PR". We've since narrowed that down to discuss #62038, which is a refactoring to how dep-graph loading occurs. @**Zoxc** [wrote up a comment](https://github.com/rust-lang/rust/pull/62038#issuecomment-540508308) giving a summary of the ideas. Note that this PR itself is an incremental step towards #60035, which aims to make dep-graph loading/saving more continuous.

I'd also like to discuss briefly how we should document these changes. We currently have some rustc-chapters on incremental compilation (e.g., [this chapter goes into detail](https://rust-lang.github.io/rustc-guide/queries/incremental-compilation-in-detail.html)). I would like to move us to a world where major refactorings like #60035 (but not limited to this one -- I think e.g. [my recent PR](https://github.com/rust-lang/rust/pull/65232) and work on lazy norm fits the bill) come along with a rustc-guide chapter that documents the new state of the world. Maybe we discuss some how that might work and -- in the case of THIS PR -- who might do that documentation work (I don't necessarily think it has to be @**Zoxc**, though they're also an obvious candidate). (In my ideal world, drafts of that chapter would be available *before* the PR, but at minimum I think such a chapter should be in place to help with reviewing.)

## Questions for discussion

* "This is where the performance gain of this PR is.", have we measured this at all? -- nikomatsakis
    * [Here are some measurements](https://perf.rust-lang.org/compare.html?start=4a365a29d64bec75d107214319a129ba68fc12a3&end=7830caefb62c9c8d3fb7a742c66c64c89bf3aafe&stat=wall-time). However, are they done against a single-threaded or parallel compiler? -mw
    * The results show some improvements and some regressions.
* "The one possible performance drawback is that ids can become fragmented since this PR requires us to reuse ids from the previous session." -- in what way is this a performance drawback? Do we have any mechanism to reuse ids or 'reset' state after a suitable amount of time?
* There is another possible performance drawback: The current dep-graph has to be built two times in the worst case (i.e. full cache, but all invalid). Is that correct?
 
## Minutes and notes from discussion

* Review of how existing dep-nodes work
    * [Discussion about the color scheme](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/design.20meeting.202019-10-11/near/177910369)
    * [Brief notes about parallelism](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/design.20meeting.202019-10-11/near/177910794)
    * [Notes on how dep-graph works today](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/design.20meeting.202019-10-11/near/177911022)
* Questions about the PR
    * [Key idea: change is to load up the old graph and use it as the starting point, editing it in place, rather than copying things out from it into the new graph](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/design.20meeting.202019-10-11/near/177911184)
    * [Deleting nodes and garbage](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/design.20meeting.202019-10-11/near/177911307)
        * when we load nodes, they have no color
        * if at the end of compilation they still have no color, we can delete them
        * we keep a "free list" for indices so they can get re-used
    * However:
        * we never shrink the graph as a whole, so if there used to be a lot of ids, we will keep the graph the same size
            * [in particular there could be an exceptional execution that creates a lot of nodes](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/design.20meeting.202019-10-11/near/177912057)
        * ids may also become fragmented over time
    * [How could we address this?](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/design.20meeting.202019-10-11/near/177912273)
        * some form of "compression" step when writing back to disk
        * complication: query-result-cache uses ids as keys
            * ["if we want to garbage collect them, it must be done in sync with the query result cache"](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/design.20meeting.202019-10-11/near/177912399)
* [Conclusions](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/design.20meeting.202019-10-11/near/177915151)
    * We had a good discussion of the PR in question. I don't think we raised any red flags or anything, the approach seems solid.
    * The real question is whether we want to move in he **overall direction** proposed by #60035
    * The goal here is to reduce the cost of loading/saving the dep-graph
    * #60035 proposed to do so by incrementally dumping out changed nodes and not retaining them in memory
    * This we barely touched on -- some open questions for me
        * Are there alternative designs we have in mind?
        * Is #60035 itself an "end state" or a stepping stone?
    * Conclusion:
        * Follow-up meeting to dig into design of #60035 and maybe discuss alternatives
        * In parallel, Niko will review #62038 now that he understands roughly what it is trying to do
            * We would also want to write docs for rustc-guide
            * We can figure out how that happens in parallel
