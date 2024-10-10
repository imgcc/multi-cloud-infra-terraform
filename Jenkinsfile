pipeline {
    agent any

    environment {
        TERRAFORM_VERSION = "1.5.0"
        ANSIBLE_VERSION = "2.9.0"
    }

    stages {
        stage('Install Terraform and Ansible') {
            steps {
                script {
                    // Install Terraform
                    sh 'which terraform || curl -o /tmp/terraform.zip https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && sudo unzip /tmp/terraform.zip -d /usr/local/bin/'

                    // Install Ansible
                    sh 'which ansible || sudo apt-get update && sudo apt-get install -y software-properties-common && sudo apt-add-repository --yes --update ppa:ansible/ansible && sudo apt-get install -y ansible=${ANSIBLE_VERSION}'

                    // Install Azure CLI if not installed
                    sh 'which az || curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash'
                }
            }
        }

        stage('Authenticate to Azure') {
            steps {
                script {
                    // Authenticate to Azure using service principal (for automation)
                    sh 'az login --service-principal --username $AZURE_CLIENT_ID --password $AZURE_CLIENT_SECRET --tenant $AZURE_TENANT_ID'
                }
            }
        }

        stage('Terraform Init') {
            steps {
                script {
                    // Initialize Terraform
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                script {
                    // Run Terraform Plan
                    sh 'terraform plan'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                script {
                    // Apply Terraform changes
                    sh 'terraform apply -auto-approve'
                }
            }
        }

        stage('Generate Ansible Hosts File') {
            steps {
                script {
                    // Display generated hosts file
                    sh 'cat hosts'
                }
            }
        }

        stage('Run Ansible Playbook') {
            steps {
                script {
                    // Run Ansible Playbook
                    sh 'ansible-playbook -i hosts ansible-playbook.yml'
                }
            }
        }
    }

    post {
        always {
            // Clean up workspace after execution
            cleanWs()
        }

        success {
            echo 'Pipeline completed successfully!'
        }

        failure {
            echo 'Pipeline failed!'
        }
    }
}