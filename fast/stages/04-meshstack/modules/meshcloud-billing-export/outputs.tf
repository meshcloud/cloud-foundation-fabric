output "billing_export_table_name" {
  description = "The BigQuery table name containing the Billing Data BigQuery export."
  value       = "${var.billing_data_export_project_id}.${var.billing_data_export_dataset_id}.${var.billing_data_export_dataset_id}"
}