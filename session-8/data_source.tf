data "aws_ami" "amazon_linux_2" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-2.0.*"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}


# Refrence to source
# first_label.second_label.attribute

# Refrence to Input variable 
# var.variable_name

# Refrence to Data source
# data.first_label.second_label.image_id