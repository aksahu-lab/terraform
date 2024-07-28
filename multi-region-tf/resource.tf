resource "aws_instance" "test-vm-east1" {
    ami = var.ami_use1_value
    instance_type = var.instance_type
    subnet_id = var.subnet_use1_id 
    key_name = "terraform-key"
    provider = aws.us-east-1
    #tags = "test-vm-east1"
}
resource "aws_instance" "test-vm-west2" {
    ami = var.ami_usw2_value
    instance_type = var.instance_type
    subnet_id = var.subnet_usw2_id 
    key_name = "tf-usw2-key"
    provider = aws.us-west-2
    #tags = "test-vm-west2"
}
