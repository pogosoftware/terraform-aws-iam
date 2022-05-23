resource "aws_iam_policy" "this" {
  policy = var.policy

  description = var.description
  name        = var.name
  name_prefix = var.name_prefix
  path        = var.path
  tags        = var.tags
}
