terraform {
  required_version = ">= 1.4.0"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

resource "terraform_data" "infrastructure" {
  input = {
    project     = "project12"
    environment = var.environment
    managed_by  = "terraform"
  }
}

output "infrastructure_details" {
  value = terraform_data.infrastructure.output
}
