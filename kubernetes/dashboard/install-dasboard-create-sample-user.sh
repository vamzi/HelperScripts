#!/bin/bash
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.3.1/aio/deploy/recommended.yaml && \
 kubectl apply -f https://raw.githubusercontent.com/vamzi/HelperScripts/main/kubernetes/dashboard/admin-user.yaml && \
 kubectl apply -f https://raw.githubusercontent.com/vamzi/HelperScripts/main/kubernetes/dashboard/admin-user-role.yaml && \
 kubectl -n kubernetes-dashboard get secret $(kubectl -n kubernetes-dashboard get sa/admin-user -o jsonpath="{.secrets[0].name}") -o go-template="{{.data.token | base64decode}}"
