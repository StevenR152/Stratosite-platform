data "template_file" "public_bucket_policy_template" {
   template = file("${path.module}/templates/public_bucket_policy.json.tpl")

   vars = {
     website_domain_name = var.website_domain_name
   }
}

resource "aws_s3_bucket_policy" "public_bucket_policy" {
  bucket = "${aws_s3_bucket.website_bucket.id}"
  policy = data.template_file.public_bucket_policy_template.rendered
}