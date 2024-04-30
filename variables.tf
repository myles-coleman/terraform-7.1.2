variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
  default     = "RG-mcoleman-bootcamp"
}

variable "location" {
  description = "Location for all resources"
  type        = string
  default     = "westus2"
}

variable "storage_account_name" {
  description = "Storage Account Name"
  type        = string
  default     = "mylesstorage"
}

variable "container_name" {
  description = "Container Name"
  type        = string
  default     = "tfstate-myles"
}