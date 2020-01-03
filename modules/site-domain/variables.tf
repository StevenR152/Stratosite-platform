variable "region" {
  type = "string"
  description = "Region your website lives in within S3"
}

variable "website_domain_name" {
  type = "string"
  description = "The domain of the website - used for bucket and R53 rules."
}

variable "s3_website_domain" {
  type = "string"
  description = "The domain of the website"
}

variable "s3_website_endpoint" {
  type = "string"
  description = "The S3 bucket endpoint from website hosting settings"
}

variable "s3_website_hosted_zone_id" {
  type = "string"
  description = "The S3 bucket hosted zone for the static hosting settings."
}

variable "s3_website_subdomain_endpoint" {
  type = "string"
  description = "The S3 subdomain bucket endpoint for the static hosting settings."
}