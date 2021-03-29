RED="\e[91m"
GREEN="\e[92m"
YELLOW="\e[93m"
BLUE="\e[94m"
PURPLE="\e[95m"
CYAN="\e[96m"
WHITE="\e[97m"


# minikube start --vm-driver=virtualbox
minikube start --vm-driver=virtualbox --cpus=4 --memory=4G --disk-size=50G
minikube addons enable metallb
minikube addons enable storage-provisioner

./re.sh



# Questions:
# - difference between apply and create?