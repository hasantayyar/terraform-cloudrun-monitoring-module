module "monitoring" {
  source       = "../terraform-cloudrun-monitoring" # full path or remote source of the module
  project_id   = "my-gcloud-project-id"
  service_name = "my-flask-app"
  email        = "my-email@gmail.com"
}
