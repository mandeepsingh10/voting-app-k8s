#!/bin/bash

kubectl delete pod voting-app-pod redis-pod postgres-pod worker-pod result-app-pod
kubectl delete service redis db voting-service result-service
kubectl get pods,svc
