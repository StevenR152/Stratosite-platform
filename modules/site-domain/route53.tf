resource "aws_route53_zone" "primary" {
  name = "${var.website_domain_name}"
  force_destroy = true
}

resource "aws_route53_record" "primary" {
  zone_id = "${aws_route53_zone.primary.zone_id}"
  name    = "${var.website_domain_name}"
  type    = "A"

  alias {
    name                   = "s3-website.${var.region}.amazonaws.com" 

    # IS http://www.inkyglow.com.s3-website.eu-central-1.amazonaws.com./ 
    # Needs to be: s3-website.eu-central-1.amazonaws.com
    zone_id                = "${var.s3_website_hosted_zone_id}"
    evaluate_target_health = false
  }
}

resource "aws_route53_record" "www" {
  zone_id = "${aws_route53_zone.primary.zone_id}"
  name    = "${local.website_subdomain}"
  type    = "A"

  alias {
    name                   = "s3-website.${var.region}.amazonaws.com" 
    zone_id                = "${var.s3_website_hosted_zone_id}"
    evaluate_target_health = false
  }
}
