terraform {
  required_version = "1.3.4"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.39.0"
    }
  }
}

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