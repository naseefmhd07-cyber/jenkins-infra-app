# Jenkins & Terraform Automated EC2 Deployment Project

This repository contains the complete code setup for running Infrastructure as Code (IaC) and Application CI/CD pipelines via Jenkins.

## Directory Structure
- `app/`: Sample Node.js Express application and its Dockerfile.
- `terraform/`: Infrastructure code to provision AWS EC2, configure security groups, and auto-install Docker.
- `Jenkinsfile.infra`: Jenkins Declarative Pipeline to validate, plan, approve, and provision the EC2 infrastructure.
- `Jenkinsfile.deploy`: Jenkins Declarative Pipeline to build the app, SSH into the EC2 instance, and deploy the container.

## Prerequisites & Setup
1. **AWS EC2 Key Pair**: Ensure a Key Pair named `jenkins-demo-key` is created in AWS EC2 Console, and download `jenkins-demo-key.pem`.
2. **Jenkins Credentials**:
   - `AWS_ACCESS_KEY_ID`: Secret text containing your AWS access key ID.
   - `AWS_SECRET_ACCESS_KEY`: Secret text containing your AWS secret access key.
   - `ec2-ssh-key`: SSH Username with private key (`username: ec2-user`, private key pasted from `jenkins-demo-key.pem`).
3. **Jenkins Plugins**:
   - Terraform Plugin (Configure tool as `terraform-1.8`)
   - SSH Agent Plugin
   - Credentials Binding Plugin
