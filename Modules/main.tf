provider "aws" {
  region = "us-east-1"
}

module "ec2-instance" {
  source = "./ec2-module"
  ami_value = "ami-0427090fd1714168b"
  instance_type_value = "t2.micro"
  key_name_value = "terraform-key"
}
