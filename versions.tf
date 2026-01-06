terraform {
  cloud {
    organization = "ByItsCover"

    workspaces {
      project = "ByItsCover_Admin"
      name    = "bic-admin"
    }
  }

  required_version = ">= 1.2"
}
