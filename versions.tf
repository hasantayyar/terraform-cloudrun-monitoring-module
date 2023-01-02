// Terraform version and GCP providers with GCP beta providers enabled
terraform {
  required_version = ">= 0.12.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.44.1"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 4.44.1"
    }
  }
}