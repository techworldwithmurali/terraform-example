
variable "ami" {
 description = "The AMI ID to use for the EC2 instance"
  default = "ami-012967cc5a8c9f891"
  type        = string
}


variable "instance-type" {
description = "The type of the EC2 instance"
  default = "t2.micro"
  type        = string
}

variable "subnet-id" {
description = "The ID of the subnet where the EC2 instance will be launched"
  default = "subnet-0ab8d3e404d04be99"
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the EC2 instance"
  default = {
    Name = "infra-ec2-instance"
    env  = "infra"
    team = "devops"
  }
type        = map(string)
}

variable "assume_role_arn" {
  description = "The ARN of the IAM role to assume for accessing AWS resources"
  type        = string
}
