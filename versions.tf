/*
terraform {
  required_providers {
    tfe = {
      version = "~> 0.72.0"
    }
  }
}
*/

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
