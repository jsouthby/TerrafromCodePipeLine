variable "vpc_cidr" {
  description = "CIDR for the whole VPC"
  default     = "10.101.0.0/16"
}

variable "vpc_name" {
  description = "Name of the VPC"
  default     = "mgmt-vpc"
}

variable "deployment_method" {
  description = "Deployment method tag"
  default     = "tf"
}

variable "environment" {
  description = "Environment tag"
  default     = "mgmt"
}

