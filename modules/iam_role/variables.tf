##########################################################################
### REQUIRED
##########################################################################
variable "assume_role_policy" {
  description = "Policy that grants an entity permission to assume the role"
  type        = string
}

##########################################################################
### OPTIONAL
##########################################################################
variable "description" {
  default     = null
  description = "Description of the role"
  type        = string
}

variable "force_detach_policies" {
  default     = false
  description = "Whether to force detaching any policies the role has before destroying it. Defaults to `false`"
  type        = bool
}

variable "managed_policy_arns" {
  default     = null
  description = "Set of exclusive IAM managed policy ARNs to attach to the IAM role. If this attribute is not configured, Terraform will ignore policy attachments to this resource. When configured, Terraform will align the role's managed policy attachments with this set by attaching or detaching managed policies"
  type        = set(string)
}

variable "max_session_duration" {
  default     = null
  description = "Maximum session duration (in seconds) that you want to set for the specified role. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 1 hour to 12 hours"
  type        = number
}

variable "name" {
  default     = null
  description = "Friendly name of the role. If omitted, Terraform will assign a random, unique name"
  type        = string
}

variable "name_prefix" {
  default     = null
  description = "Forces new resource) Creates a unique friendly name beginning with the specified prefix. Conflicts with `name`"
  type        = string
}

variable "path" {
  default     = null
  description = "Path to the role"
  type        = string
}

variable "permissions_boundary" {
  default     = null
  description = "ARN of the policy that is used to set the permissions boundary for the role"
  type        = string
}

variable "tags" {
  default     = null
  description = "Key-value mapping of tags for the IAM role"
  type        = map(string)
}

variable "inline_policy" {
  default     = null
  description = "Configuration block defining an exclusive set of IAM inline policies associated with the IAM role. See below. If no blocks are configured, Terraform will not manage any inline policies in this resource"
  type = object({
    name   = string
    policy = string
  })
}
