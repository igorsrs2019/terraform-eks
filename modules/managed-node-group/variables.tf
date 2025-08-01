

variable "project_name" {
  type        = string
  description = "project name to be used to name the resources (Name Tag)"
}



variable "tags" {
  type        = map(any)
  description = "Tags to be added to AWS resources"
}


variable "subnet_private_1a" {
  type        = string
  description = "Subnet ID from AZ 1a"
}

variable "subnet_private_1b" {
  type        = string
  description = "Subnet ID from AZ 1b"
}

variable "cluster_name" {
  type        = string
  description = "EKS cluster name to create MGN"
}
/*
variable "instance_type" {
  type        = string
  description = "Type of instance in Node"
}




variable "capacity_type" {
  type        = string
  description = "Capacity type Spot/Demand"
}


variable "ami_type" {
  type        = string
  description = "Type of S.O"
}
*/

