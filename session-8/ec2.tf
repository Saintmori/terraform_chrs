resource "aws_instance" "main" {
  ami                    = data.aws_ami.amazon_linux_2.image_id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.web.id]
  key_name               = aws_key_pair.terraform_server_key.key_name
  tags = {
    Name  = "${var.env}-instance"
    Name2 = format("%s-instance", var.env)
  }
  #####################File provisioner###################################
  provisioner "file" {
    source      = "/home/ec2-user/terraform-session-october/session-8/index.html" #The local machine-it is better to give ther absolute path!
    destination = "/tmp/index.html"                                               #remote machine #instance that is being created
    connection {
      type        = "ssh"
      user        = "ec2-user"
      host        = self.public_ip
      private_key = file("~/.ssh/id_rsa")
    }
  }
  #######################remote exec provisioner##############################
  provisioner "remote-exec" {
    inline = [
      "sudo yum install httpd -y",
      "sudo systemctl start httpd",
      "sudo systemctl enable httpd",
      "sudo cp /tmp/index.html /var/www/html/index.html"
    ]
    connection {
      type        = "ssh"
      user        = "ec2-user"
      host        = self.public_ip
      private_key = file("~/.ssh/id_rsa")
    }
  }
}
####################;local exec provisioner############################
resource "null_resource" "local_script" {
  provisioner "local-exec" {
    command = "echo hello from the local exec > local.txt"
  }
}
###############null_resource is not added in the terraform.tfstate file##################
resource "aws_key_pair" "terraform_server_key" {
  key_name   = "terraform_server"
  public_key = file("~/.ssh/id_rsa.pub")
}