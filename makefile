all: build

build:
	git pull
	sudo jekyll build
	chmod -r www-data:www-data *
