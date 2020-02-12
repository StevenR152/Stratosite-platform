resource "aws_route53_record" "domain_amazonses_verification_record" {
  zone_id = var.website_zone_id
  name    = var.website_domain_name
  type    = "TXT"
  ttl     = "600"
  records = ["${aws_ses_domain_identity.domain_ses_identity.verification_token}"]
}