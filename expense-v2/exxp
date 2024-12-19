resource "aws_instance" "ec2-nodes" {
count = length(var.components)
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-05bd88f36ad2a6107"]

  tags = {
    Name = var.components[count.index]
  }
}

variable "components" {
 default = ["frontend", "backend", "mysql"]
}
