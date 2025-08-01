

variable "project_name" {
  type        = string
  description = "project name to be used to name the resources (Name Tag)"
}



variable "tags" {
  type        = map(any)
  description = "Tags to be added to AWS resources"
}


