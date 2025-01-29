resource "aws_api_gateway_usage_plan" "dmrv" {
  name        = "dmrv_dev_api"
  description = "Usage plan for dMRV DEV API"

  api_stages {
    api_id = aws_api_gateway_rest_api.dmrv_api.id
    stage  = aws_api_gateway_stage.dev_stage.stage_name
  }
}

resource "aws_api_gateway_usage_plan_key" "dmrv" {
  key_id        = aws_api_gateway_api_key.dev_api_key.id
  key_type      = "API_KEY"
  usage_plan_id = aws_api_gateway_usage_plan.dmrv.id
}
