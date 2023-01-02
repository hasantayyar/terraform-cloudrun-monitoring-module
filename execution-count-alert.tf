// Google Cloud mnitoring alert policy for Cloud Run execution count
resource "google_monitoring_alert_policy" "execution_count_alert" {
  project      = var.project_id
  display_name = local.execution_count_display_name
  combiner     = "OR"
  conditions {
    display_name = local.execution_count_display_name
    condition_threshold {
      filter          = local.execution_count_filter
      comparison      = var.execution_count_comparison
      duration        = "${var.execution_count_duration}s"
      threshold_value = var.execution_count_threshold
      trigger {
        count   = 1
        percent = 0
      }
      aggregations {
        alignment_period   = "${var.execution_count_aggregation_window}s"
        per_series_aligner = "ALIGN_PERCENTILE_99"
      }
    }
  }
  documentation {
    content   = local.execution_count_description
    mime_type = "text/markdown"
  }
  notification_channels = [
    google_monitoring_notification_channel.email.id
  ]
}
