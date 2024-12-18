provider "aws" {
  region     = "us-east-1"
  #  profile = "pre-prod"
    assume_role {
    role_arn = "arn:aws:iam::266735810449:role/pre-prod-admin-role"
     }
}
