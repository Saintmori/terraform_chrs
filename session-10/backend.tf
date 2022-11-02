terraform {
  backend "s3" {
    bucket         = "aws-session-backend-file-bucket"
    key            = "sesssion-10/frontend/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-may2022-state-lock-table"
  }
}