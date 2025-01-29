resource "aws_api_gateway_method" "tfer--u9d2pofs6g-002F-5e9puq-002F-POST" {
  api_key_required = "true"
  authorization    = "NONE"
  http_method      = "POST"
  resource_id      = "5e9puq"
  rest_api_id      = "u9d2pofs6g"
}

resource "aws_api_gateway_method" "tfer--u9d2pofs6g-002F-5yey1r-002F-GET" {
  api_key_required = "true"
  authorization    = "NONE"
  http_method      = "GET"

  request_parameters = {
    "method.request.path.requestid" = "true"
  }

  resource_id = "5yey1r"
  rest_api_id = "u9d2pofs6g"
}

resource "aws_api_gateway_method" "tfer--u9d2pofs6g-002F-7gpkeg-002F-PUT" {
  api_key_required = "true"
  authorization    = "NONE"
  http_method      = "PUT"

  request_parameters = {
    "method.request.path.requestid" = "true"
  }

  resource_id = "7gpkeg"
  rest_api_id = "u9d2pofs6g"
}

resource "aws_api_gateway_method" "tfer--u9d2pofs6g-002F-hbhnss-002F-PUT" {
  api_key_required = "true"
  authorization    = "NONE"
  http_method      = "PUT"

  request_parameters = {
    "method.request.path.orgid" = "true"
  }

  resource_id = "hbhnss"
  rest_api_id = "u9d2pofs6g"
}

resource "aws_api_gateway_method" "tfer--u9d2pofs6g-002F-hrec4y-002F-PUT" {
  api_key_required = "true"
  authorization    = "NONE"
  http_method      = "PUT"
  resource_id      = "hrec4y"
  rest_api_id      = "u9d2pofs6g"
}

resource "aws_api_gateway_method" "tfer--u9d2pofs6g-002F-ifjtt0-002F-PUT" {
  api_key_required = "true"
  authorization    = "NONE"
  http_method      = "PUT"

  request_parameters = {
    "method.request.path.requestid" = "true"
  }

  resource_id = "ifjtt0"
  rest_api_id = "u9d2pofs6g"
}

resource "aws_api_gateway_method" "tfer--u9d2pofs6g-002F-sy15b5-002F-PUT" {
  api_key_required = "true"
  authorization    = "NONE"
  http_method      = "PUT"

  request_parameters = {
    "method.request.path.requestid" = "true"
  }

  resource_id = "sy15b5"
  rest_api_id = "u9d2pofs6g"
}

resource "aws_api_gateway_method" "tfer--u9d2pofs6g-002F-t6wtmg-002F-POST" {
  api_key_required = "true"
  authorization    = "NONE"
  http_method      = "POST"
  resource_id      = "t6wtmg"
  rest_api_id      = "u9d2pofs6g"
}
