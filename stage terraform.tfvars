env           = "stage"
project_id    = "my-gcp-stage-project"
region        = "us-central1"

vpc_cidr             = "10.1.0.0/16"
public_subnet_cidr   = "10.1.1.0/24"
private_subnet_cidr  = "10.1.2.0/24"

node_count        = 3
node_machine_type = "e2-standard-2"

secrets = {
  db_url     = "postgres://stage-db.example.com"
  api_key    = "stage-api-key"
  jwt_secret = "stage-secret"
}
