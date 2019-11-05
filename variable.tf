variable "deployment_environment" {
  default = "tools"
}

variable "dns_endpoint_grafana" {
  type = "map"

  default = {
    tools = "grafana.fuchicorp.com"
  }
}
variable "version" {
  default = "6.0.1"
}

########### Put datasource or Prometheus endpoint as below ##############

variable "datasource_dns_endpoint" {
  default = "https://test-prometheus.fuchicorp.com"
}

variable "name" {
  default = "grafana"
}
