module "stratosite_framework" {
  source = "../" # github.com/StevenR152/Stratosite-platform?ref=v0.0.2
  website_domain_name = "website5425259.com"
  region = "eu-central-1"
}

output "stratosite_framework" {
  value = module.stratosite_framework
}
