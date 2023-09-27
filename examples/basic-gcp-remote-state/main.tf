provider "google" {
  project = var.project_id
  region  = var.region
}

module "gcp-remote-state" {
  source = "../../"

  region      = var.region
  bucket_name = var.bucket_name
  project_id  = var.project_id
}

output "remote_state_bucket_url" {
  value = module.gcp-remote-state.bucket_url
}
