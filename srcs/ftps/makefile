all:
	docker build -t ftps_image . && docker run --rm -it -p 21:21 -p 20:20 ftps_image