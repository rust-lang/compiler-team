# Static web page for Rust Compiler Team

This repository contains a static web page created with Hugo 

Static Web Page for the Rust Compiler Team
This repository contains a static web page created with [Hugo](https://gohugo.io/) using the [Book Theme](https://themes.gohugo.io/hugo-book/)

## Getting Started 

In order to run this project you need to have already installed:

Hugo v0.55.6

## Run the website with the following commands:

Update the Hugo Theme: 

```
  git submodule update --init
```

Generate the web site:

```
  hugo -d dist --minify --theme book
```

Run the web locally:
```
  hugo server --minify --theme book
```

  