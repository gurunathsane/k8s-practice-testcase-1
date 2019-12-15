#!/bin/bash
set -e
set -x

echo "cleaning up things"

kubectl delete ns staging production ingress-nginx

echo "removing cluster"
cd terraform_scrips/
terraform destroy -auto-approve
cd ..

echo "Cleaned up everything"