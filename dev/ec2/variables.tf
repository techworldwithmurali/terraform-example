
variable "ami" {
  default = "ami-01816d07b1128cd2d"
  type        = string
}


variable "instance-type" {
  default = "t2.micro"
  type        = string
}

variable "subnet-id" {
  default = "subnet-04936efc8b77ecb70"
  type        = string
}

variable "tags" {
  default = {
    Name = "dev-ec2-instance"
    env  = "dev"
    team = "devops"
  }
type        = map(string)
}
