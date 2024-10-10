# Output for Azure VM Public IP
output "azure_vm_public_ip" {
  description = "The public IP address of the Azure VM"
  value       = azurerm_public_ip.public_ip.ip_address
}

# Output for AWS EC2 Public IP
output "aws_ec2_public_ip" {
  description = "The public IP address of the AWS EC2 instance"
  value       = aws_instance.ec2.public_ip
}