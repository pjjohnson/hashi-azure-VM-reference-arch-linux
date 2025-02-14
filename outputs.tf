output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "password" {
  sensitive = true
  value     = random_password.password.bcrypt_hash
}

output "dbpassword" {
  sensitive = true
  value     = random_password.dbpassword.result
}

output "appgwurl" {
  #value = "http://${random_pet.name.id}.${var.resource_group_location}.cloudapp.azure.com"
  value = "http://${module.networks.app-gtw-domainname}.${var.resource_group_location}.cloudapp.azure.com"
}


output "subnet-appgtw" {
  value = module.networks.subnet-appgtw
}

output "subnet-mgmt" {
  value = module.networks.subnet-mgmt
}

output "subnet-web" {
  value = module.networks.subnet-web
}

output "subnet-api" {
  value = module.networks.subnet-api
}

output "subnet-data" {
  value = module.networks.subnet-data
}

output "app-gtw-ip" {
  value = module.networks.app-gtw-ip
}

output "bastion-ip" {
  value = module.bastion-host.bastion-ip
}

output "bastion_dns_name" {
  value = module.bastion-host.bastion_fqdn
}

output "application_gateway_name" {
  value = module.app-gateway.app_gateway.name
}

output "mid_tier_lb_name" {
  value = module.load_balancer.mid_tier_lb.name
}

output "lb_backend_pool_ids" {
  value = module.load_balancer.lb_pool_ids
}

# output "cosmos-db-endpoint" {
#   value = module.db_MySQL.cosmos-db-endpoint
# }