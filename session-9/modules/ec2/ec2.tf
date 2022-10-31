resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "${var.env}-instance"
    S3_Bucket_name = var.s3_bucket_name
  }
}