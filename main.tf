resource "google_storage_bucket" "terraform_state" {
  name     = var.bucket_name
  location = var.region

  versioning {
    enabled = var.enable_versioning
  }

  # set to true when you want to delete the bucket
  force_destroy = var.force_destroy

  # Ensure no public access
  uniform_bucket_level_access = var.block_public_access

  labels = var.labels
}
