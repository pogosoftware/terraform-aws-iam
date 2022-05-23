module "iam_role" {
  source = "./modules/iam_role"

  count = var.create_iam_role ? 1 : 0

  assume_role_policy = var.iam_role_assume_role_policy

  description           = var.iam_role_description
  force_detach_policies = var.iam_role_force_detach_policies
  managed_policy_arns   = var.iam_role_managed_policy_arns
  max_session_duration  = var.iam_role_max_session_duration
  name                  = local.iam_role_name
  name_prefix           = local.iam_role_name_prefix
  path                  = var.iam_role_path
  permissions_boundary  = var.iam_role_permissions_boundary
  tags                  = var.iam_role_tags
  inline_policy         = var.iam_role_inline_policy
}

module "iam_policy" {
  source = "./modules/iam_policy"

  count = var.create_iam_policy ? 1 : 0

  policy = var.iam_policy

  description = var.iam_policy_description
  name        = local.iam_policy_name
  name_prefix = local.iam_policy_name_prefix
  path        = var.iam_policy_path
  tags        = var.iam_policy_tags
}

module "iam_role_policy_attachment" {
  source = "./modules/iam_role_policy_attachment"

  count = var.create_iam_role_policy_attachment ? 1 : 0

  role       = local.iam_role_policy_attachment_role
  policy_arn = local.iam_role_policy_attachment_policy_arn
}
