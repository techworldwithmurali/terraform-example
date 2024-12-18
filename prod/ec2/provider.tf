provider "aws" {
  region     = "us-east-1"
  #  profile = "prod"

  assume_role {
  role_arn = "arn:aws:iam::779031380725:role/prod-admin-role"
   }
}
