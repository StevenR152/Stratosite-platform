output "s3_website_endpoint" {
  value = "${aws_s3_bucket.website_bucket.website_endpoint}"
}

output "s3_website_hosted_zone_id" {
  value = "${aws_s3_bucket.website_bucket.hosted_zone_id}"
}

output "s3_website_subdomain_endpoint" {
  value = "${aws_s3_bucket.www_subdomain_website_bucket.website_endpoint}"
}
