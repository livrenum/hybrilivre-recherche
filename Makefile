.PHONY: build

help:
	@echo "Usage: make <command>"
	@echo "  serve   Runs a development webserver on port 1313"
	@echo "  build   Build the site with minification"
	@echo "  all     Build and deploy the site"

serve:
	hugo serve --disableFastRender

build:
	hugo '--minify'

all:
	make build && ./deploy
