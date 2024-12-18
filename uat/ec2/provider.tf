provider "aws" {
  region     = "us-east-1"
  #  profile = "uat"

  assume_role {
  role_arn = "arn:aws:iam::266735810449:role/uat-admin-role"
   }
}
