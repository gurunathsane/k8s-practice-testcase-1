#!/bin/bash
#set -e
set -x

echo "Setting up your cluster"

cd terraform_scrips
terraform init
terraform apply -auto-approve
cd ..

echo "Getting kubeconfig file"
gcloud container clusters get-credentials my-cluster --zone europe-west1-b

echo "initialize your user as a cluster-admin"
kubectl create clusterrolebinding cluster-admin-binding \
  --clusterrole cluster-admin \
  --user $(gcloud config get-value account) || echo "role-binding already exists"

cd nginx-ingress-controller
echo "Creting nginx ingress controller"
echo "Applying mandetory things"
kubectl apply -f mandatory.yaml
echo "Applying cloud specifig things"
kubectl apply -f cloud-generic.yaml
cd ..


cd guest-book-app
for localEnv in staging production;
do
	echo "setting up guest-book-app in ${localEnv} env"
	kubectl create ns ${localEnv} || echo "namespace ${localEnv} already exists"
	kubectl apply -n ${localEnv} -f redis-master-slave.yaml
	kubectl apply -n ${localEnv} -f guestbook-frontend.yaml
done
cd ..


echo "setting up ingress"
kubectl apply -f ingress/ingress.yaml

LB_IP=$(kubectl get svc -n ingress-nginx -o json | jq .items[].status.loadBalancer.ingress[].ip --raw-output)
echo "Do the following entries in your hosts file"
echo "${LB_IP} staging-guestbook.proengg.io"
echo "${LB_IP} guestbook.proengg.io"

echo "Now visit staging-guestbook.proengg.io or guestbook.proengg.io"

