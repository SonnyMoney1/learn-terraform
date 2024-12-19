resource "aws_instance" "ec2-nodes" {
  count = 3
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-05bd88f36ad2a6107"]

  tags = {
    Name = "frontend"
  }
}

variable "components" {
  default = ["frontend", "backend", "mysql"]
}
