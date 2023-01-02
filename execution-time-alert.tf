// Google Cloud mnitoring alert policy for Cloud Run execution time
resource "google_monitoring_alert_policy" "execution_time_alert" {
  project      = var.project_id
  display_name = local.execution_time_display_name
  combiner     = "OR"
  conditions {
    display_name = local.execution_time_display_name
    condition_threshold {
      filter          = local.execution_time_filter
      comparison      = var.execution_time_comparison
      duration        = "${var.execution_time_duration}s"
      threshold_value = var.execution_time_threshold
      trigger {
        count   = 1
        percent = 0
      }
      aggregations {
        alignment_period   = "${var.execution_time_aggregation_window}s"
        per_series_aligner = "ALIGN_MEAN"
      }
    }
  }
  documentation {
    content   = local.execution_time_description
    mime_type = "text/markdown"
  }
  notification_channels = [
    google_monitoring_notification_channel.email.id
  ]
}