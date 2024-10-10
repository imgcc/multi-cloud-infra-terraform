resource "local_file" "ansible_inventory" {
  filename = "${path.module}/hosts"
  content  = <<EOT
[webservers]
azure_vm ansible_host=${azurerm_public_ip.public_ip.ip_address} ansible_user=azureuser
aws_ec2 ansible_host=${aws_instance.ec2.public_ip} ansible_user=ubuntu
EOT
}