variable "ami" {
    type = string
    default = "ami-09d3b3274b6c5d4aa"
    description = "Amazon machine image"
}
variable "instance_type" {
  type = string
  description = "Size of the ec2"
  default = "t2.micro"
}
variable "env" {
  type = string
  description = "Environment variable"
  default = "env"
}
variable "s3_bucket_name" {
  type = string
  description = "s3 bucket name for application to upload images"
  default = "test"
}