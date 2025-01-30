variable "component" {
  default = {
    frontend = {
      instance_type= "t3.small"
    }
    backend = {
      instance_type= "t3.small"
    }
    mysql = {
      instance_type = "t3.micro"
    }
  }
}

variable "awi" {
  default = "ami-09c813fb71547fc4f"
}
variable "vpc_security_group_ids" {
default =  ["sg-05bd88f36ad2a6107"]
}