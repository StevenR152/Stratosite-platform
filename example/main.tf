terraform {
  backend "s3" {
    bucket = "stratosite-terraform-backend-state"
    key    = "stratosite-example.tfstate"
    region = "eu-west-2"
  }
}

module "stratosite_framework" {
  source = "../" # github.com/StevenR152/Stratosite-platform?ref=v0.0.2
  website_domain_name = "website5425252.com"
  region = "us-west-2"
}

output "stratosite_framework" {
  value = module.stratosite_framework
}
