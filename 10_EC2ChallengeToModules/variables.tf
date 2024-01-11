variable "cidr_blocks" {
  type = list(string)
  default = ["0.0.0.0/0"]
}

variable "egressports" {
  type = list(number)
  default = [8080,443]
}

variable "ingressports" {
  type = list(number)
  default = [8080,443]
}