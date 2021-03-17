all: build run

build:
	docker build -t phpmyadmin_image .

run:
	docker run --rm -it -p 5000:5000 phpmyadmin_image