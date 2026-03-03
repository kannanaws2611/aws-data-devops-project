resource "aws_iam_role" "lambda_role" {
  name = "enterprise-lambda-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Principal = { Service = "lambda.amazonaws.com" }
      Action = "sts:AssumeRole"
    }]
  })
}

resource "aws_iam_role_policy_attachment" "basic" {
  role       = aws_iam_role.lambda_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}

resource "aws_lambda_function" "etl" {
  function_name = "enterprise-etl"
  role          = aws_iam_role.lambda_role.arn
  handler       = "etl.lambda_handler"
  runtime       = "python3.10"
  filename      = "${path.module}/etl.zip"
  timeout       = 30
}