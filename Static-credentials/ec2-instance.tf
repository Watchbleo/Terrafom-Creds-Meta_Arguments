resource "aws_instance" "Development-vm" {
  ami           = "ami-0b0dcb5067f052a63"
  instance_type = "t3.micro"

  tags = {
    Name = "Dev-vm"
    }
}
