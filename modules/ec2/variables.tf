variable "ami" {
 description = "The AMI ID to use for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "The type of the EC2 instance"
  type        = string
}

variable "subnet_id" {
description = "The ID of the subnet where the EC2 instance will be launched"
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the EC2 instance"
type        = map(string)
}
