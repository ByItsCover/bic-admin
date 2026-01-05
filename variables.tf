variable "tfc_org_email" {
  type        = string
  sensitive     = true
  description = "Terraform Cloud Organization Email"
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
