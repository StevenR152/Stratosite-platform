module "stratosite_framework" {
  source = "./stratosite-framework"
  website_domain_name = "website5425259.com"
}

output "stratosite_framework" {
  value = module.stratosite_framework
}
