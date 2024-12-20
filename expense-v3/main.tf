resource "aws_instance" "ec2-nodes" {
  for_each               = var.components
  ami                    = "ami-09c813fb71547fc4f"
  instance_type          = each.value["instance_type"]
  vpc_security_group_ids = ["sg-05bd88f36ad2a610"]

  tags = {
    name = each.key
  }
}

variable "components" {
  default = {
    frontend = {
      instance_type = "t3.small"
    }
    backend = {
      instance_type = "t3.small"
    }
    mysql = {
      instance_type = "t3.micro"
    }
  }
}






