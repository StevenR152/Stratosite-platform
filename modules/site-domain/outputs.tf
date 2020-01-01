output "domain" {
  value = "${var.website_domain_name}"
}

output "subdomain" {
  value = "${local.website_subdomain}"
}

output "dns_list" {
  value = "${aws_route53_zone.primary.name_servers}"
}