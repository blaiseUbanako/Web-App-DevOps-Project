
provider "azurerm" {
    features {
    }
    client_id = var.service_principal_client_id
    client_secret = var.service_principal_client_secret
    subscription_id = var.subscription_id
    tenant_id = var.tenant_id
}


module "networking" {
  source = "./networking-module"
  resource_group_name = "blaise-devops-rg"
  location = "UK South"
  vnet_address_space = "10.0.0.0/16"
  service_principal_client_secret = ""
}


module "aks_cluster" {
  source = "./aks-cluster-module"

  # Input variables for the AKS cluster module
  aks_cluster_name           = var.aks_cluster_name
  cluster_location           = var.cluster_location
  dns_prefix                 = var.dns_prefix
  kubernetes_version         = var.kubernetes_version 
  service_principal_client_id = var.service_principal_client_id
  service_principal_client_secret = var.service_principal_client_secret

  # Input variables referencing outputs from the networking module
  resource_group_name         = module.networking.resource_group_name
  vnet_id                     = module.networking.vnet_id
  control_plane_subnet_id     = module.networking.control_plane_subnet_id
  worker_node_subnet_id       = module.networking.worker_node_subnet_id
  aks_nsg_id                  = module.networking.aks_nsg_id
}
