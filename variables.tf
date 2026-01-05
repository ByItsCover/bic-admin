variable "tfe_org_name" {
  type        = string
  description = "Terraform Cloud organization name"
  default     = "ByItsCover"
}

variable "tfc_aws_auth" {
  type        = bool
  description = "Terraform Cloud AWS Provider Auth"
  default     = true
}

variable "tfc_aws_plan_role" {
  type        = string
  sensitive   = true
  description = "Terraform Cloud AWS Plan Role"
}

variable "tfc_aws_apply_role" {
  type        = string
  sensitive   = true
  description = "Terraform Cloud AWS Apply Role"
}
