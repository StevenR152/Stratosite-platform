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
  cdn_domain_name = module.site_cdn.cdn_domain_name
  cdn_hosted_zone_id = module.site_cdn.cdn_hosted_zone_id
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
  website_endpoint = module.site_storage.s3_website_bucket_domain_name
  website_zone_id = module.site_domain.website_zone_id
  certificate_arn = module.site_certificates.certificate_arn
  certificate_record_name = module.site_certificates.certificate_record_name
  certificate_record_type = module.site_certificates.certificate_record_type
  certificate_record_value = module.site_certificates.certificate_record_value
}

output "site_cdn" {
  value = module.site_cdn
}

///----------------------------------------------------------///
module "site_certificates" {
  source = "./modules/site-certificates"
  region = var.region
  website_domain_name = var.website_domain_name
}

output "site_certificates" {
  value = module.site_certificates
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