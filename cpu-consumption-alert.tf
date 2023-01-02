resource "google_monitoring_alert_policy" "cpu_consumption_alert" {
  project      = var.project_id
  display_name = local.cpu_consumption_display_name
  combiner     = "OR"
  conditions {
    display_name = local.cpu_consumption_display_name
    condition_threshold {
      filter          = local.cpu_consumption_filter
      comparison      = var.cpu_consumption_comparison
      duration        = "${var.cpu_consumption_duration}s"
      threshold_value = var.cpu_consumption_threshold
      trigger {
        count   = 1
        percent = 0
      }
      aggregations {
        alignment_period   = "${var.cpu_consumption_aggregation_window}s"
        per_series_aligner = "ALIGN_PERCENTILE_99"
      }
    }
  }
  documentation {
    content   = local.cpu_consumption_description
    mime_type = "text/markdown"
  }
  notification_channels = [
    google_monitoring_notification_channel.email.id
  ]
}
