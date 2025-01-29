# Core API Components
output "rest_api_id" {
  description = "ID of the dMRV REST API"
  value       = aws_api_gateway_rest_api.dmrv_api.id
}

output "stage_id" {
  description = "ID of the DEV stage"
  value       = aws_api_gateway_stage.dev_stage.id
}

output "api_key_id" {
  description = "ID of the DEV API key"
  value       = aws_api_gateway_api_key.dev_api_key.id
}

# Resources
output "resources" {
  description = "Map of API Gateway resource IDs"
  value = {
    dummy             = aws_api_gateway_resource.dummy.id
    query_status      = aws_api_gateway_resource.query_status.id
    status_by_id      = aws_api_gateway_resource.status_by_request_id.id
    mint_request      = aws_api_gateway_resource.mint_request.id
    mint_request_cru  = aws_api_gateway_resource.mint_request_cru_by_id.id
    mint_request_cet  = aws_api_gateway_resource.mint_request_cet_by_id.id
    mint_request_rec  = aws_api_gateway_resource.mint_request_rec_by_id.id
    new_org          = aws_api_gateway_resource.new_org.id
    ent_change       = aws_api_gateway_resource.ent_change.id
    echo             = aws_api_gateway_resource.echo.id
  }
}

# Methods
output "methods" {
  description = "Map of API Gateway method IDs"
  value = {
    post_dummy           = aws_api_gateway_method.post_dummy.id
    get_request_status   = aws_api_gateway_method.get_request_status.id
    put_mint_request_cru = aws_api_gateway_method.put_mint_request_cru.id
    put_org             = aws_api_gateway_method.put_org.id
    put_ent_change      = aws_api_gateway_method.put_ent_change.id
    put_mint_request_cet = aws_api_gateway_method.put_mint_request_cet.id
    put_mint_request_rec = aws_api_gateway_method.put_mint_request_rec.id
    post_echo           = aws_api_gateway_method.post_echo.id
  }
}

# Models
output "models" {
  description = "Map of API Gateway model IDs"
  value = {
    empty = aws_api_gateway_model.empty.id
    error = aws_api_gateway_model.error.id
  }
}