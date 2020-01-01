resource "aws_s3_bucket" "website_bucket" {
  bucket = "${var.website_domain_name}"
  force_destroy = true
  website {
    index_document = "index.html"
    error_document = "error.html"
  }
}

resource "aws_s3_bucket" "www_subdomain_website_bucket" {
  bucket = "${local.website_subdomain}"
  force_destroy = true
  website {
    redirect_all_requests_to = "${var.website_domain_name}"
  }
}