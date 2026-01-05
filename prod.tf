resource "tfe_project" "bic_prod" {
  organization = var.tfe_org_name
  name         = "ByItsCover_PROD"
}

resource "tfe_workspace" "bic_prod_infra" {
  name         = "bic-infra-prod"
  organization = var.tfe_org_name
  project_id   = tfe_project.bic_prod.id
}

resource "tfe_variable" "aws_auth" {
  key          = "TFC_AWS_PROVIDER_AUTH"
  value        = var.tfc_aws_auth
  category     = "env"
  workspace_id = tfe_workspace.bic_prod_infra.id
}

resource "tfe_variable" "aws_plan_role" {
  key          = "TFC_AWS_PLAN_ROLE_ARN"
  value        = var.tfc_aws_plan_role
  category     = "env"
  sensitive    = true
  workspace_id = tfe_workspace.bic_prod_infra.id
}

resource "tfe_variable" "aws_apply_role" {
  key          = "TFC_AWS_APPLY_ROLE_ARN"
  value        = var.tfc_aws_apply_role
  category     = "env"
  sensitive    = true
  workspace_id = tfe_workspace.bic_prod_infra.id
}
