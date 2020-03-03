#!/usr/bin/env bash

set -e

terraform init
terraform apply -auto-approve

rm -rf .terraform

terraform init
terraform apply -auto-approve
