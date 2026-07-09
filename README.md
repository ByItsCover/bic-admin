# Terraform Admin

> For creation of Terraform Workspaces

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.78.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_project.bic_prod](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/project) | resource |
| [tfe_project_variable_set.bic_prod_vars](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/project_variable_set) | resource |
| [tfe_variable.aws_apply_role](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable.aws_auth](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable.aws_plan_role](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |
| [tfe_variable_set.aws_credentials](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable_set) | resource |
| [tfe_workspace.bic_prod_embed_server](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |
| [tfe_workspace.bic_prod_infra](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |
| [tfe_workspace.bic_prod_library_search](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |
| [tfe_workspace.bic_prod_listopia_parser](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |
| [tfe_workspace.bic_prod_site](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |
| [tfe_workspace.bic_prod_suggest](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |
| [tfe_workspace_settings.infra_access](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace_settings) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_tfc_aws_apply_role"></a> [tfc\_aws\_apply\_role](#input\_tfc\_aws\_apply\_role) | Terraform Cloud AWS Apply Role | `string` | n/a | yes |
| <a name="input_tfc_aws_auth"></a> [tfc\_aws\_auth](#input\_tfc\_aws\_auth) | Terraform Cloud AWS Provider Auth | `bool` | `true` | no |
| <a name="input_tfc_aws_plan_role"></a> [tfc\_aws\_plan\_role](#input\_tfc\_aws\_plan\_role) | Terraform Cloud AWS Plan Role | `string` | n/a | yes |
| <a name="input_tfc_token"></a> [tfc\_token](#input\_tfc\_token) | Terraform Cloud User API Token | `string` | n/a | yes |
| <a name="input_tfe_org_name"></a> [tfe\_org\_name](#input\_tfe\_org\_name) | Terraform Cloud organization name | `string` | `"ByItsCover"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->