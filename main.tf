# Terraform Cloud Backend Configuration
terraform {
  backend "remote" {
    organization = "imgc" # Update with your Terraform Cloud organization

    workspaces {
      name = "multi-cloud-infra-terraform" # Update with your Terraform Cloud workspace name
    }
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
}

provider "aws" {
  region = var.aws_region
}

provider "local" {}