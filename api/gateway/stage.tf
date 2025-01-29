# Development stage - Only one environment is defined.
resource "aws_api_gateway_stage" "dev_stage" {
  stage_name           = "dev"
  rest_api_id          = aws_api_gateway_rest_api.dmrv_api.id
  deployment_id        = aws_api_gateway_deployment.current.id  # We'll need to define this deployment
  
  cache_cluster_enabled = false
  xray_tracing_enabled = false

  description = "Development environment for testing"
  
  variables = {
    environment = "dev"
  }
}
