#!/bin/sh
minikube start
minikube addons enable ingress
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/ha/install.yaml
sleep 60
echo "La clave de admin es: $(kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d)"
kubectl port-forward svc/argocd-server -n argocd 8080:443