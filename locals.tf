locals {
  iam_role_name        = var.use_iam_role_name_prefix ? null : var.iam_role_name
  iam_role_name_prefix = var.use_iam_role_name_prefix ? format("%s-", var.iam_role_name) : null

  iam_policy_name        = var.use_iam_policy_name_prefix ? null : var.iam_policy_name
  iam_policy_name_prefix = var.use_iam_policy_name_prefix ? format("%s-", var.iam_policy_name) : null

  iam_role_policy_attachment_role       = var.create_iam_role ? module.iam_role[0].name : var.iam_role_name
  iam_role_policy_attachment_policy_arn = var.create_iam_policy ? module.iam_policy[0].arn : var.iam_policy_arn
}
