terraform {
  backend "s3" {
    bucket         = ""
    key            = "dev"
    region         = "ap-southeast-1"
    encrypt        = true
    role_arn       = ""
    dynamodb_table = ""
  }
}