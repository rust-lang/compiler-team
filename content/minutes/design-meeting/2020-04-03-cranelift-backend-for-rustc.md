---
title: 2020-04-03 Cranelift backend for rustc
type: docs
---

# Cranelift backend for rustc

You can also read the [complete discussion in our zulip-archive](https://zulip-archive.rust-lang.org/131828tcompiler/01241designmeeting20200403compilerteam257.html).

[Meeting Proposal](https://github.com/rust-lang/compiler-team/issues/257)

[Pre-meeting details and agenda outline](https://hackmd.io/@bjorn3/HJL5ryFS8)

## Overview of the Cranelift backend

[Cranelift](https://github.com/bytecodealliance/wasmtime/tree/master/cranelift) is a code generation backend written in Rust which is under development for use in WebAssembly compilers.
As such, it could potentially improve compilation times in `rustc` because it is optimized for efficiently generating code rather than generating efficient code.

Over the past ~1.5 years, [@bjorn3](https://github.com/bjorn3) has been working on writing a Cranelift-based code generation backend for `rustc`: [`rustc_codegen_cranelift`](https://github.com/bjorn3/rustc_codegen_cranelift) or `cg_cranelift` for short.
It is currently complete enough to compile many programs and is usually faster at compiling them than the regular LLVM backend.

The main goal of this project is to build an alternative codegen backend that can be used for faster, non-optimized (debug) builds.

`rustc` has support for runtime-pluggable backends via the unstable `-Zcodegen-backend=/path/to/dylib` flag.
`cg_cranelift` is developed in a separate repository from the Rust project, so it uses this flag to plug into `rustc`.
`cg_cranelift` also takes advantage of an internal `rustc` library called `rustc_codegen_ssa` which tries to be a backend-agnostic code generation support library but some parts of it are still very LLVM-like.

## Next steps

At this time, we want to help increase the support `cg_cranelift` gets but it isn't a top priority for us currently.
The eventual goal seems to be first-class support for `cg_cranelift` alongside our existing LLVM backend but that won't happen for a while so we can afford to take small, measured steps in the meantime.

A few things we would like to do now:

- Continue refactoring `rustc_codegen_ssa` to be less LLVM-like and allow `cg_cranelift` to re-use more of the code.

- Bring in `cg_cranelift` to the `rust` repo (probably via `git-subtree`) and require it to build during CI.
  - This is similar to the support we give to tools like clippy or miri.

- Add a way in our testing infrastructure to mark tests as reliant on a specific codegen backend and annotate existing tests that require LLVM.

- Add a way to manually run tests with `cg_cranelift` to Rustbuild (aka `x.py`).

We may also want to do these soon but we need additional discussion:

- Run tests in `cg_cranelift` mode and notify if they failed (but don't gate CI on it).

- Form a working group related to `cg_cranelift`.
