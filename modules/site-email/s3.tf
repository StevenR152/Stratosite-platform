resource "aws_s3_bucket" "email_bucket" {
  bucket = "${var.website_domain_name}-email"
  force_destroy = true
  region = var.region
}