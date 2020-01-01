data "template_file" "deployment_iam_policy_template" {
   template = file("${path.module}/templates/deployment_iam_policy.json.tpl")

   vars = {
     website_domain_name = var.website_domain_name
   }
 }

resource "aws_iam_policy" "deployment_iam_policy" {
  name        = "${var.website_domain_name}_deployment_policy"
  description = "A policy allowing CircleCI to deploy to S3 for the website: ${var.website_domain_name}."

  policy = data.template_file.deployment_iam_policy_template.rendered
}


resource "aws_iam_policy_attachment" "deployment_iam_policy_attach" {
  name       = "deployment_policy_attachment"
  users      = ["${aws_iam_user.deployment_iam_user.name}"]
  policy_arn = "${aws_iam_policy.deployment_iam_policy.arn}"
}