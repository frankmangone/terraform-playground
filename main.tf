# module "api_gateway" {
#   source = "./api/gateway"
#   # You can add any variables that the module needs here
#   api_key_value = var.api_key_value
# }

module "ecr" {
  source = "./ecr"
}