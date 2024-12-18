provider "aws" {
  region     = "us-east-1"
#    profile = "dev"
  assume_role {
   role_arn = "arn:aws:iam::779031380725:role/dev-admin-role"
 }
}
