
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

variable "subscription_id" {
    type = string
  description = "subscription service principle is attached to"
  default = "0169353e-72e1-499c-8db7-97966d3c1e62"
}


variable "resource_group_name" {
  description = "the name of the resource group"
  type = string
  default = "blaise-devops-rg"
}

variable "location" {
  description = "the name of the location"
  type = string
  default = "UK South"
}

variable "vnet_address_space" {
  description = "Address space for the Virtual Network (VNet)."
  type        = list(string)
  default     = ["10.0.0.0/16"]
}


variable "vnet_name" {
  description = "The name of the virtual network"
  type = string
  default = "aks-vnet"
}


variable "cluster_location" {
  description = "The location of the aks cluster"
  type = string
  default = "UK South"
  
}

variable "dns_prefix" {
  description = "DNS"
  type = string
  default = "UnKnown"
}


variable "tenant_id" {
  type = string
  description = "tenant service principle is attached to"
  default = "47d4542c-f112-47f4-92c7-a838d8a5e8ef"
}

variable "service_principal_client_secret" {
description = "client_secret"
  type = string
  
}
