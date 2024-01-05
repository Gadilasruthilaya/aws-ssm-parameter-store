default:
	@rm -rf .terraform
	@git pull
	@terraform init
	@terraform apply -auto-approve

destroy:
	@rm -rf .terraform
	@terraform init -backend-config=state.tfvars
	@terraform destroy -auto-approve