data "template_file" "email_write_to_bucket_policy_template" {
   template = file("${path.module}/templates/email_write_to_bucket_policy.json.tpl")

   vars = {
     email_bucket_name = aws_s3_bucket.email_bucket.id
   }
}

resource "aws_s3_bucket_policy" "email_write_to_bucket_policy" {
  bucket = "${aws_s3_bucket.email_bucket.id}"
  policy = data.template_file.email_write_to_bucket_policy_template.rendered
}