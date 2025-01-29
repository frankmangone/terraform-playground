resource "aws_ecr_repository" "ggservice" {
  name                 = "dmrv-dev/ggservice"
  image_tag_mutability = "IMMUTABLE"

  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  tags = {
    Environment = "dev"
    Service     = "ggservice"
  }
}