# Module: aws_iam_policy

Provides an IAM policy.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.10 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.15.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description of the IAM policy | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the policy. If omitted, Terraform will assign a random, unique name | `string` | `null` | no |
| <a name="input_name_prefix"></a> [name\_prefix](#input\_name\_prefix) | Creates a unique name beginning with the specified prefix. Conflicts with `name` | `string` | `null` | no |
| <a name="input_path"></a> [path](#input\_path) | Path in which to create the policy | `string` | `null` | no |
| <a name="input_policy"></a> [policy](#input\_policy) | The policy document. This is a JSON formatted string | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Map of resource tags for the IAM Policy | `map(string)` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | The ARN assigned by AWS to this policy |
| <a name="output_description"></a> [description](#output\_description) | The description of the policy |
| <a name="output_id"></a> [id](#output\_id) | The ARN assigned by AWS to this policy |
| <a name="output_name"></a> [name](#output\_name) | The name of the policy |
| <a name="output_path"></a> [path](#output\_path) | The path of the policy in IAM |
| <a name="output_policy"></a> [policy](#output\_policy) | The policy document |
| <a name="output_policy_id"></a> [policy\_id](#output\_policy\_id) | The policy's ID |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->