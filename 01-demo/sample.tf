resource  "null_resource" "test" {
  count = 3
}

resource "null_resource" "test1" {
  default = ["apple", "banana"]
}
