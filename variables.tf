variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "my-resource-group"
}

variable "location" {
  description = "The Azure location where resources will be created"
  type        = string
  default     = "eastus"
}

variable "virtual_network_address_space" {
  description = "The address space for the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  description = "The name of the subnet within the virtual network"
  type        = string
  default     = "my-subnet"
}

variable "kubernetes_cluster_name" {
  description = "The name of the Kubernetes cluster"
  type        = string
  default     = "my-aks"
}

variable "kubernetes_node_count" {
  description = "The number of nodes in the Kubernetes cluster"
  type        = number
  default     = 1
}

variable "kubernetes_node_size" {
  description = "The size of the nodes in the Kubernetes cluster"
  type        = string
  default     = "Standard_L2as_v4"
}
