resource "google_bigquery_dataset" "billing_data_export_dataset" {
  dataset_id    = var.billing_data_export_dataset_id
  friendly_name = "billing_data_export_tf"
  description   = "This dataset holds the billing data."
  location      = var.billing_dataset_region
  project       = var.billing_data_export_project_id
}

resource "google_bigquery_data_transfer_config" "billing_transfer_config" {
  display_name           = "billing-export-tf"
  location               = var.billing_dataset_region
  data_source_id         = "billing-export-tf"
  schedule               = "every day 00:00"
  destination_dataset_id = google_bigquery_dataset.billing_data_export_dataset.dataset_id
  project                = var.billing_data_export_project_id
  params = {
    billing_accounts = var.billing_account_id
  }
}