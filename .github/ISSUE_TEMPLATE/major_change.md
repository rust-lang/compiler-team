---
name: Major change proposal (MCP)
about: Propose a major change.
title: "(My major change proposal)"
labels: major-change, T-compiler
assignees: ''

---

# Proposal

*Insert your proposal here, overwriting this text and the text under "Mentors or Reviewers", leaving the rest of the template untouched. Please include the complete proposal, rather than linking to a gist or other external document.*

*Your proposal doesn't have to be long. It should however be in sufficient detail that people familiar with the code can clearly envision what you are planning to do. Be sure to link to any relevant issues, PRs, or other sources.*

*When picking a title (that is, when replacing the "(My major change proposal)" text above), keep in mind that Zulip truncates text that extends beyond a certain length, replacing the truncated suffix with "…" in the topic name it creates. Therefore, consider keeping your title to <= 40 characters, if possible.*

# Mentors or Reviewers

*If you have a reviewer or mentor in mind for this work, mention them
here. You can put your own name here if you are planning to mentor the
work.*

# Process

The main points of the [Major Change Process][MCP] are as follows:

* [x] File an issue describing the proposal.
* [ ] A compiler team member or contributor who is knowledgeable in the area can **second** by writing `@rustbot second`.
    * Finding a "second" suffices for internal changes. If however, you are proposing a new public-facing feature, such as a `-C flag`, then full team check-off is required.
    * Compiler team members can initiate a check-off via `@rfcbot fcp merge` on either the MCP or the PR.
* [ ] Once an MCP is seconded, the Final Comment Period begins. If no objections are raised after 10 days, the MCP is considered **approved**.

You can read [more about Major Change Proposals on forge][MCP].

[MCP]: https://forge.rust-lang.org/compiler/mcp.html
