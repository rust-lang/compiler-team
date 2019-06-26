# Polonius Working Group
![working group status: active][status]

This working group aims to explore the integration of the so-called
["Polonius analysis"][P] into rustc. Polonius is effectively an "NLL
2.0"-like project, that aims to achieve two goals:

- improve upon the borrow checker algorithm so that it can accept more rust programs
  than it currently does;
- move the core logic of the borrow checker into an independent crate whose behavior
  can be easily tested and specified.
  
The base Polonius algorithm was first introduced in [this
blogpost][intro]. The [Polonius crate][P] has evolved significantly
since then in terms of its implementation details and efficiency, and
one of the goals of the working group is to extend the scope of the
crate to define the full borrow check analysis.

- **Leads:** [@nikomatsakis][nikomatsakis]
- **Meeting Notes:**
    
    - [2019.03.07 Meeting]({{< relref "/docs/working-groups/polonius/minutes/2019.03.07-meeting" >}})

    - [2019.04.23 Meeting]({{< relref "/docs/working-groups/polonius/minutes/2019.04.23-meeting" >}})

    - [2019.04.30 Meeting]({{< relref "/docs/working-groups/polonius/minutes/2019.04.30-meeting" >}})

    - [2019.05.07 Meeting]({{< relref "/docs/working-groups/polonius/minutes/2019.05.07-meeting" >}})

    - [2019.05.14 Meeting]({{< relref "/docs/working-groups/polonius/minutes/2019.05.14-meeting" >}})

    - [2019.05.28 Meeting]({{< relref "/docs/working-groups/polonius/minutes/2019.05.28-meeting" >}})


- **Screencasts**: [YouTube Playlist](https://www.youtube.com/playlist?list=PL85XCvVPmGQitE2CBzf-gERSqeXo59NQG)
- **FAQ:** [FAQ]({{< relref "/docs/working-groups/polonius/FAQ" >}})

[status]: https://img.shields.io/badge/status-active-brightgreen.svg?style=for-the-badge

# How can I get involved?

We are still working on defining our roadmap and carving out
independent tasks. If you'd like to get involved, the best idea right
now is to introduce yourself in our Zulip stream -- and perhaps
consider attending on our triage meetings.

- **Desired experience level:** Any
- **Relevant repositories:** [`rust-lang/rust`][repo] (specifically `src/librustc_mir/borrow_check`), [`rust-lang/polonius`][P], and [`rust-lang/datafrog`][DF]
- **Zulip stream:** [`#t-compiler/wg-polonius`][zulip] on Zulip

[repo]: https://github.com/rust-lang/rust
[DF]: https://github.com/rust-lang/datafrog
[zulip]: https://rust-lang.zulipchat.com/#narrow/stream/186049-t-compiler.2Fwg-polonius
[P]: https://github.com/rust-lang/polonius
[intro]: http://smallcultfollowing.com/babysteps/blog/2018/04/27/an-alias-based-formulation-of-the-borrow-checker/
[regionbp]: http://smallcultfollowing.com/babysteps/blog/2019/01/17/polonius-and-region-errors/
[regionhr]: http://smallcultfollowing.com/babysteps/blog/2019/01/21/hereditary-harrop-region-constraints/

## Are there any resources so I can get up to speed?

nikomatsakis's blog posts offer the best written documentation at the moment:

- [An alias-based formulation of the borrow checker][intro]
- [Polonius and region errors][regionbp]
- [Polonius and the case of the hereditary harrop predicate][regionhr]

## Do I need to attend any meetings?

We have a weekly sync meeting. Check the [compiler team meeting
calendar](../../README.md#meeting-calendar) for the most up to date
time. Attendance is not mandatory but recommended as this can be a
good opportunity to ask any questions and find new issues to work on.

[nikomatsakis]: https://github.com/nikomatsakis