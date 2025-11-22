env           = "dev"
project_id    = "my-gcp-dev-project"
region        = "us-central1"

vpc_cidr             = "10.0.0.0/16"
public_subnet_cidr   = "10.0.1.0/24"
private_subnet_cidr  = "10.0.2.0/24"

node_count        = 2
node_machine_type = "e2-medium"

secrets = {
  db_url     = "postgres://dev-db.example.com"
  api_key    = "dev-api-key"
  jwt_secret = "dev-secret"
}
