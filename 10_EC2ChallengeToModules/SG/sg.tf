resource "aws_security_group" "webtraffic" {
  name = "allowtraffic"
  dynamic "ingress" {
    iterator = port 
    for_each = var.ingressports
    content {
        from_port = port.value 
        to_port = port.value
        protocol = "TCP"
        cidr_blocks = var.cidr_blocks
    }
  }

  dynamic "egress" {
    iterator = port 
    for_each = var.egressports
    content {
        from_port = port.value 
        to_port = port.value
        protocol = "TCP"
        cidr_blocks = var.cidr_blocks
    }
  }
}

output "sg_name" {
  value = aws_security_group.webtraffic.name
}

