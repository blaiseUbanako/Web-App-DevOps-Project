
output "control_plane_subnet_id" {
  description = "ID of the control plane subnet."
  value = azurerm_subnet.control_plane_subnet.id
}

output "worker_node_subnet_id" {
  description = "ID of the worker node subnet."
  value = azurerm_subnet.worker_node_subnet.id

}

output "resource_group_name" {
  description = "Name of the Azure Resource Group for networking resources."
  value = azurerm_resource_group.networking.name
}

output "aks_nsg_id" {
  description = "ID of the Network Security Group (NSG) for AKS."
  value = azurerm_network_security_group.aks_nsg.id
}

output "vnet_id" {
  description = "vnet_id"
 value =azurerm_virtual_network.aks_vnet.id
}


#Define more output variables as needed... eg below commented
/*
output "aks_cluster_name" {
  description = "Name of the AKS cluster."
  value       = <kubernetes-cluster-resource-type>.<kubernetes-cluster-resource-identifier>.name
}

output "aks_cluster_id" {
  description = "ID of the AKS cluster."
  value       = <kubernetes-cluster-resource-type>.<kubernetes-cluster-resource-identifier>.id
}

output "aks_kubeconfig" {
  description = "Kubeconfig file for accessing the AKS cluster."
  value       = <kubernetes-cluster-resource-type>.<kubernetes-cluster-resource-identifier>.kube_config_raw
}

*/
