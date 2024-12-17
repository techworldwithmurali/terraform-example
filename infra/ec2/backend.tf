terraform {
  backend "s3" {
    bucket         = "tech-infra-terraform"
    key            = "ec2.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
#    profile = "infra"
    role_arn = "arn:aws:iam::266735810449:role/infra-admin-role"

  }
}
