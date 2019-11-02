data "template_file" "template_values" {
  template = "${file("./grafana/template_values.yaml")}"
  vars = {
    deployment_endpoint = "${lookup(var.dns_endpoint_grafana, "${var.deployment_environment}")}"
    # deployment_image = "${var.deployment_image}"
  }
}

resource "local_file" "grafana_values_local_file" {
  content  = "${trimspace(data.template_file.grafana_values.rendered)}"
  filename = "./grafana/.cache/values.yaml"
}


resource "helm_release" "grafana" {
  name      = "${var.name}"
  namespace = "${var.deployment_environment}"
  chart     = "./grafana"
  version   = "${var.version}"
  values = [
    "${data.template_file.grafana_values.rendered}"
  ]
}
