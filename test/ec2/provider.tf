provider "aws" {
  region     = "us-east-1"
  #  profile = "test"

  assume_role {
  role_arn = "arn:aws:iam::266735810449:role/test-admin-role"
   }
}
