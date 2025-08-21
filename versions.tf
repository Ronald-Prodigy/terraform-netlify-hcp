terraform {
  required_providers {
    netlify = {
      source  = "netlify/netlify"
      version = "~> 0.2.2"
    }
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
