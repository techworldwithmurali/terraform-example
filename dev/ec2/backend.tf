terraform {
  required_version = "~> 2.3.0"
  backend "s3" {
  bucket         = "tech-dev-terraform"
  key            = "ec2.tfstate"
  region         = "us-east-1"
  dynamodb_table = "terraform-lock"
  role_arn = "arn:aws:iam::779031380725:role/dev-admin-role"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.81.0"
    }
  }
}
