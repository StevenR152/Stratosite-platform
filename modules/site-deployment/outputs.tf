output "iam_access_key" {
  value = "${aws_iam_access_key.deployment_iam_user.id}"
}

output "iam_secret_key" {
  value = "${aws_iam_access_key.deployment_iam_user.secret}"
}

