resource "google_monitoring_notification_channel" "email" {
  project      = var.project_id
  display_name = "Email channel for ${var.service_name}"
  type         = "email"
  labels = {
    email_address = var.email
  }
}
