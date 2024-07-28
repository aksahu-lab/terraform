provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "this" {
  ami                     = "ami-04a81a99f5ec58529"
  instance_type           = "t2.micro"
  subnet_id               = "subnet-05388ece6f370cf65"
  key_name                = "terraform-key"
}
