 module "vpc" {
   source = "./vendor/modules/vpc"
   vpccidr = var.VPC_CIDR
   ENV = var.ENV
   AZ = var.AZ
   subnet1cidr = var.SUBNET_CIDR
 }