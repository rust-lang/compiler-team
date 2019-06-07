# Self-Profile Working Group
![working group status: active][status]

This working group aims to improve the `-Z self-profile` `rustc` option which can aid in profiling the compiler during compilation.

- **Leads:** [@michaelwoerister][michaelwoerister] and [@wesleywiser][wesleywiser]
- **Meeting Notes:** [All]({{< relref "/docs/working-groups/self-profile/NOTES" >}})

[status]: https://img.shields.io/badge/status-active-brightgreen.svg?style=for-the-badge

## What is the goal of this working group?
This working group aims to accomplish the following:

- Improve the `-Z self-profile` option in `rustc` which dumps various events into a file.
- Implement additional tools to explore, visualize and understand the data contained in the output file.

## What is the current status?
The working group is working on creating a "minimum viable product" of the self-profiling feature. 
Progress is tracked in https://github.com/rust-lang/rust/issues/58967.

## How can I get involved?
If you are interested in getting involved in this working group, you should try attend a meeting and
introduce yourself or send a message in the Zulip stream. You can be added to the GitHub and Zulip
group for the working group if you are interested in being pinged when there are available tasks.

- **Desired experience level:** Any
- **Relevant repositories:** [`rust-lang/rust`][repo] (specifically `src/librustc/util/profiling.rs`)
- **Zulip stream:** [`#t-compiler/wg-self-profile`][zulip] on Zulip

[repo]: https://github.com/rust-lang/rust
[zulip]: https://rust-lang.zulipchat.com/#narrow/stream/187831-t-compiler.2Fwg-self-profile

## Do I need to attend any meetings?
The Self-Profile WG doesn't currently have recurring, scheduled meetings.
However, anyone is welcome to attend any WG meetings.

[michaelwoerister]: https://github.com/michaelwoerister
[wesleywiser]: https://github.com/wesleywiser


# Notes and FAQs

- [Notes]({{< relref "/docs/working-groups/self-profile/NOTES" >}})
- [FAQ]({{< relref "/docs/working-groups/self-profile/FAQ" >}})