variable "name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure location for the resource group"
  type        = string
  default     = "eastus"
}

variable "tags" {
  description = "Tags for the resource group"
  type        = map(string)
  default     = {}
}