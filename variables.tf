## ECS Cluster
variable "name" {
  description = "The name of the cluster."
}

variable "capacity_providers" {
  description = "List of short names of one or more capacity providers to associate with the cluster"
  default     = ""
}

variable "default_capacity_provider_strategy" {
  description = "The capacity provider strategy to use by default for the cluster"
  type        = "map"
  default     = {}
}

variable "setting" {
  description = " Configuration block(s) with cluster settings"
  default     = {}
  type        = "map"
}

## Tags
variable "tags" {
  description = "Resources Tags"
  type        = "map"
}