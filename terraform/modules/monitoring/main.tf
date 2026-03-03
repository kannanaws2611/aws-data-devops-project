resource "aws_cloudwatch_log_group" "etl_logs" {
  name = "/enterprise/etl"
  retention_in_days = 14
}
