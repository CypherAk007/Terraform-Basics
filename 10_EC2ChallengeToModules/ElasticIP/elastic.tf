resource "aws_eip" "elasticIP" {
  instance = var.instance_id
  domain = "vpc"
}

output "public_ip" {
  value = aws_eip.elasticIP.public_ip
}
