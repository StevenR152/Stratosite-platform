resource "aws_ses_domain_identity" "domain_ses_identity" {
  domain = var.website_domain_name
}
