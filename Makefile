default:
	@rm -rf .terraform
	@git pull
	@terraform init
	@terraform apply -auto-approve

destroy:
	@rm -rf .terraform
	@terraform init state.tfvars
	@terraform destroy -auto-approve