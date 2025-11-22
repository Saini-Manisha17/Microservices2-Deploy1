provider "google" {
  project = var.project_id
  region  = var.region
}

provider "kubernetes" {
  host                   = module.gke.kube_config.host
  token                  = module.gke.kube_config.token
  cluster_ca_certificate = base64decode(module.gke.kube_config.cluster_ca_certificate)
}
