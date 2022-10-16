resource "aws_instance" "main" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = [ aws_security_group.web.id ]
  tags = {
    Name        = var.env
  }
}
#refrence to resource: 
# first_label.second_label.attribute