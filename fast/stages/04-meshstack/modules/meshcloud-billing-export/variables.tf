variable "billing_dataset_region" {
  type        = string
  description = "The location of the BigQuery dataset for billing data exports."
}

variable "billing_account_id" {
  type        = string
  description = "The GCP Billing Account in your organization."
}

variable "billing_data_export_project_id" {
  type        = string
  description = "GCP Project where the BiqQuery table resides that holds the billing export to BigQuery. See https://cloud.google.com/billing/docs/how-to/export-data-bigquery"
}

variable "billing_data_export_dataset_id" {
  type        = string
  description = "GCP BigQuery dataset containing the billing BigQuery export"
}