variable "ami_value" {
  description = "AMI of EC2 instance"
  default = "ami-0427090fd1714168b"
  type = string
}
variable "instance_type_value" {
  description = "Type of EC2 instance"
  default = "t2.micro"
  type = string
}
variable "key_name_value" {
  description = "SSH key name"
  default = "terraform-key"
  type = string
}
