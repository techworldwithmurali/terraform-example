resource "aws_instance" "ec2" {
source = "../../modules/ec2"
  ami = var.ami
  instance_type = var.instance-type
  subnet_id = var.subnet-id
  tags = var.tags
}
