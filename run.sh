#!/usr/bin/env bash

set -e

set +e
  rm -rf .terraform
  rm -rf terraform.tfstate*
set -e

terraform init
terraform apply -auto-approve

rm -rf .terraform

terraform init
terraform apply -auto-approve
