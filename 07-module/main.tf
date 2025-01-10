module "sample" {
  source = "./sample-module"
  fruits = var.fruits
}

variable "fruits" {
  default = ["apple", "banana"]
}

output "test" {
  value = module.sample.test
}

