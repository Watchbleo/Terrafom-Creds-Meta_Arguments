## Check .aws file to confirm the config and credentials file are there:
from root directory 
ls -al
cd .aws/
ls
cat config  (to view region, and output )
cat credentials ( to view access key and secret access key)

## in the provider.tf file update the provider creds with the path to your config and credentials files ( source: https://registry.terraform.io/providers/hashicorp/aws/latest/docs):
provider "aws" {
  shared_config_files      = ["~/.aws/config"]
  shared_credentials_files = ["~/.aws/creds"]
  profile                  = "default"
}

# Then perform the commands in the shared credentials folder:
terraform init
terraform validate
terraform plan
terraform apply --auto-approve
terraform destroy


