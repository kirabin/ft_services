
kubectl delete -f ./srcs/nginx/nginx.yaml
kubectl delete -f ./srcs/metallb/metallb.yaml
kubectl delete -f ./srcs/mysql/mysql.yaml
kubectl delete -f ./srcs/wordpress/wordpress.yaml
kubectl delete -f ./srcs/phpmyadmin/phpmyadmin.yaml

eval $(minikube docker-env)
# export DOCKER_TLS_VERIFY="1"
# export DOCKER_HOST="tcp://192.168.99.109:2376"
# export DOCKER_CERT_PATH="/Users/dmilan/.minikube/certs"
# export MINIKUBE_ACTIVE_DOCKERD="minikube"

docker build -t nginx_image ./srcs/nginx
docker build -t wordpress_image ./srcs/wordpress
docker build -t mysql_image ./srcs/mysql
docker build -t phpmyadmin_image ./srcs/phpmyadmin/

kubectl apply -f ./srcs/nginx/nginx.yaml
kubectl apply -f ./srcs/metallb/metallb.yaml
kubectl apply -f ./srcs/mysql/mysql.yaml
kubectl apply -f ./srcs/wordpress/wordpress.yaml
kubectl apply -f ./srcs/phpmyadmin/phpmyadmin.yaml