resource "aws_ecr_repository" "foo-valdrin-assignment" {
  name                 = "devops-training-valdrin/web-app-assignment-valdrin"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}
