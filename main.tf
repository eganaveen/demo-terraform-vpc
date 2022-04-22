 module "vpc" {
   source = "./vendor/modules/vpc"
   vpccidr = var.VPC_CIDR
   ENV = var.ENV
   AZ = var.AZ
   subnet1cidr = var.SUBNET_CIDR
    DEFAULT_VPC_ID = var.DEFAULT_VPC_ID
   DEV_ROUTE_TABLE_ID = var.DEV_ROUTE_TABLE_ID
   DEFAULT_VPC_ROUTE_TABLE_ID = var.DEFAULT_VPC_ROUTE_TABLE_ID
 }