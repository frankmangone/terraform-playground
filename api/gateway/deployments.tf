# Deployment resource to capture API Gateway changes
resource "aws_api_gateway_deployment" "current" {
  rest_api_id = aws_api_gateway_rest_api.dmrv_api.id

  # Forces a new deployment on any change to the API
  triggers = {
    redeployment = sha1(jsonencode([
      aws_api_gateway_resource.dummy,
      aws_api_gateway_resource.query_status,
      aws_api_gateway_resource.status_by_request_id,
      aws_api_gateway_resource.mint_request,
      aws_api_gateway_resource.mint_request_cru_by_id,
      aws_api_gateway_resource.mint_request_cet_by_id,
      aws_api_gateway_resource.mint_request_rec_by_id,
      aws_api_gateway_resource.new_org,
      aws_api_gateway_resource.ent_change,
      aws_api_gateway_resource.echo,
      aws_api_gateway_method.post_dummy,
      aws_api_gateway_method.get_request_status,
      aws_api_gateway_method.put_mint_request_cru,
      aws_api_gateway_method.put_org,
      aws_api_gateway_method.put_ent_change,
      aws_api_gateway_method.put_mint_request_cet,
      aws_api_gateway_method.put_mint_request_rec,
      aws_api_gateway_method.post_echo,
      aws_api_gateway_integration.dummy_integration,
      aws_api_gateway_integration.query_status_integration,
      aws_api_gateway_integration.mint_request_cru_integration,
      aws_api_gateway_integration.new_org_integration,
      aws_api_gateway_integration.ent_change_integration,
      aws_api_gateway_integration.mint_request_cet_integration,
      aws_api_gateway_integration.mint_request_rec_integration,
      aws_api_gateway_integration.echo_integration
    ]))
  }

  lifecycle {
    create_before_destroy = true
  }
}