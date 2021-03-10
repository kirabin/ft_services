# why define executable in the start of the file
RED="\e[91m"
GREEN="\e[92m"
YELLOW="\e[93m"
BLUE="\e[94m"
PURPLE="\e[95m"
CYAN="\e[96m"
WHITE="\e[97m"

minikube start --vm-driver=virtualbox
minikube addons enable metallb
#access kubernetes dashboard running within minicube cluster
# & — is for it to run in bg
minikube dashboard &
eval $(minikube docker-env)
docker build -t nginx_image ./srcs/nginx

# creates deployments according to yaml files
# kubectl create -f ./srcs

kubectl apply -f ./srcs/nginx.yaml
kubectl apply -f ./srcs/metallb.yaml
# difference between apply and create?