---
title: Diagnostics Working Group
type: docs
---
# Diagnostics Working Group
![working group status: active][status]

This working group aims to make rustc better at telling the user
why the compiler isn’t smart enough to understand their code yet.

- **Leads:** [@oli-obk][oli-obk] [@estebank][estebank]
- **Meeting Notes:** [All]({{< relref "/working-groups/diagnostics/NOTES" >}})
- **Meeting Driver Plan:** [On Hackmd](https://hackmd.io/T9yQwLQ0SIOguR1auo3SHQ)
- **FAQ:** [All]({{< relref "/working-groups/diagnostics/FAQ" >}})

[oli-obk]: https://github.com/oli-obk
[estebank]: https://github.com/estebank
[status]: https://img.shields.io/badge/status-active-brightgreen.svg?style=for-the-badge

## What is the goal of this working group?
This working group aims to accomplish the following:

- Make diagnostics emitting independent of the happy code path
- Separate the diagnostics rendering from the compiler so it can be reused by others.

# How can I get involved?
If you are interested in getting involved in this working group, you should introduce yourself
in the Zulip stream. You can be added to the GitHub and Zulip
group for the working group if you are interested in being pinged when there are available tasks.

- **Desired experience level:** Any
- **Relevant repositories:** [`rust-lang/rust`][repo]
    - https://github.com/rust-lang/rust/tree/master/src/librustc_errors
    - https://github.com/rust-lang/rust/blob/master/src/librustc_errors/json.rs
    - https://github.com/rust-lang/rust/tree/master/src/librustc_lint
    - https://crates.io/crates/annotate-snippets
    - https://crates.io/crates/codemap-diagnostic
- **Zulip stream:** [`#t-compiler/diagnostics`][zulip] on Zulip

[repo]: https://github.com/rust-lang/rust
[zulip]: https://rust-lang.zulipchat.com/#narrow/stream/147480-t-compiler.2Fwg-diagnostics

## What if I don't have much time?
If you don't have time to contribute code, consider setting up meetings and frequently pinging
working group members on related issues to discuss or fix them.

## Are there any resources so I can get up to speed?
Not yet.

## Do I need to attend any meetings?
We don't have any meetings yet.