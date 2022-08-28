module "network" {
  source = "./modules/networking"
  vpc_name = var.vpc_name
  vpc_cidr_range = var.vpc_cidr_range
  cluster_name = var.cluster_name
  region = var.region
}

module "ci_cd" {
  source = "./modules/ci-cd"
  region = var.region
  subnet_ids = module.network.private_subnets
  flattended_subnet_ids = flatten(module.network.private_subnets)[0]
  vpc_id     = module.network.vpc_id
  security_group = module.network.security_group
}
