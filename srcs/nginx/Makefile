all: build run

build:
	docker build -t nginx_server .

run:
	docker run --rm -it -p 80:80 -p 443:443 nginx_server