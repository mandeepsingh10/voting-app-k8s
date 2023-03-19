#!/bin/bash

kubectl delete deploy voting-app-deploy redis-deploy postgres-deploy worker-deploy result-app-deploy
kubectl delete service redis db voting-service result-service
kubectl get pods,svc,deploy
