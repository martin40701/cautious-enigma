module "network" {
  source = "../modules/networking"
  vpc_name = var.vpc_name
  vpc_cidr_range = var.vpc_cidr_range
  cluster_name = var.cluster_name
  region = var.region
}

module "ci_cd" {
  source = "../modules/ci-cd"
  region = var.region
  subnet_ids = element(module.network.private_subnets[0], 3)
  vpc_id     = module.network.vpc_id
  security_group = module.network.security_group
}

module "eks_cluster" {
  source = "../modules/kubernetes-infra"

  vpc_id     = module.network.vpc_id
  subnet_ids = element(module.network.private_subnets[0], 3)
  cluster_name = var.cluster_name
  region = var.region
  security_group = module.network.security_group

}

module "k8s_application" {
  source = "../modules/kubernetes-application"
  region = var.region
  cluster_id = module.eks_cluster.cluster_id
  endpoint = module.eks_cluster.cluster_endpoint
  eks_ca_data = module.eks_cluster.certificate_authority.0.data
  cluster_name = module.eks_cluster.cluster_name
}

