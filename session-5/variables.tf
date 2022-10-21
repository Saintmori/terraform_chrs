variable "env" {
  type        = string
  description = "This is a variable for env"
  default     = "dev"
}
variable "ami" {
  type        = string
  description = "This is a variable for ami id"
  default     = "ami-026b57f3c383c2eec"
}
variable "instance_type" {
  type        = string
  description = "This is a variable for instance type"
  default     = "t2.micro"
}
variable "ingress_ports" {
  type = list(string)
  description = "this is a list of ports for the ingress rule"
  default = [ "22", "80", "443", "3306", "53" ]
}
variable "ingress_ciders" {
  type = list(string)
  description = "This is the cidrs for the different port we have"
  default = [ "8.8.8.8/32", "10.0.0.0/16", "192.168.1.0/24", "0.0.0.0/0", "0.0.0.0/0" ]
}