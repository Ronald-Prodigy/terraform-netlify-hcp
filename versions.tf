terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.5.1"
    }
  }

  cloud {
    organization = "Techprod"

    workspaces {
      name = "terraform-netlify-hcp"
    }
  }

  required_version = ">= 1.5.0"
}
