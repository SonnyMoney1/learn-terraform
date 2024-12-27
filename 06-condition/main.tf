variable "marks" {
  default = 50
}

output "grade" {
  value = var.marks > 80 ? "First Class" : "Second Class"
}

# Syntax : condition ? true_false_val
