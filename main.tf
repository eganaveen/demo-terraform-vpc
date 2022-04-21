module "vpc" {
  source = "./vendor/modules/vpc"
  VPCCIDR = var.VPC_CIDR
}