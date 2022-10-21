resource "aws_security_group" "web" {
  name        = "web_instance_sg"
  description = "this is a security group for my instance"
  vpc_id      = "vpc-02895d4cca9d04a65"
}
resource "aws_security_group_rule" "web_ingress" {
  count             = length(var.ingress_ports) #can help you to count the number of the strings in the list.
  #count.index = 4 (0.1,2,3,4)
  type              = "ingress"
  from_port         = element(var.ingress_ports, count.index)
  to_port           = element(var.ingress_ports, count.index)
  protocol          = "tcp"
  cidr_blocks       = [element(var.ingress_ciders, count.index)]
  security_group_id = aws_security_group.web.id
}
resource "aws_security_group_rule" "web_egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.web.id
}