Create Jenkins Manually on EC2 Instance [Ec2 should be deployed using Terraform]

1. Prerequisites
AWS Account: Ensure you have an AWS account.
Terraform Installed: Install Terraform on your local machine.
AWS CLI Installed: Optionally, install the AWS CLI for managing AWS services.
IAM User: Create an IAM user with programmatic access and attach policies for EC2, VPC, and IAM permissions.

2. Terraform Setup for EC2 Instance
Create Terraform Configuration Files:
main.tf: Define provider, AWS resources like EC2 instance, security groups, and IAM roles.
variables.tf: Define variables used in your Terraform configurations, such as AWS region, instance type, etc.
outputs.tf: Specify output variables to get useful information post-deployment, like the public IP of the EC2 instance.

Define AWS Provider and EC2 Resource:
Specify the AWS region and the IAM user credentials.
Define an EC2 instance resource, selecting an AMI suitable for Jenkins (e.g., an Ubuntu AMI) and the instance type.

Security Group:
Create a security group for Jenkins, opening port 8080 for Jenkins web UI and port 22 for SSH access.

Key Pair:
Generate an SSH key pair and specify it in the EC2 instance resource for SSH access.

3. Deploy EC2 Instance with Terraform
Initialize Terraform: Run terraform init to initialize the working directory.
Plan the Deployment: Execute terraform plan to review the actions Terraform will perform.
Apply Configuration: Deploy the resources with terraform apply.

4. Install Jenkins on EC2 Instance
SSH into EC2 Instance: Use the SSH key to connect to the instance.

Install Jenkins:
Update the package repository.
Install Java (Jenkins requires Java).
Download and install Jenkins.
Start the Jenkins service.

5. Initial Setup
After installing Jenkins on your EC2 instance, you need to perform the initial setup:

Access Jenkins Web Interface:
Open a web browser and navigate to http://<EC2-Instance-IP>:8080.
Replace <EC2-Instance-IP> with the actual public IP address of your EC2 instance.

Unlock Jenkins:
Upon first access, Jenkins will ask for an admin password.
Retrieve this password by SSHing into your EC2 instance and running sudo cat /var/lib/jenkins/secrets/initialAdminPassword.
Enter the password in the Jenkins setup wizard to unlock Jenkins.

Install Suggested Plugins:
Choose the option to install suggested plugins. This will install a set of commonly used plugins, which includes security and user management plugins.

Create an Admin User:
After plugin installation, you'll be prompted to create an admin user. Fill in the details as required.