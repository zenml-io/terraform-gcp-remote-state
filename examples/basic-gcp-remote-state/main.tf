module "gcp-remote-state" {
  source = "../../"

  region      = "europe-north1"
  bucket_name = "my-remote-state-bucket"
  project_id  = "my-project-id"
}
