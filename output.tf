output "ec2-public-ip1" {
    value = aws_instance.test-vm-east1.public_ip
}
output "ec2-public-ip2" {
    value = aws_instance.test-vm-east1.public_ip
}
