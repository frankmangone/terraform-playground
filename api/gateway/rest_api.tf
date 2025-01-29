# Define the REST API Gateway for dMRV
resource "aws_api_gateway_rest_api" "dmrv_api" { 
  name = "dMRV"
  
  api_key_source = "HEADER"                # API keys will be passed in HTTP headers
  disable_execute_api_endpoint = false     # Disallows using default execute-api endpoint
  
  endpoint_configuration {
    types = ["REGIONAL"]
  }

  description = "dMRV API Gateway"
  
  tags = {
    Environment = "Sandbox"
    Service     = "dMRV"
  }
}