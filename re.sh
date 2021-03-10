kubectl delete -f ./srcs/nginx.yaml
kubectl delete -f ./srcs/metallb.yaml

minikube dashboard &
eval $(minikube docker-env)
docker build -t nginx_image ./srcs/nginx

kubectl apply -f ./srcs/nginx.yaml
kubectl apply -f ./srcs/metallb.yaml