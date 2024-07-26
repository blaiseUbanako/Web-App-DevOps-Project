
variable "aks_cluster_name" {
  description = "The name of the aks cluster"
  type = string
  default = "blaise_aka_cluster"
}

variable "aks_cluster_location" {
  description = "the name of the location"
  type = string
  default = "UK South"
}

variable "kubernetes_version" {
  description = "Kubernetes version"
  type = string
  default = "1.28"
  
}

variable "service_principal_client_id" {
  description = "client_id"
  type = string
  default = "cc6b148f-a604-4909-ada4-7cceeac6edae"
  
}

variable "service_principal_secret" {
description = "client_secret"
  type = string
  default = ""
  

}
