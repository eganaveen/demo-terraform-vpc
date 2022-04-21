 module "vpc" {
   source = "git::https://github.com/eganaveen/tf-module-vpc.git?ref=main"
   vpccidr = var.VPC_CIDR
 }