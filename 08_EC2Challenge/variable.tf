variable "egressports" {
  type = list(number)
  default = [ 80,443 ]
}

variable "ingressports" {
  type = list(number)
  default = [ 80,443 ]
}