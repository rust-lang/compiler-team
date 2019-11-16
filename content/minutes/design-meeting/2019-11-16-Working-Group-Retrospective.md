---
title: Working Group Retrospective
type: docs
---

# Working Group Retrospective

* [Zulip stream] or read on the [Zulip archive](https://zulip-archive.rust-lang.org/131828tcompiler/82575designmeeting20191112.html)

[Zulip stream]: https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/design.20meeting.202019-11-12

## What you are looking at

We did a [short survey](https://forms.gle/PmZVgsAWZckceT3Y6) before
the meeting. The following notes were scraped from the 10 responses. I
tried to de-duplicate common items. Towards the end, you will find
some minutes that were taken during the meeting itself. --nikomatsakis

## Things to KEEP doing

* Working groups are useful
* Nice to know who to talk to in order to get involved
    * this was more of a struggle before
* Providing opportunities for mentorship is good
* Scoping out small groups of decision makers for "in the weeds" decisions
* Weekly updates
* Dedicated Zulip streams: great to have ability to link/skim, even if most are muted
* Regular meetings are a good way to keep working groups focused

## Things to STOP doing

* Maybe fewer working groups, with more time/energy invested in each?
    * Some of the smaller WGs don't see much activity, could discourage people

## Things to START

* Check in with WGs not just about achievements but process
    * e.g., diagnostics and mir-opt don't have any meetings
    * Question from editor: Not clear if the idea here is to try and have a more uniform process across teao use that as a signal that help may be needed
        * yes, that's what I meant
            * which is what you meant? :)
* Improve our labeling system
    * Tag PRs with WG-XXX instead?
      > [name=Centril] Instead or both? We (T-release) can still use A-* labels.
      > [name=Felix S Klock II] I worry about *switching* to this (rather than the A-categories) because it can mean that multiple WG's get pings for incidental stuff...? I guess the labels don't actually cause pings so maybe that doesn't matter. Another potential issue (again that arises from multiple WG-labels on one issue) is that it can become ambiguous *which* WG should be taking lead on something.
* Proactive recruitment for specific working groups?
* Devise metrics to evaluate effectiveness?
    * [name=Centril] What would those metrics be (also... performance reviews? ^^ Rust is not a company; heh)
    * Should WGs create those?
* Figure out the "wind down" process (e.g., for groups like NLL and pipelined compilation)
    * Do we need to document which members are responsible for long-term maintenance?
    * Consider e.g. NLL
    * How to ensure the remaining work gets done? A lot of it is falling to Matthew Jasper for NLL, is that ok?
* Some better way to advertise what we are doing

## Things to IMPROVE

* Longer timeslot in compiler team triage meeting (maybe just a few minutes)
    * More time for discussion or Q&A related to plans, progress, etc
        > [name=Felix S Klock II] maybe if we just moved it to the begining but had a hard limit on time?
* Onboarding could still be improved
* Some better way to get a sense of status without participation in every compiler team meeting
    * Maybe use Inside Rust blog or other means to make more regular public announcements
    * Maybe a regular (but less frequent) time when *all* groups can check-in 
* Require explicitly documented leaders, some older WGs are missing them
* Improve use of WG labels:
    * the set of github WG labels and actual WGs do not correspond in a meaningful fashion
    * Hard to know when to use the A label vs WG 
        - [name=Centril] This is primarily a matter for T-release triage. When in doubt, use both labels.
* Distinction between shorter and longer term groups
    * maybe use distinct terms
    * add metadata indicating this
* Help ensure that each working group has active leadership, which makes a big difference
    * hard to find people with enough time
    * maybe we can help leaders?
    * multiple leads are good
        * [name=mw] +1! [name=Centril] +1
* More involvement from the lang team on Zulip is useful, developing a better working relationship between lang and compiler team would be good
    * [name=Centril] The lang team recently "moved" to Zulip
    * [name=Centril] Narrowing the funnel through which T-lang adds new work to T-compiler's queue would be good
* Relationship between triaging wg (from release team) and compiler team
    * 
* More retrospectives to help us reflect on how things are going!
* compiler-team web pages feel like they could be better
    * templates are not that useful
    * would be nice to have the updates there
* overhead of maintaining all the web pages and other things feels too high
    * can we post updates in a more central fashion?
* fold the activity of "regular contributors" into the working groups more


## Other things

* don't generalize too much from NLL, it was a big prominent lang feature with lots of interest

## notes and ideas from meeting

The following notes and conclusions were extracted during the meeting. For more details,
please see the complete [Zulip stream].

### discussing check-in and how to keep the info up to date

* maybe a zulip stream that people can post updates to
    * perhaps with bot support to scrape and collate
    * this would land in github in the form of meeting minutes
    * but it would also make it easy to catch up on the status 
* make a point to help WGs develop roadmaps
    * helps to frame check-ins 
* metrics?
    * but what? and let's not try to make this too much like a company
* wind-down
    * things like NLL are winding down but it doesn't feel very organized
    * even the concept of wind-down requires more work on roadmaps, so this ties in with the point above
    * maybe the next step for winding down is to try and use that process, but aimed more at finding the work left to be done
        * goal: "what did we get done, what's left, and -- if it matters -- who will do it"
* kinds of working groups
    * groups doing manual, recurring tasks and upkeep
    * groups around an area of the code ("WG-NLL", "WG-mir-opt")
    * project groups with a pretty clear goal ("WG-NLL")
        * maybe projects are things that "area-based groups" do?
    * groups to ping people ("ICE-breakers", "WG-rollups")
* labels
    * some way to indicate that the issue has been triaged by a given wg (e.g., `AsyncAwait-Triaged`)
* follow-up topics to drill into more
    * creation of wgs is undocumented
        * there are ongoing activities that it would be great to "capture" in a WG
    * designation of kinds of working groups didn't reach much of a conclusion
