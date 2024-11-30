variable "x" {
  default = 10
}

output "x" {
  value = "var.x"
}

# List Variable

variable "I" {
  default = [
  10,
  "hello",
  true
  ]
}

output "I" {
  value = "var.1"
}

# second value in list
output "I2" {
  value = var.1[1]
}