resource "aws_api_gateway_integration" "tfer--u9d2pofs6g-002F-5e9puq-002F-POST" {
  cache_namespace         = "5e9puq"
  connection_type         = "INTERNET"
  content_handling        = "CONVERT_TO_TEXT"
  http_method             = "POST"
  integration_http_method = "POST"
  passthrough_behavior    = "WHEN_NO_MATCH"
  resource_id             = "5e9puq"
  rest_api_id             = "u9d2pofs6g"
  timeout_milliseconds    = "29000"
  type                    = "AWS_PROXY"
  uri                     = "arn:aws:apigateway:us-east-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-2:590184048547:function:serapis_dummy/invocations"
}

resource "aws_api_gateway_integration" "tfer--u9d2pofs6g-002F-5yey1r-002F-GET" {
  cache_namespace         = "5yey1r"
  connection_type         = "INTERNET"
  content_handling        = "CONVERT_TO_TEXT"
  http_method             = "GET"
  integration_http_method = "POST"
  passthrough_behavior    = "WHEN_NO_MATCH"
  resource_id             = "5yey1r"
  rest_api_id             = "u9d2pofs6g"
  timeout_milliseconds    = "29000"
  type                    = "AWS_PROXY"
  uri                     = "arn:aws:apigateway:us-east-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-2:590184048547:function:serapis_querystatus/invocations"
}

resource "aws_api_gateway_integration" "tfer--u9d2pofs6g-002F-7gpkeg-002F-PUT" {
  cache_namespace         = "7gpkeg"
  connection_type         = "INTERNET"
  content_handling        = "CONVERT_TO_TEXT"
  http_method             = "PUT"
  integration_http_method = "POST"
  passthrough_behavior    = "WHEN_NO_MATCH"
  resource_id             = "7gpkeg"
  rest_api_id             = "u9d2pofs6g"
  timeout_milliseconds    = "29000"
  type                    = "AWS_PROXY"
  uri                     = "arn:aws:apigateway:us-east-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-2:590184048547:function:serapis_mintreq_cru/invocations"
}

resource "aws_api_gateway_integration" "tfer--u9d2pofs6g-002F-hbhnss-002F-PUT" {
  cache_namespace         = "hbhnss"
  connection_type         = "INTERNET"
  content_handling        = "CONVERT_TO_TEXT"
  http_method             = "PUT"
  integration_http_method = "POST"
  passthrough_behavior    = "WHEN_NO_MATCH"
  resource_id             = "hbhnss"
  rest_api_id             = "u9d2pofs6g"
  timeout_milliseconds    = "29000"
  type                    = "AWS_PROXY"
  uri                     = "arn:aws:apigateway:us-east-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-2:590184048547:function:serapis_neworg/invocations"
}

resource "aws_api_gateway_integration" "tfer--u9d2pofs6g-002F-hrec4y-002F-PUT" {
  cache_namespace         = "hrec4y"
  connection_type         = "INTERNET"
  content_handling        = "CONVERT_TO_TEXT"
  http_method             = "PUT"
  integration_http_method = "POST"
  passthrough_behavior    = "WHEN_NO_MATCH"
  resource_id             = "hrec4y"
  rest_api_id             = "u9d2pofs6g"
  timeout_milliseconds    = "29000"
  type                    = "AWS_PROXY"
  uri                     = "arn:aws:apigateway:us-east-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-2:590184048547:function:serapis_entchange/invocations"
}

resource "aws_api_gateway_integration" "tfer--u9d2pofs6g-002F-ifjtt0-002F-PUT" {
  cache_namespace         = "ifjtt0"
  connection_type         = "INTERNET"
  content_handling        = "CONVERT_TO_TEXT"
  http_method             = "PUT"
  integration_http_method = "POST"
  passthrough_behavior    = "WHEN_NO_MATCH"
  resource_id             = "ifjtt0"
  rest_api_id             = "u9d2pofs6g"
  timeout_milliseconds    = "29000"
  type                    = "AWS_PROXY"
  uri                     = "arn:aws:apigateway:us-east-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-2:590184048547:function:serapis_mintreq_cet/invocations"
}

resource "aws_api_gateway_integration" "tfer--u9d2pofs6g-002F-sy15b5-002F-PUT" {
  cache_namespace         = "sy15b5"
  connection_type         = "INTERNET"
  content_handling        = "CONVERT_TO_TEXT"
  http_method             = "PUT"
  integration_http_method = "POST"
  passthrough_behavior    = "WHEN_NO_MATCH"
  resource_id             = "sy15b5"
  rest_api_id             = "u9d2pofs6g"
  timeout_milliseconds    = "29000"
  type                    = "AWS_PROXY"
  uri                     = "arn:aws:apigateway:us-east-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-2:590184048547:function:serapis_mintreq_rec/invocations"
}

resource "aws_api_gateway_integration" "tfer--u9d2pofs6g-002F-t6wtmg-002F-POST" {
  cache_namespace         = "t6wtmg"
  connection_type         = "INTERNET"
  content_handling        = "CONVERT_TO_TEXT"
  http_method             = "POST"
  integration_http_method = "POST"
  passthrough_behavior    = "WHEN_NO_MATCH"
  resource_id             = "t6wtmg"
  rest_api_id             = "u9d2pofs6g"
  timeout_milliseconds    = "29000"
  type                    = "AWS_PROXY"
  uri                     = "arn:aws:apigateway:us-east-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-east-2:590184048547:function:serapis_echo/invocations"
}
