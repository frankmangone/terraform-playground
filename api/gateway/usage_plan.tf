resource "aws_api_gateway_usage_plan" "dmrv" {
  api_stages {
    api_id = "dmrv_dev"
    stage  = "dev"
  }

  name = "dmrv_dev_api"
}
