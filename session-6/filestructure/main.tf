resource "aws_sqs_queue" "main" {
  count = 2
  name  = "${var.env}-sqs"
  tags = {
    Environment = var.env
  }
}
