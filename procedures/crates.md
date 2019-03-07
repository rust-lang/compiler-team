# Third-party and out-of-tree crates
This document describe the guidelines for creating out-of-tree crates for use in the compiler and
using third-party crates within the compiler. These guidelines were originally discussed at the
Rust All Hands 2019 by the compiler team and others; and then at the
[01/03/2019 steering meeting][steering_meeting].

[steering_meeting]: https://github.com/rust-lang/compiler-team/blob/master/minutes/steering-meeting/2019.03.01.md

## Out-of-tree crates
One of the primary goals of this policy is to ensure that there is consistency in how out-of-tree
crates used in the compiler are set up (at least, those maintained by the compiler team and living
in `rust-lang`) and that the experience is uniform across `rust-lang/rust` and these crates.

### When should parts of the compiler be extracted into an out-of-tree crate?
This is left to the discretion of compiler team members but should be discussed with the rest of
the team, either through raising the question at the weekly triage meeting or asynchronously using
an FCP in an issue. If the crate is a product of a working group, there should already be agreement
within the working group that an out-of-tree crate is suitable.

When considering creating an out-of-tree crate, it is worth balancing how general the crate should
be with the increased maintenance burden that this may bring if widely used.

### Where should compiler crates live?
Out-of-tree compiler crates should be hosted in the `rust-lang` organization - this simplifies
integration with external infrastructure tooling and will inherit existing team permissions on
GitHub. It should be made clear in any documentation that the compiler team and any appropriate
working groups are responsible for the crate. It is not recommended to start with a prototype in
another organization or personal repository.

### Can existing out-of-tree crates from personal accounts or other organizations be transferred?
Yes, this is encouraged. In order to do this, discuss this with the team and familiarize yourself
with [the GitHub documentation for repository transfers][repo_transfers] and then arrange to perform
the transfer. Once a transfer is complete, a redirect will exist in the original account or
organization and this will conflict with the names of any new forks of the transferred repository -
an email to GitHub is required to resolve this.

[repo_transfers]: https://help.github.com/en/articles/transferring-a-repository

### Who owns these crates?
It is desired that a compiler team member or working group has loose ownership over a crate so
that there are clear owners who are responsible for making sure that new versions are published and
that pull requests are reviewed.

### What should these crates be named?
Crate naming will be discussed when new out-of-tree crates are proposed to the compiler team.

Crate naming will differ on a case-by-case basis. Crates that are inherently tied to the
compiler would benefit from a name that is prefixed with `rustc_`. This is an indicator of how
stable the crate may be to prospective users. Other crates, which are more general-purpose, will
have names that are disentangled from the compiler.

### Are there any limitations on the review policy for out-of-tree crates?
Generally, the working groups and team members that are primarily free to maintain the crate using
whatever practices are best suited to their group, however, there are some limitations so that there
is some uniformity across the compiler and out-of-tree crates:

- Every compiler team member must be able to review and approve PRs.
- Where possible, only active participants in the crate (or related working group) need be on the
  highfive rotation for the crate.
- Working group members (or regular contributors to the crate) who cannot approve PRs on rustc can
  approve PRs to the crate.
- Major pull requests should have multiple reviewers.

### What is required of an out-of-tree crate?
It is required that out-of-tree crates must:

- Be dual-licensed with Apache 2.0 and MIT (as the compiler is) or
  [any other license][licenses] accepted by tidy, unless otherwise appropriate (ports of code
  from other project, etc).
- Abide by Rust's code of conduct.
- Specify that the crate is maintained by the Rust compiler team and any appropriate working groups.
    - In particular, this should detail the expected level of maintenance and stability for any
      prospective users.
    - This should also link to the working group details in this repository.
- Be added to the list at the bottom of this page.
- Follow semantic versioning.
- Use `@bors` and `@rust-highfive`.

### Is there a requirement for community infrastructure for an out-of-tree crate?
There is no requirement that community infrastructure (such as Zulip servers/streams) be created for
out-of-tree crates. This may be desirable if an out-of-tree crate gains a large community of
contributors and users, but otherwise, the working group or compiler team streams should be used
initially.

Linkifiers for auto-linking to issues and PRs on the primary Rust Zulip server can be added on
request.

### Are there any recommendations for working with out-of-tree crates?
Recommendations for working with out-of-tree crates will be documented in the rustc-guide, see
[rust-lang/rustc-guide#285][guide_issue] for progress.

[licenses]: https://github.com/rust-lang/rust/blob/master/src/tools/tidy/src/deps.rs#L10-L19
[guide_issue]: https://github.com/rust-lang/rustc-guide/issues/285

---

In summary, the process for establishing an out-of-tree crate is as follows:

1. Where appropriate, discuss and confirm the need within the working group for the out-of-tree
   crate.
2. Consult with the compiler team to confirm the need for the out-of-tree crate and kick-off the
   naming bikeshed.
3. Create a new repository in the `rust-lang` organization (permissions should be available for all
   compiler team members).
4. Add a README describing the intended purpose of the crate, which team and working group are
   responsible (link to their page in this repository) and the intended level of maintenance and
   stability.

   > This crate is developed and maintained by the [Rust compiler team](..) for use within
   > `rustc`, in particular, it is the responsibility of the
   > [`.template`](../working-groups/.template) working group. This crate [will have regular
   > breaking changes and provides no stability guarantees|is intended to remain stable and have
   > limited breaking changes].
5. Include the [LICENSE-APACHE][apache] and [LICENSE-MIT][mit] files from `rust-lang/rust`.
6. Include or link the [CODE_OF_CONDUCT][coc] file from `rust-lang/rust`.
7. Consult with the infrastructure team to set up `@bors` and `@rust-highfive` and a process for
   publishing under the "The Rust Project Developers" crates.io account.
8. Perform any initial development required before integration with rustc.
9. Publish initial version, following semantic versioning.
10. Add the crate as a dependency to the appropriate in-tree crate and start using.

[apache]: https://github.com/rust-lang/rust/blob/master/LICENSE-APACHE
[coc]: https://github.com/rust-lang/rust/blob/master/CODE_OF_CONDUCT.md
[mit]: https://github.com/rust-lang/rust/blob/master/LICENSE-MIT

## Third-party crates
It is sometimes desirable to use the functionality of an existing third-party crate in the compiler.

### When can a third-party crate be added as a compiler dependency?
It is desirable that a third-party crate being included in the compiler is well-maintained and that,
where possible, a compiler team member is added as a maintainer. You should consulting with the
rest of the compiler team before making this decision.

### What about third-party dependencies to out-of-tree crates?
The same policies apply to all compiler-team-maintained crates used in the compiler.

## List of out-of-tree crates
This section contains the list of existing out-of-tree, compiler team-maintained crates:

  - [`rust-lang-nursery/chalk`](https://github.com/rust-lang-nursery/chalk/)
  - [`rust-lang-nursery/polonius`](https://github.com/rust-lang-nursery/polonius/)
