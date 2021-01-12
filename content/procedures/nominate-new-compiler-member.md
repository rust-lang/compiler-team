---
title: Nominate new compiler team contributor or member
type: docs
---

# Nominate new compiler team contributor or member

This documents the process for nominating, inviting and onboarding new compiler team members or compiler team contributors.

**Note:** [RFC 2689] is the authoritative reference on this topic.

## Nominating new compiler team contributors

1. A team member sends an email to `compiler-private@rust-lang.org` with the name/username of the individual being nominated and a brief explanation of why they are being nominated.

2. Once the decision is made, one of the compiler team co-leads will reach out to the person and see if they are interested in becoming a compiler contributor.

    - It's a good idea to include a brief summary of what this entails and a reference to [RFC 2689] which has all of the details about the expectations and privileges of compiler team contributors.

3. If the person is interested, the compiler team co-lead will do the following steps to complete the nomination:

    - If the person does not already have a `{username}.toml` file in the `team` repo, that file needs to be created for them.

    - Ensure their `{username}.toml` file has an email address they can be reached at for compiler team email conversations.

        - Note: It's a good idea to warn them that this is essentially "public" data since it's stored in plain text in the repo. The mailing lists don't get much spam but even still, some contributors prefer to use a dedicated email address or the "+rust" trick if they're a Gmail user.

        - It might also be a good idea for them to add an email rule to their account allowlisting `@rust-lang.org` emails. Gmail sometimes sorts these messages into the "Promotions" category so they aren't seen.

    - Add them by username to the `compiler-contributors.toml` file in the `teams` folder.

    - Open a PR on the `team` repo tagging both of the compiler team co-leads as well as the individual.

    - After the PR is merged, add them to the `#t-compiler/private` Zulip stream. (The `team` repo does not sync this automatically.)

    - Write a post for the "Inside Rust" blog announcing the change! Tweet for visibility.

## Nominating new compiler team members

1. A team member sends an email to `compiler-private@rust-lang.org` with the name/username of the individual being nominated and a brief explanation of why they are being nominated.

2. Once a decision is reached, one of the compiler-team co-leads will reach out to the person and see if they are interested in becoming a full compiler team member.

      - [RFC 2689] is still relevant as it clearly defines the difference between a compiler team contributor and a compiler team member.

3. If the person is interested, the compiler team co-lead will do the following steps to complete the nomination:

    - Verify their `{username}.toml` file in the `team` repo has a valid email they can be reached at.

    - Remove them from the `compiler-contributors.toml` team and add them to the `compiler.toml` team.

    - Open a PR on the `team` repo tagging both of the compiler team co-leads as well as the individual.

    - Write a post for the "Inside rust" blog announcing the change! Tweet for visibility.

[RFC 2689]: https://rust-lang.github.io/rfcs/2689-compiler-team-contributors.html
