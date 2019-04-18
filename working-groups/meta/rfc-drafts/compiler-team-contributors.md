- Feature Name: (fill me in with a unique ident, `my_awesome_feature`)
- Start Date: (fill me in with today's date, YYYY-MM-DD)
- RFC PR: [rust-lang/rfcs#0000](https://github.com/rust-lang/rfcs/pull/0000)
- Rust Issue: [rust-lang/rust#0000](https://github.com/rust-lang/rust/issues/0000)

# Summary
[summary]: #summary

Introduce an intermediate level of member for the compiler team, the
**compiler team contributor**.

# Motivation
[motivation]: #motivation

This proposal is part of a larger effort to introduce more structure
into the compiler team's makeup. This structure should make it easier
to become a part of the compiler team, by laying out a clear path to
membership and by offering more official roles.

## Background: Access to infrastructure

In addition to recognition, the levels in this document control access
to other bits of our infrastructure. It is worth spending some time
reviewing those bits of infrastructure.

### bors r+ privileges

The bors bot has a central list of folks that have "r+" privileges.
These are people who can leave comments instructing bors to land a PR.

While the bors permissions are very crude (you either have privileges
or you don't), we have historically asked people to use their
permissions in specific ways (self-policed).

One reason that it is convenient to have r+ privileges is a purely
administrative one: they allow you to re-approve PRs after they have
been rebased, which is a common need. (Typically this is done by
writing `@bors r=username`, where `username` is the name of the
original reviewer.)

Apart from these administrative re-reviews, the expectation is that
people with r+ privileges will begin by reviewing only simple PRs from
parts of the compiler that they understand well. As their knowledge
grows, they can approve more and more complex PRs. 

### highfive queue

One great way to help move the compiler along and to gain experience
in its internals is to be added to the highfive queue. People on this
queue are automatically assigned to do reviews for fresh
PRs. Obviously, it only makes sense to be added to the queue if you
have r+ privileges.

Often, it makes sense to be added to the queue *even if* you are not
that familiar with the compiler. This is because it lets you do
initial reviews of PRs, thus gaining experience with lots of parts of
the compiler. If you don't feel like you fully understood the PR, then
-- after your initial review -- you can then re-assign the PR to
someone more senior.

### rust-lang org membership

There are a number of things that you can't do in GitHub unless you
are a member of the GitHub organization. Typically, one becomes a
member of the organization by being added to a team, and these teams
in turn are granted privileges to repositories in the organization.
Most notably:

- you cannot be assigned to issues unless you have at least *read* access to a repository;
- you cannot modify labels without *write* access;
- you cannot be a member of a *team*, which means you cannot be addressed via some
  alias like `@rust-lang/compiler-team`;
- you do not get the little "member" badge appearing next to your name when you comment.

The last point is potentially important: by being made a member of the
org, you are to some extent representing that org, as you are
visibility identified as a member.  These can be important in terms of
the code of conduct, as we wish for representatives of rust-lang to
take extra care in their public interaction. In particular, this
implies we might not want to allow **anyone** to make themselves a
member of the org.

### triagebot

The triagebot is an "upcoming" piece of infrastructure that should allow any GitHub user
to make some changes to issues on rust-lang repositories. In particular, one would be
able to instruct the triagebot to do the following:

- adjust labels on issues
- assign oneself to the issue

Because the triagebot can be used by anyone, and not just org members, assigning
works as follows:

- the issue is *officially* assigned to the triagebot (as far as
  Github is concerned, that is)
- the issue header is edited to indicate that it is assigned to the
  user in question

This is a bit less good than being assigned to the issue as an org
member, since it means that your username and picture do not appear
next to the issue, but it's still pretty decent and should suffice for
most purposes.

# Guide-level explanation
[guide-level-explanation]: #guide-level-explanation

## The path to membership

People will typically start as a **working group participant,** which
is basically somebody who has come to work on something for the first
time. They don't know much about the compiler yet and have no
particular privileges. They are assigned to issues using the triagebot
and (typically) work with a mentor or mentoring instructions.

### Compiler team contributors
  
Once a working group participant has been contributing regularly for
some time, they can be promoted to the level of a **compiler team
contributor** (see the section on [how decisions are made][hdam]
below). This title indicates that they are someone who contributes
regularly.

It is hard to define the precise conditions when such a promotion is
appropriate. Being promoted to contributor is not just a function of
checking various boxes. But the general sense is that someone is ready
when they have demonstrated three things:

- "Staying power" -- the person should be contributing on a regular
  basis in some way. This might for example mean that they have
  completed a few projects.
- "Independence and familiarity" -- they should be acting somewhat
  independently when taking on tasks, at least within the scope of the
  working group. They should plausibly be able to mentor others on simple
  PRs.
- "Cordiality" -- contributors will be members of the organization and
  are held to a higher standard with respect to the [Code of
  Conduct][CoC]. They should not only obey the letter of the CoC but
  also its spirit.
  
[CoC]: https://www.rust-lang.org/policies/code-of-conduct  

Being promoted to contributor implies a number of privileges:

- Contributors have r+ privileges and can do reviews (they are
  expected to use those powers appropriately, as discussed
  previously).
- Contributors are members of the organization so they can modify
  labels and be assigned to issues.
- Contributors will be listed on the [compiler expert map](https://github.com/rust-lang/compiler-team/blob/9d8c387ddbd01ced14eaab480cddb00c2d723f36/experts/MAP.md),
  which lists folks who are familiar with each area of the compiler.
- Contributors are listed on the rust-lang.org web page and invited to
  the Rust All Hands.
  
It also implies some obligations (in some cases, optional obligations):

- Contributors will be asked if they wish to be added to highfive rotation.
- Contributors are held to a higher standard than ordinary folk when
  it comes to the [Code of Conduct][CoC].

### Compiler team members
  
As a contributor gains in experience, they may be asked to become a
**compiler team member**. This implies that they are not only a
regular contributor, but are actively helping to shape the direction
of the team or some part of the compiler (or multiple parts).

- Compiler team members are the ones who select when people should be
  promoted to compiler team contributor or to the level of member.
- Compiler team members are consulted on FCP decisions (which, in the
  compiler team, are relatively rare).
- Working groups must always include at least one compiler team member
  as a lead (though groups may have other leads who are not yet full
  members).
  
### How promotion decisions are made
[hdam]: #how-promotion-decisions-are-made

Promotion decisions (from participant to contributor, and from
contributor to member) are made by having an active team member send
an e-mail to the alias `compiler-private@github.com`. This e-mail
should include:

- the name of the person to be promoted
- a draft of the public announcement that will be made

Compiler-team members should send e-mail giving their explicit assent,
or with objections. Objections should always be resolved before the
decision is made final. E-mails can also include edits or additions for the
public announcement.

To make the final decision:

- All objections must be resolved.
- There should be several explicit e-mails in favor of adding the
  person, including the team lead.
- The nominator (or some member of the team) should reach out to the person
  in question and check that they wish to join.
  
If they do, then the announcement can be posted to internals, and the
person added to the team repository.

### Not just code

It is worth emphasizing that becoming a contributor or member of the
compiler team does not necessarily imply writing PRs. There are a wide
variety of tasks that need to be done to support the compiler and
which should make one eligible for membership. Such tasks would
include organizing meetings, participating in meetings, bisecting and
triaging issues, writing documentation, working on the
rustc-guide. The most important criteria for elevation to contributor,
in particular, is **regular and consistent** participation. The most
important criteria for elevation to member is **actively shaping the
direction of the team or compiler**.

## Alumni status

If at any time a current contributor or member wishes to take a break
from participating, they can opt to put themselves into alumni status.
When in alumni status, they will be removed from Github aliases and
the like, so that they need not be bothered with pings and messages.
They will also not have r+ privileges. **Alumni members will however
still remain members of the GitHub org overall.**

People in alumni status can ask to return to "active" status at any
time.

People in alumni status are still members of the team at the level
they previously attained and they may publicly indicate that, though
they should indicate the time period for which they were active as
well.

## Automatic alumni status after 6 months of inactivity

If a contributor or a member has been inactive in the compiler for 6
months, then we will ask them if they would like to go to alumni
status. If they respond yes or do not respond, they can be placed on
alumni status.  If they would prefer to remain active, that is also
fine, but they will get asked again periodically if they continue to
be inactive.

# Drawbacks
[drawbacks]: #drawbacks

Why should we *not* do this?

# Rationale and alternatives
[rationale-and-alternatives]: #rationale-and-alternatives

This RFC represents, effectively, the smallest extension to our structure
that could possibly work. One could imagine more elaborate structures along a few dimensions.

**More senior levels of membership.** One concern is that the set of
**members** of the compiler team may grow too large for things like
FCP (where each person must check their box) to be feasible. This
could be resolved by moving away from FCP-based decision making (which
is rarely used in the compiler anyhow), but it may also be worth
considering another level of membership (e.g., a **senior
member"). Senior members could be used for FCP-level decisions, which
would presumably be relatively rare. At present there is a kind of
implicit amount of "seniority" amongst members, where the opinions of
people who have been around for longer are obviously given great
weight, but formalizing this could have value.

**Specialists and organizers.** Right now, we don't draw a distinction
between people who write code and those who (for example) perform more
organizational roles (as of the time of this writing, we don't have
any members who perform more organizational roles exclusively, but
that is a likely future development). There will definitely be
contributors who would rather not participate in the more
organizational aspects of running the team, but would prefer to simply
write code. As the team gets more and more organized, it seems likely
that we may want to recognize this distinction, just to avoid things
like pinging folks with organizational questions when they are not
interested in that. But we could also address this by growing more
kinds of groups within the set of members, such that one rarely pings
the full set of members.

# Prior art
[prior-art]: #prior-art

It would be good to include some survey of how other open source
organizations manage themselves here.

# Unresolved questions
[unresolved-questions]: #unresolved-questions

**Are "contributor" and "member" the best names to use?** The term
"member" is used pretty universally amongst subteams to refer to
"decision makers", so I wanted to stick to it, but I was tempted by
other terms like "member" and "senior member".

**What set of privileges should be retained in alumni status?** For
example, should you still have r+ privileges? I'm inclined to say no.

**What level of inactivity merits one for alumni status?** The RFC
presently says 6 months, but that number was pulled out of a
(metaphorical) hat.

# Future possibilities
[future-possibilities]: #future-possibilities

In the future, it would be good to add an "active mentorship" plan for
helping people move from contributor to full member. This idea is
presently filed as [rust-lang/compiler-team#56][].

[rust-lang/compiler-team#56]: https://github.com/rust-lang/compiler-team/issues/56

To make more explicit room for non-coding contributors, we should
consider allowing contributors and members to set a "subtitle"
describing their role in the project. This idea is presently filed as
[rust-lang/compiler-team#64][].

[rust-lang/compiler-team#64]: https://github.com/rust-lang/compiler-team/issues/64
