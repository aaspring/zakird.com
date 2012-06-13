all: build

build:
	git pull
	jekyll --no-future --no-server --no-auto
