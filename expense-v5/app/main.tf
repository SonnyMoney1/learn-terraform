resource "aws_instance" "node" {
  ami      = var.ami
  instance_type = "var.intance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    name = var.name
  }
}

variable "ami" {}
variable "instance_type" {}
variable "vpc_security_group_ids" {}
variable "name" {}