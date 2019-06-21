terraform {
  required_version = ">= 0.12.1"
}
resource "aws_api_gateway_rest_api" "this" {
    name        = "${var.owner}-${var.env}-${var.project}"
    dynamic "endpoint_configuration" {
      for_each = var.endpoint_configuration == null ? null : var.endpoint_configuration
        content {
          types = "${var.endpoint_configuration}"
        }
      }
}