variable "region" {
  type = "string"
  description = "The AWS region to host the bucket in"
}

variable "website_domain_name" {
  type = "string"
  description = "The domain of the website - used for bucket and R53 rules."
}