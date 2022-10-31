# Local Terraform Module 
# 1. Local module => the module is in your file system
# 2. remote module => module is in remote system as SCM, http url, terraform cloud, terraform enterprise
module "s3" {
  ###########This is where the child module is##############    
  source = "/home/ec2-user/terraform-session-october/modules/s3" # the path where your child module exists, in this case local file system
  #########Variables ############ if you don't specify , it will go and pick up the default one.
  env         = "dev"
  bucket_name = "terraform-module-test-bucket-mori"
  bucket_acl  = "private"
}
module "ec2" {
  source         = "/home/ec2-user/terraform-session-october/modules/ec2"
  env            = "dev"
  instance_type  = "t2.micro"
  ami            = "ami-09d3b3274b6c5d4aa"
  s3_bucket_name = module.s3.s3_bucket_name
}
#refrenct to child module outputs-> module.module_name.output_name
# How to refrence a child module to another child module?
# 1. you need to refrence to outputs