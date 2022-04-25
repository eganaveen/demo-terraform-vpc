 module "vpc" {
   source = "./vendor/modules/vpc"
   vpccidr = var.VPC_CIDR
   ENV = var.ENV
   AZ = var.AZ
    SUBNET_CIDR = var.SUBNET_CIDR
   DEFAULT_VPC_ID = var.DEFAULT_VPC_ID
   DEFAULT_VPC_ROUTE_TABLE_ID = var.DEFAULT_VPC_ROUTE_TABLE_ID
   DEFAULT_VPC_CIDR = var.DEFAULT_VPC_CIDR
 }