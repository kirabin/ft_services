all: build run

build:
	docker build -t wordpress_image .

run:
	docker run --rm -it -p 80:80 -p 443:443 wordpress_image