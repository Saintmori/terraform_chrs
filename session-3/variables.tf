variable "env" {
    type = string
    description = "This is a variable for env"
    default = "dev"
}
variable "ami" {
    type = string
    description = "This is a variable for ami id"
    default = "ami-026b57f3c383c2eec"
}
variable "instance_type" {
    type = string
    description = "This is a variable for instance type"
    default = "t2.micro"
}

