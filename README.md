# terraform-aws-iam

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_iam_policy"></a> [iam\_policy](#module\_iam\_policy) | ./modules/iam_policy | n/a |
| <a name="module_iam_role"></a> [iam\_role](#module\_iam\_role) | ./modules/iam_role | n/a |
| <a name="module_iam_role_policy_attachment"></a> [iam\_role\_policy\_attachment](#module\_iam\_role\_policy\_attachment) | ./modules/iam_role_policy_attachment | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_iam_policy"></a> [create\_iam\_policy](#input\_create\_iam\_policy) | Determinate to create `iam_policy` resources or not | `bool` | `false` | no |
| <a name="input_create_iam_role"></a> [create\_iam\_role](#input\_create\_iam\_role) | Determinate to create `iam_role` resources or not | `bool` | `false` | no |
| <a name="input_create_iam_role_policy_attachment"></a> [create\_iam\_role\_policy\_attachment](#input\_create\_iam\_role\_policy\_attachment) | Determinate to create `iam_role_policy_attachment` resources or not | `bool` | `false` | no |
| <a name="input_iam_policy"></a> [iam\_policy](#input\_iam\_policy) | Required if `create_iam_policy` is set to `true`. The policy document. This is a JSON formatted string | `string` | `null` | no |
| <a name="input_iam_policy_arn"></a> [iam\_policy\_arn](#input\_iam\_policy\_arn) | Required if `create_iam_role_policy_attachment` is set to `true` and `create_iam_role_policy_attachment` is set to false. The ARN of the policy you want to apply | `string` | `null` | no |
| <a name="input_iam_policy_description"></a> [iam\_policy\_description](#input\_iam\_policy\_description) | Description of the IAM policy | `string` | `null` | no |
| <a name="input_iam_policy_name"></a> [iam\_policy\_name](#input\_iam\_policy\_name) | The name of the policy. If omitted, Terraform will assign a random, unique name | `string` | `null` | no |
| <a name="input_iam_policy_path"></a> [iam\_policy\_path](#input\_iam\_policy\_path) | Path in which to create the policy | `string` | `null` | no |
| <a name="input_iam_policy_tags"></a> [iam\_policy\_tags](#input\_iam\_policy\_tags) | Map of resource tags for the IAM Policy | `map(string)` | `null` | no |
| <a name="input_iam_role_assume_role_policy"></a> [iam\_role\_assume\_role\_policy](#input\_iam\_role\_assume\_role\_policy) | Required if `create_iam_role` is set to `true`. Policy that grants an entity permission to assume the role | `string` | `null` | no |
| <a name="input_iam_role_description"></a> [iam\_role\_description](#input\_iam\_role\_description) | Description of the role | `string` | `null` | no |
| <a name="input_iam_role_force_detach_policies"></a> [iam\_role\_force\_detach\_policies](#input\_iam\_role\_force\_detach\_policies) | Whether to force detaching any policies the role has before destroying it. Defaults to `false` | `bool` | `false` | no |
| <a name="input_iam_role_inline_policy"></a> [iam\_role\_inline\_policy](#input\_iam\_role\_inline\_policy) | Configuration block defining an exclusive set of IAM inline policies associated with the IAM role. See below. If no blocks are configured, Terraform will not manage any inline policies in this resource | <pre>object({<br>    name   = string<br>    policy = string<br>  })</pre> | `null` | no |
| <a name="input_iam_role_managed_policy_arns"></a> [iam\_role\_managed\_policy\_arns](#input\_iam\_role\_managed\_policy\_arns) | Set of exclusive IAM managed policy ARNs to attach to the IAM role. If this attribute is not configured, Terraform will ignore policy attachments to this resource. When configured, Terraform will align the role's managed policy attachments with this set by attaching or detaching managed policies | `set(string)` | `null` | no |
| <a name="input_iam_role_max_session_duration"></a> [iam\_role\_max\_session\_duration](#input\_iam\_role\_max\_session\_duration) | Maximum session duration (in seconds) that you want to set for the specified role. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 1 hour to 12 hours | `number` | `null` | no |
| <a name="input_iam_role_name"></a> [iam\_role\_name](#input\_iam\_role\_name) | Friendly name of the role. If omitted, Terraform will assign a random, unique name | `string` | `null` | no |
| <a name="input_iam_role_path"></a> [iam\_role\_path](#input\_iam\_role\_path) | Path to the role | `string` | `null` | no |
| <a name="input_iam_role_permissions_boundary"></a> [iam\_role\_permissions\_boundary](#input\_iam\_role\_permissions\_boundary) | ARN of the policy that is used to set the permissions boundary for the role | `string` | `null` | no |
| <a name="input_iam_role_tags"></a> [iam\_role\_tags](#input\_iam\_role\_tags) | Key-value mapping of tags for the IAM role | `map(string)` | `null` | no |
| <a name="input_use_iam_policy_name_prefix"></a> [use\_iam\_policy\_name\_prefix](#input\_use\_iam\_policy\_name\_prefix) | Determinate to use `name_prefix` or not | `bool` | `false` | no |
| <a name="input_use_iam_role_name_prefix"></a> [use\_iam\_role\_name\_prefix](#input\_use\_iam\_role\_name\_prefix) | Determinate to use `name_prefix` or not | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_iam_policy"></a> [iam\_policy](#output\_iam\_policy) | The policy document |
| <a name="output_iam_policy_arn"></a> [iam\_policy\_arn](#output\_iam\_policy\_arn) | The ARN assigned by AWS to this policy |
| <a name="output_iam_policy_description"></a> [iam\_policy\_description](#output\_iam\_policy\_description) | The description of the policy |
| <a name="output_iam_policy_id"></a> [iam\_policy\_id](#output\_iam\_policy\_id) | The ARN assigned by AWS to this policy |
| <a name="output_iam_policy_name"></a> [iam\_policy\_name](#output\_iam\_policy\_name) | The name of the policy |
| <a name="output_iam_policy_path"></a> [iam\_policy\_path](#output\_iam\_policy\_path) | The path of the policy in IAM |
| <a name="output_iam_policy_policy_id"></a> [iam\_policy\_policy\_id](#output\_iam\_policy\_policy\_id) | The policy's ID |
| <a name="output_iam_role_arn"></a> [iam\_role\_arn](#output\_iam\_role\_arn) | Amazon Resource Name (ARN) specifying the role |
| <a name="output_iam_role_id"></a> [iam\_role\_id](#output\_iam\_role\_id) | Name of the role |
| <a name="output_iam_role_name"></a> [iam\_role\_name](#output\_iam\_role\_name) | Name of the role |
| <a name="output_iam_role_unique_id"></a> [iam\_role\_unique\_id](#output\_iam\_role\_unique\_id) | Stable and unique string identifying the role |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->