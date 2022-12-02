## Not need to hard code and define credentials in the template but instead run these commands:
export AWS_ACCESS_KEY_ID="your aws access key id"
export AWS_SECRET_ACCESS_KEY="your secret access key"
export AWS_REGION="your region"

## Then perform Terraform deployment process
terraform init
terraform validate
terraform plan
terraform apply --auto-approve
terraform destroy

# commands:
export AWS_ACCESS_KEY_ID="AKIAYNNK5HCLL3G6XZWU"  
  export AWS_SECRET_ACCESS_KEY="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"
  export AWS_REGION="us-east-1"
  echo $AWS_ACCESS_KEY_ID
  echo $AWS_SECRET_ACCESS_KEY
  echo $AWS_REGION
  cd C:\Users\user\Documents\JJTech-AWS-Projects-Script\Infrastructure-as-Code\Terraform\Terraform-day-1\Environment-variables
  cd ..
  cd Environment-variables/
  clear
  ls
  terraform init
  terraform validate
  terraform plan
  terraform apply --auto-approve
  terraform destroy
  