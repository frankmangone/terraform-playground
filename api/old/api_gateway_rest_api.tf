resource "aws_api_gateway_rest_api" "tfer--u9d2pofs6g_Serapis" {
  api_key_source               = "HEADER"
  disable_execute_api_endpoint = "false"

  endpoint_configuration {
    types = ["REGIONAL"]
  }

  name = "Serapis"
}
