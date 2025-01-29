# POST /dummy
resource "aws_api_gateway_method" "post_dummy" {
 rest_api_id      = aws_api_gateway_rest_api.dmrv_api.id
 resource_id      = aws_api_gateway_resource.dummy.id
 http_method      = "POST"
 authorization    = "NONE"
 api_key_required = true
}

resource "aws_api_gateway_method_response" "post_dummy" {
 rest_api_id = aws_api_gateway_rest_api.dmrv_api.id
 resource_id = aws_api_gateway_resource.dummy.id
 http_method = aws_api_gateway_method.post_dummy.http_method
 status_code = "200"
 
 response_models = {
   "application/json" = "Empty"
 }
}

# GET /querystatus/{requestid}
resource "aws_api_gateway_method" "get_request_status" {
 rest_api_id      = aws_api_gateway_rest_api.dmrv_api.id
 resource_id      = aws_api_gateway_resource.status_by_request_id.id
 http_method      = "GET"
 authorization    = "NONE"
 api_key_required = true

 request_parameters = {
   "method.request.path.requestid" = true
 }
}

resource "aws_api_gateway_method_response" "get_request_status" {
 rest_api_id = aws_api_gateway_rest_api.dmrv_api.id
 resource_id = aws_api_gateway_resource.status_by_request_id.id
 http_method = aws_api_gateway_method.get_request_status.http_method
 status_code = "200"
 
 response_models = {
   "application/json" = "Empty"
 }
}

# PUT /mintrequest/cru/{requestid}
resource "aws_api_gateway_method" "put_mint_request_cru" {
 rest_api_id      = aws_api_gateway_rest_api.dmrv_api.id
 resource_id      = aws_api_gateway_resource.mint_request_cru_by_id.id
 http_method      = "PUT"
 authorization    = "NONE"
 api_key_required = true

 request_parameters = {
   "method.request.path.requestid" = true
 }
}

resource "aws_api_gateway_method_response" "put_mint_request_cru" {
 rest_api_id = aws_api_gateway_rest_api.dmrv_api.id
 resource_id = aws_api_gateway_resource.mint_request_cru_by_id.id
 http_method = aws_api_gateway_method.put_mint_request_cru.http_method
 status_code = "200"
 
 response_models = {
   "application/json" = "Empty"
 }
}

# PUT /neworg/{orgid}
resource "aws_api_gateway_method" "put_org" {
 rest_api_id      = aws_api_gateway_rest_api.dmrv_api.id
 resource_id      = aws_api_gateway_resource.org_by_id.id
 http_method      = "PUT"
 authorization    = "NONE"
 api_key_required = true

 request_parameters = {
   "method.request.path.orgid" = true
 }
}

resource "aws_api_gateway_method_response" "put_org" {
 rest_api_id = aws_api_gateway_rest_api.dmrv_api.id
 resource_id = aws_api_gateway_resource.org_by_id.id
 http_method = aws_api_gateway_method.put_org.http_method
 status_code = "200"
 
 response_models = {
   "application/json" = "Empty"
 }
}

# PUT /entchange
resource "aws_api_gateway_method" "put_ent_change" {
 rest_api_id      = aws_api_gateway_rest_api.dmrv_api.id
 resource_id      = aws_api_gateway_resource.ent_change.id
 http_method      = "PUT"
 authorization    = "NONE"
 api_key_required = true
}

resource "aws_api_gateway_method_response" "put_ent_change" {
 rest_api_id = aws_api_gateway_rest_api.dmrv_api.id
 resource_id = aws_api_gateway_resource.ent_change.id
 http_method = aws_api_gateway_method.put_ent_change.http_method
 status_code = "200"
 
 response_models = {
   "application/json" = "Empty"
 }
}

# PUT /mintrequest/cet/{requestid}
resource "aws_api_gateway_method" "put_mint_request_cet" {
 rest_api_id      = aws_api_gateway_rest_api.dmrv_api.id
 resource_id      = aws_api_gateway_resource.mint_request_cet_by_id.id
 http_method      = "PUT"
 authorization    = "NONE"
 api_key_required = true

 request_parameters = {
   "method.request.path.requestid" = true
 }
}

resource "aws_api_gateway_method_response" "put_mint_request_cet" {
 rest_api_id = aws_api_gateway_rest_api.dmrv_api.id
 resource_id = aws_api_gateway_resource.mint_request_cet_by_id.id
 http_method = aws_api_gateway_method.put_mint_request_cet.http_method
 status_code = "200"
 
 response_models = {
   "application/json" = "Empty"
 }
}

# PUT /mintrequest/rec/{requestid}
resource "aws_api_gateway_method" "put_mint_request_rec" {
 rest_api_id      = aws_api_gateway_rest_api.dmrv_api.id
 resource_id      = aws_api_gateway_resource.mint_request_rec_by_id.id
 http_method      = "PUT"
 authorization    = "NONE"
 api_key_required = true

 request_parameters = {
   "method.request.path.requestid" = true
 }
}

resource "aws_api_gateway_method_response" "put_mint_request_rec" {
 rest_api_id = aws_api_gateway_rest_api.dmrv_api.id
 resource_id = aws_api_gateway_resource.mint_request_rec_by_id.id
 http_method = aws_api_gateway_method.put_mint_request_rec.http_method
 status_code = "200"
 
 response_models = {
   "application/json" = "Empty"
 }
}

# POST /echo
resource "aws_api_gateway_method" "post_echo" {
 rest_api_id      = aws_api_gateway_rest_api.dmrv_api.id
 resource_id      = aws_api_gateway_resource.echo.id
 http_method      = "POST"
 authorization    = "NONE"
 api_key_required = true
}

resource "aws_api_gateway_method_response" "post_echo" {
 rest_api_id = aws_api_gateway_rest_api.dmrv_api.id
 resource_id = aws_api_gateway_resource.echo.id
 http_method = aws_api_gateway_method.post_echo.http_method
 status_code = "200"
 
 response_models = {
   "application/json" = "Empty"
 }
}