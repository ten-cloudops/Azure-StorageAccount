
variable "resource_group_name" {
  description = "Application resource group"
  type = string
}

variable "location" {
  description = "Resources Azure Regional location"
  type = string
}

variable "project" {
  description = "Project name"
  type = string
}

variable "scope" {
  description = "Scope of use for the project"
  type = string
}

variable "environment" {
  description = "Deployed environment"
  type = string
}

variable "ten_regional_code" {
  description = "Technip regional code"
  type = string
}

variable "subscription_code" {
  description = "Technip azure subscription code"
  type = string
}

variable "tags" {
  description = "Resource tags"
  type = map(string)
}

variable "storage_type" {
  description = "Technip storage use type"
  type = string
}

variable "storage_account_parameters" {
  description = "Storage Account Parameters"
  type = map(string)
  default = {
    account_tier = null
    account_replication_type = null
  }
}
/*
variable "storage_account_ip_parameters" {
  description = "Storage Account IP Parameters"
  type = object({
    default_action = string
    ip_rules = list(string)
    virtual_network_subnet_ids = list(string)
  })
}
*/