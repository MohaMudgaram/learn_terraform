variable "resource_group_location" {
  default     = "eastus"
  description = "Location of the resource group."
}

variable "rg_name" {
  type        = string
  default     = "rg-avd-resources"
  description = "Name of the Resource group in which to deploy service objects"
}

variable "vnets_env_list" {
  type        = list(any)
  default     = ["dev", "test", "stage", "prod"]
  description = "List of Virtual Networks Environments"
}

variable "vnets_list" {
  type        = list(any)
  default     = ["10.0.0.0", "11.0.0.0", "12.0.0.0", "15.0.0.0"]
  description = "List of Virtual Networks Addresses"
}