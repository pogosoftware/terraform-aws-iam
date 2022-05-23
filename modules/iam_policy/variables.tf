##########################################################################
### REQUIRED
##########################################################################
variable "policy" {
  description = "The policy document. This is a JSON formatted string"
  type        = string
}

##########################################################################
### OPTIONAL
##########################################################################
variable "description" {
  default     = null
  description = "Description of the IAM policy"
  type        = string
}

variable "name" {
  default     = null
  description = "The name of the policy. If omitted, Terraform will assign a random, unique name"
  type        = string
}

variable "name_prefix" {
  default     = null
  description = "Creates a unique name beginning with the specified prefix. Conflicts with `name`"
  type        = string
}

variable "path" {
  default     = null
  description = "Path in which to create the policy"
  type        = string
}

variable "tags" {
  default     = null
  description = "Map of resource tags for the IAM Policy"
  type        = map(string)
}
