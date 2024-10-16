# multi-cloud-infra-terraform

<table>
  <tr>
    <th>File Name</th>
    <th>Description</th>
  </tr>
  <tr>
    <td><code>main.tf</code></td>
    <td>Main Terraform configuration file</td>
  </tr>
  <tr>
    <td><code>variables.tf</code></td>
    <td>Variables for cloud infrastructure</td>
  </tr>
  <tr>
    <td><code>outputs.tf</code></td>
    <td>Outputs from the Terraform run</td>
  </tr>
  <tr>
    <td><code>azure.tf</code></td>
    <td>Azure-specific infrastructure setup</td>
  </tr>
  <tr>
    <td><code>aws.tf</code></td>
    <td>AWS-specific infrastructure setup</td>
  </tr>
  <tr>
    <td><code>ansible-playbook.yml</code></td>
    <td>Ansible playbook for post-provisioning</td>
  </tr>
  <tr>
    <td><code>Jenkinsfile</code></td>
    <td>CI/CD pipeline for Jenkins</td>
  </tr>
  <tr>
    <td><code>README.md</code></td>
    <td>Documentation</td>
  </tr>
  <tr>
    <td><code>LICENSE</code></td>
    <td>License information</td>
  </tr>
</table>


# Automated Multi-Cloud Infrastructure with Terraform

This project demonstrates the automation of provisioning and managing infrastructure across multiple cloud providers (Azure and AWS) using Terraform. The project also incorporates Jenkins for CI/CD and Ansible for post-provisioning configuration.

## Features

- Automated provisioning of resources on **Azure** and **AWS**
- **Terraform** as Infrastructure as Code (IaC) tool for managing multi-cloud environments
- **Jenkins** for Continuous Integration/Continuous Deployment (CI/CD) pipeline
- **Ansible** for post-provisioning configuration management
- Scalable, reusable Terraform code for infrastructure deployment

## Tools Used

- **Azure**: Resource groups, virtual networks, storage accounts, etc.
- **AWS**: EC2 instances, S3, VPC, etc.
- **Terraform**: Automating cloud infrastructure provisioning
- **Ansible**: Post-provisioning configuration management
- **Jenkins**: CI/CD pipeline for automated infrastructure deployment

## Project Structure

- `main.tf`: The entry point for Terraform, which calls other modules and manages the overall infrastructure.
- `azure.tf`: Terraform configuration for provisioning resources in Microsoft Azure.
- `aws.tf`: Terraform configuration for provisioning resources in AWS.
- `variables.tf`: Stores variable declarations used throughout the Terraform configuration.
- `outputs.tf`: Defines the output values from Terraform, such as IP addresses, resource names, etc.
- `ansible-playbook.yml`: An Ansible playbook for post-provisioning configuration tasks.
- `Jenkinsfile`: Jenkins pipeline configuration for automating Terraform runs and Ansible tasks.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed on your local machine or CI/CD server
- AWS and Azure accounts with proper credentials and access keys
- [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html) installed
- Jenkins for running the CI/CD pipeline

## Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/yourusername/multi-cloud-infra-terraform.git
cd multi-cloud-infra-terraform