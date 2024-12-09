terraform {
  backend "s3" {
    bucket         = "terraform-state-53131212"
    key            = "dev/ec2.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"

  }
}
