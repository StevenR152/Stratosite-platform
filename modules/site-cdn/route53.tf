resource "aws_route53_record" "cert_validation" {
  name    = var.certificate_record_name
  type    = var.certificate_record_type
  zone_id = var.website_zone_id
  records = [var.certificate_record_value]
  ttl     = 60
}
provider "aws" {
  alias = "virginia"
  region = "us-east-1"
}

resource "aws_acm_certificate_validation" "cert" {
  certificate_arn         = var.certificate_arn
  validation_record_fqdns = [aws_route53_record.cert_validation.fqdn]
  
  provider = aws.virginia
}
