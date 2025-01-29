variable "api_key_value" {
  description = "API key value for DEV environment"
  type        = string
  sensitive   = true  # Marks it as sensitive in logs/output
}