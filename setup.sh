# why define executable in the start of the file
# RED="\e[91m"
# GREEN="\e[92m"
# YELLOW="\e[93m"
# BLUE="\e[94m"
# PURPLE="\e[95m"
# CYAN="\e[96m"
# WHITE="\e[97m"


minikube start --vm-driver=virtualbox --cpu=4
minikube addons enable metallb
minikube addons enable storage-provisioner

./re.sh



# Questions:
# - difference between apply and create?