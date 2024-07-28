# terraform
Learn-Terraform

Life cycle:
terraform init
terraform plan -var-file = "us-east-1.tfvars"
terraform apply -var-file = "us-east-1.tfvars"

terraform plan -var-file = "us-west-2.tfvars"
terraform apply -var-file = "us-west-2.tfvars"

terraform plan -var="instance_type=t2.large"

terraform destroy
