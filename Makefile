# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dmilan <dmilan@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/25 11:41:22 by dmilan            #+#    #+#              #
#    Updated: 2021/04/02 10:46:02 by dmilan           ###   ########.fr        #
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
	mv ~/.minikube ~/goinfre
	ln -s ~/goinfre/.minikube ~/.minikube

m_start:
	bash setup.sh
	minikube dashboard