terraform {
  backend "gcs" {
    bucket  = "myproject-terraform-state"
    prefix  = "infrastructure/state"
  }
}
