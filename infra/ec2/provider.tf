provider "aws" {
  region     = "us-east-1"
#    profile = "infra"
  assume_role {
   role_arn = "arn:aws:iam::266735810449:role/infra-admin-role"
 }
}
