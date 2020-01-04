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

variable "certificate_record_name" {
  type = "string"
  description = "The cert record name of the domain ssl certificate."
}

variable "certificate_record_type" {
  type = "string"
  description = "The cert record type of the domain ssl certificate."
}

variable "certificate_record_value" {
  type = "string"
  description = "The cert record value of the domain ssl certificate."
}

variable "website_zone_id" {
  type = "string"
  description = "The zone id of the websites main hosted zone."
}