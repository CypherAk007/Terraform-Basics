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


# INPUT variable

variable "inputname" {
  type = string
  description = "Set the name of the VPC"
}

# tuple is like list but supports multiple datatypes 
variable "mytuple" {
  type = tuple([ string,number,string ])
  default = [ "cat", 1, "dog" ]
}


# object is like map but supports multiple datatypes 
variable "myobject" {
  type = object({
    name = string,
    port = list(number)
  })
  default = {
    name = "AK"
    port = [ 22,25,80 ]
  }
}