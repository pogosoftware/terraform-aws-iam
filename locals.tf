locals {
  iam_role_name        = var.use_iam_role_name_prefix ? null : var.iam_role_name
  iam_role_name_prefix = var.use_iam_role_name_prefix ? format("%s-", var.iam_role_name) : null

  iam_policy_name        = var.use_iam_policy_name_prefix ? null : var.iam_policy_name
  iam_policy_name_prefix = var.use_iam_policy_name_prefix ? format("%s-", var.iam_policy_name) : null
}
