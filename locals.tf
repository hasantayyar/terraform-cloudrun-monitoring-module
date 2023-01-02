locals {
  default_filter = <<EOT
resource.type="cloud_run_revision"
resource.label."service_name"="${var.service_name}"
resource.label."location"="${var.location}"
EOT

  cpu_consumption_filter       = <<EOT
${local.default_filter}
metric.type="run.googleapis.com/container/cpu/utilizations"
EOT
  cpu_consumption_display_name = "CPU consumption for ${var.service_name} in ${var.location}"
  cpu_consumption_description  = "CPU consumption for ${var.service_name} in ${var.location}"

  memory_consumption_description  = "Memory consumption for ${var.service_name} in ${var.location}"
  memory_consumption_display_name = "Memory consumption for ${var.service_name} in ${var.location}"
  memory_consumption_filter       = <<EOT
${local.default_filter}
metric.type="run.googleapis.com/container/memory/utilizations"
EOT

  execution_time_description  = "Execution time for ${var.service_name} in ${var.location}"
  execution_time_display_name = "Execution time for ${var.service_name} in ${var.location}"
  execution_time_filter       = <<EOT
${local.default_filter}
metric.type="run.googleapis.com/request_count"
EOT

  # Google Monitoring alert policy filter for Cloud run execution count
  execution_count_filter       = <<EOT
${local.default_filter}
metric.type="run.googleapis.com/request_latencies"
EOT
  execution_count_description  = "Execution count for ${var.service_name} in ${var.location}"
  execution_count_display_name = "Execution count for ${var.service_name} in ${var.location}"

}
