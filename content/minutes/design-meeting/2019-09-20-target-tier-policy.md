---
title: Target Tier Policy
type: docs
---
# Target Tier Policy

- [Zulip thread](https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/design.20meeting.202019-09-20)
- Proposal issue: [rust-lang/rust#166](https://github.com/rust-lang/compiler-team/issues/166)
- [Original proposal with history](https://gist.github.com/joshtriplett/40191791541ea2a3d61b7fe1d381a0e7)

# Summary

We should have an official, objective policy for adding new (tier 3) targets,
and for raising targets to tier 2 (with rustup builds) or even tier 1.

Conclusion: Josh to revise policy based on feedback (done, see below) and
subsequently submit as an RFC.

# Motivation

Rust developers regularly implement new targets in the Rust compiler, and
reviewers of pull requests for such new targets would like a clear, consistent
policy to cite for accepting or rejecting such targets. Currently, reviewers

Rust developers regularly ask how they can raise an existing target to tier 2
(and in particular how they can make it available via rustup), and occasionally
ask what it would take to add a new tier 1 target. The Rust project has no
clear policy for target tiers. People not only don't know, they don't know who
to ask or where to start.

(See https://forge.rust-lang.org/platform-support.html for more information
about targets and tiers.)

# Details

Straw proposal for each tier, from simplest to most complex:

## Tier 3 target policy

At this tier, the Rust project provides no official support for a target, so we
place minimal requirements on the introduction of targets.

- No central decision is required to add a new tier 3 target. Reviewers may
  always use their own best judgment regarding the quality of work, and the
  suitability of a target for the Rust project.
- If a reviewer wishes to consult a broader team for additional guidance, they
  should contact the compiler team.
- If a proposed target or target-specific patch substantially changes code
  shared with other targets (not just target-specific code), the reviewer
  should consult the compiler team.
- If the proposer of a target wishes to appeal the rejection of a target, they
  may contact the compiler team.
- Tier 3 targets must use naming consistent with any existing targets; for
  instance, a target for a similar CPU or OS should not gratuitously use an
  inconsistent name for that CPU or OS. Targets should normally use the same
  names as used elsewhere in the broader ecosystem (such as in other
  toolchains), unless they have a very good reason to diverge.
- Tier 3 targets may have unusual requirements to build or use, but must not
  create legal issues for the Rust project or for developers who work on those
  targets.
- Where possible, tier 3 targets may wish to provide documentation for the Rust
  community for how to build and run tests for the platform, ideally using
  emulation.
- Tier 3 targets must not impose burden on the authors of pull requests, or
  other developers in the community, to maintain the target. In particular,
  do not post comments (automated or manual) on a PR that suggests a block on
  the PR based on the target. (A PR author may choose to help with a tier 3
  target but is not required to.)
- Patches adding or updating tier 3 targets must not break any existing target.
- If a tier 3 target shows no signs of activity and has not built for some
  time, and removing it would improve the quality of the Rust codebase, we may
  post a PR to remove it; any such PR will be CCed to people who have
  previously worked on the platform, to check potential interest.

## Tier 2 target policy

At this tier, the Rust project guarantees that a target builds, and will reject
patches that fail to build on a target. Thus, we place requirements that ensure
the target will not block forward progress of the Rust project.

- Any new tier 2 target requires compiler team approval based on these
  requirements.
- In addition, the infrastructure team must approve the integration of the
  target into CI, and the CI-related requirements. This review and approval
  will typically take place in the PR adding the target to CI.
- A tier 2 target must have value to people other than its maintainers.
- Any new tier 2 target must have a designated team of developers on call to
  consult on target-specific build-breaking issues, or if necessary to develop
  target-specific language or library implementation details. (This team should
  in almost all cases have at least 2 developers.)
- The target must not place undue burden on Rust developers not specifically
  concerned with that target. Rust developers may be expected to not
  gratuitously break a tier 2 target, but are not expected to become experts in
  every tier 2 target. and are not expected to provide target-specific
  implementations for every tier 2 target.
- Where possible, tier 2 targets should provide documentation for the Rust
  community for how to build and run tests for the platform, ideally using
  emulation.
- The target development team should not only fix target-specific issues, but
  should use any such issue as an opportunity to educate the Rust community
  about portability to their target, and enhance their documentation of the
  target.
- The target must build reliably in CI.
- Building the target must not take substantially longer than other targets.
- Tier 2 targets must support building on the existing targets used for CI
  infrastructure.
- Tier 2 targets must not impose burden on the authors of pull requests, or
  other developers in the community, to ensure that tests pass for the target.
  In particular, do not post comments (automated or manual) on a PR that
  suggests a block on the PR based on tests failing for the target. (A PR
  author must not break the build of a tier 2 target, but need not ensure the
  tests pass for a tier 2 target, even if notified that they fail.)
- The target development team should regularly run the testsuite for the
  target, and should fix any test failures in a reasonably timely fashion.
- A tier 2 target may be demoted or removed if it no longer meets these
  requirements. Any proposal for demotion or removal will be CCed to people who
  have previously worked on the platform, and will be communicated widely to
  the Rust community before being dropped from a stable release.
- All tier 3 requirements apply.

Note: some tier 2 platforms additionally have binaries built to run on them as
a host (such as `rustc` and `cargo`). Such a platform must meet all the
requirements above, and must additionally get the compiler and infrastructure
team to approve the building of host tools.

## Tier 1 target policy

At this tier, the Rust project guarantees that a target builds and passes all
tests, and will reject patches that fail to build or pass the testsuite on a
target. We hold tier 1 targets to our highest standard of requirements.

- Any new tier 1 target requires compiler team approval based on these
  requirements.
- In addition, the infrastructure team must approve the integration of the
  target into CI, and the CI-related requirements. This review and approval
  will typically take place in the PR adding the target to CI.
- In addition, the release team must approve the long-term viability of the
  target, and the additional work of supporting the target.
- Tier 1 targets must have substantial, widespread interest within the
  developer community, and must serve the ongoing needs of multiple production
  users of Rust across multiple organizations or projects. A tier 1 target may
  be demoted or removed if it becomes obsolete or no longer meets this
  requirement.
- The target must build and pass tests reliably in CI.
- Building the target and running the testsuite for the target must not take
  substantially longer than other targets.
- If running the testsuite requires additional infrastructure (such as systems
  running the target), the target development team shall arrange to provide
  such resources to the Rust project, to the satisfaction and approval of the
  Rust infrastructure team.
- Tier 1 targets must provide documentation for the Rust community for how to
  build and run tests for the platform, using emulation if possible, or
  dedicated hardware if necessary.
- A tier 1 target may be demoted or removed if it no longer meets these
  requirements. Any proposal for demotion or removal will be communicated
  widely to the Rust community, both when initially proposed and before being
  dropped from a stable release.
- All tier 2 requirements apply.
