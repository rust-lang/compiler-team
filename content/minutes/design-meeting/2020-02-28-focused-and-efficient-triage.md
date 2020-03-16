---
title: 2020-02-28 focused and efficient triage
type: docs
---

# Focused and Efficient Triage

- [Meeting proposal](https://github.com/rust-lang/compiler-team/issues/247)
- [Pre-meeting notes](https://hackmd.io/5theN85oRS6QvyYPZt-vew)
- [Zulip meeting thread](https://zulip-archive.rust-lang.org/131828tcompiler/36846designmeeting20200228.html)

The goal of the meeting was to discuss the idea of creating a
**pre-triage working group**, the tasks we need to do and who should be
doing them. The motivation is that (a) a lot of work for our current
triage process is falling on @pnkfelix and (b) there is a kind of lack
of clarity around our goals, how we use our labels, etc.

## Things we need to do

- Monitor and identify "critical bugs" that are not making progress
- For critical bugs not making progress, find someone to fix
- Making general quality improvements and enhancements (i.e., "fixing non-critical bugs")
- Ensuring deferred things are picked up again (e.g., future compatibility warnings)
- Processing new issues, ensuring labels are up to date, identifying bugs that are out of date or have been fixed

## Typical flow for an issue

* Issue gets filed
* Release team applies labels
    * area labels, team labels
* If bisection, mcve needed:
    * tag with needs-bisection, needs-mcve
    * cc "Cleanup crew"
* In some cases:
    * directly prioritize or send to the right place if it seems clear
    * otherwise, nominate for compiler team meeting
* Release team nominates for compiler team to further process
    * also cc folks to bisect 
    * (usually ICE), usually includes needs-bisection and needs-mcve
* Compiler team triage group analyzes and figures out which things apply
    * Critical bugs:
        * Tag with P-critical
    * Needs team discussion:
    * Delegation:
        * Should we cc 

## Proposal

- We should have two distinct triage groups compiler and release
  - T-release/triage does try to "classify" bugs before it goes to t-compiler
  - T-compiler/triage wg should be deciding if bugs are critical (potential release blocker) or not
- We would need to tag critical bugs P-critical
  - That's a key area of focus
  - Those are potential release blockers

## T-compiler/triage WG scope

- Process I-nominated issues and process those into categories, critical, needs team discussion, delegate)
  - The main focus should be to identify new P-critical bugs.
- Revisit the set of all P-critical bugs to double check that they have logged progress.
- Prepare key highlights to guide the main weekly meeting

## Charter for T-compiler/triage WG

* Processing 'nominations' and routing bugs to folks who can fix them
* Identifying *critical* bugs and monitoring them to ensure they are making progress
* Identifying the agenda for compiler team triage meetings
    * Critical issues that are not making progress
    * Issues where bugs are nominated for needing wider discussion
        * Ideally, crystallize
* Tracking deferred things and ensuring they are picked up again
    * Future compatibility warnings
