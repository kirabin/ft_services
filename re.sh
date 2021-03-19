
kubectl delete -f ./srcs/nginx/nginx.yaml
kubectl delete -f ./srcs/metallb/metallb.yaml
kubectl delete -f ./srcs/mysql/mysql.yaml
kubectl delete -f ./srcs/wordpress/wordpress.yaml
kubectl delete -f ./srcs/phpmyadmin/phpmyadmin.yaml
# kubectl delete -f ./srcs/ftps/ftps.yaml

eval $(minikube docker-env)

docker build -t nginx_image ./srcs/nginx
docker build -t wordpress_image ./srcs/wordpress
docker build -t mysql_image ./srcs/mysql
docker build -t phpmyadmin_image ./srcs/phpmyadmin/
# docker build -t ftps_image ./srcs/ftps/ && docker run --rm -it -p 21:21 ftps_image

kubectl apply -f ./srcs/nginx/nginx.yaml
kubectl apply -f ./srcs/metallb/metallb.yaml
kubectl apply -f ./srcs/mysql/mysql.yaml
kubectl apply -f ./srcs/wordpress/wordpress.yaml
kubectl apply -f ./srcs/phpmyadmin/phpmyadmin.yaml
# kubectl apply -f ./srcs/ftps/ftps.yaml