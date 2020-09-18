---
title: 2020-09-18 Major Change Proposal Retrospective
type: docs
---

# Links

* [Zulip topic](https://zulip-archive.rust-lang.org/238009tcompilermeetings/01013designmeeting20200918MCPRetrospective.html)
* Meeting proposal: [rust-lang/compiler-team#314](https://github.com/rust-lang/compiler-team/issues/314)

# Key notes and points from the meeting itself

- Feedback on MCPs after being seconded can be difficult to deal with. [(link)](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bdesign.20meeting.5D.202020-09-18.20--.20MCP.20Retrospective/near/210523197)
    - Some feelings of "where were you a week ago" as aluded to above
    - We do want to encourage feedback even if it's late but we should weigh some kinds of feedback more heavily than others "late" in the process.

- Most common feedback was: [(link)](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bdesign.20meeting.5D.202020-09-18.20--.20MCP.20Retrospective/near/210523836)
    - the problem of "MCP limbo", where there are MCPs that are not accepted but not clearly rejected
    - the problem of how we know if a concern is present and when it's "resolved" (who decides?)
    - the question of what to do about feedback after an MCP is accepted, and in particular MCPs for sweeping changes

- We should probably be closing un-seconded MCPs after some amount of time [(link)](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bdesign.20meeting.5D.202020-09-18.20--.20MCP.20Retrospective/near/210524064)
    - There should probably be a way for a contributor to keep an un-seconded MCP "alive". Possibly by leaving a comment to that effect.
    - That would extend the time before the MCP is closed but not indefinetly. Contributors would have to keep leaving comments if they want the MCP left open (this "friction" is probably a good thing). 
    - @**pnkfelix** points out there isn't a good way to track these ideas after an MCP is closed.
    - Meeting participants generally seem ok with that.
    - There is ["fragile consensus"](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bdesign.20meeting.5D.202020-09-18.20--.20MCP.20Retrospective/near/210525878) for auto-closing after a set amount of time has passed.

- Discussion about "it's hard to track concerns" [(link)](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bdesign.20meeting.5D.202020-09-18.20--.20MCP.20Retrospective/near/210526028)
    - "Obvious" fix is to use rfcbot concerns
    - rfcbot concerns may not scale to such a large group as compiler-team + contributors [(link)](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bdesign.20meeting.5D.202020-09-18.20--.20MCP.20Retrospective/near/210526615)
    - A possible solution would be a small group of people whose responsibility would be to determine if concerns have been resolved sufficiently for the MCP to proceed. This likely overlaps a lot with the Technical Steering Committee idea which has been talked about before. [(link)](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bdesign.20meeting.5D.202020-09-18.20--.20MCP.20Retrospective/near/210526748)
    - Discussion of specific rustbot commands [(link)](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bdesign.20meeting.5D.202020-09-18.20--.20MCP.20Retrospective/near/210529314)
        - rustbot second -- marks this for approval after time elapses
        - rustbot close -- marks this for close after time elapses, unless a contributor leaves a comment
        - rustbot keepalive -- cancels a close
        - rustbot concern foo -- raises a concern, any team member/contributor can do it? (or anyone?)
        - rustbot resolve foo -- resolves a concern, any team member/contributor can do it
        - if an issue goes N weeks without activity (on the github thread), there is an automatic rustbot close

- Discussion about MCPs that perhaps don't get enough attention [(link)](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bdesign.20meeting.5D.202020-09-18.20--.20MCP.20Retrospective/near/210530507)
    - The biggest example of this is probably the recent MCPs that changed the `rust-lang/rust` repo directory structure and the `x.py` defaults. [(link)](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bdesign.20meeting.5D.202020-09-18.20--.20MCP.20Retrospective/near/210530930)
    - Some people didn't find out until after the fact and were unhappy with the approved changes.
    - For "large" or "controversial" MCPs, we may want to require a full FCP instead of simply a second. [(link)](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bdesign.20meeting.5D.202020-09-18.20--.20MCP.20Retrospective/near/210531323)
        - @**simulacrum** notes if there are conflicting veto/second comments, perhaps this should trigger a full FCP either immediately or within a certain amount of time if those concerns are not resolved. [(link)](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bdesign.20meeting.5D.202020-09-18.20--.20MCP.20Retrospective/near/210531397) [(link)](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bdesign.20meeting.5D.202020-09-18.20--.20MCP.20Retrospective/near/210532435)

- @**nikomatsakis** noted that the feedback from the survey showed nearly everyone agrees the MCP process is good for the team. [(link)](https://rust-lang.zulipchat.com/#narrow/stream/238009-t-compiler.2Fmeetings/topic/.5Bdesign.20meeting.5D.202020-09-18.20--.20MCP.20Retrospective/near/210532311)
