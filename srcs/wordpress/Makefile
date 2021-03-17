all: build run

build:
	docker build -t wordpress_image .

run:
	docker run --rm -it -p 5050:5050 wordpress_image