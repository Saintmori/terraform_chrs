resource "aws_instance" "web_instance" {
  ami           = "ami-026b57f3c383c2eec"
  instance_type = "t2.micro"
  tags = {
    Name        = "first"
    Environment = "dev"
  }
}
# resource-> block
# aws_instance-> first lable->resource type-> predefined by terraform
# first_ec2-> second lable-> logical name or ID(name for the resource)(has to be unique)->defined by the author
# each terraform configuration has an extension called ".tf"
# terraform has two types of blocks.
# 1. the resource block= is designed to create and manage resources, services and infrastracure
# 2. data source block=
# each block expects two lables: in this example resource block have 2 lables.
# arguments: consists of key value , name/value⇒ values can be in double quotations and sometimes not.This is the configuration of the resource or components of the resource.inside the arguments , there is key (predefined by the terraform) and value is defined by the author.