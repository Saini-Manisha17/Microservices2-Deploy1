env           = "prod"
project_id    = "my-gcp-prod-project"
region        = "us-central1"

vpc_cidr             = "10.2.0.0/16"
public_subnet_cidr   = "10.2.1.0/24"
private_subnet_cidr  = "10.2.2.0/24"

node_count        = 5
node_machine_type = "e2-standard-4"

secrets = {
  db_url     = "postgres://prod-db.example.com"
  api_key    = "prod-api-key"
  jwt_secret = "prod-secret"
}
