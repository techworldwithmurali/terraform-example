
variable "ami" {
  default = "ami-012967cc5a8c9f891"
  type        = string
}


variable "instance-type" {
  default = "t2.micro"
  type        = string
}

variable "subnet-id" {
  default = "subnet-0ab8d3e404d04be99"
  type        = string
}

variable "tags" {
  default = {
    Name = "infra-ec2-instance"
    env  = "infra"
    team = "devops"
  }
type        = map(string)
}
