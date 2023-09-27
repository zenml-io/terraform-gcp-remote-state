# Basic GCP Remote State Backend

This is an example of setting up a GCP remote state bucket with Terraform. It
will provision a single GCS (Google Cloud Storage) bucket.

To run the example:

- Set up or login to a Google Cloud Platform account with the relevant permissions enabled
  (specifically, the ability to provision GCS storage buckets).
- Update `example-config.tfvars` to match your needs. Importantly, you will need
  [a pre-existing Google Cloud
  project](https://developers.google.com/workspace/guides/create-project) and
  you should specify a GCS bucket name that does not already exist.
  (Alternatively, pass in overrides via the command line and the `-var` option).
- Run with `terraform init -var-file="example-config.tfvars"` and `terraform
  apply -var-file="example-config.tfvars"`.

After you run `terraform apply`, you should see the following output:

```
remote_state_bucket_url = "gs://<YOUR_BUCKET_NAME_GOES_HERE>"
```

To destroy the bucket, run `terraform destroy -var-file="example-config.tfvars"`.
