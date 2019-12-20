---
title: 2019-12-06 end-to-end query PRs
type: docs
---

# Design Meeting 2019-12-06 -- librustc_interface queries

## Links

* [Zulip topic of the discussion](https://zulip-archive.rust-lang.org/131828tcompiler/75795designmeeting20191206.html)
* [Compiler team issue](https://github.com/rust-lang/compiler-team/issues/175)
* [Pre-design meeting Zulip topic](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/pre-design.20meeting.202019-12-05)
* [Internals thread](https://internals.rust-lang.org/t/migrating-rustc-interface-queries-to-proper-librustc-queries/10433) with descriptions of PRs

## Background

* Goal is **end-to-end queries**
    * Benefits: Simpler overall model
    * Incremental extending back to parsing
        * mw has done measurements suggesting that on larger crates some 40% of the compilation time comes from 
    * Parallel compilation would be more effective, if done on the basis of queries
* Agenda
    * Tough to frame:)
    * Most important question to settle is what overall stategy we plan to take
        * Do we want to try and land / rebase these PRs?
        * Try a different tack?
        * Hold off and let other things progess?

## Commentary on the meeting

This is written after the fact, and is an attempt by nikomatsakis to capture some of the key considerations.

* The PRs were written with the goal of moving rust immediately to an end-to-end query system
    * the queries that get created here are not, however, as clean as one might expect
    * as an example, instead of creating fine-grained queries for handling HIR, we would create a single HIR Map query and retain today's special case code that tries to track which bits of the data the methods on the HIR map access
* An alternative approach would be to move more slowly but work more on the actual design of each piece
    * We might start with the HIR, decide on the actual representation that we want, and refactor into that
    * And then move backwards to name resolution
    * This overlaps somewhat with rust-analyzer, which has been built "from the ground up" with queries in mind, and thus has been figuring out some of what is needed here
* For context, there are definitely benefits from changing the line around the "set of things captured in the query system"
    * e.g. big parts of the webrender-check compilation takes place before incremental even starts
* The concerns with the PRs are that
    * we are kind of creating more tech debt before we start to pay it off
        * since the designs are not the designs that we ultimately want
    * there isn't really a precise enough consensus around the end state that we want
        * and thus trying to move incrementally means we are kind of ambling without a clear goal
        * and likely to wind up with something incoherent
    * the PRs introduce more special cases into the query system, not fewer
* On the other hand
    * moving quickly to create queries might unlock other improvements, help us eliminate shared state
    * maybe you see this as an "obvious first step whatever we do", in which case there isn't a lot of room to block
        * counterargument is that these PRs are each quite complex and take a lot of reviewing load to manage etc
* We discussed a fair amount what a desirable design for HIR might look like, [starting around here](https://zulip-archive.rust-lang.org/131828tcompiler/75795designmeeting20191206.html#182771577)
    * it seemed like there was general consensus around a "vague sketch" where you had `tcx.hir(def_id)` give you back some kind of `ItemData` that contained the data for a particular item
        * no 'special cases' needed in the query system
* [Alternative proposal](https://zulip-archive.rust-lang.org/131828tcompiler/75795designmeeting20191206.html#182772402)
    * close the PRs
    * encourage creation of a WG to work out a design for HIR, HIR-ID and the like and bring that design forward
    * land new PRs working in that direction
    * this overlaps heavily with rust-analyzer and could even take place in that context
* Towards the end, some topics were raised that were not fleshed out
    * such as whether a `DefId` could be a "interned" DefPath (or whether it already is)
    * the need for 'queries that depend on queries' and what that means
