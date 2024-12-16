terraform {
  backend "s3" {
    bucket         = "test-shhskjhskshshsjkhkj"
    key            = "ec2.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
#    profile = "dev"
    role_arn = "arn:aws:iam::266735810449:role/infra-admin-role"

  }
}
