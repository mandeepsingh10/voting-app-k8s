#!/bin/bash

apt install git -y
git clone https://github.com/mandeepsingh10/voting-app-k8s.git

cd voting-app-k8s
kubectl create -f deployments/voting-app-deployment.yaml
kubectl create -f services/voting-app-service.yaml

kubectl create -f deployments/redis-deployment.yaml
kubectl create -f services/redis-service.yaml

kubectl create -f deployments/postgres-deployment.yaml
kubectl create -f services/postgres-service.yaml

kubectl create -f deployments/worker-deployment.yaml

kubectl create -f deployments/result-app-deployment.yaml
kubectl create -f services/result-app-service.yaml

kubectl get pods,svc,deploy

