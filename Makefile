SHELL := /bin/bash

APP_DIR := app
TF_ENV  := infra/terraform/envs/dev

.PHONY: run test tf-init tf-fmt tf-validate tf-plan tf-apply

run:
	cd $(APP_DIR) && uvicorn main:app --reload --host 0.0.0.0 --port 8080

test:
	cd $(APP_DIR) && pytest -q

tf-init:
	cd $(TF_ENV) && terraform init

tf-fmt:
	terraform fmt -recursive infra/terraform

tf-validate:
	cd $(TF_ENV) && terraform validate

tf-plan:
	cd $(TF_ENV) && terraform plan

tf-apply:
	cd $(TF_ENV) && terraform apply -auto-approve
