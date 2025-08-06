variable "cidr_block" {
  type        = string
  description = "Networking CIDR block for the VPC"
}

variable "project_name" {
  type        = string
  description = "Name of the project to tag AWS resources"
}

variable "region" {
  type        = string
  description = "AWS region where the resources will be created"
}

variable "tags" {
  type        = map(any)
  description = "Map of tags to apply to all AWS resources"
}

variable "instance_types" {
  type        = list (string)
  description = "Instance type used for compute nodes"
}

variable "capacity_type" {
  type        = string
  description = "Node capacity type: ON_DEMAND, SPOT, or CAPACITY_BLOCK"
}


