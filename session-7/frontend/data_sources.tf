data "terraform_remote_state" "db" {
  backend = "s3"
  config = {
    bucket = "aws-session-backend-file-bucket"
    key    = "sesssion-7/backend/terraform.tfstate"
    region = "us-east-1"
  }
}