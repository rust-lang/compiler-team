# Steering meeting

The "steering meeting" is a weekly meeting dedicated to planning and
high-level discussion. The meeting operates on a repeating schedule:

- Week 1: Planning
- Week 2: Technical or non-technical discussion
- Week 3: Technical or non-technical discussion
- Week 4: Non-technical discussion

The first meeting of the 4-week cycle is used for **planning**. The
primary purpose of this meeting is to **select the topics for the next
three meetings**. The topics are selected from a set of topic
proposals, which must be uploaded and available for perusal before the
meeting starts. The planning meeting is also an opportunity to check
on the "overall balance" of our priorities.

The remaining meetings are used for design or general discussion.
Weeks 2 and 3 can be used for **technical** or **non-technical**
discussion; it is also possible to use both weeks to discuss the same
topic, if that topic is complex. **Week 4 is reserved for
non-technical topics**, so as to ensure that we are keeping an eye on
the overall health and functioning of the team.

## Announcing the schedule

After each planning meeting, the topics for the next three weeks will
be posted on the README.md of the main repository and also sent to a
dedicated internals thread.

## Examples of good candidates for discussing at the steering meeting

Here are some examples of possible technical topics that would be
suitable for the steering meeting:

- A working group has an idea to refactor the HIR to make some part of their
  job easier. They have sketched out a proposal and would like feedback.
- Someone has encountered a problem that is really hard to solve with
  the existing data structures. They would like feedback on a good
  solution to their problem.
- Someone has done major refactoring work on a PR and they would like
  to be able to explain the work they did and request review.

Steering meetings are also a good place to discuss other kinds of proposals:
  
- A proposal to move some part of the compiler into an out-of-tree crate.
- A proposal to start a new working group.

Note that a steering meeting is **not** required to create a new
working group or an out-of-tree crate, but it can be useful if the
proposal is complex or controversial, and you would like a dedicated
time to talk out the plans in more detail.

## Criteria for selection

When deciding the topics for upcoming meetings, we must balance a number of things:

- We don't want to spend time on design work unless there are known
  people who will implement it and support it; this includes not only
  the "main coder" but also a suitable reviewer.
- We don't want to take on "too many" tasks at once, even if there *are* people to
  implement them.
- We also don't want to have active projects that will be "stepping on
  each others' toes", changing the same set of code in deep ways.

## Meetings are not mandatory

It is perfectly acceptable to choose *not* to schedule a particular
slot. This could happen if (e.g.) there are no proposals available or
if nothing seems important enough to discuss at this moment.  Note
that, to keep the "time expectations" under control, we should
generally stick to the same 4-week cycle and simply opt to skip
meetings, rather than (e.g.) planning things at the last minute.

## Adding a proposal

Proposals can be added by opening an issue on the [compiler-team
repository][ct issues]. There is an issue template for meeting proposals that
gives directions. The basic idea is that you prepare your proposal in
a hackmd/gist/hackmd/document based on [this template][template] and then
link to that in the issue, along with a few other details. **This
format is meant to be lightweight:** Proposals are generally not
expected to be a lot of work to produce. Accepted proposals will be
added to the [proposals] directory (and linked to from the actual
minutes).

[ct]: https://github.com/rust-lang/compiler-team
[ct issues]: https://github.com/rust-lang/compiler-team/issues
[proposals]: /proposals/
[template]: /proposals/_template.md

### Expectations for a technical proposal

Technical proposals in particular should include enough detail that
those experienced with the compiler can generally understand the
plan. We should be able to figure out roughly how much work this idea
would be to implement and which people would be most important to have
in the discussion.

For example, it would not be enough to say "experiment with a new
hybrid bitfield format for spans" by itself. It is also not enough to
just describe the format. It *would* be enough to describe the format
and try to list out key parts of the compiler that would have to be
changed, and what complications might arise.

For larger designs, it's a good idea to come with an initial proposal
early on that sketches out the shape. You can then come back with more
detailed proposals as the work proceeds.

### Expectations for a non-technical proposal

**The requirements for non-technical proposals are somewhat looser.**  A
few sentences or paragraphs may well suffice, if it is sufficient to
understand the aims of the discussion.

## Frequently asked questions

**What happens if there are not enough proposals?** As noted above,
meetings are not mandatory. If there aren't enough proposals in some
particular iteration, then we can just opt to not discuss anything.