terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.28.0"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.1"
    }
  }
}


# Retrieve EKS cluster information
provider "aws" {
  region = var.region
}

data "aws_eks_cluster" "cluster" {
  name = var.cluster_id
}

provider "kubernetes" {
  host                   = var.endpoint
  cluster_ca_certificate = base64decode(var.eks_ca_data)
  exec {
    api_version = "client.authentication.k8s.io/v1alpha1"
    command     = "aws"
    args = [
      "eks",
      "get-token",
      "--cluster-name",
      data.aws_eks_cluster.cluster.name
    ]
  }
}


