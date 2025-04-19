
variable "ami" {
  default = "ami-01816d07sghs636325"
  type        = string
}


variable "instance-type" {
  default = "t2.micro"
  type        = string
}

variable "subnet-id" {
  default = "subnet-0bd4519d617d733e4"
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
