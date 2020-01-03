variable "region" {
  type = "string"
  description = "The AWS region to host the bucket in"
}

variable "website_domain_name" {
  type = "string"
  description = "The domain of the website - used for bucket and R53 rules."
}

variable "website_zone_id" {
  type = "string"
  description = "The zone id to verify the SES entry with so emails can be sent."
}