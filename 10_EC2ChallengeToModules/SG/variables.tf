variable "egressports" {
  type = list(number)
}

variable "ingressports" {
  type = list(number)
}

variable "cidr_blocks" {
  type = list(string)
}