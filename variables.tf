##########################################################################
### iam_role
##########################################################################
variable "create_iam_role" {
  default     = false
  description = "Determinate to create `iam_role` resources or not"
  type        = bool
}

variable "iam_role_assume_role_policy" {
  default     = null
  description = "Required if `create_iam_role` is set to `true`. Policy that grants an entity permission to assume the role"
  type        = string
}

variable "iam_role_description" {
  default     = null
  description = "Description of the role"
  type        = string
}

variable "iam_role_force_detach_policies" {
  default     = false
  description = "Whether to force detaching any policies the role has before destroying it. Defaults to `false`"
  type        = bool
}

variable "iam_role_managed_policy_arns" {
  default     = null
  description = "Set of exclusive IAM managed policy ARNs to attach to the IAM role. If this attribute is not configured, Terraform will ignore policy attachments to this resource. When configured, Terraform will align the role's managed policy attachments with this set by attaching or detaching managed policies"
  type        = set(string)
}

variable "iam_role_max_session_duration" {
  default     = null
  description = "Maximum session duration (in seconds) that you want to set for the specified role. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 1 hour to 12 hours"
  type        = number
}

variable "iam_role_name" {
  default     = null
  description = "Friendly name of the role. If omitted, Terraform will assign a random, unique name"
  type        = string
}

variable "use_iam_role_name_prefix" {
  default     = false
  description = "Determinate to use `name_prefix` or not"
  type        = bool
}

variable "iam_role_path" {
  default     = null
  description = "Path to the role"
  type        = string
}

variable "iam_role_permissions_boundary" {
  default     = null
  description = "ARN of the policy that is used to set the permissions boundary for the role"
  type        = string
}

variable "iam_role_tags" {
  default     = null
  description = "Key-value mapping of tags for the IAM role"
  type        = map(string)
}

variable "iam_role_inline_policy" {
  default     = null
  description = "Configuration block defining an exclusive set of IAM inline policies associated with the IAM role. See below. If no blocks are configured, Terraform will not manage any inline policies in this resource"
  type = object({
    name   = string
    policy = string
  })
}

##########################################################################
### iam_policy
##########################################################################
variable "create_iam_policy" {
  default     = false
  description = "Determinate to create `iam_policy` resources or not"
  type        = bool
}

variable "iam_policy" {
  default     = null
  description = "Required if `create_iam_policy` is set to `true`. The policy document. This is a JSON formatted string"
  type        = string
}

variable "iam_policy_description" {
  default     = null
  description = "Description of the IAM policy"
  type        = string
}

variable "iam_policy_name" {
  default     = null
  description = "The name of the policy. If omitted, Terraform will assign a random, unique name"
  type        = string
}

variable "use_iam_policy_name_prefix" {
  default     = false
  description = "Determinate to use `name_prefix` or not"
  type        = bool
}

variable "iam_policy_path" {
  default     = null
  description = "Path in which to create the policy"
  type        = string
}

variable "iam_policy_tags" {
  default     = null
  description = "Map of resource tags for the IAM Policy"
  type        = map(string)
}

##########################################################################
### iam_role_policy_attachment
##########################################################################
variable "create_iam_role_policy_attachment" {
  default     = false
  description = "Determinate to create `iam_role_policy_attachment` resources or not"
  type        = bool
}
variable "iam_policy_arn" {
  default     = null
  description = "Required if `create_iam_role_policy_attachment` is set to `true` and `create_iam_role_policy_attachment` is set to false. The ARN of the policy you want to apply"
  type        = string
}
