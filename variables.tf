variable "project_name" {
  
}
variable "environment" {
  
}
variable "enable_dns_hostnames" {
    default = "true"
  
}
variable "vpc_cidr" {
}
variable "common_tags" {
  type = map
  # default = {}
}
variable "igw_tags" {
  default = {}
  
}
variable "vpc_tags" {
  type = map
  
}
variable "public_subnet_cidrs" {
  type = list
  validation {
    condition = length(var.public_subnet_cidrs) == 2
    error_message = "please provide valid public subnet CIDR"
  }
}
variable "private_subnet_cidrs" {
  type = list
  validation {
    condition = length(var.private_subnet_cidrs) == 2
    error_message = "please provide valid private subnet CIDR"
  }
}
variable "database_subnet_cidrs" {
  type = list
  validation {
    condition = length(var.database_subnet_cidrs) == 2
    error_message = "please provide valid database subnet CIDR"
  }
}



variable "public_subnet_tags"{
    default = {}
}
variable "private_subnet_tags" {
  default = {}
}
variable "database_subnet_tags"{
  default = {}
  
}
variable "aws_nat_gateway_tags"{
  default = {}
  
}
variable "public_route_tables"{
  default = {}
  
}
variable  "private_route_tables"{
  default = {}
  
}
variable "database_route_tables"{
  default = {}
  
}
variable "is_peering_required" {
  default = false

  
}
variable "vpc_peering_tags" {
  default = {}
  
}
  
