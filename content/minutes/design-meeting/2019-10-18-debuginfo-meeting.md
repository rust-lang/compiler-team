---
title: Debugging Support
type: docs
---

# Debugging Support in the Compiler

 * [Zulip stream][] or read on the [Zulip archive][]


[Zulip stream]: https://rust-lang.zulipchat.com/#narrow/stream/131828-t-compiler/topic/design.20meeting.202019-10-18/near/178475282
[Zulip archive]: https://zulip-archive.rust-lang.org/131828tcompiler/13652designmeeting20191018.html

## The problems

https://github.com/rust-lang/rust/issues/64343

We have bugs with debuginfo that are causing broad pain for people who use x.py test, but we do not have dedicated developers who own maintenance of debugger support.

https://github.com/rust-lang/rust/pull/60826

We have Pull Requests to improve our debuginfo support, but we do not have dedicated developers who own maintenance of debugger support.

Q: Are we willing/able to maintain debuginfo stuff Q: if we don't, then can we afford to keep these tests?

In short, as Niko said: "we need help to maintain this or we may have to remove it"

----

The overarching goal was to discuss how we can get a sustainable story than the particular issues themselves, though that may also be a topic of discussion.

 * what steps can we do to recruit folks
 * what are some thresholds and timelines where upon we consider more drastic action
 * what might that drastic action be :)


## The meeting

some of the main points from the discussion:

 * a common refrain: most of the compiler developers know next to nothing about how the debugger support scripts are implemented. So we are not in a good position to maintain the debugger support scripts.
 * @eddyb has ideas for how we might try to shift functionality out of the debugger support scripts and instead "handled it through traits and codegen" (?)
 * debuginfo tests are effectively unmaintained because everyone has their own ways of ignoring the failures
   * We should add // ignore to the problematic tests in the short term (but make sure to associate any such ignore with a rust-lang/rust issue).
 * we might want to split the tests into debuginfo and debugger-pretty or something; the debuginfo stuff we must keep working, while debugger-pretty are more "nice to have" bits of functionality
