# Empty model - Used as a default schema when no request/response body is expected
# This is typically used for endpoints that don't require any payload
resource "aws_api_gateway_model" "empty" {
  name         = "Empty"
  description  = "Default empty schema model"
  content_type = "application/json"
  rest_api_id  = aws_api_gateway_rest_api.dmrv_api.id

  schema = jsonencode({
    "$schema" = "http://json-schema.org/draft-04/schema#"
    title     = "Empty Schema"
    type      = "object"
  })
}

# Error model - Defines the structure of error responses across the API
# All API error responses will include a message field explaining what went wrong
resource "aws_api_gateway_model" "error" {
  name         = "Error"
  description  = "Default error schema model"
  content_type = "application/json"
  rest_api_id  = aws_api_gateway_rest_api.dmrv_api.id

  schema = jsonencode({
    "$schema" = "http://json-schema.org/draft-04/schema#"
    title     = "Error Schema"
    type      = "object"
    properties = {
      message = {
        type = "string"
      }
    }
  })
}