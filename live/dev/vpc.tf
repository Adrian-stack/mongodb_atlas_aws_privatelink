module "vpc" {
    source     = "../../module-vpc"
    cidr_block = var.cidr_block    
    dmz_block  = var.dmz_block
}