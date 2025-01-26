variable "components" {
  default = {
    frontend = {
      instance_type = "t3.small"
    }
    backend {
      instance_type "t3.small"
    }
    msql = {
      instance_type = "t3.micro"
    }
  }
}

variable "awi" {
  default = ami default =
}
variable "vpc_security" {}
default = {}

}