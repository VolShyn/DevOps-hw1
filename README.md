# How to run

State bucket must be created by hands BEFORE the `terraform init` called.

1. install gcloud, set it up (project and account)
* gcloud auth application-default login (or gcloud auth login)
* gcloud config set project ...
* gcloud auth list (to be sure that the account is setted up)
  
2. install terraform, then run commands from the root folder:

* `terraform init -reconfigure`
* `terraform plan`
* `terraform apply`
* `terraform destroy`

# TL;DR 

You can check `quick_check.pdf` for quick checking hw;
