variable "region" {
  description = "The region to deploy resources to"
  default     = "europe-north1"
  type        = string
}

variable "project_id" {
  description = "The project ID to deploy resources to"
  type        = string
}

variable "bucket_name" {
  description = "The name of the GCS bucket to deploy"
  type        = string
}
