variable "deployment_environment" {
  default = "test"
}

variable "dns_endpoint_grafana" {
  type = "map"

  default = {
    test = "test-grafana.fuchicorp.com"
    dev  = "dev-grafana.fuchicorp.com"
    qa   = "qa-grafana.fuchicorp.com"
  }
}
variable "version" {
  default = "6.0.1"
}

########### Put datasource or Prometheus endpoint as below ##############

variable "datasource_dns_endpoint" {
  default = "http://my-headless-service.kube-system.svc.cluster.local"
}

variable "name" {
  default = "grafana"
}
