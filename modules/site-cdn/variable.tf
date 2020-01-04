variable "region" {
  type = "string"
  description = "The AWS region to host the bucket in"
}

variable "website_domain_name" {
  type = "string"
  description = "The domain of the website - used for bucket and R53 rules."
}

variable "website_subdomain_name" {
  type = "string"
  description = "The domain of the website - used for bucket and R53 rules."
}

variable "website_endpoint" {
  type = "string"
  description = "the S3 bucket website endpoint"
}

variable "certificate_arn" {
  type = "string"
  description = "The arn of the domain ssl certificate."
}