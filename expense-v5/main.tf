resource "aws_instance" "ec2-nodes" {
  for_each               = var.components
  ami                    = "ami-09c813fb71547fc4f"
  instance_type          = try(each.value["instance_type"], null) == null ? "t3.small" :  each.value[instance_type]
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


# frontend = {
# instance_type = "t3.small"
# }

# In the input key is frontend, value is { instance_type = "t3.small"
# since it is been called by for_each prefix is needed like each.key and each.value




