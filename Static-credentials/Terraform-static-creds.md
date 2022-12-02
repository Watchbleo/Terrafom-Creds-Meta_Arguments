## Update the provider.tf file with valid access key and secret access key creddentials as well as region.

provider "aws" {
  region     = "us-west-2"
  access_key = "my-access-key"
  secret_key = "my-secret-key"
}

## then perform Terraform deployment process
terraform init
terraform validate
terraform plan
terraform apply --auto-approve
terraform destroy 

## commands:
aws s3 ls
  503  cd Infrastructure-as-Code/Terraform/
  504  ls
  505  cd Terraform-day-1/Static-credentials/
  506  ls -al
  507  terraform init
  508  terraform validate
  509  terraform plan
  510  terraform apply
  511  terraform destroy