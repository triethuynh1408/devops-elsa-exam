# terraform {
#   backend "s3" {
#     bucket         = "elsa-terraform-s3-backend"
#     key            = "dev"
#     region         = "ap-southeast-1"
#     encrypt        = true
#     role_arn       = "arn:aws:iam::994964106105:role/Elsa-TerraformS3BackendRole"
#     dynamodb_table = "elsa-terraform-s3-backend"
#   }
# }