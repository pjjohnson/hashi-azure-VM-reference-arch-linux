variable "name" {
  description = "Resource name"
}
variable "location" {
}
variable "resource_group_name" {
}
variable "tenant_id" {
  default = ""
}

variable "subnetids" {
  type        = list(string)
  description = "List of subnet ids to be used for service endpoint"
  default     = []
}




