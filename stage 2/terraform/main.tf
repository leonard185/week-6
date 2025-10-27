provider "local" {}

resource "local_file" "app_folder" {
  content  = "Terraform has provisioned the infra"
  filename = "${path.module}/provisioned.txt"
}

output "status" {
  value = "Infrastructure provisioned successfully!"
}
