module "network" {
  source            = "./modules/network"
  project_id        = var.project_id
  region            = var.region
  vpc_cidr          = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
}

module "artifact_registry" {
  source       = "./modules/container-registry"
  project_id   = var.project_id
  region       = var.region
  registry_name = "${var.env}-registry"
}

module "secret_manager" {
  source      = "./modules/secret-manager"
  project_id  = var.project_id
  secrets     = var.secrets
}

module "gke" {
  source             = "./modules/gke"
  project_id         = var.project_id
  region             = var.region
  cluster_name       = "${var.env}-gke"
  node_count         = var.node_count
  node_machine_type  = var.node_machine_type
  network            = module.network.vpc_name
  subnetwork         = module.network.private_subnet_name
  artifact_registry  = module.artifact_registry.repository_id
}
