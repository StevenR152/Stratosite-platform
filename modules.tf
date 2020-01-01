module "site_storage" {
  source = "./modules/site-storage"
  website_domain_name = "${var.website_domain_name}"
}

output "site_storage" {
  value = module.site_storage
}

module "site_domain" {
  source = "./modules/site-domain"
  website_domain_name = "${var.website_domain_name}"
  s3_website_endpoint = "${module.site_storage.s3_website_endpoint}"
  s3_website_hosted_zone_id = "${module.site_storage.s3_website_hosted_zone_id}"
  s3_website_subdomain_endpoint = "${module.site_storage.s3_website_subdomain_endpoint}"
}

output "site_domain" {
  value = module.site_domain
}

module "site_deployment" {
  source = "./modules/site-deployment"
  website_domain_name = "${var.website_domain_name}"
}

output "site_deployment" {
  value = module.site_deployment
}