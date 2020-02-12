locals {
  # Ids for multiple sets of EC2 instances, merged together
  website_subdomain_name = "www.${var.website_domain_name}"
}