# MIR Optimizations (mir-opt) Working Group
![working group status: active][status]

This working group aims to implement MIR optimizations and do the groundwork necessary to enable
writing MIR optimizations.

- **Leads:** [@oli-obk][oli-obk]
- **Meeting Notes:** [All](NOTES.md)

[status]: https://img.shields.io/badge/status-active-brightgreen.svg?style=for-the-badge

## What is the goal of this working group?
This working group aims to accomplish the following:

- Implement new MIR optimizations
- Refactor the MIR to be more optimizeable

# How can I get involved?
If you are interested in getting involved in this working group, you should introduce yourself
in the Zulip stream. You can be added to the GitHub and Zulip
group for the working group if you are interested in being pinged when there are available tasks.

- **Desired experience level:** Any
- **Relevant repositories:** [`rust-lang/rust`][repo] (specifically `src/librustc_mir/transforms`)
- **Zulip stream:** [`#t-compiler/mir-opt`][zulip] on Zulip

[repo]: https://github.com/rust-lang/rust
[zulip]: https://rust-lang.zulipchat.com/#narrow/stream/189540-t-compiler.2Fwg-mir-opt

## What if I don't have much time?
If you don't have time to contribute code, consider tagging issues in the `rust` repository so
the team can find them.

## Are there any resources so I can get up to speed?
There are some resources available for those interested in contributing to get some background
and context:

- MIR is an intermediate representation used within the compiler. We are looking to transform
  instances of MIR into "better" instances. You can read about the MIR in
  the [relevant rustc-guide chapter](https://rust-lang.github.io/rustc-guide/mir/index.html).

## Do I need to attend any meetings?
We don't have any meetings yet.
