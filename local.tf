locals {
  region               = "asia-south1"
  #org_id               = ""
  #billing_account      = "01028B-1E5DC8-2E5A15"
  host_project_name    = "host-staging"
  service_project_name = "k8s-staging"
  host_project_id      = "${local.host_project_name}-${random_integer.int.result}"
  service_project_id   = "${local.service_project_name}-${random_integer.int.result}"
  projects_api         = "container.googleapis.com"
  secondary_ip_ranges = {
    "pod-ip-range"      = "10.0.0.0/14",
    "services-ip-range" = "10.4.0.0/19"
  }
}