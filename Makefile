PHONY: default deps dev

default: dev

deps:
	git submodule init
	git submodule update

dev:
	hugo server --minify --theme book

compile:
	 hugo -d docs --minify --theme book
