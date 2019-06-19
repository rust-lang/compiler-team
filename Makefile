PHONY: default deps dev

default: dev

deps:
	git submodule update --init

dev:
	hugo server --minify --theme book

compile:
	 hugo -d dist --minify --theme book
