 module "vpc" {
   source = "./vendor/modules/vpc"
   vpccidr = var.VPC_CIDR
 }