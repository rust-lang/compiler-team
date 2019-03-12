# Meta Working Group
![working group status: active][status]

This working group is dedicated to fleshing out the details of how the compiler team will organize itself.

- **Leads:** [@nikomatsakis][nikomatsakis], [@davidtwco][davidtwco] and [@spastorino][spastorino]
- **[Planning document][planning]**
- **Meeting Notes:** [All](NOTES.md)

[status]: https://img.shields.io/badge/status-active-brightgreen.svg?style=for-the-badge

## What is the goal of this working group?
This working group aims to discuss and answer the following unresolved questions:

- How to organize compiler team calendar?
  - One calendar for everything or one per working group?
- How to organize videos so people can find them?
  - e.g. playlists on YouTube, rustc-guide chapter
  - How do we make it easy to add them?
    - Some are specific to a working group or limited subset of contributors?
- How to run open-ended tasks?
  - e.g. lecture series, triage, rustc “university”
- What is the role of the steering meeting?
  - In-depth discussion of topics that come up during the week?
  - Judge newer proposals?
  - Decide if the set of working groups should change?
  - When should we post agendas?
- How should we get “inbound” prioritization requests?
  - e.g. if embedded working group has something they want or someone has a cool idea (pipelined compilation)
  - Use the steering meeting?
- Expert list
  - Where should this be found?
    - This is related to “Advertising” the compiler team point below.
  - How should it be maintained?
  - What qualifies as expert?
- Journeypeople
  - What should the name of this group be?
  - Criteria for membership?
  - Equivalent to r+ rights?
  - “Expiration” after some time?
  - How to make this a useful concept?
    - Relevant Q: what problem does this aim to solve?
  - Other clarifications:
    - Are journeypeople members of the compiler team or is this a step toward being a member of the team?
    - What is the expected conduct of a journeyperson? Does this change at all? Are there more expectations?
    - How can journeypeople be useful to existing full compiler team members?
- Managing the mundane (ensuring everyone is added everywhere)
  - Interaction with `rust-lang/team` repository/effort by pietroalbini.
  - Need to work out what all the things people need access to are.
- Working groups
  - What guidelines should exist for working groups?
    - e.g. effective meetings, note taking, check-ins at steering meetings, etc.
  - Directory structure in `rust-lang/compiler-team` repository
    - `index.md` and some other files already exist
    - Do we want more than this?
  - Assessing progress
    - Can we encourage working groups to set goals as part of their regular triage?
    - Goal: Leave check-in meeting feeling energized with clear ideas of next steps.
- Design documents
  - How can we encourage up-front design and documentation?
    - How much is too much?
  - e.g. pipelined compilation, parallel rustc
  - How does this interact with the rustc-guide?
- API documentation
  - Should there be a working group focusing on this?
- Async vs sync communication
  - Which is really easier?
  - Harder to make decisions over async.
    - Async can be easier for for non-native speakers.
    - Hard to keep up if too many commitments.
  - Sync can help throttle the volume.
    - Encourgages congeniality and cooperation.
    - Time zones are hard.
- “Advertising” the compiler team
  - How to publicize the working groups and ways to contribute to the compiler team’s work?
    - e.g. landing page (website or `rust-lang/compiler-team` repo)
  - What information is useful for people looking to contribute?
    - When meetings are held, what is the purpose of each meeting, who should attend, where are the meetings held?
    - Who is the best person to contact about specific areas in the compiler? What is the best way to contact them?
    - What working groups are available? What is working group X doing? Where can I find a working group? Who is in a working group? Are there meetings? Do I need to attend? Do I need any prior experience? Are there resources that would help me get up to speed? Are there labels on the issues for this working group? Who is leading the working group?
    - What working groups might start in future? How can I register my interest in them?
    - What are best practices for contributing? (inspired by: youtu.be/voXVTjwnn-U?t=1862)
- Documenting compiler team practices and policies
  - What is and isn’t the team responsible for?
  - What are the policies are regarding third party crates, crate maintainership, etc.?
  - What are the compiler team’s roadmap and goals for the year?
- Triage tasks
  - Processes for future compatibility warnings

# How can I get involved?
If you are interested in getting involved in this working group, you should try attend a meeting and
introduce yourself or send a message in the Zulip stream. You can be added to the GitHub and Zulip
group for the working group if you are interested in being pinged when there are available tasks.

- **Desired experience level:** Any
- **Relevant repositories:** [`rust-lang/compiler-team`][repo]
- **Zulip stream:** [`#t-compiler/wg-meta`][zulip] on Zulip

[planning]: https://paper.dropbox.com/doc/meta-working-group-planning--AZIyyFu~OaIwneVQkZ_6_T3vAg-09U5endyK7vaoQhaiQ7TI
[repo]: https://github.com/rust-lang/compiler-team
[zulip]: https://rust-lang.zulipchat.com/#narrow/stream/185694-t-compiler.2Fwg-meta

[nikomatsakis]: https://github.com/nikomatsakis
[davidtwco]: https://github.com/davidtwco
[spastorino]: https://github.com/spastorino
