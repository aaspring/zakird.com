all: build

build:
	git pull
	jekyll build
	chmod -R a+rX _site
