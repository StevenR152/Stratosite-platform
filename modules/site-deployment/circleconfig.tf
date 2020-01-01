data "template_file" "circleconfigyml" {
  template = "${file("${path.module}/templates/circleci/config.tpl")}"
  vars = {
    website_domain_name = "${var.website_domain_name}"
  }
}

resource "local_file" "local_file" {
  // Ensure this is evaluated only *after* the above provisioner runs
  content  = "${data.template_file.circleconfigyml.rendered}"
  filename = "${path.root}/../.circleci/config.yml"
}