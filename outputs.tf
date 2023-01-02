output "memory_consumption_alert_id" {
  value = google_monitoring_alert_policy.memory_consumption_alert.id
}

output "cpu_consumption_alert_id" {
  value = google_monitoring_alert_policy.cpu_consumption_alert.id
}

output "email_channel_id" {
  value = google_monitoring_notification_channel.email.id
}
