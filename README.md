<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.0 |
| <a name="requirement_google"></a> [google](#requirement\_google) | ~> 4.44.1 |
| <a name="requirement_google-beta"></a> [google-beta](#requirement\_google-beta) | ~> 4.44.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 4.44.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_monitoring_alert_policy.cpu_consumption_alert](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy) | resource |
| [google_monitoring_alert_policy.execution_count_alert](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy) | resource |
| [google_monitoring_alert_policy.execution_time_alert](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy) | resource |
| [google_monitoring_alert_policy.memory_consumption_alert](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_alert_policy) | resource |
| [google_monitoring_notification_channel.email](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/monitoring_notification_channel) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cpu_consumption_aggregation_window"></a> [cpu\_consumption\_aggregation\_window](#input\_cpu\_consumption\_aggregation\_window) | The aggregation window for CPU consumption | `number` | `60` | no |
| <a name="input_cpu_consumption_comparison"></a> [cpu\_consumption\_comparison](#input\_cpu\_consumption\_comparison) | The comparison operator for CPU consumption | `string` | `"COMPARISON_GT"` | no |
| <a name="input_cpu_consumption_duration"></a> [cpu\_consumption\_duration](#input\_cpu\_consumption\_duration) | The duration for which CPU consumption must exceed the threshold | `number` | `60` | no |
| <a name="input_cpu_consumption_threshold"></a> [cpu\_consumption\_threshold](#input\_cpu\_consumption\_threshold) | The threshold for CPU consumption | `number` | `0.85` | no |
| <a name="input_cpu_consumption_trigger"></a> [cpu\_consumption\_trigger](#input\_cpu\_consumption\_trigger) | The trigger type for CPU consumption | `string` | `"TRIGGER_PERCENTAGE"` | no |
| <a name="input_email"></a> [email](#input\_email) | The email address to send alerts to | `string` | n/a | yes |
| <a name="input_execution_count_aggregation_window"></a> [execution\_count\_aggregation\_window](#input\_execution\_count\_aggregation\_window) | The aggregation window for execution count | `number` | `60` | no |
| <a name="input_execution_count_comparison"></a> [execution\_count\_comparison](#input\_execution\_count\_comparison) | The comparison operator for execution count | `string` | `"COMPARISON_GT"` | no |
| <a name="input_execution_count_duration"></a> [execution\_count\_duration](#input\_execution\_count\_duration) | The duration for which execution count must exceed the threshold | `number` | `60` | no |
| <a name="input_execution_count_threshold"></a> [execution\_count\_threshold](#input\_execution\_count\_threshold) | The threshold for execution count | `number` | `100` | no |
| <a name="input_execution_time_aggregation_window"></a> [execution\_time\_aggregation\_window](#input\_execution\_time\_aggregation\_window) | The aggregation window for execution time | `number` | `60` | no |
| <a name="input_execution_time_comparison"></a> [execution\_time\_comparison](#input\_execution\_time\_comparison) | The comparison operator for execution time | `string` | `"COMPARISON_GT"` | no |
| <a name="input_execution_time_duration"></a> [execution\_time\_duration](#input\_execution\_time\_duration) | The duration for which execution time must exceed the threshold | `number` | `60` | no |
| <a name="input_execution_time_threshold"></a> [execution\_time\_threshold](#input\_execution\_time\_threshold) | The threshold for execution time | `number` | `1000` | no |
| <a name="input_execution_time_trigger"></a> [execution\_time\_trigger](#input\_execution\_time\_trigger) | The trigger type for execution time | `string` | `"TRIGGER_COUNT"` | no |
| <a name="input_location"></a> [location](#input\_location) | The location of the Cloud Run service to create alerts for | `string` | `"us-central1"` | no |
| <a name="input_memory_consumption_aggregation_window"></a> [memory\_consumption\_aggregation\_window](#input\_memory\_consumption\_aggregation\_window) | The aggregation window for memory consumption | `number` | `60` | no |
| <a name="input_memory_consumption_comparison"></a> [memory\_consumption\_comparison](#input\_memory\_consumption\_comparison) | The comparison operator for memory consumption | `string` | `"COMPARISON_GT"` | no |
| <a name="input_memory_consumption_duration"></a> [memory\_consumption\_duration](#input\_memory\_consumption\_duration) | The duration for which memory consumption must exceed the threshold | `number` | `300` | no |
| <a name="input_memory_consumption_threshold"></a> [memory\_consumption\_threshold](#input\_memory\_consumption\_threshold) | The threshold for memory consumption | `number` | `0.85` | no |
| <a name="input_memory_consumption_trigger"></a> [memory\_consumption\_trigger](#input\_memory\_consumption\_trigger) | The trigger type for memory consumption | `string` | `"TRIGGER_COUNT"` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The ID of the project in which the resources will be created | `string` | n/a | yes |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | The name of the Cloud Run service to create alerts for | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cpu_consumption_alert_id"></a> [cpu\_consumption\_alert\_id](#output\_cpu\_consumption\_alert\_id) | n/a |
| <a name="output_email_channel_id"></a> [email\_channel\_id](#output\_email\_channel\_id) | n/a |
| <a name="output_memory_consumption_alert_id"></a> [memory\_consumption\_alert\_id](#output\_memory\_consumption\_alert\_id) | n/a |
<!-- END_TF_DOCS -->