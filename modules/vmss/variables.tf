##############################################################################
# Variables File
# 
# Here is where we store the default values for all the variables used in our
# Terraform code. If you create a variable with no default, the user will be
# prompted to enter it (or define it via config file or command line flags.)

variable "location" {
  description = "Location of the resource group."
}

variable "resource_group_name" {
  description = "Name of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "name" {
  description = "Name of the resources"
}

variable "app_gty_backend_pool_ids" {
  description = "app gateway backend pool ids; only set if vmss is behind an app gateway"
  default     = ""
}

variable "lb_backend_pool_ids" {
  description = "lb backend pool ids; only set if vmss is behind a lb"
  default     = ""
}

variable "scale_set_sub" {
  description = "scale set subnet id"
}

variable "tags" {
  description = "Map of the tags to use for the resources that are deployed"
  type        = map(string)
  default = {
    environment = "codelab"
  }
}

variable "application_port" {
  description = "Port that you want to expose to the external load balancer"
  default     = 80
}

variable "admin_user" {
  description = "User name to use as the admin account on the VMs that will be part of the VM scale set"
  default     = "azureuser"
}

variable "admin_password" {
  description = "Default password for admin account"
}

variable "custom_data" {
  description = "cloud-init or bash bootstrap configuration; must be passed as base64"
  default     = ""
}


# variable "web_image" {
# }

# variable "api_private_ip" {
# }

variable "type" {
description = "Type of vmss to create:  web or api"
}