terraform {
  required_providers {
    netlify = {
      source  = "netlify/netlify"
      version = "~> 0.4.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.5.1"
    }
  }

  cloud {
    organization = "Techprod.org"

    workspaces {
      name = "Devcloud-project"
    }
  }

  required_version = ">= 1.5.0"
}
