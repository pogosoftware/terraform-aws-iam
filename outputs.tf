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
