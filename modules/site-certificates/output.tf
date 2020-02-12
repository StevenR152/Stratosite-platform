output "certificate_arn" {
  value = "${aws_acm_certificate.website_certificate.arn}"
}

output "certificate_record_name" {
  value = "${aws_acm_certificate.website_certificate.domain_validation_options.0.resource_record_name}"
}

output "certificate_record_type" {
  value = "${aws_acm_certificate.website_certificate.domain_validation_options.0.resource_record_type}"
}

output "certificate_record_value" {
  value = "${aws_acm_certificate.website_certificate.domain_validation_options.0.resource_record_value}"
}