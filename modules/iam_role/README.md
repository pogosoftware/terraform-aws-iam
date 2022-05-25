# Module: aws_iam_role

Provides an IAM role.

> **NOTE:** <br>
If policies are attached to the role via the [aws_iam_policy_attachment resource](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy_attachment) and you are modifying the role `name` or `path`, the `force_detach_policies` argument must be set to true and applied before attempting the operation otherwise you will encounter a `DeleteConflict` error. The [aws_iam_role_policy_attachment resource](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) (recommended) does not have this requirement.

> **NOTE:** <br>
If you use this resource's `managed_policy_arns` argument or `inline_policy` configuration blocks, this resource will take over exclusive management of the role's respective policy types (e.g., both policy types if both arguments are used). These arguments are incompatible with other ways of managing a role's policies, such as [aws_iam_policy_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy_attachment), [aws_iam_role_policy_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment), and [aws_iam_role_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy). If you attempt to manage a role's policies by multiple means, you will get resource cycling and/or errors.

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
| [aws_iam_role.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assume_role_policy"></a> [assume\_role\_policy](#input\_assume\_role\_policy) | Policy that grants an entity permission to assume the role | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | Description of the role | `string` | `null` | no |
| <a name="input_force_detach_policies"></a> [force\_detach\_policies](#input\_force\_detach\_policies) | Whether to force detaching any policies the role has before destroying it. Defaults to `false` | `bool` | `false` | no |
| <a name="input_inline_policy"></a> [inline\_policy](#input\_inline\_policy) | Configuration block defining an exclusive set of IAM inline policies associated with the IAM role. See below. If no blocks are configured, Terraform will not manage any inline policies in this resource | <pre>object({<br>    name   = string<br>    policy = string<br>  })</pre> | `null` | no |
| <a name="input_managed_policy_arns"></a> [managed\_policy\_arns](#input\_managed\_policy\_arns) | Set of exclusive IAM managed policy ARNs to attach to the IAM role. If this attribute is not configured, Terraform will ignore policy attachments to this resource. When configured, Terraform will align the role's managed policy attachments with this set by attaching or detaching managed policies | `set(string)` | `null` | no |
| <a name="input_max_session_duration"></a> [max\_session\_duration](#input\_max\_session\_duration) | Maximum session duration (in seconds) that you want to set for the specified role. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 1 hour to 12 hours | `number` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Friendly name of the role. If omitted, Terraform will assign a random, unique name | `string` | `null` | no |
| <a name="input_name_prefix"></a> [name\_prefix](#input\_name\_prefix) | Forces new resource) Creates a unique friendly name beginning with the specified prefix. Conflicts with `name` | `string` | `null` | no |
| <a name="input_path"></a> [path](#input\_path) | Path to the role | `string` | `null` | no |
| <a name="input_permissions_boundary"></a> [permissions\_boundary](#input\_permissions\_boundary) | ARN of the policy that is used to set the permissions boundary for the role | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Key-value mapping of tags for the IAM role | `map(string)` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | Amazon Resource Name (ARN) specifying the role |
| <a name="output_id"></a> [id](#output\_id) | Name of the role |
| <a name="output_name"></a> [name](#output\_name) | Name of the role |
| <a name="output_unique_id"></a> [unique\_id](#output\_unique\_id) | Stable and unique string identifying the role |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->