provider "netlify" {
  token = var.netlify_token
}

resource "random_pet" "site_name" {
  length    = 2
  separator = "-"
}

resource "netlify_site" "static_site" {
  name = "site-${random_pet.site_name.id}"
}

resource "netlify_deploy" "site_deploy" {
  site_id = netlify_site.static_site.id
  dir     = "${path.module}/site"
}
