variable "ami_use1_value" {
    description = "The AMI value for the EC2 instance"
    type = string
    default = "ami-0427090fd1714168b"
}
variable "ami_usw2_value" {
    description = "The AMI value for the EC2 instance"
    type = string
    default = "ami-074be47313f84fa38"
}

variable "instance_type" {
    description = "The instance type for the EC2 instance"
    type = string
    default = "t2.micro"
}

variable "subnet_use1_id" {
    description = "Subnet of the EC2 instances"
    type = string
    default = "subnet-05388ece6f370cf65"
}

variable "subnet_usw2_id" {
    description = "Subnet of the EC2 instances"
    type = string
    default = "subnet-0f808da60d83fbe40"
}

variable "key_use1_value" {
    description = "Key name of the EC2 instance"
    type = string
    default = "terraform-key"
}
variable "key_usw2_value" {
    description = "Key name of the EC2 instance"
    type = string
    default = "tf-usw2-key"
}
