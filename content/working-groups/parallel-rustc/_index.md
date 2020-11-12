---
title: Parallel-rustc Working Group
type: docs
---
# parallel-rustc Working Group
![working group status: active][status]

- **Team:** [wg-parallel-rustc on rust-lang/team](https://github.com/rust-lang/team/blob/master/teams/wg-parallel-rustc.toml)
- **Meeting Notes:** [All]({{< relref "/working-groups/parallel-rustc/NOTES" >}})
- **Minutes:**
    - [2019.05.10]({{< relref "/working-groups/parallel-rustc/minutes/2019.05.10.md" >}})
- **FAQ:** [FAQ]({{< relref "/working-groups/parallel-rustc/FAQ" >}})

[Zoxc]: https://github.com/Zoxc
[aturon]: https://github.com/aturon
[status]: https://img.shields.io/badge/status-active-brightgreen.svg?style=for-the-badge

## What is the goal of this working group?
This working group aims to accomplish the following:

- Finish, optimize, and test the implementation of parallel compilation to an extent
  that allows making it the default.
- Produce solid documentation of how parallel evaluation works, how it is
  implementated, and what things it might affect in the [rustc-dev-guide][rustc-dev-guide].

[rustc-dev-guide]: https://rustc-dev-guide.rust-lang.org/

# How can I get involved?
If you are interested in getting involved in this working group, you are welcome to
introduce yourself in the Zulip stream. You can be added to the GitHub and Zulip
group for the working group if you are interested in being pinged when there are available tasks.

- **Desired experience level:** Any
- **Relevant repositories:** [`rust-lang/rust`][repo]
- **Zulip stream:** [`#t-compiler/wg-parallel-rustc`][zulip] on Zulip

[repo]: https://github.com/rust-lang/rust
[zulip]: https://rust-lang.zulipchat.com/#narrow/stream/187679-t-compiler.2Fwg-parallel-rustc

## What if I don't have much time?
If you don't have time to contribute code but you do compile your own compiler,
the consider setting `parallel-compiler = true` in your `config.toml`. If you
find a bug, we'd love it if you could file an issue.

## Are there any resources so I can get up to speed?
There are some resources available for those interested in contributing to get some background
and context:

- Zoxc's [introductory post][zoxc-internals-post] in the _internals_ forum.
- More to come...

[zoxc-internals-post]: https://internals.rust-lang.org/t/parallelizing-rustc-using-rayon/6606
