# AWS Variables
variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "aws_ami" {
  description = "AWS AMI ID for the EC2 instance"
  default     = "ami-0c55b159cbfafe1f0" # Ubuntu 20.04 LTS
}

variable "aws_instance_type" {
  description = "Instance type for AWS EC2"
  default     = "t2.micro"
}

# Azure Variables
variable "azure_location" {
  description = "Azure location"
  default     = "East US"
}

variable "azure_vm_size" {
  description = "Azure VM size"
  default     = "Standard_B1s"
}