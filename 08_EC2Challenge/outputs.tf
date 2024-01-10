output "PrivateIP" {
  value = aws_instance.DBServer.private_ip
}

output "elasticIP" {
  value = aws_eip.elasticIP.public_ip
}