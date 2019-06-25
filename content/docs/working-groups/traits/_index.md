# Traits Working Group

- **FAQ:** [FAQs]({{< relref "/docs/working-groups/traits/FAQ" >}})

- **Meeting Notes:**
       - [Notes 2019.02.19]({{< relref "/docs/working-groups/traits/NOTES" >}})
       - [Triage 2019.02.24]({{< relref "/docs/working-groups/traits/minutes/triage-2019-02-24" >}})
       - [Triage 2019.03.04]({{< relref "/docs/working-groups/traits/minutes/triage-2019-03-04" >}})
       - [Triage 2019.03.11]({{< relref "/docs/working-groups/traits/minutes/triage-2019-03-11" >}})


# Scope and purpose

The **traits** working group is dedicated to improving the trait
system implementation in rustc. This working group is a collaboration
between the [lang team] and the compiler team. We have a number of inter-related
goals:

- designing new trait-related language features;
- documenting and specifying the semantics of traits in Rust today; and,
- improving the trait solver implementation in rustc.

[lang team]: https://github.com/rust-lang/lang-team/

A big part of this work is transitioning the compiler to use a
[Chalk-style] solver, but along the way we hope to make targeted fixes
to the existing solver where needed.

[Chalk-style]: https://github.com/rust-lang-nursery/chalk



# How to participate

## Sprints

The traits working group is organizing its activity as a series of 6-week sprints.
This is experiment that may change over time.

At the start of each sprint, we identify a set of goals and work towards
them. During the sprint, we have a [current sprint doc][sprint] that
lists out the goals. During the weekly triage meeting, we try to update
the doc with information on our progress. So if you're curious to know
what we're up to right now, check out the doc for our current sprint.

[sprint]: https://paper.dropbox.com/doc/2019.03.18-2019.04.29--AZqhzp6EUY7mDvJyaR3W9tb_Ag-5gix1dpUSHKirVcEww5iw

## Chat forum

On [the rust-lang Zulip][z], in [the `#wg-traits` stream][s].

[z]: https://rust-lang.zulipchat.com/
[s]: https://rust-lang.zulipchat.com/#narrow/stream/144729-wg-traits

## Weekly triage meeting

There is a weekly triage meeting which you will find on the [compiler
meeting calendar][c]. The purpose of this meeting is to take stock of
where we are and figure out what to do next. The meeting takes place
on [Zulip][z] in a dedicated topic of the [the `#wg-traits`
stream][s].

[c]: https://github.com/rust-lang/compiler-team#meeting-calendar

## Dedicated repository

Documents related to the wg-traits working group are stored on a
dedicated repository, [rust-lang/wg-traits]. This repository contains
meeting minutes, past sprints, as well as draft RFCs and other
documents.

[rust-lang/wg-traits]: https://github.com/rust-lang/wg-traits