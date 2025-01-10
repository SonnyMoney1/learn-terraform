resource "null_resource" "test" {
  count = length(var.fruits)
}
variable "fruits" {}
output "test" {
  value = "hello world"
}