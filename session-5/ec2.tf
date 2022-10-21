resource "aws_instance" "main" {
  count                  = 3
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.web.id]
  tags = {
    Name = "${var.env}-${count.index}"
  }
}
#count = 3(numeric) 1, 2, 3
#index = 0, 1, 2,
#(count.index) this will go and index everything for me.
#refrence to resource: 
# first_label.second_label.attribute
#count is a meta argument
