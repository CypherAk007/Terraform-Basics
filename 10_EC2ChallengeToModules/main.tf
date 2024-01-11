provider "aws" {
  region = "us-east-1"
}

module "DBServer" {
  source = "./ec2"
  instance_name = "DBServer"
  sg_name = module.sg.sg_name
}

module "sg" {
  source = "./SG"
  egressports = var.egressports
  ingressports =var.ingressports
  cidr_blocks = var.cidr_blocks
}

module "WebServer" {
  source = "./ec2_userData"
  instance_name = "WebServer"
  sg_name = module.sg.sg_name
  user_data = "server-script.sh"
}

module "elasticIP" {
  source = "./ElasticIP"
  instance_id = module.WebServer.ec2_instance
  
}

output "PublicIP" {
  value =module.elasticIP.public_ip
}

output "DBServerIP" {
  value = module.DBServer.PrivateIP
}

output "WebServerIP" {
  value = module.WebServer.PrivateIP
}