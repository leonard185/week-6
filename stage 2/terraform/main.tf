terraform {
  required_version = ">= 1.5.0"
}

variable "target_host" {
  type    = string
  default = "192.168.56.10"
}

# Locals: handy for consistent naming
locals {
  pname = var.project_name
}

# Example “provisioned” marker that includes project name
resource "local_file" "provisioned_marker" {
  filename = "${path.module}/${local.pname}.provisioned"
  content  = <<-EOT
  project=${local.pname}
  provisioned_at=${timestamp()}
  EOT
}

output "week6_host" {
  value = var.target_host
}

# Surface the project name to callers (Ansible)
output "project_name" {
  description = "Logical project name used across Stage 2"
  value       = local.pname
}
