terraform {
  backend "s3" {
    bucket         = "tech-prod-terraform"
    key            = "ec2.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
    #  profile = "prod"
    role_arn = "arn:aws:iam::266735810449:role/prod-admin-role"

  }
}
