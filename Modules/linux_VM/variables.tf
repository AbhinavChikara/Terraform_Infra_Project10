variable "nic_name" {
  description = "Name of the network interface"
  type        = string
  
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Location for all resources"
  type        = string
}

variable "vm_name" {
  description = "Name of the virtual machine"
  type        = string
  
}
variable "vm_size" {
  description = "Size of the virtual machine"
  type        = string
  default     = "Standard_B1s"
}
variable "admin_username" {
  description = "Admin username for the virtual machine"
  type        = string
}
variable "admin_password" {
  description = "Admin password for the virtual machine"
  type        = string
}
variable "image_publisher" {
  description = "Publisher of the VM image"
  type        = string
  
}
variable "image_offer" {
  description = "Offer of the VM image"
  type        = string
}
variable "image_sku" {
  description = "SKU of the VM image"
  type        = string
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
}
variable "virtual_network_name" {
  description = "Name of the virtual network"
  type        = string
}
variable "pip_name" {
  description = "Name of the public IP address"
  type        = string
}
