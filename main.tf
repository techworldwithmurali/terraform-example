provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "ec2" {
  ami = "ami-0453ec754f44f9a4a"
  instance_type = "t2.medium"
  subnet_id = "subnet-01f8efde778be6d5d"
  tags ={
    Name = "tf-example"
  }
}
