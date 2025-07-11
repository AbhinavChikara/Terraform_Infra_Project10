# 1. Resource Resource_Group
# 2. Virtual Network
# 3. Subnet
# 4. Virtual Machine
# 4.1 Network Interface
# 4.2 Public IP Address
# 5. Network Security Group
# 6. sql Server
# 7. sql Database


module "resource_group" {
  source                  = "../../Modules/Resource_Group"
  resource_group_name     = "abhipriya_rg"
  resource_group_location = "West US"
}

module "resource_group2" {
  source                  = "../../Modules/Resource_Group"
  resource_group_name     = "abhipriya_rg2"
  resource_group_location = "West US"
}

# module "virtual_network" {
#   source                   = "../../Modules/Virtual_Network"
#   depends_on               = [module.resource_group]
#   resource_group_name      = "abhipriya_rg"
#   virtual_network_name     = "abhipriya_vnet"
#   virtual_network_location = "West US"
#   address_space            = ["10.0.0.0/16"]
# }

# module "subnet_frontend" {
#   source               = "../../Modules/Subnet"
#   depends_on           = [module.virtual_network]
#   resource_group_name  = "abhipriya_rg"
#   virtual_network_name = "abhipriya_vnet"
#   subnet_name          = "abhipriya_frontend_sub"
#   address_prefixes     = ["10.0.1.0/24"]
# }

# module "subnet_backend" {
#   source               = "../../Modules/Subnet"
#   depends_on           = [module.virtual_network]
#   resource_group_name  = "abhipriya_rg"
#   virtual_network_name = "abhipriya_vnet"
#   subnet_name          = "abhipriya_backend_sub"
#   address_prefixes     = ["10.0.2.0/24"]
# }

# module "pip_frontend" {
#   source                  = "../../Modules/Public_IP"
#   depends_on              = [module.resource_group]
#   resource_group_name     = "abhipriya_rg"
#   pip_name                = "abhipriya_front_pip"
#   resource_group_location = "West US"
# }

# module "pip_backend" {
#   source                  = "../../Modules/Public_IP"
#   depends_on              = [module.resource_group]
#   resource_group_name     = "abhipriya_rg"
#   pip_name                = "abhipriya_backend_pip"
#   resource_group_location = "West US"
# }

# module "linux_vm_frontend" {
#   source               = "../../Modules/Linux_VM"
#   depends_on           = [module.subnet_frontend, module.pip_frontend]
#   resource_group_name  = "abhipriya_rg"
#   vm_name              = "abhipriyafrontendvm"
#   admin_username       = "azureuser"
#   admin_password       = "P@ssw0rd1234!"
#   vm_size              = "Standard_B1s"
#   image_publisher      = "Canonical"
#   image_offer          = "0001-com-ubuntu-server-jammy"
#   image_sku            = "22_04-lts-gen2"
#   nic_name             = "abhipriya_nic_frontend"
#   subnet_name          = "abhipriya_frontend_sub"
#   pip_name             = "abhipriya_front_pip"
#   location             = "West US"
#   virtual_network_name = "abhipriya_vnet"

# }

# module "linux_vm_backend" {
#   source               = "../../Modules/Linux_VM"
#   depends_on           = [module.subnet_backend, module.pip_backend, module.virtual_network]
#   resource_group_name  = "abhipriya_rg"
#   vm_name              = "abhipriyabackendvm"
#   admin_username       = "azureuser"
#   admin_password       = "P@ssw0rd1234!"
#   vm_size              = "Standard_B1s"
#   image_publisher      = "Canonical"
#   image_offer          = "0001-com-ubuntu-server-jammy"
#   image_sku            = "22_04-lts-gen2"
#   nic_name             = "abhipriya_nic_backend"
#   subnet_name          = "abhipriya_backend_sub"
#   pip_name             = "abhipriya_backend_pip"
#   location             = "West US"
#   virtual_network_name = "abhipriya_vnet"

# }

# module "sql_server" {
#   source                       = "../../Modules/SQL_Server"
#   depends_on                   = [module.resource_group]
#   sql_server_name              = "abhipriyaserver1992"
#   resource_group_name          = "abhipriya_rg"
#   location                     = "West US"
#   administrator_login          = "sqladmin"
#   administrator_login_password = "P@ssw0rd1234!"
# }