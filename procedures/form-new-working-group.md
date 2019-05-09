# Forming a new working group

So, you would like to form a working group?

## Step 0. What *is* a working group?

Working groups are the basic way that the compiler team tracks what is
going on. **If you are doing some sort of task that the compiler team
will want to track over time, then it makes sense to form a working
group**, even if you don't plan to be getting a more people involved.

**The compiler team regularly checks in on the progress for each active
working group.** So every working group should always have at least one
person who attends the compiler team triage meetings and is willing to
produce those regular updates.

## Step 1. Propose the working group

**TBD** -- ironically, we haven't *quite* decided what the procedure
is for this!  For now, a good idea is to hop on to #t-compiler on [the
Zulip][cp] and open up a new topic to discuss your idea. Or,
alternatively, join a meeting and leave a few comments.

[cp]: ../about/chat-platform.md

A good goal for this process is to try and identify a small number of
**achievable deliverables**. It will be easiest to manage a working
group if you have relatively clear, finite goals. Don't worry if you
seem to be tackling an "infinite" problem space -- set some initial
goals within that problem space. If, after you achieve those, you wish
to continue, you can always add fresh goals or (maybe better) form a
new working group.

It's also good to identify an initial set of **group leads** -- the
leads are the people who are driving the project forward overall. It's
best if you have 2 or 3 leads who are exciting about the project,
including at least one person from the compiler team, but there aren't
strict rules here. See below for a few more details.

## Step 2. Figure out key information

You need to decide the following:

**Who are the leads?** The leads are the people who are ultimately
responsible for ensuring that the working group is making progress and
for reporting on that progress to the compiler team and community as a
whole. Basically, they are the people who are **driving** the project
forward.  **The set of leads can also change over time.** Often, as
new people join, they may start to play a leadership role, which is
great!

Leads often do the organizational work for the WG:

- scheduling meetings
- summarizing progress from the meetings into reports
- reporting to the compiler team

but these jobs can (and should, where possible) be delegated amongst
the team as well.

When possible, we prefer to have 2 or 3 leads per WG. 1 lead is ok,
but not recommended, as it can be stressful. While not strictly
required, typically at least one lead should be a full member of the
compiler team.

**Will you have a regular meeting?** If so, when? You can always
change this later, of course. Many working groups opt for a weekly
meeting held on Zulip.

**Are you willing to do the work?** Serving as a working group lead
typically means not only writing code, but also helping to do the
planning and serving as a mentor to participants. It can be a lot of
work sometimes! But it's very rewarding.

## Step 3. Setting things up

The basic steps to setup a working group are as follows:

- **A stream on Zulip:** contact someone on [#t-compiler][cp].
- **A 'user-group' on Zulip:** For most working groups, we create a
  [Zulip][cp] "user group", which is basically an alias that people
  can be added to for easy notifications.
- **A team in the github org:** Some groups create a team in the github org.
  You can then add working group participants into this GH team and give the team
  permissions on the rust repository or other repositories. Note that only `rust-lang`
  organization members can be added to the group and being part of a working group is
  not enough reason to add people to the organization right now.
- **Updating this repository:** This repository serves as the central home
  for working groups, so it needs to be updated. Make the following changes and
  then open a PR against the repository (make sure to leave a note in `#t-compiler`,
  as these PRs can be easily overlooked):
  - Add the working group to the table in the [main
    README][README]. Feel free to put N/A for any column that doesn't
    seem to apply.
  - Add a subdirectory to the [`working-groups`] directory. You do
    this by copying the [`.template`][template] directory to a
    directory of your own and modifying its contents as appropriate.
    Feel free to remove sections if they don't seem to apply: many
    working groups start out with relatively little structure but
    define it early on.
- **Add an entry to the compiler team calendar:** If you have a regular meeting,
  ping somebody on `#t-compiler`[cp] to add an entry to the compiler team calendar.
- Add a file to the [`rust-lang/team`][team_repo] repository. Only working group leads should be
  listed and a link to their directory in this repository should also be included. See the
  traits working group [as an example][team_repo_example]. This will ensure that the working groups
  are listed on the website.
- Add a check-in for your working group to the [compiler-team meeting check-in list](check_in)

[team_repo]: https://github.com/rust-lang/team
[team_repo_example]: https://github.com/rust-lang/team/blob/master/teams/wg-traits.toml

[check_in]: ../about/triage-meeting.md
[README]: ../README.md
[template]: ../working-groups/.template
