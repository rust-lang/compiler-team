---
name: Major change proposal (MCP)
about: Propose a major change.
title: "(My major change proposal)"
labels: major-change, T-compiler
assignees: ''

---

# What is this issue?

This is a **major change proposal**, which means a proposal to make a notable change to the compiler -- one that either alters the architecture of some component, affects a lot of people, or makes a small but noticeable public change (e.g., adding a compiler flag). You can read more about the MCP process on https://forge.rust-lang.org/.

**This issue is not meant to be used for technical discussion. There is a Zulip stream for that. Use this issue to leave procedural comments, such as volunteering to review, indicating that you second the proposal (or third, etc), or raising a concern that you would like to be addressed.**

# MCP Checklist

* [x] MCP **filed**. Automatically, as a result of filing this issue:
  * The @rust-lang/wg-prioritization group will add this to the triage meeting agenda so folks see it.
  * A Zulip topic in the stream `#t-compiler/major changes` will be created for this issue.
* [ ] MCP **seconded**. The MCP is "seconded" when a compiler team member or contributor issues the `@rustbot second` command. This should only be done by someone knowledgable with the area -- before seconding, it may be a good idea to cc other stakeholders as well and get their opinion.
* [ ] **Final comment period** (FCP). Once the MCP is approved, the FCP begins and lasts for 10 days. This is a time for other members to review and raise concerns -- **concerns that should block acceptance should be noted as comments on the thread**, ideally with a link to Zulip for further discussion.
* [ ] MCP **Accepted**. At the end of the FCP, a compiler team lead will review the comments and discussion and decide whether to accept the MCP.
  * At this point, the `major-change-accepted` label is added and the issue is closed. You can link to it for future reference.
  
**A note on stability.** If your change is proposing a new stable feature, such as a `-C flag`, then a full team checkoff will be required before the feature can be landed. Often it is better to start with an unstable flag, like a `-Z` flag, and then move to stabilize as a secondary step.

# TL;DR

*Summarize what you'd like to do in a sentence or two, or a few bullet points.*

# Links and Details

*Add a few paragraphs explaining your design. The level of detail should be
sufficient for someone familiar with the compiler to understand what you're
proposing. Where possible, linking to relevant issues, old PRs, or external
documents like LLVM pages etc is very useful.*

# Mentors or Reviewers

*Who will review this work? If you are being mentored by someone, then list
their name here. If you are a compiler team member/contributor, and you
intend to mentor someone else, then you can put your own name here. You can
also leave it blank if you are looking for a reviewer. (Multiple names are ok
too.)*
