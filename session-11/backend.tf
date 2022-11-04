terraform {
  backend "s3" {
    bucket               = "aws-session-backend-file-bucket"
    key                  = "terraform.tfstate"
    region               = "us-east-1"
    dynamodb_table       = "terraform-may2022-state-lock-table"
    workspace_key_prefix = "session-11"
  }
}
# If i switch to the dev workspace, my backend will look like session-11/dev/terraform.tfstate
# If i switch to the qa workspace, my backend will look like session-11/qa/terraform.tfstate
