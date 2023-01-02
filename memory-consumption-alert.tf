resource "google_monitoring_alert_policy" "memory_consumption_alert" {
  project      = var.project_id
  display_name = local.memory_consumption_display_name
  combiner     = "OR"
  conditions {
    display_name = local.memory_consumption_display_name
    condition_threshold {
      filter          = local.memory_consumption_filter
      comparison      = var.memory_consumption_comparison
      duration        = "${var.memory_consumption_duration}s"
      threshold_value = var.memory_consumption_threshold
      trigger {
        count   = 1
        percent = 0
      }
      aggregations {
        alignment_period   = "${var.memory_consumption_aggregation_window}s"
        per_series_aligner = "ALIGN_PERCENTILE_99"
      }
    }
  }
  documentation {
    content   = local.memory_consumption_description
    mime_type = "text/markdown"
  }
  notification_channels = [
    google_monitoring_notification_channel.email.id
  ]
}