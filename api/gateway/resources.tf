## Note that this isn't a very *resourceful* layout of the endpoints.

# Root resource
resource "aws_api_gateway_resource" "root" {
  rest_api_id = aws_api_gateway_rest_api.dmrv_api.id
  parent_id   = ""
  path_part   = ""
}

# /neworg endpoint
resource "aws_api_gateway_resource" "new_org" {
  rest_api_id = aws_api_gateway_rest_api.dmrv_api.id
  parent_id   = aws_api_gateway_resource.root.id
  path_part   = "neworg"
}

# /neworg/{orgid} endpoint
resource "aws_api_gateway_resource" "org_by_id" {
  rest_api_id = aws_api_gateway_rest_api.dmrv_api.id
  parent_id   = aws_api_gateway_resource.new_org.id
  path_part   = "{orgid}"
}

# /dummy endpoint
resource "aws_api_gateway_resource" "dummy" {
  rest_api_id = aws_api_gateway_rest_api.dmrv_api.id
  parent_id   = aws_api_gateway_resource.root.id
  path_part   = "dummy"
}

# /querystatus endpoint
resource "aws_api_gateway_resource" "query_status" {
  rest_api_id = aws_api_gateway_rest_api.dmrv_api.id
  parent_id   = aws_api_gateway_resource.root.id
  path_part   = "querystatus"
}

# /querystatus/{requestid} endpoint
resource "aws_api_gateway_resource" "status_by_request_id" {
  rest_api_id = aws_api_gateway_rest_api.dmrv_api.id
  parent_id   = aws_api_gateway_resource.query_status.id
  path_part   = "{requestid}"
}

# /mintrequest endpoint
resource "aws_api_gateway_resource" "mint_request" {
  rest_api_id = aws_api_gateway_rest_api.dmrv_api.id
  parent_id   = aws_api_gateway_resource.root.id
  path_part   = "mintrequest"
}

# /mintrequest/rec endpoint
resource "aws_api_gateway_resource" "mint_request_rec" {
  rest_api_id = aws_api_gateway_rest_api.dmrv_api.id
  parent_id   = aws_api_gateway_resource.mint_request.id
  path_part   = "rec"
}

# /mintrequest/rec/{requestid} endpoint
resource "aws_api_gateway_resource" "mint_request_rec_by_id" {
  rest_api_id = aws_api_gateway_rest_api.dmrv_api.id
  parent_id   = aws_api_gateway_resource.mint_request_rec.id
  path_part   = "{requestid}"
}

# /mintrequest/cet endpoint
resource "aws_api_gateway_resource" "mint_request_cet" {
  rest_api_id = aws_api_gateway_rest_api.dmrv_api.id
  parent_id   = aws_api_gateway_resource.mint_request.id
  path_part   = "cet"
}

# /mintrequest/cet/{requestid} endpoint
resource "aws_api_gateway_resource" "mint_request_cet_by_id" {
  rest_api_id = aws_api_gateway_rest_api.dmrv_api.id
  parent_id   = aws_api_gateway_resource.mint_request_cet.id
  path_part   = "{requestid}"
}

# /mintrequest/cru endpoint
resource "aws_api_gateway_resource" "mint_request_cru" {
  rest_api_id = aws_api_gateway_rest_api.dmrv_api.id
  parent_id   = aws_api_gateway_resource.mint_request.id
  path_part   = "cru"
}

# /mintrequest/cru/{requestid} endpoint
resource "aws_api_gateway_resource" "mint_request_cru_by_id" {
  rest_api_id = aws_api_gateway_rest_api.dmrv_api.id
  parent_id   = aws_api_gateway_resource.mint_request_cru.id
  path_part   = "{requestid}"
}

# /entchange endpoint
resource "aws_api_gateway_resource" "ent_change" {
  rest_api_id = aws_api_gateway_rest_api.dmrv_api.id
  parent_id   = aws_api_gateway_resource.root.id
  path_part   = "entchange"
}

# /echo endpoint
resource "aws_api_gateway_resource" "echo" {
  rest_api_id = aws_api_gateway_rest_api.dmrv_api.id
  parent_id   = aws_api_gateway_resource.root.id
  path_part   = "echo"
}