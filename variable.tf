variable "deployment_environment" {
  default = "dev"
}

variable "dns_endpoint_grafana" {
  type = "map"

  default = {
    test = "test-grafana.fuchicorp.com"
    dev  = "dev-grafana.fuchicorp.com"
    qa   = "qa-grafana.fuchicorp.com"
    prod = "grafana.fuchicorp.com"
  }
}
variable "version" {
  default = "6.0.1"
}

########### Put datasource or Prometheus endpoint as below ##############

variable "datasource_dns_endpoint" {
  default = " https://10.16.1.3:443"
}

variable "name" {
  default = "grafana"
}
