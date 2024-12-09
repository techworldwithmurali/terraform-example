terraform {
  backend "s3" {
    bucket         = "terraform-state-53131212"
    key            = "infra/ec2.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"

  }
}
