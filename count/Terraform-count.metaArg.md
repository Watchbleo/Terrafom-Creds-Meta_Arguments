## this is Terraform deployment startegy to create multiple resources using count meta-argument.
using shared credntial as authentication method update provider.tf folder:
provider "aws" {
  region = "us-east-1"
  profile = "default"
}

As well as ec2-instance.tf file to add count argument

resource "aws_instance" "Development-vm" {
  ami           = "ami-0b0dcb5067f052a63"
  instance_type = "t3.micro"
  count = 3 # create 3 similar EC2 instances

  tags = {
    Name = "Dev-vm"
    }
}