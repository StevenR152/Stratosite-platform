module "site_storage" {
  source = "./modules/site-storage"
  region = var.region
  website_domain_name = var.website_domain_name
}

output "site_storage" {
  value = module.site_storage
}


///----------------------------------------------------------///
module "site_domain" {
  source = "./modules/site-domain"
  region = var.region
  website_domain_name = var.website_domain_name
  s3_website_domain = module.site_storage.s3_website_domain
  s3_website_endpoint = module.site_storage.s3_website_endpoint
  s3_website_hosted_zone_id = module.site_storage.s3_website_hosted_zone_id
  s3_website_subdomain_endpoint = module.site_storage.s3_website_subdomain_endpoint
}

output "site_domain" {
  value = module.site_domain
}

///----------------------------------------------------------///
module "site_cdn" {
  source = "./modules/site-cdn"
  region = var.region
  website_domain_name = var.website_domain_name
  website_subdomain_name = local.website_subdomain_name 
  website_endpoint = module.site_storage.s3_website_regional_domain_name
}

///----------------------------------------------------------///
module "site_email" {
  source = "./modules/site-email"
  region = var.region
  website_domain_name = var.website_domain_name
  website_zone_id = module.site_domain.website_zone_id
}

output "site_email" {
  value = module.site_email
}

///----------------------------------------------------------///
module "site_deployment" {
  source = "./modules/site-deployment"
  website_domain_name = var.website_domain_name
}

output "site_deployment" {
  value = module.site_deployment
}