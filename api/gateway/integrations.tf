# Mock Integrations and their responses for each endpoint
# -----------------------------------------------------

# /dummy POST endpoint
resource "aws_api_gateway_integration" "dummy_integration" {
  rest_api_id          = aws_api_gateway_rest_api.dmrv_api.id
  resource_id          = aws_api_gateway_resource.dummy.id
  http_method          = aws_api_gateway_method.post_dummy.http_method
  type                 = "MOCK"
  request_templates = {
    "application/json" = jsonencode({
      statusCode = 200
    })
  }
}

resource "aws_api_gateway_integration_response" "dummy_integration_response" {
  rest_api_id         = aws_api_gateway_rest_api.dmrv_api.id
  resource_id         = aws_api_gateway_resource.dummy.id
  http_method         = aws_api_gateway_method.post_dummy.http_method
  status_code         = "200"
  response_templates = {
    "application/json" = jsonencode({
      message = "Dummy endpoint mock response"
    })
  }
}

# /querystatus/{requestid} GET endpoint
resource "aws_api_gateway_integration" "query_status_integration" {
  rest_api_id          = aws_api_gateway_rest_api.dmrv_api.id
  resource_id          = aws_api_gateway_resource.status_by_request_id.id
  http_method          = aws_api_gateway_method.get_request_status.http_method
  type                 = "MOCK"
  request_templates = {
    "application/json" = jsonencode({
      statusCode = 200
    })
  }
}

resource "aws_api_gateway_integration_response" "query_status_integration_response" {
  rest_api_id         = aws_api_gateway_rest_api.dmrv_api.id
  resource_id         = aws_api_gateway_resource.status_by_request_id.id
  http_method         = aws_api_gateway_method.get_request_status.http_method
  status_code         = "200"
  response_templates = {
    "application/json" = jsonencode({
      requestId = "$input.params('requestid')",
      status    = "MOCK_STATUS",
      message   = "This is a mock status response"
    })
  }
}

# /mintrequest/cru/{requestid} PUT endpoint
resource "aws_api_gateway_integration" "mint_request_cru_integration" {
  rest_api_id          = aws_api_gateway_rest_api.dmrv_api.id
  resource_id          = aws_api_gateway_resource.mint_request_cru_by_id.id
  http_method          = aws_api_gateway_method.put_mint_request_cru.http_method
  type                 = "MOCK"
  request_templates = {
    "application/json" = jsonencode({
      statusCode = 200
    })
  }
}

resource "aws_api_gateway_integration_response" "mint_request_cru_integration_response" {
  rest_api_id         = aws_api_gateway_rest_api.dmrv_api.id
  resource_id         = aws_api_gateway_resource.mint_request_cru_by_id.id
  http_method         = aws_api_gateway_method.put_mint_request_cru.http_method
  status_code         = "200"
  response_templates = {
    "application/json" = jsonencode({
      requestId = "$input.params('requestid')",
      message   = "CRU request processed (mock)"
    })
  }
}

# /neworg/{orgid} PUT endpoint
resource "aws_api_gateway_integration" "new_org_integration" {
  rest_api_id          = aws_api_gateway_rest_api.dmrv_api.id
  resource_id          = aws_api_gateway_resource.org_by_id.id
  http_method          = aws_api_gateway_method.put_org.http_method
  type                 = "MOCK"
  request_templates = {
    "application/json" = jsonencode({
      statusCode = 200
    })
  }
}

resource "aws_api_gateway_integration_response" "new_org_integration_response" {
  rest_api_id         = aws_api_gateway_rest_api.dmrv_api.id
  resource_id         = aws_api_gateway_resource.org_by_id.id
  http_method         = aws_api_gateway_method.put_org.http_method
  status_code         = "200"
  response_templates = {
    "application/json" = jsonencode({
      orgId    = "$input.params('orgid')",
      message  = "Organization updated (mock)"
    })
  }
}

# /entchange PUT endpoint
resource "aws_api_gateway_integration" "ent_change_integration" {
  rest_api_id          = aws_api_gateway_rest_api.dmrv_api.id
  resource_id          = aws_api_gateway_resource.ent_change.id
  http_method          = aws_api_gateway_method.put_ent_change.http_method
  type                 = "MOCK"
  request_templates = {
    "application/json" = jsonencode({
      statusCode = 200
    })
  }
}

resource "aws_api_gateway_integration_response" "ent_change_integration_response" {
  rest_api_id         = aws_api_gateway_rest_api.dmrv_api.id
  resource_id         = aws_api_gateway_resource.ent_change.id
  http_method         = aws_api_gateway_method.put_ent_change.http_method
  status_code         = "200"
  response_templates = {
    "application/json" = jsonencode({
      message = "Enterprise change processed (mock)"
    })
  }
}

# /mintrequest/cet/{requestid} PUT endpoint
resource "aws_api_gateway_integration" "mint_request_cet_integration" {
  rest_api_id          = aws_api_gateway_rest_api.dmrv_api.id
  resource_id          = aws_api_gateway_resource.mint_request_cet_by_id.id
  http_method          = aws_api_gateway_method.put_mint_request_cet.http_method
  type                 = "MOCK"
  request_templates = {
    "application/json" = jsonencode({
      statusCode = 200
    })
  }
}

resource "aws_api_gateway_integration_response" "mint_request_cet_integration_response" {
  rest_api_id         = aws_api_gateway_rest_api.dmrv_api.id
  resource_id         = aws_api_gateway_resource.mint_request_cet_by_id.id
  http_method         = aws_api_gateway_method.put_mint_request_cet.http_method
  status_code         = "200"
  response_templates = {
    "application/json" = jsonencode({
      requestId = "$input.params('requestid')",
      message   = "CET request processed (mock)"
    })
  }
}

# /mintrequest/rec/{requestid} PUT endpoint
resource "aws_api_gateway_integration" "mint_request_rec_integration" {
  rest_api_id          = aws_api_gateway_rest_api.dmrv_api.id
  resource_id          = aws_api_gateway_resource.mint_request_rec_by_id.id
  http_method          = aws_api_gateway_method.put_mint_request_rec.http_method
  type                 = "MOCK"
  request_templates = {
    "application/json" = jsonencode({
      statusCode = 200
    })
  }
}

resource "aws_api_gateway_integration_response" "mint_request_rec_integration_response" {
  rest_api_id         = aws_api_gateway_rest_api.dmrv_api.id
  resource_id         = aws_api_gateway_resource.mint_request_rec_by_id.id
  http_method         = aws_api_gateway_method.put_mint_request_rec.http_method
  status_code         = "200"
  response_templates = {
    "application/json" = jsonencode({
      requestId = "$input.params('requestid')",
      message   = "REC request processed (mock)"
    })
  }
}

# /echo POST endpoint
resource "aws_api_gateway_integration" "echo_integration" {
  rest_api_id          = aws_api_gateway_rest_api.dmrv_api.id
  resource_id          = aws_api_gateway_resource.echo.id
  http_method          = aws_api_gateway_method.post_echo.http_method
  type                 = "MOCK"
  request_templates = {
    "application/json" = jsonencode({
      statusCode = 200
    })
  }
}

resource "aws_api_gateway_integration_response" "echo_integration_response" {
  rest_api_id         = aws_api_gateway_rest_api.dmrv_api.id
  resource_id         = aws_api_gateway_resource.echo.id
  http_method         = aws_api_gateway_method.post_echo.http_method
  status_code         = "200"
  response_templates = {
    "application/json" = jsonencode({
      message = "Echo endpoint mock response"
    })
  }
}