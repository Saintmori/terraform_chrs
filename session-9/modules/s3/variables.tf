variable "bucket_name" {
    type = string
    description = "This is a variable for S3 bucket name. Bucket name has to be unique globally, lower cases, no special charecters."
    default = "terraform-module-test-bucket-mori"
}
variable "env" {
    type = string
    description = "Environment"
    default = "dev" 
}
variable "bucket_acl" {
    type = string
    description = "This is the bucket ACL. Values can be Private or Public, private is recommanded"
    default = "private"
}