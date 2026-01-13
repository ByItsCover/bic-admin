resource "tfe_project" "bic_prod" {
  organization = var.tfe_org_name
  name         = "ByItsCover_PROD"
}

# Workspaces

resource "tfe_workspace" "bic_prod_infra" {
  name         = "bic-infra-prod"
  organization = var.tfe_org_name
  project_id   = tfe_project.bic_prod.id
}

resource "tfe_workspace" "bic_prod_embed_server" {
  name         = "bic-embed-server-prod"
  organization = var.tfe_org_name
  project_id   = tfe_project.bic_prod.id
}

# Remote Access

resource "tfe_workspace_settings" "infra_access" {
  workspace_id              = tfe_workspace.bic_prod_infra.id
  global_remote_state       = false
  remote_state_consumer_ids = toset([tfe_workspace.bic_prod_embed_server.id])
}

# Environment Variables

resource "tfe_project_variable_set" "bic_prod_vars" {
  project_id      = tfe_project.bic_prod.id
  variable_set_id = tfe_variable_set.aws_credentials.id
}

resource "tfe_variable_set" "aws_credentials" {
  name              = "AWS Credentials Varset"
  description       = "Varset for AWS Credentials that is owned and managed by ${tfe_project.bic_prod.name}."
  organization      = var.tfe_org_name
  parent_project_id = tfe_project.bic_prod.id
}

resource "tfe_variable" "aws_auth" {
  key             = "TFC_AWS_PROVIDER_AUTH"
  value           = var.tfc_aws_auth
  category        = "env"
  variable_set_id = tfe_variable_set.aws_credentials.id
}

resource "tfe_variable" "aws_plan_role" {
  key             = "TFC_AWS_PLAN_ROLE_ARN"
  value           = var.tfc_aws_plan_role
  category        = "env"
  sensitive       = true
  variable_set_id = tfe_variable_set.aws_credentials.id
}

resource "tfe_variable" "aws_apply_role" {
  key             = "TFC_AWS_APPLY_ROLE_ARN"
  value           = var.tfc_aws_apply_role
  category        = "env"
  sensitive       = true
  variable_set_id = tfe_variable_set.aws_credentials.id
}
