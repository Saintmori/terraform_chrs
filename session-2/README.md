![](terraform.png)

# IAAC using Terraform with AWS as the provider.

###  Description
-  This is a simple terraform code that will provision an Ec2 instance in Us-east-1 from type t2.micro
- The link to the AWS platform is below.
- note that, this code only launch an ec2 instance without any key and defult security group.
```
https://aws.amazon.com
```
### Usage
- To quickly install and destory ec2 instance in aws cloud 

### prerequisites
- first make sure you have an AWS account. you can use this link to open an account in AWS.
```
https://portal.aws.amazon.com/billing/signup
```
- git locally installed
- terraform locally installed and AWS credentials are being setup for authentication.

### How to use this code?
- step one: clone the repo
```
git clone https://github.com/Saintmori/terraform-session-october.git
```
- change the directory to Session-2 and run terraform commands.
```
cd session-2
terraform init
terraform plan
terraform apply
```
### contributors
@saintmori

### License