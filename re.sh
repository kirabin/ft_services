kubectl delete -f ./srcs/nginx/nginx.yaml
kubectl delete -f ./srcs/metallb/metallb.yaml
kubectl delete -f ./srcs/mysql/mysql.yaml
kubectl delete -f ./srcs/wordpress/wordpress.yaml

# minikube dashboard &
eval $(minikube docker-env)
docker build -t nginx_image ./srcs/nginx
docker build -t mysql_image ./srcs/mysql
docker build -t wordpress_image ./srcs/wordpress

kubectl apply -f ./srcs/nginx/nginx.yaml
kubectl apply -f ./srcs/metallb/metallb.yaml
kubectl apply -f ./srcs/mysql/mysql.yaml
kubectl apply -f ./srcs/wordpress/wordpress.yaml