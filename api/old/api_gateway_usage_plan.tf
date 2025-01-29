resource "aws_api_gateway_usage_plan" "tfer--serapis_sbx_api" {
  api_stages {
    api_id = "u9d2pofs6g"
    stage  = "sbx"
  }

  name = "serapis_sbx_api"
}
