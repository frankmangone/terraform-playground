resource "aws_api_gateway_api_key" "dev_api_key" {
  description = "API key for the Development Environment"
  enabled     = true
  name        = "dev_api_key"
  value       = var.api_key_value
}