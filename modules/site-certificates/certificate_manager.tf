provider "aws" {
  alias = "virginia"
  region = "us-east-1"
}

resource "aws_acm_certificate" "website_certificate" {
  domain_name       = var.website_domain_name
  validation_method = "DNS"

  lifecycle {
    create_before_destroy = true
  }
  provider = aws.virginia
}