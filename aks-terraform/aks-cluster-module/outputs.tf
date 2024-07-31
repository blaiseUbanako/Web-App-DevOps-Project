output "aks_cluster_name" {
    description = "name of the aks cluster"
    value = azurerm_kubernetes_cluster.aks_cluster.name
}

output "aks_cluster_id" {
    description = "id of the aks cluster"
    #value = azurerm_resource_group.networking.id
    value = azurerm_kubernetes_cluster.aks_cluster.id
}

output "aks_kubeconfig" {
    description = "description of the aks kubeconfiguration"
value = azurerm_kubernetes_cluster.aks_cluster.kube_config_raw

}

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