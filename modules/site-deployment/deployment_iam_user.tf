resource "aws_iam_user" "deployment_iam_user" {
  name = "${var.website_domain_name}_deployment_user"
}

resource "aws_iam_access_key" "deployment_iam_user" {
  user    = "${aws_iam_user.deployment_iam_user.name}"
}
