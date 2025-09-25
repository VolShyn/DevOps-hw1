# Terraform will load all the available .tf files, but
# it's appropriate and more readable to name them
# after their designation

variable "project_id" {
  default = "composed-sun-467220-e1"
}

variable "region" {
  default = "us-central1"
}

variable "zone" {
  default = "us-central1-c"
}

variable "vm_instance" {
  default = "instance-20250925-203432"
}

variable "bq_dataset" {
  default = "dataset_394839482"
}

variable "bucket_name" {
  default = "test-bucket-424-9b123"
}
