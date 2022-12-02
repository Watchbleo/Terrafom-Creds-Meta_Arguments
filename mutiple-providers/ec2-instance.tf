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