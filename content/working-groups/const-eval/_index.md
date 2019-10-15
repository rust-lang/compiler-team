---
title: Compile-time Function Evaluation (const-eval) Working Group
type: docs
---
# Compile-time Function Evaluation (const-eval) Working Group
![working group status: active][status]

This working group aims to relax the restrictions on what code can be evaluated at compile-time
without introducing unsoundness or increasing compile times.

This is a joint effort with the [lang team][].

- **Leads:** [@oli-obk][oli-obk] and [@RalfJung][]
- **Meeting Notes:** [All]({{< relref "/working-groups/const-eval/NOTES" >}})
- **FAQ:** [FAQ]({{< relref "/working-groups/const-eval/FAQ" >}})
- **Repo:** [const-eval][]

[status]: https://img.shields.io/badge/status-active-brightgreen.svg?style=for-the-badge
[oli-obk]: https://github.com/oli-obk
[@RalfJung]: https://github.com/RalfJung
[lang team]: https://github.com/rust-lang/lang-team
[const-eval]: https://github.com/rust-rfcs/const-eval

## What is the goal of this working group?

This ultimate goal of this working group is to resolve the issues listed in [#57563][]. In the near
term, focus will be on enabling complex control flow in const bodies:

- [#49146][]: "Allow `if` and `match` in constants"
- [#52000][]: "Allow `loop` in constant evaluation"

Simultaneously, this working group will work to specify which operations are legal in a const
context. This includes determining what code is eligible for [promotion][].

[#49146]: https://github.com/rust-lang/rust/issues/49146
[#52000]: https://github.com/rust-lang/rust/issues/52000
[#57563]: https://github.com/rust-lang/rust/issues/57563
[promotion]: https://github.com/rust-rfcs/const-eval/blob/master/promotion.md

# How can I get involved?
If you are interested in getting involved in this working group, you should introduce yourself
in the Zulip stream. You can be added to the GitHub and Zulip
group for the working group if you are interested in being pinged when there are available tasks.

- **Desired experience level:** Any
- **Relevant repositories:** [`rust-lang/rust`][repo] and [`rust-lang/miri`][miri]
- **Zulip stream:** [`#t-compiler/const-eval`][zulip] on Zulip

[repo]: https://github.com/rust-lang/rust
[miri]: https://github.com/rust-lang/miri
[zulip]: https://rust-lang.zulipchat.com/#narrow/stream/146212-t-compiler.2Fconst-eval

## What if I don't have much time?
If you don't have time to contribute code, consider tagging issues in the `rust` repository so
the team can find them.

## Are there any resources so I can get up to speed?
See the [`const-eval`][const-eval] repository for the current rules around const-safety and
promotion.

## Do I need to attend any meetings?
We don't have any meetings yet.
