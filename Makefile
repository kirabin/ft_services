# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dmilan <dmilan@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/25 11:41:22 by dmilan            #+#    #+#              #
#    Updated: 2021/03/19 11:46:09 by dmilan           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all: m_start

b_install:
	brew install minikube

m_install:
	rm -rf ~/.minikube
	rm -rf ~/goinfre/.minikube
	minikube delete
	brew remove minikube
	brew install minikube
	cd ~
	brew unlink minikube
	brew link minikube
	# mkdir ~/.minikube
	mv ~/.minikube ~/goinfre
	ln -s ~/goinfre/.minikube ~/.minikube
	# minikube dashboard &

m_start:
	bash setup.sh
	minikube dashboard

other_commands:
	kubectl create <deployment> <deployment_name> --image=k8s.gcr.io/echoserver:1.4
	kubectl get <deployments, pods>
	kubectk delete <deployments, pods>
	minikube stop
	minikube delete


	kubectl describe deployment nginx-deployment
	kubectl logs nginx
	kubectl get pods -l app=nginx
	kubectl cluster-info

re:
	bash re.sh

clean:
	kubectl delete -f ./srcs/*.yaml
	kubectl delete --all ingresses
	kubectl delete --all deployments
	kubectl delete --all pods
	kubectl delete --all services
	kubectl delete --all pvc