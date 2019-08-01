# Compiler Team
This repository contains a static site that details the procedures, policies, working groups,
planning documents and minutes.

## Getting Started
You'll need to install [Hugo](https://github.com/gohugoio/hugo#choose-how-to-install) to build the
website locally, you can then run the following commands to set the website up:

```
git clone git@github.com:rust-lang/compiler-team.git
git submodule update --init
hugo server --minify
```

To generate a version for distribution, run `hugo --minify` and use the `public` directory.
