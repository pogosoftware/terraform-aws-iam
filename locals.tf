locals {
  iam_role_name        = var.use_iam_role_name_prefix ? null : var.iam_role_name
  iam_role_name_prefix = var.use_iam_role_name_prefix ? format("%s-", var.iam_role_name) : null
}
