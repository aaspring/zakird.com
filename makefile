all: build

build:
	git pull
	sudo jekyll build
	chmod -R a+rX
	chmod -r www-data:www-data *
