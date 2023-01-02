variable "project_id" {
  description = "The ID of the project in which the resources will be created"
  type        = string
}

variable "service_name" {
  description = "The name of the Cloud Run service to create alerts for"
  type        = string
}

variable "location" {
  description = "The location of the Cloud Run service to create alerts for"
  default     = "us-central1"
  type        = string
}

variable "memory_consumption_threshold" {
  description = "The threshold for memory consumption"
  default     = 0.85
  type        = number
}

variable "memory_consumption_duration" {
  description = "The duration for which memory consumption must exceed the threshold"
  default     = 300
  type        = number
}

variable "memory_consumption_aggregation_window" {
  description = "The aggregation window for memory consumption"
  default     = 60
  type        = number
}

variable "memory_consumption_comparison" {
  description = "The comparison operator for memory consumption"
  default     = "COMPARISON_GT"
  type        = string
}

variable "memory_consumption_trigger" {
  description = "The trigger type for memory consumption"
  default     = "TRIGGER_COUNT"
  type        = string
}

variable "email" {
  description = "The email address to send alerts to"
  type        = string
}

variable "cpu_consumption_threshold" {
  description = "The threshold for CPU consumption"
  default     = 0.85
  type        = number
}

variable "cpu_consumption_duration" {
  description = "The duration for which CPU consumption must exceed the threshold"
  default     = 60
  type        = number
}

variable "cpu_consumption_aggregation_window" {
  description = "The aggregation window for CPU consumption"
  default     = 60
  type        = number
}

variable "cpu_consumption_comparison" {
  description = "The comparison operator for CPU consumption"
  default     = "COMPARISON_GT"
  type        = string
}

variable "cpu_consumption_trigger" {
  description = "The trigger type for CPU consumption"
  default     = "TRIGGER_PERCENTAGE"
  type        = string
}

variable "execution_time_threshold" {
  description = "The threshold for execution time"
  default     = 1000
  type        = number
}

variable "execution_time_duration" {
  description = "The duration for which execution time must exceed the threshold"
  default     = 60
  type        = number
}

variable "execution_time_aggregation_window" {
  description = "The aggregation window for execution time"
  default     = 60
  type        = number
}

variable "execution_time_comparison" {
  description = "The comparison operator for execution time"
  default     = "COMPARISON_GT"
  type        = string
}

variable "execution_time_trigger" {
  description = "The trigger type for execution time"
  default     = "TRIGGER_COUNT"
  type        = string
}

variable "execution_count_threshold" {
  description = "The threshold for execution count"
  default     = 100
  type        = number
}

variable "execution_count_duration" {
  description = "The duration for which execution count must exceed the threshold"
  default     = 60
  type        = number
}

variable "execution_count_aggregation_window" {
  description = "The aggregation window for execution count"
  default     = 60
  type        = number
}

variable "execution_count_comparison" {
  description = "The comparison operator for execution count"
  default     = "COMPARISON_GT"
  type        = string
}