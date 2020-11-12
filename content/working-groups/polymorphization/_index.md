---
title: Polymorphization Working Group
type: docs
---
# Polymorphization Working Group
![working group status: active][status]

This working group aims to implement an analysis to detect when functions could remain polymorphic
during code generation.

- **Team:** [wg-polymorphization on rust-lang/team][team]

[status]: https://img.shields.io/badge/status-active-brightgreen.svg?style=for-the-badge

## What is the goal of this working group?
This working group aims to accomplish the following:

- Initially, implement an analysis to detect when type parameters are unused in functions, closures
  and methods; and integrate this analysis into the monomorphization infrastructure so that less
  copies of functions are redundantly made (this addresses rust-lang/rust#46477).
- Experiment and investigate extending the analysis to more advanced cases where functions could
  be kept polymorphic. For example, if a function only uses the size of a type parameter, rustc
  could create a copy for each distinct size of type (rather than each type).

# How can I get involved?
There isn't a massive amount of work to be done in parallel relating to polymorphization, but if
you're interested in getting involved then feel free to pop into the Zulip stream.

- **Desired experience level:** Some familiarity with the MIR and substitutions
- **Relevant repositories:** [`rust-lang/rust`][repo]
- **Zulip stream:** [`#t-compiler/wg-polymorphization`][zulip] on Zulip

[repo]: https://github.com/rust-lang/rust
[zulip]: https://rust-lang.zulipchat.com/#narrow/stream/216091-t-compiler.2Fwg-polymorphization

[nikomatsakis]: https://github.com/nikomatsakis
[davidtwco]: https://github.com/davidtwco
[team]: https://github.com/rust-lang/team/blob/master/teams/wg-polymorphization.toml
