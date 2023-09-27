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

variable "force_destroy" {
  description = "A boolean that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without error"
  default     = false
  type        = bool
}

variable "enable_versioning" {
  description = "A boolean that indicates all objects should be versioned"
  default     = true
  type        = bool
}
