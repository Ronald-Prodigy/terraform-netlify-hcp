output "site_url" {
  value = netlify_site.static_site.ssl_url
  description = "Live URL of the deployed site"
}
