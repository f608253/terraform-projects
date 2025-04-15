variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

locals {
  file_name = "${var.environment}_config.txt"
  file_content = <<EOT
  Environment: ${var.environment}
  Created by: Terraform
  EOT
}

resource "local_file" "config_file" {
  filename = local.file_name
  content  = local.file_content
}