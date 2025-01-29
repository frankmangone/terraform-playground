output "api_url" {
  description = "Base URL for API Gateway"
  value       = "${aws_api_gateway_rest_api.dmrv_api.id}.execute-api.${data.aws_region.current.name}.amazonaws.com/${aws_api_gateway_stage.dev_stage.stage_name}"
}

output "api_stage" {
  description = "API Gateway stage name"
  value       = aws_api_gateway_stage.dev_stage.stage_name
}

output "api_key" {
  description = "API Key for authentication"
  value       = aws_api_gateway_api_key.dev_api_key.id
  sensitive   = true
}

data "aws_region" "current" {}
