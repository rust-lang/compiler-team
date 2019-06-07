# 2019.02.19

## TL;DR

- We are still in the "getting organized" phase. Some high priority
  problems related to universes took most of our attention of late.
- We are discussing focusing first on evaluating whether we can
  achieve things in current solver before attempting chalk
  integration.
- Figuring out how to manage multiple streams of "inquiry and work"
  feels like a challenging problem.

## Updates

(Written by nikomatsakis)

**Universe matching video.** We recorded a [video on how universe
matching works]. We need to figure out where to collect said links.

[video on how universe matching works]: https://www.youtube.com/watch?v=iV1Z0xYXkck&feature=youtu.be

**Discussion Meeting.** Related to the previous point, I plan to
schedule a series of recorded video calls examining parts of the
compiler in turn. The focus will initially be on trait-related work.
See the [Regular Design Meetings] topic for more information.

[Regular Design Meetings]: https://rust-lang.zulipchat.com/#narrow/stream/144729-t-compiler.2Fwg-traits/topic/Idea.3A.20Regular.20Design.20Meetings

**Agenda.** We have been discussing how to proceed. Last triage
meeting I proposed starting by having some (recorded) video chats to
dig a bit into two problems (generic associated types, lazy
normalization) and try to investigate how hard it would be to
implement those on the current solver. The idea would be to focus on
unblocking others *before* turning to Chalk integration in full.

**Universes.** We are looking at a number of bugs that have been
reported due to the universe integration PR. We are trying to decide
the best way forward here -- time is running a bit tight! The universe
PR fixed various bugs and moved us to a more solid footing, but it has
also exposed some other problems. The full set of issues looked at
include:

- [#57639]: This is an old bug ([#21974]), but it now applies more often.
- [#46989]: An impl of `impl<A> PartialOrd for fn(A)` can now apply to
  `fn(&u8)`. This was not true before. Having [investigated][], I
  think this is not *obviously* a bug but I remain a bit nervous about
  it and want some time to talk out the full
  ramifications.
- [#58451]: An ICE related to error reporting. I believe this is "just
  an ICE".
- Coherence changes (no issue that I know of): It is no longer legal
  to have an impl like `impl<'a> Foo for fn(&'a u8)` and `impl Foo for
  for<'a> fn(&'a u8)`. This falls out from moving higher-ranked
  constraints into region checking, but was relied on by some folks
  (notably servo). This probably wants a transition period, at least,
  and perhaps a more thorough public discussion.

[investigated]: https://rust-lang.zulipchat.com/#narrow/stream/144729-t-compiler.2Fwg-traits/topic/.2346989.20fn.20pointers.20and.20universes/near/158650807
[#21974]: https://github.com/rust-lang/rust/issues/21974
[#57639]: https://github.com/rust-lang/rust/issues/57639
[#46989]: https://github.com/rust-lang/rust/issues/46989

My current plan is to investigate altering the compiler to restore the old
behavior temporarily, at least, to give us some time to talk this out in more
depth. I think I know how to do this.
