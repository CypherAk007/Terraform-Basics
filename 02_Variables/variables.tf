variable "vpcname" {
  type = string
  default = "myvpc"
}

variable "sshport" {
  type = number
  default = 22
}

variable "enabled" {
  default = true
}

variable "mylist" {
  type = list(string)
  default = [ "value1","value2" ]
}

variable "mymap" {
  type = map
  default = {
    key1 = "Value1"
    key2 = "Value2"
  }
}