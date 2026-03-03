resource "aws_athena_workgroup" "enterprise" {
  name = "enterprise-workgroup"

  configuration {
    result_configuration {
      output_location = "s3://aws-athena-query-results/"
    }
  }
}