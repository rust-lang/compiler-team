---
title: 2019-12-20 major changes process
type: docs
---

# Major Change Process

* [Zulip thread](https://zulip-archive.rust-lang.org/131828tcompiler/44719designmeeting20191220.html)

## Summary

* We want some kind of system where people advertise changes that they are making or plan to make 
    * and the team can give high-level feedback early
    * and -- if we decide to go with the change -- we can ensure there is a reviewer beforehand
* This document describes motivations and a specific "early draft" proposal

## Motivations

Proposal is to add *some* sort of notification / lightweight process before making major changes.

In contrast, today there is no stated process for a "major change" beyond just opening a PR.
Of course some changes get a lot of discussion before hand, but others do not.

Some problems that we see with today's system:

* Sometimes we get large PRs that have attempted a major change without any discussion beforehand
    * There may not be a reviewer with time and interest
    * Also reviewing without context is very difficult
    * There may be concerns about the technical approach or direction
    * Starts the discussion with "accept or reject this PR" versus "what is best approach"
        * On the other hand, a more concrete discussion can be more effective
* Often, as a result, these PRs can sit for a very long time without any feedback
    * this is frustrating for everyone involved
* Current "lack of system" can also be a turnoff
    * do a lot of work to prep PR, but can you know if that change is welcome?
* Over time, a focus on PRs (versus explaining the idea) leads to
    * more tech debt and less overall cohesion
    * lack of documentation

Some strengths of today's system that we would like to preserve:

* Low barrier to entry, not a lot of "bureaucratic overhead"
* People should be able to experiment without "authorization" before hand
* We don't want a lot of overhead for the *compiler team* to manage some authorization process

We would know the system is working if:

* We have a better idea of what is being done and by whom
    * and also whether the team has approved of that direction
* Major changes will be discussed before they become a PR that is up for active review
    * reviewers will be identified beforehand
* When reviewing a PR, reviewers will have a better idea of its goals and how it fits into the bigger picture
* We still have a "high throughput" system and we don't spend a ton of time on "bureaucratic overhead"
    * in particular we should be able to "green light" changes fairly quickly and we should do that most of the time

## Initially proposed process

* When considering or experimenting with a "major change", open an issue on compiler-team repo to let people know
    * Describe the general idea in a sentence or two
    * Identify mentors or reviewers, if you are working with one
* These issues will be reviewed weekly and classified
    * New triage process? Part of existing process?
        > [name=Felix S Klock II] Note we already often go-over allotted time at the Thursday triage meeting. We *can* add this to the agenda, but we need to figure out what else will get de-prioritized.
    * Is weekly a good frequency?
        * mark: this is pretty high latency for some of these changes,
          we might otherwise merge them in a week's time
          Maybe that's not a bad thing though :)
* Some possible outcomes:
    * Closed -- this doesn't seem like something we want to do
    * Requires design meeting -- requires a larger group
    > [name=Felix S Klock II] should also add "Needs RFC" as potential outcome (a more extreme variant on "Needs Design Mtg") 
    * Deferred -- not deciding for now, or trying to find a reviewer
    * Approved for experimentation
        * once PR is ready, nominate for discussion
        * may request "mitigation", such as a `-Z` flag
        * implementor should understand that we may just decide the idea isn't worth it
    * Approved to land -- requires a willing reviewer
        * no special approval required to land, just r+
* If a "major change" PR is opened without going through this process
    * Close with a friendly note recommending an issue be opened (we should write a standard template with a link)

## What is a "major change"?

* "You know it when you see it"
* If it is a major time commitment to review it, it probably qualifies
    * This might be beause it affects many parts of the compiler
    * But it might also be a narrow change with subtle implications
    * Or require reading up on a relevant RFC or other background material
* Examples of major changes:
    * Allocate HIR on an arena:
        * Yes, because it touches a set of data structures used throughout the whole compiler
        * However, presuming we could find a reviewer, this would be something we'd like approve quickly within the initial triage because it is fairly mechanical and doesn't require a design meeting
    * Introducing chalk, nll, or polonius
        * Yes, replacing a major component
        * This kind of effort might be "redirected" to forming a working group to help lead the design and implementation
            * (which is of course what we have done)
    * Changing universally used internal APIs
        * Heads up, `PlaceBase::Static` is being removed, breaking every single use site of place.base: https://github.com/rust-lang/rust/pull/67000
* Grey zone, let's discuss:
    * Const propagation
        * It is major in that it is something that has been discussed quite a bit, multiple people might have ideas on it
        * It is low-risk because it can easily be turned off at any time
    * [Use the recorded types in MIR to determine generator auto-trait implementations](https://github.com/rust-lang/rust/issues/65782)
    * [Implement RFC 2532 – Associated Type Defaults](https://github.com/rust-lang/rust/pull/61812)
        * contained, but reviewing is a lot of work
        * Niko has rather inexcusably let this sit far too long (plans to change that)
        * *But* it's an example of something that's hard to schedule, and where some up-front notice might've been helpful (or could've given warning that won't have available bandwidth until later)
* Examples of minor changes:
    * Fix some ICE
    * Local optimizations

## Why this will help

* For people who have very full calendars, being able to have a "heads up" of larger changes and to integrate into a review schedule could be helpful
    * but it will take discipline to use effectively

## Notes from the meeting

* simulacrum points out that it would be good to have some kind of "fast path" if you have a reviewer and you have documented things, so that no meeting is required at all
    * the only "hard block" would be if you don't have a "partner" or "sponsor" from compiler team
    * somewhat analogous to the project group lang team concepts
* reviewer not expected to be a pair programmer
* one possible definition for "what is a major change" might be "what would modify the rustc-guide"
    * or, since rustc-guide is always a WIP, "welp this *should've* in the guide and if it were, it *would've* required a modification"
* what to do with new PRs that don't follow the process?
    * should we close them?
    * maybe have a canned comment and give them some amount of time
    * this comment might also emphasize the role of documentation
* [we discussed and settled on](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/design.20meeting.202019-12-20/near/183945490)
    * leave a nice message, which it S-waiting-on-author
    * close per usual triage process if no issue is filed within a certain amount of time
    * if an issue is filed but it is not "green lighted", then we can close the PR
        * i.e., if we decide that a design meeting or broader project group is needed
* when a project is proposed, what are the possible responses?
    * I have concerns
    * I approve but don't have ability/time to review
    * I approve on an experimental basis; we should discuss again when we gain more experience
    * I am happy to review but I would like another to approve too
    * I am happy to review and I think we can just go forward (only possible for "members")
* can we make a Zulip stream where each issue creates a topic?
* how to handle experimentation?
    * we should have some way to add "caveats", like 
        * would like to review performance results
        * we need a `-Z` flag
        * we need docs :)
* final discussion point was about exactly how to handle requests for rustc-guide edits
    * since a major change is part of a rustc-guide change, it makes sense that it should come accompanied with a rustc-guide write-up
    * ideally this would come along with the compiler-team issue
        * but maybe it would be more something we wait for until issue is *approved* or, in extreme cases, co-develop with author
    * if we want to see more docs, we are going to have to start holding the line *somewhere*
    * sometimes it's not possible or desirable to write complete docs before-hand
        * details may change through review process
        * person may not know enough context to write the docs, need help with that
    * but the bar should be that the issue can **explain the change** in sufficient detail for it to be understood
        * the *actual* rustc-guide changes themselves can come later
        * it may be that the role of the learning wg can be to help with some of that

## Final proposed process

* When considering or experimenting with a "major change", open an issue on compiler-team repo to let people know
    * Describe the general idea in a sentence or two
    * Identify mentors or reviewers, if you are working with one
    * There will be some "prototype" to guide people in this
* What is a "major change"?
    * something where it would make sense to update rustc-guide
    * if rustc-guide doesn't cover this code yet, then you may have to use your imagination about what *ought* to be documented :)
* These issues will be reviewed by compiler team members
    * Compiler team members and contributors can leave concerns and approvals asynchronously (see below)
        * maybe we can make a dedicated Zulip stream where new things get 
    * In particular, note that a compiler team member who is confident something is correct and will not be controversial can just go ahead and approve and act as reviewer
        * though there should still be an issue
    * But there should also be some synchronous sweep, not clear when that should occur
        * maybe as part of meta wg?
        * perhaps just team co-leads do it on a regular basis?
        * existing triage meeting is too full, that's clear
* Feedback from a compiler team member or contributor typically has the form (these are not fully orthogonal):
    * I have concerns (give details)
        * this might lead to more details
        * or a design meeting
        * or an RFC
        * or just closing the idea
    * I approve but don't have ability/time to review
    * I approve but with some caveats, e.g. we should examine perf afterwards, would like to re-review, or want a `-Z` flag
    * I am happy to review but I would like someone else to approve too (must be a "compiler team contributor")
    * I am happy to review and I think we can just go forward (only possible for "members")
        * the idea here is that if you are an expert on the code and confident this is a good path, that's fine, do it
* If a "major change" PR is opened without going through this process
    * We post a standard comment that directs people to open an issue
    * And the PR is marked as waiting on author
        * It can be closed per the usual triage process if author does not respond
    * If the issue turns out to be controversial (i.e., nobody steps up as reviewer write away), then we close the PR and just focus on discussing in the issue

## A few more last minute notes

* Centril + nikomatsakis discussed a bit after and noted that we
  probably don't need to get formal about members vs contributors, the
  key point is that if somebody is confident that (a) they know this
  is the right approach and (b) they know others will agree, they
  should feel free to move a major change forward (and leave notes to
  that effect on the issue)
