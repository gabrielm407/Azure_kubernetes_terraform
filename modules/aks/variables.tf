variable "kubernetes_cluster_name" {
  description = "The name of the Kubernetes cluster"
  type        = string
}

variable "location" {
  description = "The Azure location"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "dns_prefix" {
  description = "DNS prefix for the AKS cluster"
  type        = string
  default     = "myaks01"
}

variable "kubernetes_node_count" {
  description = "The number of nodes in the Kubernetes cluster"
  type        = number
}

variable "kubernetes_node_size" {
  description = "The size of the nodes in the Kubernetes cluster"
  type        = string
}