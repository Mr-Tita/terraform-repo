terraform {
  backend "s3" {
    bucket = "s3-statefile-backend"
    key    = "cloudformation-folder/terraform.tfstate"
    region = "us-east-1"
  }
}
