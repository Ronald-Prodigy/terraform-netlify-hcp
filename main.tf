provider "random" {}

resource "random_pet" "site_name" {
  length    = 2
  separator = "-"
}
