output "arn" {
  description = "Amazon Resource Name (ARN) specifying the role"
  value       = aws_iam_role.this.arn
}

output "id" {
  description = "Name of the role"
  value       = aws_iam_role.this.id
}

output "name" {
  description = "Name of the role"
  value       = aws_iam_role.this.name
}

output "unique_id" {
  description = "Stable and unique string identifying the role"
  value       = aws_iam_role.this.unique_id
}
