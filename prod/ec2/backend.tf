terraform {
  required_version = "~> 1.9.0"
  backend "s3" {
  bucket         = "tech-prod-terraform"
  key            = "ec2.tfstate"
  region         = "us-east-1"
  dynamodb_table = "terraform-lock"
  role_arn = "arn:aws:iam::266735810449:role/prod-admin-role"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.81.0"
    }
  }
}
