## Using Terraform to deploy ressounces in Dev, UAT and Prod Environments located in 3 different regions with diferrent credentials
## this could apply to multi-clouds, multi-accounts multi-regions or multi-users environment 
## First we need to configure the profiles in .aws file.
aws configure --profile Dev-Account ( provide access key, secret access key, region, and output)
aws configure --profile UAT-Account ( provide access key, secret access key, region, and output)
aws configure --profile Prod-Account ( provide access key, secret access key, region, and output)

## then update provider.tf template and for each provider defile alias ( as shown below)

provider "aws" {
  region = "us-east-1"
  profile = "default"
}

# Dev Provider
provider "aws" {
  region = "us-east-1"
  profile = "Dev-Account"
  alias = "Dev-Env"
}

# UAT Provider
provider "aws" {
  region = "us-east-2"
  profile = "UAT-Account"
  alias = "UAT-Env"
}

# Prod Provider
provider "aws" {
  region = "us-west-1"
  profile = "Prod-Account"
  alias = "Prod-Env"
}

## at the level of the ec2-instance.tf provide Account tag for each environment, and pass provider argument right after count 
## ( while typing provider it will prompt the diferrent aliases and you can just pick the one corresponding to ur environment ): 

# Development VM instance
resource "aws_instance" "Dev-vm" {
  ami           = "ami-0b0dcb5067f052a63"
  instance_type = "t3.micro"
  count = 1 # create 3 similar EC2 instances
  provider = aws.Dev-Env
  tags = {
    Name = "Dev-vm"
    Account = "Dev-Account"
    }
}

# UAT VM instance
resource "aws_instance" "UAT-vm" {
  ami           = "ami-0beaa649c482330f7"
  instance_type = "t2.micro"
  count = 2 # create 3 similar EC2 instances
  provider = aws.UAT-Env
  tags = {
    Name = "UAT-vm"
    Account = "UAT-Account"
    }
}

# Production VM instance
resource "aws_instance" "Prod-vm" {
  ami           = "ami-0f5e8a042c8bfcd5e"
  instance_type = "t2.micro"
  count = 3 # create 3 similar EC2 instances
  provider = aws.Prod-Env
  tags = {
    Name = "Prod-vm"
    Account = "Prod-Account"
    }
}