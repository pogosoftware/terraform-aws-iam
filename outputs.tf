##########################################################################
### iam_role
##########################################################################
output "iam_role_arn" {
  description = "Amazon Resource Name (ARN) specifying the role"
  value       = try(module.iam_role[0].arn, "")
}

output "iam_role_id" {
  description = "Name of the role"
  value       = try(module.iam_role[0].id, "")
}

output "iam_role_name" {
  description = "Name of the role"
  value       = try(module.iam_role[0].name, "")
}

output "iam_role_unique_id" {
  description = "Stable and unique string identifying the role"
  value       = try(module.iam_role[0].unique_id, "")
}

##########################################################################
### iam_policy
##########################################################################
output "iam_policy_id" {
  description = "The ARN assigned by AWS to this policy"
  value       = try(module.iam_policy[0].id, "")
}

output "iam_policy_arn" {
  description = "The ARN assigned by AWS to this policy"
  value       = try(module.iam_policy[0].arn, "")
}

output "iam_policy_description" {
  description = "The description of the policy"
  value       = try(module.iam_policy[0].description, "")
}

output "iam_policy_name" {
  description = "The name of the policy"
  value       = try(module.iam_policy[0].name, "")
}

output "iam_policy_path" {
  description = "The path of the policy in IAM"
  value       = try(module.iam_policy[0].path, "")
}

output "iam_policy" {
  description = "The policy document"
  value       = try(module.iam_policy[0].policy, "")
}

output "iam_policy_policy_id" {
  description = "The policy's ID"
  value       = try(module.iam_policy[0].policy_id, "")
}
