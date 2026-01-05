resource "tfe_organization" "bic" {
  name  = "ByItsCover"
  email = var.tfc_org_email
}
