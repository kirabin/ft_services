
kubectl delete -f ./srcs/nginx/nginx.yaml
kubectl delete -f ./srcs/metallb/metallb.yaml
kubectl delete -f ./srcs/mysql/mysql.yaml
kubectl delete -f ./srcs/wordpress/wordpress.yaml
kubectl delete -f ./srcs/phpmyadmin/phpmyadmin.yaml
kubectl delete -f ./srcs/ftps/ftps.yaml
kubectl delete -f ./srcs/influxdb/influxdb.yaml
# kubectl delete -f ./srcs/telegraf/telegraf.yaml

eval $(minikube docker-env)

docker build -t nginx_image			./srcs/nginx
docker build -t wordpress_image		./srcs/wordpress
docker build -t mysql_image			./srcs/mysql
docker build -t phpmyadmin_image	./srcs/phpmyadmin/
docker build -t ftps_image			./srcs/ftps/
docker build -t influx_image		./srcs/influxdb/
# docker build -t telegraf_image		./srcs/telegraf/

docker images

kubectl apply -f ./srcs/metallb/metallb.yaml
kubectl apply -f ./srcs/nginx/nginx.yaml
kubectl apply -f ./srcs/mysql/mysql.yaml
kubectl apply -f ./srcs/wordpress/wordpress.yaml
kubectl apply -f ./srcs/phpmyadmin/phpmyadmin.yaml
kubectl apply -f ./srcs/ftps/ftps.yaml
kubectl apply -f ./srcs/influxdb/influxdb.yaml
# kubectl apply -f ./srcs/telegraf/telegraf.yaml
