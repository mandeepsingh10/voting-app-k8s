#!/bin/bash

apt install git -y
git clone https://github.com/mandeepsingh10/voting-app-k8s.git

cd voting-app-k8s
kubectl create -f pods/voting-app-pod.yaml
kubectl create -f services/voting-app-service.yaml

kubectl create -f pods/redis-pod.yaml
kubectl create -f services/redis-service.yaml

kubectl create -f pods/postgres-pod.yaml
kubectl create -f services/postgres-service.yaml

kubectl create -f pods/worker-pod.yaml

kubectl create -f pods/result-app-pod.yaml
kubectl create -f services/result-app-service.yaml

kubectl get pods,svc

